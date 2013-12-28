with Ada.Text_IO; use Ada.Text_IO;

package Input is
   Input_Buffer_Size : constant := 60; -- maximum input: 60 characters
                                       -- (20 2-digits + 20 spaces)

   procedure Read;

private
   procedure Buffer_From_Stdin(Buf : out String; Last : out Natural);

   function Is_Line_Number_Of_Candidates(Buf : String) return Boolean;

end Input;
