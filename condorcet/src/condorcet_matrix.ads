package Condorcet_Matrix is
   type Candidate_Range is range 1..20; -- REQ-D-1 for upper bound

   type Vote_Range is range 0..10_000; -- REQ-D-2 for upper bound

   type Condorcet_Matrix is private;

   function Is_Zero(M : Condorcet_Matrix) return Boolean;

   procedure Reset(M : in out Condorcet_Matrix) with
     Post => Is_Zero(M);

private
   type Matrix_Content is
     array (Candidate_Range, Candidate_Range) of Vote_Range;

   type Condorcet_Matrix is
      record
         Size : Candidate_Range;
         Vote : Matrix_Content;
      end record;

end Condorcet_Matrix;
