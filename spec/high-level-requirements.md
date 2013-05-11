# High-level requirements for demexp #

This document contains high-level requirements for demexp
software. Basic knowledge of the demexp approach is assumed.

## Glossary ##

Answer: A possible response to a question.

Delegate: A User that has been granted vote power in place of another
User.

Question: An issue to solve that need answers from other Users.

Response: An possible answer to a Question.

Tag: A label put on a Question in order to classify it, i.e. to put the
Question in a set Question on the same topic.

User: A participant to the demexp process.

## Question and Responses ##

REQ-QR-1: Any User can create a new Question.

REQ-QR-2: A Question contains a short summary and an optional longer
description.

REQ-QR-3: Any User can add a new Response to a Question.

REQ-QR-4: A Response contains a short description and an optional longer
description.

> Note: Should a User be allowed to change the short and the long
> description of Questions or Responses he/she has created? Are
> questions identified through their description or through other means?

## Votes ##

REQ-V-1: Any User with proper rights can vote on a Question.

REQ-V-2: A User can change his/her vote on a Question at any time.

REQ-V-3: Voting is made using [Condorcet voting method]
(https://en.wikipedia.org/wiki/Condorcet_method). Each User and Delegate
ranks the Responses of a Question in order of preferences. The winning
answer is determined according to the Condorcet procedure, taking into
account all votes expressed on this Question.

REQ-V-4: In case no Condorcet winner exists, there is no winning
Response to the Question.

> Note: We do not request to use Swartz or Schultze algorithms to
> extract a set of winners. We will see if this is an issue in practice.

REQ-V-5: Each User can at any time vote only once a Question.

REQ-V-6: When a Delegate votes on a Question, this vote is weighted by
the number of received delegations (possibly zero if no delegation).

REQ-V-7: A User can always vote as a User and as a Delegate. The two
votes can be different.

REQ-V-8: Vote of a User is always private, hidden to other Users.

REQ-V-9: Vote of a Delegate can be private or public, according to
Delegate wish.

## Classification ##

REQ-CLA-1: Each Question can have a set of Tags attached to it.

REQ-CLA-2: Adding or removing a Tag to a Question is made by Users
having proper rights.

## Delegation ##

REQ-DEL-1: A User can delegate is right to vote on a given Question to
another User called a Delegate. When a Question is delegated, the user
can no longer vote on it, only his/her Delegate can.

REQ-DEL-2: A User can revoke his/her delegation to another User at any
time. The Delegate can no longer vote on a Question in place of the
delegating User.

REQ-DEL-3: A Delegate never knows the number of delegations it has
received.

> Note: Above requirement is made to avoid as much as possible power
> user that could influence the vote outcome by knowing his/her
> "weight".

REQ-DEL-4: A Delegate can in turn delegates the votes he/she has
received to another User. This is allowed only if it is always possible
to determine who has the Delegate vote of a User.

> Note: Delegation cycles might be banned for example.

## Security ##

REQ-SEC-1: A User must correspond to a unique physical person. A
physical person must correspond to a unique User.

REQ-SEC-2: Several kind of rights can be given or removed to a User:

* _Default rights_: rights to add new Questions and Responses, right to
  vote as User and Delegate on a Question;

* _Classification rights_: right to add and remove Tags in the
  Classification, right to add or remove Tags to a Question;

* _Administrator rights_: right to create a new User or remove an
  existing User, right to add or remove Default, Classification and
  Administrator rights to another User.

> Note: how all these rights are precisely managed is not clear yet.

REQ-SEC-3: There is always a User with Administrator rights in the
system.

REQ-SEC-4: When a new User is created, he/she has Default and
Classification rights.
