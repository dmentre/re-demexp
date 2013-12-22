package Condorcet_Matrix is
   type Candidate_Range is range 1..20; -- REQ-D-1 for upper bound

   type Vote_Range is range 0..10_000; -- REQ-D-2 for upper bound

   type Vote_T is array (Candidate_Range range <>) of Candidate_Range;

   type Condorcet_Matrix is private;

   function Get_Size(M : Condorcet_Matrix) return Candidate_Range;

   function Is_Valid_Vote(Vote : Vote_T; Size : Candidate_Range) return Boolean is
     (-- 'Vote' range is valid
      Vote'First = Candidate_Range'First and Vote'Last = Size
      and
      -- not twice the same candidate
        (for all I in Vote'Range =>
           (for all J in Vote'Range =>
              (if I /= J then Vote(I) /= Vote(J))
           ))
      and
        -- only vote for allowed candidates
        (for all I in Vote'Range =>
           (Vote(I) in Vote'Range))
     );

   function Is_Valid_Vote_Matrix(M : Condorcet_Matrix; Vote : Vote_T)
                                 return Boolean with
     Pre => Is_Valid_Vote(Vote, Get_Size(M));

   function Is_Zero(M : Condorcet_Matrix) return Boolean;

   procedure Reset(M : in out Condorcet_Matrix; Size : Candidate_Range) with
     Post => Is_Zero(M) and Get_Size(M) = Size;

   procedure Matrix_Of_Vote(M : in out Condorcet_Matrix; Vote : Vote_T) with
     Pre => Is_Zero(M) and Is_Valid_Vote(Vote, Get_Size(M)),
     Post => Is_Valid_Vote_Matrix(M, Vote);

private
   type Matrix_Content is
     array (Candidate_Range, Candidate_Range) of Vote_Range;

   type Condorcet_Matrix is
      record
         Size : Candidate_Range;
         Vote : Matrix_Content;
      end record;

end Condorcet_Matrix;
