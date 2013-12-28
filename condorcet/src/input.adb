package body Input is
   function Read return Input_T is
      Buf : String(1..Input_Buffer_Size);
      Last : Natural;
      Input : Input_T;
      Current_Line : Natural := 0;
      OK, Finished : Boolean := False;
   begin
      while not Finished and not End_Of_File(Standard_Input) loop
         Buffer_From_Stdin(Buf, Last, Current_Line);
         Parse_Line(Buf, Last, Current_Line, OK, Finished);
         if not OK then
            return Return_Error(Current_Line);
         end if;
      end loop;

      return Input;
   end Read;

   procedure Buffer_From_Stdin(Buf : out String; Last : out Natural;
                               Current_Line : in out Natural) is
   begin
      Get_Line(Buf, Last);
      Current_Line := Current_Line + 1;
   end Buffer_From_Stdin;

   procedure Parse_Line(Buf : String; Last : Natural; Current_Line : Natural;
                        OK : out Boolean; Finished : out Boolean) is
      Vote : Vote_T(Candidate_Range'Range);
   begin
      Finished := False;
      case Current_Line is
         when 1 =>
            OK := Is_Line_Number_Of_Candidates(Buf);
         when 2 =>
            Extract_Num_Candidates(Buf, Last, Num_Candidates, OK);
         when 3 =>
            OK := Is_Line_Votes(Buf);
         when others =>
            if Is_Line_End(Buf) then
               Finished := True;
               OK := True;
            else
               Extract_Vote(Buf, Last, Vote, OK);
            end if;
      end case;
   end Parse_Line;

   function Is_Line_Number_Of_Candidates(Buf : String) return Boolean is
   begin
      return "number-of-candidates" = Buf(Buf'First .. Buf'First + 19);
   end;

   function Is_Line_Votes(Buf : String) return Boolean is
   begin
      return "votes" = Buf(Buf'First .. Buf'First + 4);
   end;

   function Is_Line_End(Buf : String) return Boolean is
   begin
      return "end" = Buf(Buf'First .. Buf'First + 2);
   end;

   procedure Extract_Num_Candidates(Buf : String; Last : Natural;
                                    Num_Candidates : out Candidate_Range;
                                    OK : out Boolean) is
   begin
      begin
         Num_Candidates := Candidate_Range'Value(Buf(Buf'First..Last));
         OK := True;
      exception when Constraint_Error =>
            Num_Candidates := Candidate_Range'First;
            OK := False;
      end;
   end Extract_Num_Candidates;

   procedure Extract_Vote(Buf : String; Last : Natural;
                          Vote : out Vote_T; Ok : out Boolean) is
      Candidate : Candidate_Range := Candidate_Range'First;
      Buf_Index : Natural;
   begin
      Buf_Index := Buf'First;
      while Buf_Index + 1 <= Last and Candidate <= Candidate_Range'Last loop
         Vote(Candidate) :=
           Candidate_Range'Value(Buf(Buf_Index .. Buf_Index + 1));
         Candidate := Candidate + 1;
         Buf_Index := Buf_Index + 3;
      end loop;
      OK := (Buf_Index - 2 = Last);
   end Extract_Vote;

   function Return_Error(Current_Line : Natural) return Input_T is
      Input : Input_T(Invalid);
   begin
      Input.Error_Line := Current_Line;
      return Input;
   end Return_Error;
end Input;
