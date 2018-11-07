%--------------------------------------------------------------------------
% File     : SYN919+1 : ILTP v1.1.0
% Domain   : Syntactic
% Problem  : From Smullyan
% Version  : Especial.
% English  : 

% Refs     : [Smu68] Smullyan (1968), First-Order Logic
%            [Shu04] Shults (2004), Email to G. Sutcliffe
% Source   : [Shu04]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v3.1.0
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.1
%
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    7 (   0 equality)
%            Maximal formula depth :    8 (   8 average)
%            Number of connectives :    6 (   0 ~  ;   0  |;   2  &)
%                                         (   0 <=>;   4 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    7 (   0 singleton;   7 !;   0 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
fof(prove_this,conjecture,
    ( ( ! [X,Y] : 
          ( r(X,Y)
         => r(Y,X) )
      & ! [X,Y,Z] : 
          ( ( r(X,Y)
            & r(Y,Z) )
         => r(X,Z) ) )
   => ! [X,Y] : 
        ( r(X,Y)
       => r(X,X) ) )).

%--------------------------------------------------------------------------
