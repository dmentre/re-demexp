package body Input is
   procedure Read is
      Buf : String(1..Input_Buffer_Size);
      Last : Natural;
   begin
      Buffer_From_Stdin(Buf, Last);
      if Is_Line_Number_Of_Candidates(Buf) then
         Put_Line("OK");
      else
         Put_Line("Bad");
      end if;
   end Read;

   procedure Buffer_From_Stdin(Buf : out String; Last : out Natural) is
   begin
      Get_Line(Buf, Last);
   end Buffer_From_Stdin;

   function Is_Line_Number_Of_Candidates(Buf : String) return Boolean is
   begin
      return "number-of-candidates" = Buf(Buf'First..Buf'First + 19);
   end;

   function Is_Line_Votes(Buf : String) return Boolean is
   begin
      return "votes" = Buf(Buf'First..Buf'First + 4);
   end;
end Input;
