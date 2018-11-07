%--------------------------------------------------------------------------
% File     : ALG097+1 : ILTP v1.1.0
% Domain   : General Algebra
% Problem  : Loops 5: VERIFY-GEN-SYSES-PROBLEM-2
% Version  : Especial.
% English  : 

% Refs     : [Mei03] Meier (2003), Email to G.Sutcliffe
%          : [CM+04] Colton et al. (2004), Automatic Generation of Classifi
% Source   : [Mei03]
% Names    : 

% Status   : Unsatisfiable
% Rating   : 0.00 v3.1.0, 0.83 v2.7.0
%
% Status (intuit.) : Non-Theorem
% Rating (intuit.) : 0.50 v1.1
%
% Syntax   : Number of formulae    :  126 (   0 unit)
%            Number of atoms       :  910 ( 910 equality)
%            Maximal formula depth :  101 (   6 average)
%            Number of connectives : 1039 ( 255 ~  ; 329  |; 455  &)
%                                         (   0 <=>;   0 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    7 (   6 constant; 0-2 arity)
%            Number of variables   :    0 (   0 singleton;   0 !;   0 ?)
%            Maximal term depth    :    3 (   2 average)

% Comments : 
%--------------------------------------------------------------------------
fof(ax1,axiom,
    ( ( op(e0,e0) = e0
      | op(e0,e0) = e1
      | op(e0,e0) = e2
      | op(e0,e0) = e3
      | op(e0,e0) = e4 )
    & ( op(e0,e1) = e0
      | op(e0,e1) = e1
      | op(e0,e1) = e2
      | op(e0,e1) = e3
      | op(e0,e1) = e4 )
    & ( op(e0,e2) = e0
      | op(e0,e2) = e1
      | op(e0,e2) = e2
      | op(e0,e2) = e3
      | op(e0,e2) = e4 )
    & ( op(e0,e3) = e0
      | op(e0,e3) = e1
      | op(e0,e3) = e2
      | op(e0,e3) = e3
      | op(e0,e3) = e4 )
    & ( op(e0,e4) = e0
      | op(e0,e4) = e1
      | op(e0,e4) = e2
      | op(e0,e4) = e3
      | op(e0,e4) = e4 )
    & ( op(e1,e0) = e0
      | op(e1,e0) = e1
      | op(e1,e0) = e2
      | op(e1,e0) = e3
      | op(e1,e0) = e4 )
    & ( op(e1,e1) = e0
      | op(e1,e1) = e1
      | op(e1,e1) = e2
      | op(e1,e1) = e3
      | op(e1,e1) = e4 )
    & ( op(e1,e2) = e0
      | op(e1,e2) = e1
      | op(e1,e2) = e2
      | op(e1,e2) = e3
      | op(e1,e2) = e4 )
    & ( op(e1,e3) = e0
      | op(e1,e3) = e1
      | op(e1,e3) = e2
      | op(e1,e3) = e3
      | op(e1,e3) = e4 )
    & ( op(e1,e4) = e0
      | op(e1,e4) = e1
      | op(e1,e4) = e2
      | op(e1,e4) = e3
      | op(e1,e4) = e4 )
    & ( op(e2,e0) = e0
      | op(e2,e0) = e1
      | op(e2,e0) = e2
      | op(e2,e0) = e3
      | op(e2,e0) = e4 )
    & ( op(e2,e1) = e0
      | op(e2,e1) = e1
      | op(e2,e1) = e2
      | op(e2,e1) = e3
      | op(e2,e1) = e4 )
    & ( op(e2,e2) = e0
      | op(e2,e2) = e1
      | op(e2,e2) = e2
      | op(e2,e2) = e3
      | op(e2,e2) = e4 )
    & ( op(e2,e3) = e0
      | op(e2,e3) = e1
      | op(e2,e3) = e2
      | op(e2,e3) = e3
      | op(e2,e3) = e4 )
    & ( op(e2,e4) = e0
      | op(e2,e4) = e1
      | op(e2,e4) = e2
      | op(e2,e4) = e3
      | op(e2,e4) = e4 )
    & ( op(e3,e0) = e0
      | op(e3,e0) = e1
      | op(e3,e0) = e2
      | op(e3,e0) = e3
      | op(e3,e0) = e4 )
    & ( op(e3,e1) = e0
      | op(e3,e1) = e1
      | op(e3,e1) = e2
      | op(e3,e1) = e3
      | op(e3,e1) = e4 )
    & ( op(e3,e2) = e0
      | op(e3,e2) = e1
      | op(e3,e2) = e2
      | op(e3,e2) = e3
      | op(e3,e2) = e4 )
    & ( op(e3,e3) = e0
      | op(e3,e3) = e1
      | op(e3,e3) = e2
      | op(e3,e3) = e3
      | op(e3,e3) = e4 )
    & ( op(e3,e4) = e0
      | op(e3,e4) = e1
      | op(e3,e4) = e2
      | op(e3,e4) = e3
      | op(e3,e4) = e4 )
    & ( op(e4,e0) = e0
      | op(e4,e0) = e1
      | op(e4,e0) = e2
      | op(e4,e0) = e3
      | op(e4,e0) = e4 )
    & ( op(e4,e1) = e0
      | op(e4,e1) = e1
      | op(e4,e1) = e2
      | op(e4,e1) = e3
      | op(e4,e1) = e4 )
    & ( op(e4,e2) = e0
      | op(e4,e2) = e1
      | op(e4,e2) = e2
      | op(e4,e2) = e3
      | op(e4,e2) = e4 )
    & ( op(e4,e3) = e0
      | op(e4,e3) = e1
      | op(e4,e3) = e2
      | op(e4,e3) = e3
      | op(e4,e3) = e4 )
    & ( op(e4,e4) = e0
      | op(e4,e4) = e1
      | op(e4,e4) = e2
      | op(e4,e4) = e3
      | op(e4,e4) = e4 ) )).

fof(ax2,axiom,
    ( op(unit,e0) = e0
    & op(e0,unit) = e0
    & op(unit,e1) = e1
    & op(e1,unit) = e1
    & op(unit,e2) = e2
    & op(e2,unit) = e2
    & op(unit,e3) = e3
    & op(e3,unit) = e3
    & op(unit,e4) = e4
    & op(e4,unit) = e4
    & ( unit = e0
      | unit = e1
      | unit = e2
      | unit = e3
      | unit = e4 ) )).

fof(ax3,axiom,
    ( ( op(e0,e0) = e0
      | op(e0,e1) = e0
      | op(e0,e2) = e0
      | op(e0,e3) = e0
      | op(e0,e4) = e0 )
    & ( op(e0,e0) = e0
      | op(e1,e0) = e0
      | op(e2,e0) = e0
      | op(e3,e0) = e0
      | op(e4,e0) = e0 )
    & ( op(e0,e0) = e1
      | op(e0,e1) = e1
      | op(e0,e2) = e1
      | op(e0,e3) = e1
      | op(e0,e4) = e1 )
    & ( op(e0,e0) = e1
      | op(e1,e0) = e1
      | op(e2,e0) = e1
      | op(e3,e0) = e1
      | op(e4,e0) = e1 )
    & ( op(e0,e0) = e2
      | op(e0,e1) = e2
      | op(e0,e2) = e2
      | op(e0,e3) = e2
      | op(e0,e4) = e2 )
    & ( op(e0,e0) = e2
      | op(e1,e0) = e2
      | op(e2,e0) = e2
      | op(e3,e0) = e2
      | op(e4,e0) = e2 )
    & ( op(e0,e0) = e3
      | op(e0,e1) = e3
      | op(e0,e2) = e3
      | op(e0,e3) = e3
      | op(e0,e4) = e3 )
    & ( op(e0,e0) = e3
      | op(e1,e0) = e3
      | op(e2,e0) = e3
      | op(e3,e0) = e3
      | op(e4,e0) = e3 )
    & ( op(e0,e0) = e4
      | op(e0,e1) = e4
      | op(e0,e2) = e4
      | op(e0,e3) = e4
      | op(e0,e4) = e4 )
    & ( op(e0,e0) = e4
      | op(e1,e0) = e4
      | op(e2,e0) = e4
      | op(e3,e0) = e4
      | op(e4,e0) = e4 )
    & ( op(e1,e0) = e0
      | op(e1,e1) = e0
      | op(e1,e2) = e0
      | op(e1,e3) = e0
      | op(e1,e4) = e0 )
    & ( op(e0,e1) = e0
      | op(e1,e1) = e0
      | op(e2,e1) = e0
      | op(e3,e1) = e0
      | op(e4,e1) = e0 )
    & ( op(e1,e0) = e1
      | op(e1,e1) = e1
      | op(e1,e2) = e1
      | op(e1,e3) = e1
      | op(e1,e4) = e1 )
    & ( op(e0,e1) = e1
      | op(e1,e1) = e1
      | op(e2,e1) = e1
      | op(e3,e1) = e1
      | op(e4,e1) = e1 )
    & ( op(e1,e0) = e2
      | op(e1,e1) = e2
      | op(e1,e2) = e2
      | op(e1,e3) = e2
      | op(e1,e4) = e2 )
    & ( op(e0,e1) = e2
      | op(e1,e1) = e2
      | op(e2,e1) = e2
      | op(e3,e1) = e2
      | op(e4,e1) = e2 )
    & ( op(e1,e0) = e3
      | op(e1,e1) = e3
      | op(e1,e2) = e3
      | op(e1,e3) = e3
      | op(e1,e4) = e3 )
    & ( op(e0,e1) = e3
      | op(e1,e1) = e3
      | op(e2,e1) = e3
      | op(e3,e1) = e3
      | op(e4,e1) = e3 )
    & ( op(e1,e0) = e4
      | op(e1,e1) = e4
      | op(e1,e2) = e4
      | op(e1,e3) = e4
      | op(e1,e4) = e4 )
    & ( op(e0,e1) = e4
      | op(e1,e1) = e4
      | op(e2,e1) = e4
      | op(e3,e1) = e4
      | op(e4,e1) = e4 )
    & ( op(e2,e0) = e0
      | op(e2,e1) = e0
      | op(e2,e2) = e0
      | op(e2,e3) = e0
      | op(e2,e4) = e0 )
    & ( op(e0,e2) = e0
      | op(e1,e2) = e0
      | op(e2,e2) = e0
      | op(e3,e2) = e0
      | op(e4,e2) = e0 )
    & ( op(e2,e0) = e1
      | op(e2,e1) = e1
      | op(e2,e2) = e1
      | op(e2,e3) = e1
      | op(e2,e4) = e1 )
    & ( op(e0,e2) = e1
      | op(e1,e2) = e1
      | op(e2,e2) = e1
      | op(e3,e2) = e1
      | op(e4,e2) = e1 )
    & ( op(e2,e0) = e2
      | op(e2,e1) = e2
      | op(e2,e2) = e2
      | op(e2,e3) = e2
      | op(e2,e4) = e2 )
    & ( op(e0,e2) = e2
      | op(e1,e2) = e2
      | op(e2,e2) = e2
      | op(e3,e2) = e2
      | op(e4,e2) = e2 )
    & ( op(e2,e0) = e3
      | op(e2,e1) = e3
      | op(e2,e2) = e3
      | op(e2,e3) = e3
      | op(e2,e4) = e3 )
    & ( op(e0,e2) = e3
      | op(e1,e2) = e3
      | op(e2,e2) = e3
      | op(e3,e2) = e3
      | op(e4,e2) = e3 )
    & ( op(e2,e0) = e4
      | op(e2,e1) = e4
      | op(e2,e2) = e4
      | op(e2,e3) = e4
      | op(e2,e4) = e4 )
    & ( op(e0,e2) = e4
      | op(e1,e2) = e4
      | op(e2,e2) = e4
      | op(e3,e2) = e4
      | op(e4,e2) = e4 )
    & ( op(e3,e0) = e0
      | op(e3,e1) = e0
      | op(e3,e2) = e0
      | op(e3,e3) = e0
      | op(e3,e4) = e0 )
    & ( op(e0,e3) = e0
      | op(e1,e3) = e0
      | op(e2,e3) = e0
      | op(e3,e3) = e0
      | op(e4,e3) = e0 )
    & ( op(e3,e0) = e1
      | op(e3,e1) = e1
      | op(e3,e2) = e1
      | op(e3,e3) = e1
      | op(e3,e4) = e1 )
    & ( op(e0,e3) = e1
      | op(e1,e3) = e1
      | op(e2,e3) = e1
      | op(e3,e3) = e1
      | op(e4,e3) = e1 )
    & ( op(e3,e0) = e2
      | op(e3,e1) = e2
      | op(e3,e2) = e2
      | op(e3,e3) = e2
      | op(e3,e4) = e2 )
    & ( op(e0,e3) = e2
      | op(e1,e3) = e2
      | op(e2,e3) = e2
      | op(e3,e3) = e2
      | op(e4,e3) = e2 )
    & ( op(e3,e0) = e3
      | op(e3,e1) = e3
      | op(e3,e2) = e3
      | op(e3,e3) = e3
      | op(e3,e4) = e3 )
    & ( op(e0,e3) = e3
      | op(e1,e3) = e3
      | op(e2,e3) = e3
      | op(e3,e3) = e3
      | op(e4,e3) = e3 )
    & ( op(e3,e0) = e4
      | op(e3,e1) = e4
      | op(e3,e2) = e4
      | op(e3,e3) = e4
      | op(e3,e4) = e4 )
    & ( op(e0,e3) = e4
      | op(e1,e3) = e4
      | op(e2,e3) = e4
      | op(e3,e3) = e4
      | op(e4,e3) = e4 )
    & ( op(e4,e0) = e0
      | op(e4,e1) = e0
      | op(e4,e2) = e0
      | op(e4,e3) = e0
      | op(e4,e4) = e0 )
    & ( op(e0,e4) = e0
      | op(e1,e4) = e0
      | op(e2,e4) = e0
      | op(e3,e4) = e0
      | op(e4,e4) = e0 )
    & ( op(e4,e0) = e1
      | op(e4,e1) = e1
      | op(e4,e2) = e1
      | op(e4,e3) = e1
      | op(e4,e4) = e1 )
    & ( op(e0,e4) = e1
      | op(e1,e4) = e1
      | op(e2,e4) = e1
      | op(e3,e4) = e1
      | op(e4,e4) = e1 )
    & ( op(e4,e0) = e2
      | op(e4,e1) = e2
      | op(e4,e2) = e2
      | op(e4,e3) = e2
      | op(e4,e4) = e2 )
    & ( op(e0,e4) = e2
      | op(e1,e4) = e2
      | op(e2,e4) = e2
      | op(e3,e4) = e2
      | op(e4,e4) = e2 )
    & ( op(e4,e0) = e3
      | op(e4,e1) = e3
      | op(e4,e2) = e3
      | op(e4,e3) = e3
      | op(e4,e4) = e3 )
    & ( op(e0,e4) = e3
      | op(e1,e4) = e3
      | op(e2,e4) = e3
      | op(e3,e4) = e3
      | op(e4,e4) = e3 )
    & ( op(e4,e0) = e4
      | op(e4,e1) = e4
      | op(e4,e2) = e4
      | op(e4,e3) = e4
      | op(e4,e4) = e4 )
    & ( op(e0,e4) = e4
      | op(e1,e4) = e4
      | op(e2,e4) = e4
      | op(e3,e4) = e4
      | op(e4,e4) = e4 ) )).

fof(ax4,axiom,
    ( op(e0,e0) != op(e1,e0)
    & op(e0,e0) != op(e2,e0)
    & op(e0,e0) != op(e3,e0)
    & op(e0,e0) != op(e4,e0)
    & op(e1,e0) != op(e2,e0)
    & op(e1,e0) != op(e3,e0)
    & op(e1,e0) != op(e4,e0)
    & op(e2,e0) != op(e3,e0)
    & op(e2,e0) != op(e4,e0)
    & op(e3,e0) != op(e4,e0)
    & op(e0,e1) != op(e1,e1)
    & op(e0,e1) != op(e2,e1)
    & op(e0,e1) != op(e3,e1)
    & op(e0,e1) != op(e4,e1)
    & op(e1,e1) != op(e2,e1)
    & op(e1,e1) != op(e3,e1)
    & op(e1,e1) != op(e4,e1)
    & op(e2,e1) != op(e3,e1)
    & op(e2,e1) != op(e4,e1)
    & op(e3,e1) != op(e4,e1)
    & op(e0,e2) != op(e1,e2)
    & op(e0,e2) != op(e2,e2)
    & op(e0,e2) != op(e3,e2)
    & op(e0,e2) != op(e4,e2)
    & op(e1,e2) != op(e2,e2)
    & op(e1,e2) != op(e3,e2)
    & op(e1,e2) != op(e4,e2)
    & op(e2,e2) != op(e3,e2)
    & op(e2,e2) != op(e4,e2)
    & op(e3,e2) != op(e4,e2)
    & op(e0,e3) != op(e1,e3)
    & op(e0,e3) != op(e2,e3)
    & op(e0,e3) != op(e3,e3)
    & op(e0,e3) != op(e4,e3)
    & op(e1,e3) != op(e2,e3)
    & op(e1,e3) != op(e3,e3)
    & op(e1,e3) != op(e4,e3)
    & op(e2,e3) != op(e3,e3)
    & op(e2,e3) != op(e4,e3)
    & op(e3,e3) != op(e4,e3)
    & op(e0,e4) != op(e1,e4)
    & op(e0,e4) != op(e2,e4)
    & op(e0,e4) != op(e3,e4)
    & op(e0,e4) != op(e4,e4)
    & op(e1,e4) != op(e2,e4)
    & op(e1,e4) != op(e3,e4)
    & op(e1,e4) != op(e4,e4)
    & op(e2,e4) != op(e3,e4)
    & op(e2,e4) != op(e4,e4)
    & op(e3,e4) != op(e4,e4)
    & op(e0,e0) != op(e0,e1)
    & op(e0,e0) != op(e0,e2)
    & op(e0,e0) != op(e0,e3)
    & op(e0,e0) != op(e0,e4)
    & op(e0,e1) != op(e0,e2)
    & op(e0,e1) != op(e0,e3)
    & op(e0,e1) != op(e0,e4)
    & op(e0,e2) != op(e0,e3)
    & op(e0,e2) != op(e0,e4)
    & op(e0,e3) != op(e0,e4)
    & op(e1,e0) != op(e1,e1)
    & op(e1,e0) != op(e1,e2)
    & op(e1,e0) != op(e1,e3)
    & op(e1,e0) != op(e1,e4)
    & op(e1,e1) != op(e1,e2)
    & op(e1,e1) != op(e1,e3)
    & op(e1,e1) != op(e1,e4)
    & op(e1,e2) != op(e1,e3)
    & op(e1,e2) != op(e1,e4)
    & op(e1,e3) != op(e1,e4)
    & op(e2,e0) != op(e2,e1)
    & op(e2,e0) != op(e2,e2)
    & op(e2,e0) != op(e2,e3)
    & op(e2,e0) != op(e2,e4)
    & op(e2,e1) != op(e2,e2)
    & op(e2,e1) != op(e2,e3)
    & op(e2,e1) != op(e2,e4)
    & op(e2,e2) != op(e2,e3)
    & op(e2,e2) != op(e2,e4)
    & op(e2,e3) != op(e2,e4)
    & op(e3,e0) != op(e3,e1)
    & op(e3,e0) != op(e3,e2)
    & op(e3,e0) != op(e3,e3)
    & op(e3,e0) != op(e3,e4)
    & op(e3,e1) != op(e3,e2)
    & op(e3,e1) != op(e3,e3)
    & op(e3,e1) != op(e3,e4)
    & op(e3,e2) != op(e3,e3)
    & op(e3,e2) != op(e3,e4)
    & op(e3,e3) != op(e3,e4)
    & op(e4,e0) != op(e4,e1)
    & op(e4,e0) != op(e4,e2)
    & op(e4,e0) != op(e4,e3)
    & op(e4,e0) != op(e4,e4)
    & op(e4,e1) != op(e4,e2)
    & op(e4,e1) != op(e4,e3)
    & op(e4,e1) != op(e4,e4)
    & op(e4,e2) != op(e4,e3)
    & op(e4,e2) != op(e4,e4)
    & op(e4,e3) != op(e4,e4) )).

fof(ax5,axiom,
    ( e0 != e1
    & e0 != e2
    & e0 != e3
    & e0 != e4
    & e1 != e2
    & e1 != e3
    & e1 != e4
    & e2 != e3
    & e2 != e4
    & e3 != e4 )).

fof(ax6,axiom,
    ( ( op(e0,e0) != e0
      | op(e0,e0) = e0 )
    & ( op(e0,e0) != e1
      | op(e0,e1) = e0 )
    & ( op(e0,e0) != e2
      | op(e0,e2) = e0 )
    & ( op(e0,e0) != e3
      | op(e0,e3) = e0 )
    & ( op(e0,e0) != e4
      | op(e0,e4) = e0 )
    & ( op(e1,e1) != e0
      | op(e1,e0) = e1 )
    & ( op(e1,e1) != e1
      | op(e1,e1) = e1 )
    & ( op(e1,e1) != e2
      | op(e1,e2) = e1 )
    & ( op(e1,e1) != e3
      | op(e1,e3) = e1 )
    & ( op(e1,e1) != e4
      | op(e1,e4) = e1 )
    & ( op(e2,e2) != e0
      | op(e2,e0) = e2 )
    & ( op(e2,e2) != e1
      | op(e2,e1) = e2 )
    & ( op(e2,e2) != e2
      | op(e2,e2) = e2 )
    & ( op(e2,e2) != e3
      | op(e2,e3) = e2 )
    & ( op(e2,e2) != e4
      | op(e2,e4) = e2 )
    & ( op(e3,e3) != e0
      | op(e3,e0) = e3 )
    & ( op(e3,e3) != e1
      | op(e3,e1) = e3 )
    & ( op(e3,e3) != e2
      | op(e3,e2) = e3 )
    & ( op(e3,e3) != e3
      | op(e3,e3) = e3 )
    & ( op(e3,e3) != e4
      | op(e3,e4) = e3 )
    & ( op(e4,e4) != e0
      | op(e4,e0) = e4 )
    & ( op(e4,e4) != e1
      | op(e4,e1) = e4 )
    & ( op(e4,e4) != e2
      | op(e4,e2) = e4 )
    & ( op(e4,e4) != e3
      | op(e4,e3) = e4 )
    & ( op(e4,e4) != e4
      | op(e4,e4) = e4 ) )).

fof(ax7,axiom,
    ( ~ ( e0 = op(op(e4,e2),op(e4,e2))
        & e1 = op(e4,e2)
        & e3 = op(e2,e4) ) )).

fof(ax8,axiom,
    ( ~ ( e0 = op(op(e3,e2),op(e3,e2))
        & e1 = op(e3,e2)
        & e4 = op(e2,e3) ) )).

fof(ax9,axiom,
    ( ~ ( e0 = op(op(e4,e3),op(e4,e3))
        & e1 = op(e4,e3)
        & e2 = op(e3,e4) ) )).

fof(ax10,axiom,
    ( ~ ( e0 = op(op(e2,e3),op(e2,e3))
        & e1 = op(e2,e3)
        & e4 = op(e3,e2) ) )).

fof(ax11,axiom,
    ( ~ ( e0 = op(op(e3,e4),op(e3,e4))
        & e1 = op(e3,e4)
        & e2 = op(e4,e3) ) )).

fof(ax12,axiom,
    ( ~ ( e0 = op(op(e2,e4),op(e2,e4))
        & e1 = op(e2,e4)
        & e3 = op(e4,e2) ) )).

fof(ax13,axiom,
    ( ~ ( e0 = op(op(e4,e1),op(e4,e1))
        & e2 = op(e4,e1)
        & e3 = op(e1,e4) ) )).

fof(ax14,axiom,
    ( ~ ( e0 = op(op(e3,e1),op(e3,e1))
        & e2 = op(e3,e1)
        & e4 = op(e1,e3) ) )).

fof(ax15,axiom,
    ( ~ ( e0 = op(op(e4,e3),op(e4,e3))
        & e2 = op(e4,e3)
        & e1 = op(e3,e4) ) )).

fof(ax16,axiom,
    ( ~ ( e0 = op(op(e1,e3),op(e1,e3))
        & e2 = op(e1,e3)
        & e4 = op(e3,e1) ) )).

fof(ax17,axiom,
    ( ~ ( e0 = op(op(e3,e4),op(e3,e4))
        & e2 = op(e3,e4)
        & e1 = op(e4,e3) ) )).

fof(ax18,axiom,
    ( ~ ( e0 = op(op(e1,e4),op(e1,e4))
        & e2 = op(e1,e4)
        & e3 = op(e4,e1) ) )).

fof(ax19,axiom,
    ( ~ ( e0 = op(op(e4,e1),op(e4,e1))
        & e3 = op(e4,e1)
        & e2 = op(e1,e4) ) )).

fof(ax20,axiom,
    ( ~ ( e0 = op(op(e2,e1),op(e2,e1))
        & e3 = op(e2,e1)
        & e4 = op(e1,e2) ) )).

fof(ax21,axiom,
    ( ~ ( e0 = op(op(e4,e2),op(e4,e2))
        & e3 = op(e4,e2)
        & e1 = op(e2,e4) ) )).

fof(ax22,axiom,
    ( ~ ( e0 = op(op(e1,e2),op(e1,e2))
        & e3 = op(e1,e2)
        & e4 = op(e2,e1) ) )).

fof(ax23,axiom,
    ( ~ ( e0 = op(op(e2,e4),op(e2,e4))
        & e3 = op(e2,e4)
        & e1 = op(e4,e2) ) )).

fof(ax24,axiom,
    ( ~ ( e0 = op(op(e1,e4),op(e1,e4))
        & e3 = op(e1,e4)
        & e2 = op(e4,e1) ) )).

fof(ax25,axiom,
    ( ~ ( e0 = op(op(e3,e1),op(e3,e1))
        & e4 = op(e3,e1)
        & e2 = op(e1,e3) ) )).

fof(ax26,axiom,
    ( ~ ( e0 = op(op(e2,e1),op(e2,e1))
        & e4 = op(e2,e1)
        & e3 = op(e1,e2) ) )).

fof(ax27,axiom,
    ( ~ ( e0 = op(op(e3,e2),op(e3,e2))
        & e4 = op(e3,e2)
        & e1 = op(e2,e3) ) )).

fof(ax28,axiom,
    ( ~ ( e0 = op(op(e1,e2),op(e1,e2))
        & e4 = op(e1,e2)
        & e3 = op(e2,e1) ) )).

fof(ax29,axiom,
    ( ~ ( e0 = op(op(e2,e3),op(e2,e3))
        & e4 = op(e2,e3)
        & e1 = op(e3,e2) ) )).

fof(ax30,axiom,
    ( ~ ( e0 = op(op(e1,e3),op(e1,e3))
        & e4 = op(e1,e3)
        & e2 = op(e3,e1) ) )).

fof(ax31,axiom,
    ( ~ ( e1 = op(op(e4,e2),op(e4,e2))
        & e0 = op(e4,e2)
        & e3 = op(e2,e4) ) )).

fof(ax32,axiom,
    ( ~ ( e1 = op(op(e3,e2),op(e3,e2))
        & e0 = op(e3,e2)
        & e4 = op(e2,e3) ) )).

fof(ax33,axiom,
    ( ~ ( e1 = op(op(e4,e3),op(e4,e3))
        & e0 = op(e4,e3)
        & e2 = op(e3,e4) ) )).

fof(ax34,axiom,
    ( ~ ( e1 = op(op(e2,e3),op(e2,e3))
        & e0 = op(e2,e3)
        & e4 = op(e3,e2) ) )).

fof(ax35,axiom,
    ( ~ ( e1 = op(op(e3,e4),op(e3,e4))
        & e0 = op(e3,e4)
        & e2 = op(e4,e3) ) )).

fof(ax36,axiom,
    ( ~ ( e1 = op(op(e2,e4),op(e2,e4))
        & e0 = op(e2,e4)
        & e3 = op(e4,e2) ) )).

fof(ax37,axiom,
    ( ~ ( e1 = op(op(e4,e0),op(e4,e0))
        & e2 = op(e4,e0)
        & e3 = op(e0,e4) ) )).

fof(ax38,axiom,
    ( ~ ( e1 = op(op(e3,e0),op(e3,e0))
        & e2 = op(e3,e0)
        & e4 = op(e0,e3) ) )).

fof(ax39,axiom,
    ( ~ ( e1 = op(op(e4,e3),op(e4,e3))
        & e2 = op(e4,e3)
        & e0 = op(e3,e4) ) )).

fof(ax40,axiom,
    ( ~ ( e1 = op(op(e0,e3),op(e0,e3))
        & e2 = op(e0,e3)
        & e4 = op(e3,e0) ) )).

fof(ax41,axiom,
    ( ~ ( e1 = op(op(e3,e4),op(e3,e4))
        & e2 = op(e3,e4)
        & e0 = op(e4,e3) ) )).

fof(ax42,axiom,
    ( ~ ( e1 = op(op(e0,e4),op(e0,e4))
        & e2 = op(e0,e4)
        & e3 = op(e4,e0) ) )).

fof(ax43,axiom,
    ( ~ ( e1 = op(op(e4,e0),op(e4,e0))
        & e3 = op(e4,e0)
        & e2 = op(e0,e4) ) )).

fof(ax44,axiom,
    ( ~ ( e1 = op(op(e2,e0),op(e2,e0))
        & e3 = op(e2,e0)
        & e4 = op(e0,e2) ) )).

fof(ax45,axiom,
    ( ~ ( e1 = op(op(e4,e2),op(e4,e2))
        & e3 = op(e4,e2)
        & e0 = op(e2,e4) ) )).

fof(ax46,axiom,
    ( ~ ( e1 = op(op(e0,e2),op(e0,e2))
        & e3 = op(e0,e2)
        & e4 = op(e2,e0) ) )).

fof(ax47,axiom,
    ( ~ ( e1 = op(op(e2,e4),op(e2,e4))
        & e3 = op(e2,e4)
        & e0 = op(e4,e2) ) )).

fof(ax48,axiom,
    ( ~ ( e1 = op(op(e0,e4),op(e0,e4))
        & e3 = op(e0,e4)
        & e2 = op(e4,e0) ) )).

fof(ax49,axiom,
    ( ~ ( e1 = op(op(e3,e0),op(e3,e0))
        & e4 = op(e3,e0)
        & e2 = op(e0,e3) ) )).

fof(ax50,axiom,
    ( ~ ( e1 = op(op(e2,e0),op(e2,e0))
        & e4 = op(e2,e0)
        & e3 = op(e0,e2) ) )).

fof(ax51,axiom,
    ( ~ ( e1 = op(op(e3,e2),op(e3,e2))
        & e4 = op(e3,e2)
        & e0 = op(e2,e3) ) )).

fof(ax52,axiom,
    ( ~ ( e1 = op(op(e0,e2),op(e0,e2))
        & e4 = op(e0,e2)
        & e3 = op(e2,e0) ) )).

fof(ax53,axiom,
    ( ~ ( e1 = op(op(e2,e3),op(e2,e3))
        & e4 = op(e2,e3)
        & e0 = op(e3,e2) ) )).

fof(ax54,axiom,
    ( ~ ( e1 = op(op(e0,e3),op(e0,e3))
        & e4 = op(e0,e3)
        & e2 = op(e3,e0) ) )).

fof(ax55,axiom,
    ( ~ ( e2 = op(op(e4,e1),op(e4,e1))
        & e0 = op(e4,e1)
        & e3 = op(e1,e4) ) )).

fof(ax56,axiom,
    ( ~ ( e2 = op(op(e3,e1),op(e3,e1))
        & e0 = op(e3,e1)
        & e4 = op(e1,e3) ) )).

fof(ax57,axiom,
    ( ~ ( e2 = op(op(e4,e3),op(e4,e3))
        & e0 = op(e4,e3)
        & e1 = op(e3,e4) ) )).

fof(ax58,axiom,
    ( ~ ( e2 = op(op(e1,e3),op(e1,e3))
        & e0 = op(e1,e3)
        & e4 = op(e3,e1) ) )).

fof(ax59,axiom,
    ( ~ ( e2 = op(op(e3,e4),op(e3,e4))
        & e0 = op(e3,e4)
        & e1 = op(e4,e3) ) )).

fof(ax60,axiom,
    ( ~ ( e2 = op(op(e1,e4),op(e1,e4))
        & e0 = op(e1,e4)
        & e3 = op(e4,e1) ) )).

fof(ax61,axiom,
    ( ~ ( e2 = op(op(e4,e0),op(e4,e0))
        & e1 = op(e4,e0)
        & e3 = op(e0,e4) ) )).

fof(ax62,axiom,
    ( ~ ( e2 = op(op(e3,e0),op(e3,e0))
        & e1 = op(e3,e0)
        & e4 = op(e0,e3) ) )).

fof(ax63,axiom,
    ( ~ ( e2 = op(op(e4,e3),op(e4,e3))
        & e1 = op(e4,e3)
        & e0 = op(e3,e4) ) )).

fof(ax64,axiom,
    ( ~ ( e2 = op(op(e0,e3),op(e0,e3))
        & e1 = op(e0,e3)
        & e4 = op(e3,e0) ) )).

fof(ax65,axiom,
    ( ~ ( e2 = op(op(e3,e4),op(e3,e4))
        & e1 = op(e3,e4)
        & e0 = op(e4,e3) ) )).

fof(ax66,axiom,
    ( ~ ( e2 = op(op(e0,e4),op(e0,e4))
        & e1 = op(e0,e4)
        & e3 = op(e4,e0) ) )).

fof(ax67,axiom,
    ( ~ ( e2 = op(op(e4,e0),op(e4,e0))
        & e3 = op(e4,e0)
        & e1 = op(e0,e4) ) )).

fof(ax68,axiom,
    ( ~ ( e2 = op(op(e1,e0),op(e1,e0))
        & e3 = op(e1,e0)
        & e4 = op(e0,e1) ) )).

fof(ax69,axiom,
    ( ~ ( e2 = op(op(e4,e1),op(e4,e1))
        & e3 = op(e4,e1)
        & e0 = op(e1,e4) ) )).

fof(ax70,axiom,
    ( ~ ( e2 = op(op(e0,e1),op(e0,e1))
        & e3 = op(e0,e1)
        & e4 = op(e1,e0) ) )).

fof(ax71,axiom,
    ( ~ ( e2 = op(op(e1,e4),op(e1,e4))
        & e3 = op(e1,e4)
        & e0 = op(e4,e1) ) )).

fof(ax72,axiom,
    ( ~ ( e2 = op(op(e0,e4),op(e0,e4))
        & e3 = op(e0,e4)
        & e1 = op(e4,e0) ) )).

fof(ax73,axiom,
    ( ~ ( e2 = op(op(e3,e0),op(e3,e0))
        & e4 = op(e3,e0)
        & e1 = op(e0,e3) ) )).

fof(ax74,axiom,
    ( ~ ( e2 = op(op(e1,e0),op(e1,e0))
        & e4 = op(e1,e0)
        & e3 = op(e0,e1) ) )).

fof(ax75,axiom,
    ( ~ ( e2 = op(op(e3,e1),op(e3,e1))
        & e4 = op(e3,e1)
        & e0 = op(e1,e3) ) )).

fof(ax76,axiom,
    ( ~ ( e2 = op(op(e0,e1),op(e0,e1))
        & e4 = op(e0,e1)
        & e3 = op(e1,e0) ) )).

fof(ax77,axiom,
    ( ~ ( e2 = op(op(e1,e3),op(e1,e3))
        & e4 = op(e1,e3)
        & e0 = op(e3,e1) ) )).

fof(ax78,axiom,
    ( ~ ( e2 = op(op(e0,e3),op(e0,e3))
        & e4 = op(e0,e3)
        & e1 = op(e3,e0) ) )).

fof(ax79,axiom,
    ( ~ ( e3 = op(op(e4,e1),op(e4,e1))
        & e0 = op(e4,e1)
        & e2 = op(e1,e4) ) )).

fof(ax80,axiom,
    ( ~ ( e3 = op(op(e2,e1),op(e2,e1))
        & e0 = op(e2,e1)
        & e4 = op(e1,e2) ) )).

fof(ax81,axiom,
    ( ~ ( e3 = op(op(e4,e2),op(e4,e2))
        & e0 = op(e4,e2)
        & e1 = op(e2,e4) ) )).

fof(ax82,axiom,
    ( ~ ( e3 = op(op(e1,e2),op(e1,e2))
        & e0 = op(e1,e2)
        & e4 = op(e2,e1) ) )).

fof(ax83,axiom,
    ( ~ ( e3 = op(op(e2,e4),op(e2,e4))
        & e0 = op(e2,e4)
        & e1 = op(e4,e2) ) )).

fof(ax84,axiom,
    ( ~ ( e3 = op(op(e1,e4),op(e1,e4))
        & e0 = op(e1,e4)
        & e2 = op(e4,e1) ) )).

fof(ax85,axiom,
    ( ~ ( e3 = op(op(e4,e0),op(e4,e0))
        & e1 = op(e4,e0)
        & e2 = op(e0,e4) ) )).

fof(ax86,axiom,
    ( ~ ( e3 = op(op(e2,e0),op(e2,e0))
        & e1 = op(e2,e0)
        & e4 = op(e0,e2) ) )).

fof(ax87,axiom,
    ( ~ ( e3 = op(op(e4,e2),op(e4,e2))
        & e1 = op(e4,e2)
        & e0 = op(e2,e4) ) )).

fof(ax88,axiom,
    ( ~ ( e3 = op(op(e0,e2),op(e0,e2))
        & e1 = op(e0,e2)
        & e4 = op(e2,e0) ) )).

fof(ax89,axiom,
    ( ~ ( e3 = op(op(e2,e4),op(e2,e4))
        & e1 = op(e2,e4)
        & e0 = op(e4,e2) ) )).

fof(ax90,axiom,
    ( ~ ( e3 = op(op(e0,e4),op(e0,e4))
        & e1 = op(e0,e4)
        & e2 = op(e4,e0) ) )).

fof(ax91,axiom,
    ( ~ ( e3 = op(op(e4,e0),op(e4,e0))
        & e2 = op(e4,e0)
        & e1 = op(e0,e4) ) )).

fof(ax92,axiom,
    ( ~ ( e3 = op(op(e1,e0),op(e1,e0))
        & e2 = op(e1,e0)
        & e4 = op(e0,e1) ) )).

fof(ax93,axiom,
    ( ~ ( e3 = op(op(e4,e1),op(e4,e1))
        & e2 = op(e4,e1)
        & e0 = op(e1,e4) ) )).

fof(ax94,axiom,
    ( ~ ( e3 = op(op(e0,e1),op(e0,e1))
        & e2 = op(e0,e1)
        & e4 = op(e1,e0) ) )).

fof(ax95,axiom,
    ( ~ ( e3 = op(op(e1,e4),op(e1,e4))
        & e2 = op(e1,e4)
        & e0 = op(e4,e1) ) )).

fof(ax96,axiom,
    ( ~ ( e3 = op(op(e0,e4),op(e0,e4))
        & e2 = op(e0,e4)
        & e1 = op(e4,e0) ) )).

fof(ax97,axiom,
    ( ~ ( e3 = op(op(e2,e0),op(e2,e0))
        & e4 = op(e2,e0)
        & e1 = op(e0,e2) ) )).

fof(ax98,axiom,
    ( ~ ( e3 = op(op(e1,e0),op(e1,e0))
        & e4 = op(e1,e0)
        & e2 = op(e0,e1) ) )).

fof(ax99,axiom,
    ( ~ ( e3 = op(op(e2,e1),op(e2,e1))
        & e4 = op(e2,e1)
        & e0 = op(e1,e2) ) )).

fof(ax100,axiom,
    ( ~ ( e3 = op(op(e0,e1),op(e0,e1))
        & e4 = op(e0,e1)
        & e2 = op(e1,e0) ) )).

fof(ax101,axiom,
    ( ~ ( e3 = op(op(e1,e2),op(e1,e2))
        & e4 = op(e1,e2)
        & e0 = op(e2,e1) ) )).

fof(ax102,axiom,
    ( ~ ( e3 = op(op(e0,e2),op(e0,e2))
        & e4 = op(e0,e2)
        & e1 = op(e2,e0) ) )).

fof(ax103,axiom,
    ( ~ ( e4 = op(op(e3,e1),op(e3,e1))
        & e0 = op(e3,e1)
        & e2 = op(e1,e3) ) )).

fof(ax104,axiom,
    ( ~ ( e4 = op(op(e2,e1),op(e2,e1))
        & e0 = op(e2,e1)
        & e3 = op(e1,e2) ) )).

fof(ax105,axiom,
    ( ~ ( e4 = op(op(e3,e2),op(e3,e2))
        & e0 = op(e3,e2)
        & e1 = op(e2,e3) ) )).

fof(ax106,axiom,
    ( ~ ( e4 = op(op(e1,e2),op(e1,e2))
        & e0 = op(e1,e2)
        & e3 = op(e2,e1) ) )).

fof(ax107,axiom,
    ( ~ ( e4 = op(op(e2,e3),op(e2,e3))
        & e0 = op(e2,e3)
        & e1 = op(e3,e2) ) )).

fof(ax108,axiom,
    ( ~ ( e4 = op(op(e1,e3),op(e1,e3))
        & e0 = op(e1,e3)
        & e2 = op(e3,e1) ) )).

fof(ax109,axiom,
    ( ~ ( e4 = op(op(e3,e0),op(e3,e0))
        & e1 = op(e3,e0)
        & e2 = op(e0,e3) ) )).

fof(ax110,axiom,
    ( ~ ( e4 = op(op(e2,e0),op(e2,e0))
        & e1 = op(e2,e0)
        & e3 = op(e0,e2) ) )).

fof(ax111,axiom,
    ( ~ ( e4 = op(op(e3,e2),op(e3,e2))
        & e1 = op(e3,e2)
        & e0 = op(e2,e3) ) )).

fof(ax112,axiom,
    ( ~ ( e4 = op(op(e0,e2),op(e0,e2))
        & e1 = op(e0,e2)
        & e3 = op(e2,e0) ) )).

fof(ax113,axiom,
    ( ~ ( e4 = op(op(e2,e3),op(e2,e3))
        & e1 = op(e2,e3)
        & e0 = op(e3,e2) ) )).

fof(ax114,axiom,
    ( ~ ( e4 = op(op(e0,e3),op(e0,e3))
        & e1 = op(e0,e3)
        & e2 = op(e3,e0) ) )).

fof(ax115,axiom,
    ( ~ ( e4 = op(op(e3,e0),op(e3,e0))
        & e2 = op(e3,e0)
        & e1 = op(e0,e3) ) )).

fof(ax116,axiom,
    ( ~ ( e4 = op(op(e1,e0),op(e1,e0))
        & e2 = op(e1,e0)
        & e3 = op(e0,e1) ) )).

fof(ax117,axiom,
    ( ~ ( e4 = op(op(e3,e1),op(e3,e1))
        & e2 = op(e3,e1)
        & e0 = op(e1,e3) ) )).

fof(ax118,axiom,
    ( ~ ( e4 = op(op(e0,e1),op(e0,e1))
        & e2 = op(e0,e1)
        & e3 = op(e1,e0) ) )).

fof(ax119,axiom,
    ( ~ ( e4 = op(op(e1,e3),op(e1,e3))
        & e2 = op(e1,e3)
        & e0 = op(e3,e1) ) )).

fof(ax120,axiom,
    ( ~ ( e4 = op(op(e0,e3),op(e0,e3))
        & e2 = op(e0,e3)
        & e1 = op(e3,e0) ) )).

fof(ax121,axiom,
    ( ~ ( e4 = op(op(e2,e0),op(e2,e0))
        & e3 = op(e2,e0)
        & e1 = op(e0,e2) ) )).

fof(ax122,axiom,
    ( ~ ( e4 = op(op(e1,e0),op(e1,e0))
        & e3 = op(e1,e0)
        & e2 = op(e0,e1) ) )).

fof(ax123,axiom,
    ( ~ ( e4 = op(op(e2,e1),op(e2,e1))
        & e3 = op(e2,e1)
        & e0 = op(e1,e2) ) )).

fof(ax124,axiom,
    ( ~ ( e4 = op(op(e0,e1),op(e0,e1))
        & e3 = op(e0,e1)
        & e2 = op(e1,e0) ) )).

fof(ax125,axiom,
    ( ~ ( e4 = op(op(e1,e2),op(e1,e2))
        & e3 = op(e1,e2)
        & e0 = op(e2,e1) ) )).

fof(ax126,axiom,
    ( ~ ( e4 = op(op(e0,e2),op(e0,e2))
        & e3 = op(e0,e2)
        & e1 = op(e2,e0) ) )).

%--------------------------------------------------------------------------