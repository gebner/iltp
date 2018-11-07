%--------------------------------------------------------------------------
% File     : ALG210+2 : ILTP v1.1.0
% Domain   : General Algebra
% Problem  : Star-algebras are closed under multiplication
% Version  : Especial.
%            Theorem formulation : Expanded.
% English  : 

% Refs     : [Col04] Colton (2004), Email to G.Sutcliffe
% Source   : [Col04]
% Names    : 

% Status   : Theorem
% Rating   : 0.18 v3.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :    3 (   1 unit)
%            Number of atoms       :    8 (   4 equality)
%            Maximal formula depth :    7 (   5 average)
%            Number of connectives :    5 (   0 ~  ;   0  |;   3  &)
%                                         (   1 <=>;   1 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    2 (   0 propositional; 1-2 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :    8 (   0 singleton;   7 !;   1 ?)
%            Maximal term depth    :    3 (   2 average)

% Comments : 
%--------------------------------------------------------------------------
fof(axiom_1,axiom,( 
    ! [A,B,C] : times(times(A,B),C) = times(B,times(C,A)) )).

fof(axiom_2,axiom,( 
    ! [B] : 
      ( element(B)
    <=> ? [C] : 
          ( times(B,C) = B
          & times(B,B) = C ) ) )).

fof(conjecture_1,conjecture,(
    ! [A,B,C] : 
      ( ( element(A)
        & element(B)
        & C = times(A,B) )
     => element(C) )   )).

%--------------------------------------------------------------------------
