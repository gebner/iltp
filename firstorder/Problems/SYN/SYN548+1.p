%--------------------------------------------------------------------------
% File     : SYN548+1 : ILTP v1.1.2
% Domain   : Syntactic (Translated)
% Problem  : dia box (box (p or box q)<=>box p or box q)
% Version  : Especial.
% English  : 

% Refs     : [Wei94] Weidenbach (1994), Email to G. Sutcliffe
%          : [Che80] Chellas (1980), Modal Logic
% Source   : [Wei94]
% Names    : 

% Status   : Theorem
% Rating   : 0.89 v3.1.0, 0.50 v2.7.0, 0.67 v2.6.0, 0.33 v2.5.0, 0.67 v2.4.0, 0.33 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :    3 (   1 unit)
%            Number of atoms       :   14 (   0 equality)
%            Maximal formula depth :   11 (   6 average)
%            Number of connectives :   11 (   0 ~  ;   2  |;   2  &)
%                                         (   1 <=>;   6 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 1-2 arity)
%            Number of functors    :    1 (   1 constant; 0-0 arity)
%            Number of variables   :   10 (   0 singleton;   9 !;   1 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : These are modal logic problems translated to FOF. The problems 
%            can be easily solved by theorem proving methods for modal logic, 
%            but their (naive) translation into first-order logic results in 
%            hard first-order problems. The first-order translation of the 
%            box, diamond operators is:
%                [box P]x  :=  (all y R(x,y) -> [P]y)
%                [dia P]x  :=  (exists R(x,y) & [P]y)
%                [P]x  :=  P(x)  if P is an atom
%            where we start with some initial context 'o' (the initial world),
%            i.e. we translate a formula P into [P]o. [Wei94]
%--------------------------------------------------------------------------
fof(reflexivity_of_reachable,axiom,
    ( ! [X] : reachable(X,X) )).

fof(transitivity_of_reachable,axiom,
    ( ! [X,Y,Z] : 
        ( ( reachable(X,Y)
          & reachable(Y,Z) )
       => reachable(X,Z) ) )).

%---- (exists x (R(o,x) & (all y (R(x,y) -> ((all z (R(y,z) -> (P(z) | 
%---- (all v (R(z,v) -> Q(v))))))
%---- <-> ((all w (R(y,w) -> P(w))) | (all w (R(y,w) -> Q(w))))))))).
fof(prove_this,conjecture,
    ( ? [X] : 
        ( reachable(initial_world,X)
        & ! [Y] : 
            ( reachable(X,Y)
           => ( ! [Z] : 
                  ( reachable(Y,Z)
                 => ( p(Z)
                    | ! [V] : 
                        ( reachable(Z,V)
                       => q(V) ) ) )
            <=> ( ! [W] : 
                    ( reachable(Y,W)
                   => p(W) )
                | ! [W] : 
                    ( reachable(Y,W)
                   => q(W) ) ) ) ) ) )).

%--------------------------------------------------------------------------
