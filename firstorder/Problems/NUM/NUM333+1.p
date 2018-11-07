%------------------------------------------------------------------------------
% File     : NUM333+1 : ILTP v1.1.1
% Domain   : Number Theory (RDN arithmetic)
% Problem  : ?XYZ, ((X+Y)+Z) = (X+(Y+Z))
% Version  : Especial.
% English  : 

% Refs     : 
% Source   : [TPTP]
% Names    : 

% Status   : Theorem
% Rating   : 0.27 v3.1.0
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.50 v1.1.0
%
% Syntax   : Number of formulae    :  402 ( 374 unit)
%            Number of atoms       :  477 (   6 equality)
%            Maximal formula depth :   19 (   2 average)
%            Number of connectives :   77 (   2 ~  ;   1  |;  46  &)
%                                         (   3 <=>;  25 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   11 (   0 propositional; 1-4 arity)
%            Number of functors    :  260 ( 256 constant; 0-2 arity)
%            Number of variables   :  128 (   0 singleton; 121 !;   7 ?)
%            Maximal term depth    :    5 (   2 average)

% Comments : 
%------------------------------------------------------------------------------
%----Include axioms for RDN arithmetic
include('Axioms/NUM005+0.ax').
include('Axioms/NUM005+1.ax').
include('Axioms/NUM005+2.ax').
%------------------------------------------------------------------------------
%Comment:S-SETHEO---0.0 gives error:
%  *** ERROR:bigloo:parser:
%  parse error (unexpected token `closebracket') -- closebracket
fof(associative,conjecture,
    ( ? [X,Y,Z,Z1,Z2,Z3,Z4] : 
        ( ( sum(X,Y,Z1)
          & sum(Z1,Z,Z2)
          & sum(Y,Z,Z3)
          & sum(X,Z3,Z4) )
       => Z2 = Z4 ) )).

%------------------------------------------------------------------------------
