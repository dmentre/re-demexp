with Input; use Input;
with Ada.Text_IO; use Ada.Text_IO;

procedure Condorcet is
   Read_Input : Input_T;
begin
   Read_Input := Input.Read;

   case Read_Input.Validity is
      when Valid =>
         Put_Line("OK");

      when Invalid =>
         Put("Invalid, error line: ");
         Put(Natural'Image(Read_Input.Error_Line));
         Put_Line("");
   end case;

end Condorcet;
