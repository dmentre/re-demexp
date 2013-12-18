# Architecture and design of Condorcet module #

## Module structure ##

The Condorcet module is devided into three sub-modules:

1. *Input module*: it transforms an input file into a Condorcet matrix.

2. *Vote module*: it runs Condorcet algorithm on a Condorcet matrix and
outputs if there is a winning candidate and the number of the winner.

3. *Condorcet matrix module*: it provides utility functions used by other
modules to make computations on Condorcet matrices.

*Input module* calls *Vote module*. Both modules are calling *Condorcet
matrix module*.

## Secrets ##

*Input module*: Read the input format.

*Vote module*: Produce the output format.

*Condorcet matrix module*: Handle Condorcet matrices. From a given
 Condorcet matrix, determine if there is a Condorcet winner.

## Input module ##

Input: The vote expressed in text form on standard input.

Outputs:

1. A boolean telling if the input is valid or not;
2. A Condorcet Matrix corresponding to all the votes in the input.

## Vote module ##

Inputs:

1. A boolean telling if the input is valid or not;
2. A Condorcet Matrix corresponding to all the votes in the input.

Output: The result of the vote expressed in text form on the standard
output.

## Condorcet matrix module ##

It provides following functions:
* Creation of an empty Condorcet matrix;
* Update of a Condorcet matrix to take into account that candidate A
  winned over candidate B;
* Sum of two Condorcet matrices into one of them;
* Over a given Condorcet matrix, is candidate A winning over candidate
  B?
