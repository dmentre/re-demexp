with Ada.Text_IO; use Ada.Text_IO;
with Condorcet_Matrix; use Condorcet_Matrix;

package Input is
   Input_Buffer_Size : constant := 60; -- maximum input: 60 characters
                                       -- (20 2-digits + 20 spaces)

   type Validity_T is (Valid, Invalid);

   type Input_T(Validity : Validity_T := Valid) Is
      record
         case Validity is
            when Valid => null;
            when Invalid =>
               Error_Line : Natural := 0;
         end case;
      end record;

   function Read return Input_T;

private
   Num_Candidates : Candidate_Range;

   procedure Buffer_From_Stdin(Buf : out String; Last : out Natural;
                               Current_Line : in out Natural);


   procedure Parse_Line(Buf : String; Last : Natural; Current_Line : Natural;
                        OK : out Boolean; Finished : out Boolean);

   function Is_Line_Number_Of_Candidates(Buf : String) return Boolean;

   function Is_Line_Votes(Buf : String) return Boolean;

   function Is_Line_End(Buf : String) return Boolean;

   procedure Extract_Num_Candidates(Buf : String; Last : Natural;
                                    Num_Candidates : out Candidate_Range;
                                    OK : out Boolean);

   function Extract_Vote(Buf : String; Last : Natural) return Vote_T;

   function Return_Error(Current_Line : Natural) return Input_T;
end Input;
