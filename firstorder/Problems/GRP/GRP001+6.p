%------------------------------------------------------------------------------
% File     : GRP001+6 : ILTP v1.1.0
% Domain   : Group Theory
% Problem  : X^2 = identity => commutativity
% Version  : Especial.
% English  : If the square of every element is the identity, the system 
%            is commutative.

% Refs     : [Shu04] Shults (2004), Email to G. Sutcliffe
% Source   : [Shu04]
% Names    : 

% Status   : Theorem
% Rating   : 0.33 v3.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :   16 (   0 equality)
%            Maximal formula depth :   15 (  15 average)
%            Number of connectives :   15 (   0 ~  ;   0  |;  10  &)
%                                         (   0 <=>;   5 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 3-3 arity)
%            Number of functors    :    1 (   0 constant; 1-1 arity)
%            Number of variables   :   24 (   0 singleton;  23 !;   1 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%------------------------------------------------------------------------------
fof(commutativity,conjecture,
    ( ! [E] : 
        ( ( ! [X,Y] : 
            ? [Z] : product(X,Y,Z)
          & ! [X,Y,Z,U,V,W] :
              ( ( product(X,Y,U)
                & product(Y,Z,V)
                & product(U,Z,W) )
             => product(X,V,W) )
          & ! [X,Y,Z,U,V,W] : 
              ( ( product(X,Y,U) 
                & product(Y,Z,V)
                & product(X,V,W) )
             => product(U,Z,W) )
          & ! [X] : product(X,E,X)
          & ! [X] : product(E,X,X)
          & ! [X] : product(X,inverse(X),E) 
          & ! [X] : product(inverse(X),X,E) )
       => ( ! [X] : product(X,X,E)
         => ! [U,V,W] :
              ( product(U,V,W)
             => product(V,U,W) ) ) ) )).
%------------------------------------------------------------------------------
