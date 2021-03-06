%--------------------------------------------------------------------------
% File     : SYN980+1 : ILTP v1.1.2
% Domain   : Syntactic
% Problem  : Syntactic from Shults
% Version  : Especial.
% English  : 

% Refs     : [Shu04] Shults (2004), Email to G. Sutcliffe
% Source   : [Shu04]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v3.1.0
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.1.0
%
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    6 (   0 equality)
%            Maximal formula depth :    7 (   7 average)
%            Number of connectives :    5 (   0 ~  ;   0  |;   1  &)
%                                         (   0 <=>;   4 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 1-2 arity)
%            Number of functors    :    1 (   0 constant; 1-1 arity)
%            Number of variables   :    4 (   0 singleton;   2 !;   2 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
fof(prove_this,conjecture,
    ( ! [B] : 
        ( ! [Y] : 
            ( ( r(B)
             => r(Y) )
           => p(f(Y),Y) )
       => ? [X,Y] : 
            ( p(X,Y)
            & ( q(f(B),B)
             => q(X,Y) ) ) ) )).

%--------------------------------------------------------------------------
