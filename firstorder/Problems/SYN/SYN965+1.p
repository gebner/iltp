%--------------------------------------------------------------------------
% File     : SYN965+1 : ILTP v1.1.2
% Domain   : Syntactic
% Problem  : Syntactic from Shults
% Version  : Especial.
% English  : 

% Refs     : [Shu04] Shults (2004), Email to G. Sutcliffe
% Source   : [Shu04]
% Names    :

% Status   : Theorem
% Rating   : 0.22 v3.1.0
%
% Status (intuit.) : Non-Theorem
% Rating (intuit.) : 0.75 v1.1.0
%
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    5 (   0 equality)
%            Maximal formula depth :    7 (   7 average)
%            Number of connectives :    4 (   0 ~  ;   0  |;   2  &)
%                                         (   0 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    4 (   0 singleton;   1 !;   3 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
fof(prove_this,conjecture,
    ( ? [Z] : 
      ! [X] : 
      ? [Y] : 
        ( ( p(Y,X)
         => ? [W] : p(W,Y) )
        & ( ( p(Z,Y)
            & p(Y,Z) )
         => p(Y,X) ) ) )).

%--------------------------------------------------------------------------
