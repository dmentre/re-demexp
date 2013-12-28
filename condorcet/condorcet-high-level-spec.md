# Specifications for Condorcet module #

## General requirements ##

**REQ-1**: This module shall implement the Condorcet voting algorithm as
defined in https://en.wikipedia.org/wiki/Condorcet_method#Basic_procedure

**REQ-2**: It shall take its input on standard input.

**REQ-3**: It shall produce its output on standard output.

**REQ-4**: The format of the input shall be in textual form in following
format:

> Line 1: "number-of-candidates" string

> Line 2: two-digit integer number corresponding to the number of
> possible candidates

> Line 3: "votes" string

> Line 4 to n-1: list of at most number-of-candidates two-digit integers
> in the range 1..number-of-candidates. Each integer is separated by a
> single white space

> Line n: "end" string

**REQ-5**: This module shall output if the input is valid or not.

**REQ-6**: In case the input is invalid, the module shall give the line
  number of the invalid line.

**REQ-7**: An input shall be considered valid if all following
conditions are fulfilled:

1. Input follows the input format defined in REQ-4

2. Each integer used in the input is in a valid range defined in REQ-D-1

3. The number of votes is in valid range defined in REQ-D-2

4. For each vote, there is a single entry for at most each candidate

**REQ-8**: In case the input is valid, it shall output if there is a
Condorcet winner or not. If there is a Condorcet winner, it shall output
the number of this winner.

**REQ-9**: The format of the output shall be in textual form in
following format:

> Line 1: "valid-input: yes" or "valid-input: no" string if the input
  is respectively valid or not

> Line 2: integer corresponding to the invalid line number if the input
  is invalid, 0 otherwise

> Line 3: "condorcet-winner: yes" or "condorcet-winner: no" string if
  there is respectively a Condorcet winner or not

> Line 4: integer corresponding to the winning candidate in case there
  is a Condorcet winner, 0 otherwise

**REQ-10**: The end-of-line marker in input and output shall be specific
  to the operating system on which the module is running

## Dimensions ##

**REQ-D-1**: This module shall handle from 2 to 20 candidates

**REQ-D-2**: This module shall handle from 1 to 10,000 votes

## Safety ##

No requirement on safety.

## Security ##

**REQ-SEC-1**: In case of Run Time Error, the program should handle the
  error case and end with an exceptional condition.

Note: We could request that no trace is left in memory. Not sure it is
worth it for now.

## Performance ##

**REQ-PERF-1**: The module shall compute the output in less than 10s.
