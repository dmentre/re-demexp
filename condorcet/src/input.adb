package body Input is
   function Read return Input_T is
      Buf : String(1..Input_Buffer_Size);
      Last : Natural;
      Input : Input_T;
      Current_Line : Natural := 0;
      OK : Boolean;
      Num_Candidates : Candidate_Range;
   begin
      -- line 1
      Buffer_From_Stdin(Buf, Last, Current_Line);
      if not Is_Line_Number_Of_Candidates(Buf) then
         return Return_Error(Current_Line);
      end if;

      -- line 2
      Buffer_From_Stdin(Buf, Last, Current_Line);
      Extract_Num_Candidates(Buf, Last, Num_Candidates, OK);
      if not OK then
         return Return_Error(Current_Line);
      end if;

      return Input;
   end Read;

   procedure Buffer_From_Stdin(Buf : out String; Last : out Natural;
                               Current_Line : in out Natural) is
   begin
      Get_Line(Buf, Last);
      Current_Line := Current_Line + 1;
   end Buffer_From_Stdin;

   function Is_Line_Number_Of_Candidates(Buf : String) return Boolean is
   begin
      return "number-of-candidates" = Buf(Buf'First..Buf'First + 19);
   end;

   function Is_Line_Votes(Buf : String) return Boolean is
   begin
      return "votes" = Buf(Buf'First..Buf'First + 4);
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

   function Return_Error(Current_Line : Natural) return Input_T is
      Input : Input_T(Invalid);
   begin
      Input.Error_Line := Current_Line;
      return Input;
   end Return_Error;
end Input;
