%--------------------------------------------------------------------------
% File     : LCL354+1 : ILTP v1.1.0
% Domain   : Logic Calculi (Temporal)
% Problem  : Independence of an Axiom for Temporal Intervals
% Version  : [Zha98] axioms : Especial.
% English  : Shows that the 5th axiom of temporal intervals is not dependant
%            on the first three by building a model of the first three and
%            the negation of the 5th.

% Refs     : [Zha98] Zhang (1998), Showing the Independence of An Axiom for
% Source   : [Zha98]
% Names    : - [Zha98]

% Status   : Satisfiable
% Rating   : 0.67 v2.6.0, 0.50 v2.5.0, 0.33 v2.4.0
%
% Status (intuit.) : Non-Theorem
% Rating (intuit.) : 0.75 v1.1
%
% Syntax   : Number of formulae    :    4 (   0 unit)
%            Number of atoms       :   18 (   0 equality)
%            Maximal formula depth :   11 (   8 average)
%            Number of connectives :   15 (   1 ~  ;   0  |;   9  &)
%                                         (   0 <=>;   3 =>;   0 <=)
%                                         (   2 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   18 (   0 singleton;  11 !;   7 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
fof(m1,axiom,
    ( ! [P,Q,R,S] : 
        ( ( meets(P,Q)
          & meets(P,S)
          & meets(R,Q) )
       => meets(R,S) ) )).

fof(m2,axiom,
    ( ! [P,Q,R,S] : 
        ( ( meets(P,Q)
          & meets(R,S) )
       => ( ( meets(P,S)
          <~> ? [T] : 
                ( meets(P,T)
                & meets(T,S) ) )
        <~> ? [T] : 
              ( meets(R,T)
              & meets(T,Q) ) ) ) )).

fof(m3,axiom,
    ( ! [P] : 
      ? [Q,R] : 
        ( meets(Q,P)
        & meets(P,R) ) )).

fof(not_m5,axiom,
    ( ~ ( ! [P,Q] : 
            ( meets(P,Q)
           => ? [R,S,T] : 
                ( meets(R,P)
                & meets(Q,S)
                & meets(R,T)
                & meets(T,S) ) ) ) )).

%--------------------------------------------------------------------------