%--------------------------------------------------------------------------
% File     : PLA027+1 : ILTP v1.1.2
% Domain   : Planning
% Problem  : Blocks A/B/C/D => D/C/B/A
% Version  : [Bau99] axioms.
% English  :

% Refs     : [Bau99] Baumgartner (1999), FTP'2000 - Problem Sets
%            [KS96]  Kautz & Selman (1996), Pushing the Envelope: Planning,
%            [KS92]  Kautz & Selman (1992), Planning as Satisfiability
% Source   : [Bau99]
% Names    : reversal [Bau99]

% Status   : CounterSatisfiable
% Rating   : 0.33 v3.1.0, 0.67 v2.5.0
%
% Status (intuit.) : Unsolved
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :   60 (  31 unit)
%            Number of atoms       :  176 (   0 equality)
%            Maximal formula depth :   10 (   4 average)
%            Number of connectives :  141 (  25 ~  ;  12  |;  47  &)
%                                         (   0 <=>;  57 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   12 (   0 propositional; 1-3 arity)
%            Number of functors    :    7 (   6 constant; 0-1 arity)
%            Number of variables   :   70 (   0 singleton;  70 !;   0 ?)
%            Maximal term depth    :    5 (   1 average)

% Comments :
% Bugfixes : v2.5.0 - Combined multiple conjecture formulae.
%--------------------------------------------------------------------------
%----Include blocks world axioms
include('Axioms/PLA002+0.ax').
%--------------------------------------------------------------------------
fof(different_not_equal,hypothesis,
    ( ! [Y,X] : 
        ( ( different(X,Y)
          | different(Y,X) )
       => neq(X,Y) ) )).

fof(block_1_not_block_2,hypothesis,
    ( different(block_1,block_2) )).

fof(block_1_not_block_3,hypothesis,
    ( different(block_1,block_3) )).

fof(block_1_not_block_4,hypothesis,
    ( different(block_1,block_4) )).

fof(block_2_not_block_3,hypothesis,
    ( different(block_2,block_3) )).

fof(block_2_not_block_4,hypothesis,
    ( different(block_2,block_4) )).

fof(block_3_not_block_4,hypothesis,
    ( different(block_3,block_4) )).

fof(block_1_not_table,hypothesis,
    ( different(block_1,table) )).

fof(block_2_not_table,hypothesis,
    ( different(block_2,table) )).

fof(block_3_not_table,hypothesis,
    ( different(block_3,table) )).

fof(block_4_not_table,hypothesis,
    ( different(block_4,table) )).

fof(block_1,hypothesis,
    ( a_block(block_1) )).

fof(block_2,hypothesis,
    ( a_block(block_2) )).

fof(block_3,hypothesis,
    ( a_block(block_3) )).

fof(block_4,hypothesis,
    ( a_block(block_4) )).

fof(table,hypothesis,
    ( a_block(table) )).

fof(fixed_table,hypothesis,
    ( fixed(table) )).

fof(nonfixed_block_1,hypothesis,
    ( nonfixed(block_1) )).

fof(nonfixed_block_2,hypothesis,
    ( nonfixed(block_2) )).

fof(nonfixed_block_3,hypothesis,
    ( nonfixed(block_3) )).

fof(nonfixed_block_4,hypothesis,
    ( nonfixed(block_4) )).

%----Give here a list 0..N of timepoints in order to generate the states 
%----of time N.
fof(time_0,hypothesis,
    ( time(time_0) )).

fof(time_1,hypothesis,
    ( time(s(time_0)) )).

fof(time_2,hypothesis,
    ( time(s(s(time_0))) )).

fof(time_3,hypothesis,
    ( time(s(s(s(time_0)))) )).

fof(time_4,hypothesis,
    ( time(s(s(s(s(time_0))))) )).

%----At any time, have some source, destination and object
fof(some_source,hypothesis,
    ( ! [I] : 
        ( time(I)
       => ( source(block_1,I)
          | source(block_2,I)
          | source(block_3,I)
          | source(block_4,I)
          | source(table,I) ) ) )).

fof(some_destination,hypothesis,
    ( ! [I] : 
        ( time(I)
       => ( destination(block_1,I)
          | destination(block_2,I)
          | destination(block_3,I)
          | destination(block_4,I)
          | destination(table,I) ) ) )).

fof(some_object,hypothesis,
    ( ! [I] : 
        ( time(I)
       => ( object(block_1,I)
          | object(block_2,I)
          | object(block_3,I)
          | object(block_4,I) ) ) )).

%----Initial state
fof(initial_1_on_2,hypothesis,
    ( on(block_1,block_2,time_0) )).

fof(initial_clear_1,hypothesis,
    ( clear(block_1,time_0) )).

fof(initial_2_on_3,hypothesis,
    ( on(block_2,block_3,time_0) )).

fof(initial_3_on_4,hypothesis,
    ( on(block_3,block_4,time_0) )).

fof(initial_4_on_table,hypothesis,
    ( on(block_4,table,time_0) )).

%----Final state
fof(goal_time_4,hypothesis,
    ( goal_time(s(s(s(s(time_0))))) )).

fof(goal_state,conjecture,
    ( ! [S] : 
        ( goal_time(S)
       => ( on(block_4,block_3,S)
          & clear(block_4,S)
          & on(block_3,block_2,S)
          & on(block_2,block_1,S)
          & on(block_1,table,S) ) ) )).

%--------------------------------------------------------------------------
