package body Condorcet_Matrix is
   function Is_Zero(M : Condorcet_Matrix) return Boolean is
     (for all I in Candidate_Range'Range =>
        (for all J in Candidate_Range'Range => M.Vote(I,J) = 0));

   procedure Reset(M : in out Condorcet_Matrix) is
   begin
      M.Size := Candidate_Range'First;
      M.Vote := (others => (others => 0));
   end Reset;
end Condorcet_Matrix;
