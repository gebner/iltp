%--------------------------------------------------------------------------
% File     : SET776+4 : ILTP v1.1.0
% Domain   : Set Theory (Equivalence relations)
% Problem  : Property of pre-order 
% Version  : [Pas99] axioms.
% English  : If P is a pre-order relation,and R defined by R(A,B) iff P(A,B)
%            and P(B,A), then R(X1,Y1) and R(X2,Y2) and P(X1,X2) implies 
%            P(Y1,Y2).

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.09 v3.1.0, 0.22 v2.7.0, 0.17 v2.6.0, 0.43 v2.5.0, 0.62 v2.4.0, 0.25 v2.3.0, 0.33 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   17 (   1 unit)
%            Number of atoms       :   82 (   4 equality)
%            Maximal formula depth :   13 (   7 average)
%            Number of connectives :   68 (   3 ~  ;   2  |;  29  &)
%                                         (  16 <=>;  18 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    9 (   0 propositional; 2-3 arity)
%            Number of functors    :   10 (   1 constant; 0-3 arity)
%            Number of variables   :   66 (   0 singleton;  62 !;   4 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include set theory definitions
include('Axioms/SET006+0.ax').
%----Include equivalence relation axioms
include('Axioms/SET006+2.ax').
%--------------------------------------------------------------------------
fof(thIII12,conjecture,
    ( ! [E,P,R] : 
        ( ( pre_order(P,E)
          & ! [A,B] : 
              ( ( member(A,E)
                & member(B,E) )
             => ( apply(R,A,B)
              <=> ( apply(P,A,B)
                  & apply(P,B,A) ) ) ) )
       => ! [X1,X2,Y1,Y2] : 
            ( ( member(X1,E)
              & member(X2,E)
              & member(Y1,E)
              & member(Y2,E) )
           => ( ( apply(R,X1,Y1)
                & apply(R,X2,Y2)
                & apply(P,X1,X2) )
             => apply(P,Y1,Y2) ) ) ) )).

%--------------------------------------------------------------------------
