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
   procedure Test_Get_Size_f56751 (Gnattest_T : in out Test) renames Test_Get_Size;
--  id:2.1/f567513e7b582cdd/Get_Size/1/0/
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
   procedure Test_Get_Vote (Gnattest_T : in out Test);
   procedure Test_Get_Vote_ff6ec0 (Gnattest_T : in out Test) renames Test_Get_Vote;
--  id:2.1/ff6ec0d0eb393849/Get_Vote/1/0/
   procedure Test_Get_Vote (Gnattest_T : in out Test) is
   --  condorcet_matrix.ads:12:4:Get_Vote
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin
      Reset(M, Size);

      M.Vote := ((0, 1, 2, others => 0),
                 (0, 0, 1, others => 0),
                 (0, 0, 0, others => 0),
                 others => (others => 0));
      AUnit.Assertions.Assert
        (Get_Vote(M, 1, 3) = 2,
         "Get_Vote checked.");

--  begin read only
   end Test_Get_Vote;
--  end read only


--  begin read only
   procedure Test_Is_Valid_Vote (Gnattest_T : in out Test);
   procedure Test_Is_Valid_Vote_074871 (Gnattest_T : in out Test) renames Test_Is_Valid_Vote;
--  id:2.1/0748715fd62a6909/Is_Valid_Vote/1/0/
   procedure Test_Is_Valid_Vote (Gnattest_T : in out Test) is
   --  condorcet_matrix.ads:15:4:Is_Valid_Vote
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
   procedure Test_Is_Valid_Matrix_Of_Vote (Gnattest_T : in out Test);
   procedure Test_Is_Valid_Matrix_Of_Vote_3281d7 (Gnattest_T : in out Test) renames Test_Is_Valid_Matrix_Of_Vote;
--  id:2.1/3281d7a2aa507f2f/Is_Valid_Matrix_Of_Vote/1/0/
   procedure Test_Is_Valid_Matrix_Of_Vote (Gnattest_T : in out Test) is
   --  condorcet_matrix.ads:30:4:Is_Valid_Matrix_Of_Vote
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
        (Is_Valid_Matrix_Of_Vote(M, Vote),
         "Valid matrix recognized.");

      M.Vote := ((0, 1, 0, others => 0),
                 (0, 0, 1, others => 0),
                 (0, 0, 0, others => 0),
                 others => (others => 0));
      AUnit.Assertions.Assert
        (not Is_Valid_Matrix_Of_Vote(M, Vote),
         "Invalid matrix recognized.");

--  begin read only
   end Test_Is_Valid_Matrix_Of_Vote;
--  end read only


--  begin read only
   procedure Test_Is_Upper_Bound (Gnattest_T : in out Test);
   procedure Test_Is_Upper_Bound_933a96 (Gnattest_T : in out Test) renames Test_Is_Upper_Bound;
--  id:2.1/933a96a820586559/Is_Upper_Bound/1/0/
   procedure Test_Is_Upper_Bound (Gnattest_T : in out Test) is
   --  condorcet_matrix.ads:34:4:Is_Upper_Bound
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin
      Reset(M, Size);
      M.Vote := ((0, 1, 2, others => 0),
                 (0, 0, 1, others => 0),
                 (0, 0, 0, others => 0),
                 others => (others => 0));
      AUnit.Assertions.Assert
        (Is_Upper_Bound(M, 2),
         "Valid upper bound recognized.");

      AUnit.Assertions.Assert
        (not Is_Upper_Bound(M, 1),
         "Invalid upper bound recognized.");

--  begin read only
   end Test_Is_Upper_Bound;
--  end read only


--  begin read only
   procedure Test_Reset (Gnattest_T : in out Test);
   procedure Test_Reset_604c35 (Gnattest_T : in out Test) renames Test_Reset;
--  id:2.1/604c350e403979d8/Reset/1/0/
   procedure Test_Reset (Gnattest_T : in out Test) is
   --  condorcet_matrix.ads:37:4:Reset
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin
      Reset(M, Size);
      AUnit.Assertions.Assert
        ((for all I in Candidate_Range'Range =>
            (for all J in Candidate_Range'Range =>
               (M.Vote(I,J) = 0)))
         and M.Size = Size,
         "Reset checked.");

--  begin read only
   end Test_Reset;
--  end read only


--  begin read only
   procedure Test_Matrix_Of_Vote (Gnattest_T : in out Test);
   procedure Test_Matrix_Of_Vote_e1de69 (Gnattest_T : in out Test) renames Test_Matrix_Of_Vote;
--  id:2.1/e1de6935221bad44/Matrix_Of_Vote/1/0/
   procedure Test_Matrix_Of_Vote (Gnattest_T : in out Test) is
   --  condorcet_matrix.ads:40:4:Matrix_Of_Vote
--  end read only

      pragma Unreferenced (Gnattest_T);

      M2 : Matrix_T;
   begin
      Reset(M, Size);
      Reset(M2, Size);
      Vote := (1, 2, 3);
      Matrix_Of_Vote(M, Vote);

      M2.Vote := ((0, 1, 1, others => 0),
                  (0, 0, 1, others => 0),
                  (0, 0, 0, others => 0),
                  others => (others => 0));
      AUnit.Assertions.Assert
        (M.Vote = M2.Vote,
         "Vote checked.");

--  begin read only
   end Test_Matrix_Of_Vote;
--  end read only


--  begin read only
   procedure Test_Sum (Gnattest_T : in out Test);
   procedure Test_Sum_4f55e5 (Gnattest_T : in out Test) renames Test_Sum;
--  id:2.1/4f55e5ec421d67ea/Sum/1/0/
   procedure Test_Sum (Gnattest_T : in out Test) is
   --  condorcet_matrix.ads:44:4:Sum
--  end read only

      pragma Unreferenced (Gnattest_T);

      M2, M3 : Matrix_T;
   begin
      Reset(M, Size);
      Reset(M2, Size);
      Reset(M3, Size);

      M.Vote := ((0, 1, 2, others => 0),
                 (0, 0, 1, others => 0),
                 (0, 0, 0, others => 0),
                 others => (others => 0));
      M2.Vote := ((0, 1, 1, others => 0),
                  (0, 0, 1, others => 0),
                  (1, 0, 0, others => 0),
                  others => (others => 0));
      M3.Vote := ((0, 2, 3, others => 0),
                  (0, 0, 2, others => 0),
                  (1, 0, 0, others => 0),
                  others => (others => 0));
      Sum(M, M2, 2);
      AUnit.Assertions.Assert
        (M.Vote = M3.Vote,
         "Sum checked.");

--  begin read only
   end Test_Sum;
--  end read only

end Condorcet_Matrix.Test_Data.Tests;
