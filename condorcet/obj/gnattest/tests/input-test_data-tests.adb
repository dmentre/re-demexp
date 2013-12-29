--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Input.Test_Data.

with AUnit.Assertions; use AUnit.Assertions;

package body Input.Test_Data.Tests is


--  begin read only
   procedure Test_Read (Gnattest_T : in out Test);
   procedure Test_Read_1825cb (Gnattest_T : in out Test) renames Test_Read;
--  id:2.1/1825cb91aaeb2c02/Read/1/0/
   procedure Test_Read (Gnattest_T : in out Test) is
   --  input.ads:19:4:Read
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert(True, "no test");

--  begin read only
   end Test_Read;
--  end read only


--  begin read only
   procedure Test_Buffer_From_Stdin (Gnattest_T : in out Test);
   procedure Test_Buffer_From_Stdin_1f233b (Gnattest_T : in out Test) renames Test_Buffer_From_Stdin;
--  id:2.1/1f233beb4461c52c/Buffer_From_Stdin/1/0/
   procedure Test_Buffer_From_Stdin (Gnattest_T : in out Test) is
   --  input.ads:25:4:Buffer_From_Stdin
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert(True, "no test");

--  begin read only
   end Test_Buffer_From_Stdin;
--  end read only


--  begin read only
   procedure Test_Parse_Line (Gnattest_T : in out Test);
   procedure Test_Parse_Line_b4f657 (Gnattest_T : in out Test) renames Test_Parse_Line;
--  id:2.1/b4f6574893a1ecd8/Parse_Line/1/0/
   procedure Test_Parse_Line (Gnattest_T : in out Test) is
   --  input.ads:29:4:Parse_Line
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Parse_Line;
--  end read only


--  begin read only
   procedure Test_Is_Line_Number_Of_Candidates (Gnattest_T : in out Test);
   procedure Test_Is_Line_Number_Of_Candidates_834ed8 (Gnattest_T : in out Test) renames Test_Is_Line_Number_Of_Candidates;
--  id:2.1/834ed8c7c9f8ec5f/Is_Line_Number_Of_Candidates/1/0/
   procedure Test_Is_Line_Number_Of_Candidates (Gnattest_T : in out Test) is
   --  input.ads:32:4:Is_Line_Number_Of_Candidates
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Is_Line_Number_Of_Candidates("number-of-candidates"),
         "Is_Line_Number_Of_Candidates checked (valid).");

      AUnit.Assertions.Assert
        (not Is_Line_Number_Of_Candidates("number-of-candidate"),
         "Is_Line_Number_Of_Candidates checked (invalid).");

      AUnit.Assertions.Assert
        (Is_Line_Number_Of_Candidates("number-of-candidates0"),
         "Is_Line_Number_Of_Candidates checked (valid).");

--  begin read only
   end Test_Is_Line_Number_Of_Candidates;
--  end read only


--  begin read only
   procedure Test_Is_Line_Votes (Gnattest_T : in out Test);
   procedure Test_Is_Line_Votes_1fdd2b (Gnattest_T : in out Test) renames Test_Is_Line_Votes;
--  id:2.1/1fdd2b669216cfb0/Is_Line_Votes/1/0/
   procedure Test_Is_Line_Votes (Gnattest_T : in out Test) is
   --  input.ads:34:4:Is_Line_Votes
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Is_Line_Votes("votes"),
         "Is_Line_Votes checked (valid).");

      AUnit.Assertions.Assert
        (not Is_Line_Votes("vote"),
         "Is_Line_Votes checked (invalid).");

      AUnit.Assertions.Assert
        (Is_Line_Votes("votes0"),
         "Is_Line_Votes checked (valid).");

--  begin read only
   end Test_Is_Line_Votes;
--  end read only


--  begin read only
   procedure Test_Is_Line_End (Gnattest_T : in out Test);
   procedure Test_Is_Line_End_5a8910 (Gnattest_T : in out Test) renames Test_Is_Line_End;
--  id:2.1/5a8910719dc9b818/Is_Line_End/1/0/
   procedure Test_Is_Line_End (Gnattest_T : in out Test) is
   --  input.ads:36:4:Is_Line_End
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Is_Line_End("end"),
         "Is_Line_End checked (valid 1).");

      AUnit.Assertions.Assert
        (not Is_Line_End("en"),
         "Is_Line_End checked (invalid).");

      AUnit.Assertions.Assert
        (Is_Line_End("end0"),
         "Is_Line_End checked (valid 2).");

--  begin read only
   end Test_Is_Line_End;
--  end read only


--  begin read only
   procedure Test_Extract_Num_Candidates (Gnattest_T : in out Test);
   procedure Test_Extract_Num_Candidates_36a0c1 (Gnattest_T : in out Test) renames Test_Extract_Num_Candidates;
--  id:2.1/36a0c133be152b73/Extract_Num_Candidates/1/0/
   procedure Test_Extract_Num_Candidates (Gnattest_T : in out Test) is
   --  input.ads:38:4:Extract_Num_Candidates
--  end read only

      pragma Unreferenced (Gnattest_T);

      Num_Candidates : Candidate_Range;
      OK : Boolean;
   begin
      Extract_Num_Candidates("02", 2, Num_Candidates, OK);
      AUnit.Assertions.Assert
        (Num_Candidates = 2 and OK = True,
         "Extract_Num_Candidates checked (valid).");

      Extract_Num_Candidates("0A", 2, Num_Candidates, OK);
      AUnit.Assertions.Assert
        (Num_Candidates = Candidate_Range'First and OK = False,
         "Extract_Num_Candidates checked (invalid).");

--  begin read only
   end Test_Extract_Num_Candidates;
--  end read only


--  begin read only
   procedure Test_Extract_Vote (Gnattest_T : in out Test);
   procedure Test_Extract_Vote_6f17d0 (Gnattest_T : in out Test) renames Test_Extract_Vote;
--  id:2.1/6f17d0c3c11c490d/Extract_Vote/1/0/
   procedure Test_Extract_Vote (Gnattest_T : in out Test) is
   --  input.ads:42:4:Extract_Vote
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin
      declare
         Vote : Vote_T := Extract_Vote("01 02 03", 8);
      begin
         AUnit.Assertions.Assert
           (Vote'First = 1 and Vote'Last = 3
            and Vote(1) = 1 and Vote(2) = 2 and Vote(3) = 3,
            "Extract_Vote check (valid).");
      end;

      declare
         Vote : Vote_T := Extract_Vote("01 02 03", 7);
      begin
         AUnit.Assertions.Assert
           (Vote'First > Vote'Last,
            "Extract_Vote check (invalid 1).");
      end;

      declare
         Vote : Vote_T := Extract_Vote("01 02 03", 9);
      begin
         AUnit.Assertions.Assert
           (Vote'First > Vote'Last,
            "Extract_Vote check (invalid 2).");
      end;

      declare
         Vote : Vote_T := Extract_Vote("01 02 0A", 8);
      begin
         AUnit.Assertions.Assert
           (Vote'First > Vote'Last,
            "Extract_Vote check (invalid 3).");
      end;

--  begin read only
   end Test_Extract_Vote;
--  end read only


--  begin read only
   procedure Test_Return_Error (Gnattest_T : in out Test);
   procedure Test_Return_Error_ec580f (Gnattest_T : in out Test) renames Test_Return_Error;
--  id:2.1/ec580f401b794f5f/Return_Error/1/0/
   procedure Test_Return_Error (Gnattest_T : in out Test) is
   --  input.ads:44:4:Return_Error
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Return_Error(1) = (Validity => Invalid, Error_Line => 1),
         "Return_Error check.");

--  begin read only
   end Test_Return_Error;
--  end read only

end Input.Test_Data.Tests;
