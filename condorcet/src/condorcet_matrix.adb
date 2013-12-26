package body Condorcet_Matrix is
   function Get_Size(M : Condorcet_Matrix) return Candidate_Range is
     (M.Size);

   function Get_Vote(M : Condorcet_Matrix; I,J : Candidate_Range)
                     return Vote_Range is
      (M.Vote(I,J));

   function Is_Valid_Matrix_Of_Vote(M : Condorcet_Matrix; Vote : Vote_T)
                                 return Boolean is
     (-- all votes of 'Vote' a properly stored
        (for all I in Vote'Range =>
           (for all J in I+1 .. Vote'Last =>
              (M.Vote(Vote(I),Vote(J)) = 1 -- candidate I winner over J
               and M.Vote(Vote(J),Vote(I)) = 0 -- and J loser over I
              )))
      and
        -- stored votes are only coming from 'Vote'
        (for all I in Candidate_Range'Range =>
           (for all J in Candidate_Range'Range =>
              (if M.Vote(I,J) = 1 then
                 (for Some Ip in Vote'Range =>
                    (for Some Jp in Vote'Range =>
                       (Vote(Ip) = I and Vote(Jp) = J and Ip < Jp)
                    ))
               else M.Vote(I,J) = 0
              )))
        and
        -- only zeros on the diagonal
        (for all I in Candidate_Range'Range => M.Vote(I,I) = 0));

   function Is_Upper_Bound(M : Condorcet_Matrix; Upper : Vote_Range)
                           return Boolean is
     (for all I in Candidate_Range'Range =>
        (for all J in Candidate_Range'Range => M.Vote(I,J) <= Upper));

   procedure Reset(M : in out Condorcet_Matrix; Size : Candidate_Range) is
   begin
      M.Size := Size;
      M.Vote := (others => (others => 0));
   end Reset;

   procedure Matrix_Of_Vote(M : in out Condorcet_Matrix; Vote : Vote_T) is
   begin
      for I in Vote'Range loop
         for J in I+1 .. Vote'Last loop
            M.Vote(Vote(I), Vote(J)) := 1;
            M.Vote(Vote(J), Vote(I)) := 0;
         end loop;
      end loop;
   end Matrix_Of_Vote;

   procedure Sum(To_M : in out Condorcet_Matrix; M2 : in Condorcet_Matrix;
                 Upper : Vote_Range) is
      Tmp : Vote_Range;
   begin
      for I in Candidate_Range'Range loop
         pragma Loop_Invariant
           (for all Ip in Candidate_Range'First .. I-1 =>
              (for all Jp in Candidate_Range'Range =>
                 (To_M.Vote(Ip,Jp) <= Upper + 1)));
         pragma Loop_Invariant
           (for all Ip in I .. Candidate_Range'Last =>
              (for all Jp in Candidate_Range'Range =>
                 (To_M.Vote(Ip,Jp) <= Upper)));

         for J in Candidate_Range'Range loop
            pragma Loop_Invariant
              (for all Jp in Candidate_Range'First .. J-1 =>
                 (To_M.Vote(I,Jp) <= Upper + 1));
            pragma Loop_Invariant
              (for all Jp in J .. Candidate_Range'Last =>
                 (To_M.Vote(I,Jp) <= Upper));
            pragma Assert (To_M.Vote(I,J) <= Upper and M2.Vote(I,J) <= 1);
            Tmp := To_M.Vote(I,J) + M2.Vote(I,J);
            To_M.Vote(I,J) := Tmp; -- Tmp only needed for proof (GNATprove GPL 2013)
            pragma Assert (Tmp <= Upper + 1);
            pragma Assert (To_M.Vote(I,J) <= Upper + 1);
            pragma Assert
              (for all Jp in Candidate_Range'First .. J =>
                 (To_M.Vote(I,Jp) <= Upper + 1));
         end loop;
         pragma Assert
           (for all Jp in Candidate_Range'Range =>
              (To_M.Vote(I,Jp) <= Upper + 1));
      end loop;
   end Sum;
end Condorcet_Matrix;
