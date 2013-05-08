# High-level requirements for demexp #

This document contains high-level requirements for demexp
software. Basic knowledge of the demexp approach is assumed.

## Glossary ##

Answer: A possible response to a question.

Question: An issue to solve that need answers from other Users.

User: A participant to the demexp process.

## Question and Responses ##

REQ-QR-1: Any User can create a new Question.

REQ-QR-2: A Question contains a short summary and an optional longer
description.

REQ-QR-3: Any User can add a new Answer to a Question.

REQ-QR-4: An Answer contains a short description and an optional longer
description.

## Votes ##

REQ-V-1: Any User with proper rights can vote on a Question.

REQ-V-2: A User can change his/her vote on a Question at any time.

REQ-V-3: Voting is made using [Condorcet voting method]
(https://en.wikipedia.org/wiki/Condorcet_method). Each User ranks the
Responses of a Question in order of preferences. The winning answer is
determined according to the Condorcet procedure, taking into all Users'
votes.

REQ-V-4: In case no Condorcet winner exists, there is no winning
Response to the Question.

> Note: We do not request to use Swartz or Schultze algorithms to
> extract a set of winners. We will see if this is an issue in practice.


## Classification ##

## Delegation ##

## Security ##

