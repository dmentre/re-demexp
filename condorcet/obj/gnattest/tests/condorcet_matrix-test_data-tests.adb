--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Condorcet_Matrix.Test_Data.

with AUnit.Assertions; use AUnit.Assertions;

package body Condorcet_Matrix.Test_Data.Tests is


--  begin read only
   procedure Test_Get_Size (Gnattest_T : in out Test);
   procedure Test_Get_Size_eeb750 (Gnattest_T : in out Test) renames Test_Get_Size;
--  id:2.1/eeb7509557d4a2f0/Get_Size/1/0/
   procedure Test_Get_Size (Gnattest_T : in out Test) is
   --  condorcet_matrix.ads:10:4:Get_Size
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin
      Reset(M, Size => Candidate_Range'First);
      AUnit.Assertions.Assert
        (Get_Size(M) = Candidate_Range'First,
         "Get_Size OK");

--  begin read only
   end Test_Get_Size;
--  end read only


--  begin read only
   procedure Test_Is_Valid_Vote (Gnattest_T : in out Test);
   procedure Test_Is_Valid_Vote_074871 (Gnattest_T : in out Test) renames Test_Is_Valid_Vote;
--  id:2.1/0748715fd62a6909/Is_Valid_Vote/1/0/
   procedure Test_Is_Valid_Vote (Gnattest_T : in out Test) is
   --  condorcet_matrix.ads:12:4:Is_Valid_Vote
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin
      Vote := (1, 2, 3);
      AUnit.Assertions.Assert
        (Is_Valid_Vote(Vote, Size),
         "Valid vote recognized.");

      Vote := (1, 1, 2);
      AUnit.Assertions.Assert
        (not Is_Valid_Vote(Vote, Size),
         "Invalid vote recognized.");

--  begin read only
   end Test_Is_Valid_Vote;
--  end read only


--  begin read only
   procedure Test_Is_Valid_Vote_Matrix (Gnattest_T : in out Test);
   procedure Test_Is_Valid_Vote_Matrix_b82a7d (Gnattest_T : in out Test) renames Test_Is_Valid_Vote_Matrix;
--  id:2.1/b82a7d1afd351b34/Is_Valid_Vote_Matrix/1/0/
   procedure Test_Is_Valid_Vote_Matrix (Gnattest_T : in out Test) is
   --  condorcet_matrix.ads:27:4:Is_Valid_Vote_Matrix
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      Reset(M, Size);
      Vote := (1, 2, 3);
      M.Vote := ((0, 1, 1, others => 0),
                 (0, 0, 1, others => 0),
                 (0, 0, 0, others => 0),
                 others => (others => 0));
      AUnit.Assertions.Assert
        (Is_Valid_Vote_Matrix(M, Vote),
         "Valid matrix recognized.");

      M.Vote := ((0, 1, 0, others => 0),
                 (0, 0, 1, others => 0),
                 (0, 0, 0, others => 0),
                 others => (others => 0));
      AUnit.Assertions.Assert
        (not Is_Valid_Vote_Matrix(M, Vote),
         "Invalid matrix recognized.");

--  begin read only
   end Test_Is_Valid_Vote_Matrix;
--  end read only


--  begin read only
   procedure Test_Is_Zero (Gnattest_T : in out Test);
   procedure Test_Is_Zero_78dcb3 (Gnattest_T : in out Test) renames Test_Is_Zero;
--  id:2.1/78dcb388226d19ce/Is_Zero/1/0/
   procedure Test_Is_Zero (Gnattest_T : in out Test) is
   --  condorcet_matrix.ads:31:4:Is_Zero
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Is_Zero;
--  end read only


--  begin read only
   procedure Test_Reset (Gnattest_T : in out Test);
   procedure Test_Reset_b2e6b9 (Gnattest_T : in out Test) renames Test_Reset;
--  id:2.1/b2e6b9a9fab2271c/Reset/1/0/
   procedure Test_Reset (Gnattest_T : in out Test) is
   --  condorcet_matrix.ads:33:4:Reset
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Reset;
--  end read only


--  begin read only
   procedure Test_Vote (Gnattest_T : in out Test);
   procedure Test_Vote_34398e (Gnattest_T : in out Test) renames Test_Vote;
--  id:2.1/34398e546330d6d1/Vote/1/0/
   procedure Test_Vote (Gnattest_T : in out Test) is
   --  condorcet_matrix.ads:36:4:Vote
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Vote;
--  end read only

end Condorcet_Matrix.Test_Data.Tests;
