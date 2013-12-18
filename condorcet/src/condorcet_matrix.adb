package body Condorcet_Matrix is
   procedure Reset_To_Zero(M : in out Condorcet_Matrix) is
   begin
      M.Size := Candidate_Range'First;
      M.Vote := (others => (others => 0));
   end Reset_To_Zero;
end Condorcet_Matrix;
