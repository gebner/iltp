%--------------------------------------------------------------------------
% File     : ALG204+1 : ILTP v1.1.0
% Domain   : General Algebra
% Problem  : Quasigroups 7 QG5: REPRESENTATIVES-PAIRWISE-NOT-ISO-PROBLEM-1
% Version  : Especial.
% English  : 

% Refs     : [Mei03] Meier (2003), Email to G.Sutcliffe
%          : [CM+04] Colton et al. (2004), Automatic Generation of Classifi
% Source   : [Mei03]
% Names    : 

% Status   : Theorem
% Rating   : 0.22 v2.7.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :    6 (   0 unit)
%            Number of atoms       :  399 ( 399 equality)
%            Maximal formula depth :  114 (  51 average)
%            Number of connectives :  485 (  92 ~  ;  84  |; 308  &)
%                                         (   0 <=>;   1 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :   18 (  14 constant; 0-2 arity)
%            Number of variables   :    0 (   0 singleton;   0 !;   0 ?)
%            Maximal term depth    :    3 (   2 average)

% Comments : 
%--------------------------------------------------------------------------
fof(ax1,axiom,
    ( e10 != e11
    & e10 != e12
    & e10 != e13
    & e10 != e14
    & e10 != e15
    & e10 != e16
    & e11 != e12
    & e11 != e13
    & e11 != e14
    & e11 != e15
    & e11 != e16
    & e12 != e13
    & e12 != e14
    & e12 != e15
    & e12 != e16
    & e13 != e14
    & e13 != e15
    & e13 != e16
    & e14 != e15
    & e14 != e16
    & e15 != e16 )).

fof(ax2,axiom,
    ( e20 != e21
    & e20 != e22
    & e20 != e23
    & e20 != e24
    & e20 != e25
    & e20 != e26
    & e21 != e22
    & e21 != e23
    & e21 != e24
    & e21 != e25
    & e21 != e26
    & e22 != e23
    & e22 != e24
    & e22 != e25
    & e22 != e26
    & e23 != e24
    & e23 != e25
    & e23 != e26
    & e24 != e25
    & e24 != e26
    & e25 != e26 )).

fof(ax3,axiom,
    ( e10 != e20
    & e10 != e21
    & e10 != e22
    & e10 != e23
    & e10 != e24
    & e10 != e25
    & e10 != e26
    & e11 != e20
    & e11 != e21
    & e11 != e22
    & e11 != e23
    & e11 != e24
    & e11 != e25
    & e11 != e26
    & e12 != e20
    & e12 != e21
    & e12 != e22
    & e12 != e23
    & e12 != e24
    & e12 != e25
    & e12 != e26
    & e13 != e20
    & e13 != e21
    & e13 != e22
    & e13 != e23
    & e13 != e24
    & e13 != e25
    & e13 != e26
    & e14 != e20
    & e14 != e21
    & e14 != e22
    & e14 != e23
    & e14 != e24
    & e14 != e25
    & e14 != e26
    & e15 != e20
    & e15 != e21
    & e15 != e22
    & e15 != e23
    & e15 != e24
    & e15 != e25
    & e15 != e26
    & e16 != e20
    & e16 != e21
    & e16 != e22
    & e16 != e23
    & e16 != e24
    & e16 != e25
    & e16 != e26 )).

fof(ax4,axiom,
    ( op1(e10,e10) = e13
    & op1(e10,e11) = e10
    & op1(e10,e12) = e16
    & op1(e10,e13) = e11
    & op1(e10,e14) = e14
    & op1(e10,e15) = e12
    & op1(e10,e16) = e15
    & op1(e11,e10) = e10
    & op1(e11,e11) = e16
    & op1(e11,e12) = e11
    & op1(e11,e13) = e15
    & op1(e11,e14) = e13
    & op1(e11,e15) = e14
    & op1(e11,e16) = e12
    & op1(e12,e10) = e16
    & op1(e12,e11) = e11
    & op1(e12,e12) = e15
    & op1(e12,e13) = e12
    & op1(e12,e14) = e10
    & op1(e12,e15) = e13
    & op1(e12,e16) = e14
    & op1(e13,e10) = e11
    & op1(e13,e11) = e15
    & op1(e13,e12) = e12
    & op1(e13,e13) = e14
    & op1(e13,e14) = e16
    & op1(e13,e15) = e10
    & op1(e13,e16) = e13
    & op1(e14,e10) = e14
    & op1(e14,e11) = e13
    & op1(e14,e12) = e10
    & op1(e14,e13) = e16
    & op1(e14,e14) = e12
    & op1(e14,e15) = e15
    & op1(e14,e16) = e11
    & op1(e15,e10) = e12
    & op1(e15,e11) = e14
    & op1(e15,e12) = e13
    & op1(e15,e13) = e10
    & op1(e15,e14) = e15
    & op1(e15,e15) = e11
    & op1(e15,e16) = e16
    & op1(e16,e10) = e15
    & op1(e16,e11) = e12
    & op1(e16,e12) = e14
    & op1(e16,e13) = e13
    & op1(e16,e14) = e11
    & op1(e16,e15) = e16
    & op1(e16,e16) = e10 )).

fof(ax5,axiom,
    ( op2(e20,e20) = e20
    & op2(e20,e21) = e23
    & op2(e20,e22) = e21
    & op2(e20,e23) = e22
    & op2(e20,e24) = e26
    & op2(e20,e25) = e24
    & op2(e20,e26) = e25
    & op2(e21,e20) = e23
    & op2(e21,e21) = e21
    & op2(e21,e22) = e26
    & op2(e21,e23) = e25
    & op2(e21,e24) = e22
    & op2(e21,e25) = e20
    & op2(e21,e26) = e24
    & op2(e22,e20) = e21
    & op2(e22,e21) = e26
    & op2(e22,e22) = e22
    & op2(e22,e23) = e24
    & op2(e22,e24) = e25
    & op2(e22,e25) = e23
    & op2(e22,e26) = e20
    & op2(e23,e20) = e22
    & op2(e23,e21) = e25
    & op2(e23,e22) = e24
    & op2(e23,e23) = e23
    & op2(e23,e24) = e20
    & op2(e23,e25) = e26
    & op2(e23,e26) = e21
    & op2(e24,e20) = e26
    & op2(e24,e21) = e22
    & op2(e24,e22) = e25
    & op2(e24,e23) = e20
    & op2(e24,e24) = e24
    & op2(e24,e25) = e21
    & op2(e24,e26) = e23
    & op2(e25,e20) = e24
    & op2(e25,e21) = e20
    & op2(e25,e22) = e23
    & op2(e25,e23) = e26
    & op2(e25,e24) = e21
    & op2(e25,e25) = e25
    & op2(e25,e26) = e22
    & op2(e26,e20) = e25
    & op2(e26,e21) = e24
    & op2(e26,e22) = e20
    & op2(e26,e23) = e21
    & op2(e26,e24) = e23
    & op2(e26,e25) = e22
    & op2(e26,e26) = e26 )).

fof(co1,conjecture,
    ( ( ( h(e10) = e20
        | h(e10) = e21
        | h(e10) = e22
        | h(e10) = e23
        | h(e10) = e24
        | h(e10) = e25
        | h(e10) = e26 )
      & ( h(e11) = e20
        | h(e11) = e21
        | h(e11) = e22
        | h(e11) = e23
        | h(e11) = e24
        | h(e11) = e25
        | h(e11) = e26 )
      & ( h(e12) = e20
        | h(e12) = e21
        | h(e12) = e22
        | h(e12) = e23
        | h(e12) = e24
        | h(e12) = e25
        | h(e12) = e26 )
      & ( h(e13) = e20
        | h(e13) = e21
        | h(e13) = e22
        | h(e13) = e23
        | h(e13) = e24
        | h(e13) = e25
        | h(e13) = e26 )
      & ( h(e14) = e20
        | h(e14) = e21
        | h(e14) = e22
        | h(e14) = e23
        | h(e14) = e24
        | h(e14) = e25
        | h(e14) = e26 )
      & ( h(e15) = e20
        | h(e15) = e21
        | h(e15) = e22
        | h(e15) = e23
        | h(e15) = e24
        | h(e15) = e25
        | h(e15) = e26 )
      & ( h(e16) = e20
        | h(e16) = e21
        | h(e16) = e22
        | h(e16) = e23
        | h(e16) = e24
        | h(e16) = e25
        | h(e16) = e26 )
      & ( j(e20) = e10
        | j(e20) = e11
        | j(e20) = e12
        | j(e20) = e13
        | j(e20) = e14
        | j(e20) = e15
        | j(e20) = e16 )
      & ( j(e21) = e10
        | j(e21) = e11
        | j(e21) = e12
        | j(e21) = e13
        | j(e21) = e14
        | j(e21) = e15
        | j(e21) = e16 )
      & ( j(e22) = e10
        | j(e22) = e11
        | j(e22) = e12
        | j(e22) = e13
        | j(e22) = e14
        | j(e22) = e15
        | j(e22) = e16 )
      & ( j(e23) = e10
        | j(e23) = e11
        | j(e23) = e12
        | j(e23) = e13
        | j(e23) = e14
        | j(e23) = e15
        | j(e23) = e16 )
      & ( j(e24) = e10
        | j(e24) = e11
        | j(e24) = e12
        | j(e24) = e13
        | j(e24) = e14
        | j(e24) = e15
        | j(e24) = e16 )
      & ( j(e25) = e10
        | j(e25) = e11
        | j(e25) = e12
        | j(e25) = e13
        | j(e25) = e14
        | j(e25) = e15
        | j(e25) = e16 )
      & ( j(e26) = e10
        | j(e26) = e11
        | j(e26) = e12
        | j(e26) = e13
        | j(e26) = e14
        | j(e26) = e15
        | j(e26) = e16 ) )
   => ~ ( h(op1(e10,e10)) = op2(h(e10),h(e10))
        & h(op1(e10,e11)) = op2(h(e10),h(e11))
        & h(op1(e10,e12)) = op2(h(e10),h(e12))
        & h(op1(e10,e13)) = op2(h(e10),h(e13))
        & h(op1(e10,e14)) = op2(h(e10),h(e14))
        & h(op1(e10,e15)) = op2(h(e10),h(e15))
        & h(op1(e10,e16)) = op2(h(e10),h(e16))
        & h(op1(e11,e10)) = op2(h(e11),h(e10))
        & h(op1(e11,e11)) = op2(h(e11),h(e11))
        & h(op1(e11,e12)) = op2(h(e11),h(e12))
        & h(op1(e11,e13)) = op2(h(e11),h(e13))
        & h(op1(e11,e14)) = op2(h(e11),h(e14))
        & h(op1(e11,e15)) = op2(h(e11),h(e15))
        & h(op1(e11,e16)) = op2(h(e11),h(e16))
        & h(op1(e12,e10)) = op2(h(e12),h(e10))
        & h(op1(e12,e11)) = op2(h(e12),h(e11))
        & h(op1(e12,e12)) = op2(h(e12),h(e12))
        & h(op1(e12,e13)) = op2(h(e12),h(e13))
        & h(op1(e12,e14)) = op2(h(e12),h(e14))
        & h(op1(e12,e15)) = op2(h(e12),h(e15))
        & h(op1(e12,e16)) = op2(h(e12),h(e16))
        & h(op1(e13,e10)) = op2(h(e13),h(e10))
        & h(op1(e13,e11)) = op2(h(e13),h(e11))
        & h(op1(e13,e12)) = op2(h(e13),h(e12))
        & h(op1(e13,e13)) = op2(h(e13),h(e13))
        & h(op1(e13,e14)) = op2(h(e13),h(e14))
        & h(op1(e13,e15)) = op2(h(e13),h(e15))
        & h(op1(e13,e16)) = op2(h(e13),h(e16))
        & h(op1(e14,e10)) = op2(h(e14),h(e10))
        & h(op1(e14,e11)) = op2(h(e14),h(e11))
        & h(op1(e14,e12)) = op2(h(e14),h(e12))
        & h(op1(e14,e13)) = op2(h(e14),h(e13))
        & h(op1(e14,e14)) = op2(h(e14),h(e14))
        & h(op1(e14,e15)) = op2(h(e14),h(e15))
        & h(op1(e14,e16)) = op2(h(e14),h(e16))
        & h(op1(e15,e10)) = op2(h(e15),h(e10))
        & h(op1(e15,e11)) = op2(h(e15),h(e11))
        & h(op1(e15,e12)) = op2(h(e15),h(e12))
        & h(op1(e15,e13)) = op2(h(e15),h(e13))
        & h(op1(e15,e14)) = op2(h(e15),h(e14))
        & h(op1(e15,e15)) = op2(h(e15),h(e15))
        & h(op1(e15,e16)) = op2(h(e15),h(e16))
        & h(op1(e16,e10)) = op2(h(e16),h(e10))
        & h(op1(e16,e11)) = op2(h(e16),h(e11))
        & h(op1(e16,e12)) = op2(h(e16),h(e12))
        & h(op1(e16,e13)) = op2(h(e16),h(e13))
        & h(op1(e16,e14)) = op2(h(e16),h(e14))
        & h(op1(e16,e15)) = op2(h(e16),h(e15))
        & h(op1(e16,e16)) = op2(h(e16),h(e16))
        & j(op2(e20,e20)) = op1(j(e20),j(e20))
        & j(op2(e20,e21)) = op1(j(e20),j(e21))
        & j(op2(e20,e22)) = op1(j(e20),j(e22))
        & j(op2(e20,e23)) = op1(j(e20),j(e23))
        & j(op2(e20,e24)) = op1(j(e20),j(e24))
        & j(op2(e20,e25)) = op1(j(e20),j(e25))
        & j(op2(e20,e26)) = op1(j(e20),j(e26))
        & j(op2(e21,e20)) = op1(j(e21),j(e20))
        & j(op2(e21,e21)) = op1(j(e21),j(e21))
        & j(op2(e21,e22)) = op1(j(e21),j(e22))
        & j(op2(e21,e23)) = op1(j(e21),j(e23))
        & j(op2(e21,e24)) = op1(j(e21),j(e24))
        & j(op2(e21,e25)) = op1(j(e21),j(e25))
        & j(op2(e21,e26)) = op1(j(e21),j(e26))
        & j(op2(e22,e20)) = op1(j(e22),j(e20))
        & j(op2(e22,e21)) = op1(j(e22),j(e21))
        & j(op2(e22,e22)) = op1(j(e22),j(e22))
        & j(op2(e22,e23)) = op1(j(e22),j(e23))
        & j(op2(e22,e24)) = op1(j(e22),j(e24))
        & j(op2(e22,e25)) = op1(j(e22),j(e25))
        & j(op2(e22,e26)) = op1(j(e22),j(e26))
        & j(op2(e23,e20)) = op1(j(e23),j(e20))
        & j(op2(e23,e21)) = op1(j(e23),j(e21))
        & j(op2(e23,e22)) = op1(j(e23),j(e22))
        & j(op2(e23,e23)) = op1(j(e23),j(e23))
        & j(op2(e23,e24)) = op1(j(e23),j(e24))
        & j(op2(e23,e25)) = op1(j(e23),j(e25))
        & j(op2(e23,e26)) = op1(j(e23),j(e26))
        & j(op2(e24,e20)) = op1(j(e24),j(e20))
        & j(op2(e24,e21)) = op1(j(e24),j(e21))
        & j(op2(e24,e22)) = op1(j(e24),j(e22))
        & j(op2(e24,e23)) = op1(j(e24),j(e23))
        & j(op2(e24,e24)) = op1(j(e24),j(e24))
        & j(op2(e24,e25)) = op1(j(e24),j(e25))
        & j(op2(e24,e26)) = op1(j(e24),j(e26))
        & j(op2(e25,e20)) = op1(j(e25),j(e20))
        & j(op2(e25,e21)) = op1(j(e25),j(e21))
        & j(op2(e25,e22)) = op1(j(e25),j(e22))
        & j(op2(e25,e23)) = op1(j(e25),j(e23))
        & j(op2(e25,e24)) = op1(j(e25),j(e24))
        & j(op2(e25,e25)) = op1(j(e25),j(e25))
        & j(op2(e25,e26)) = op1(j(e25),j(e26))
        & j(op2(e26,e20)) = op1(j(e26),j(e20))
        & j(op2(e26,e21)) = op1(j(e26),j(e21))
        & j(op2(e26,e22)) = op1(j(e26),j(e22))
        & j(op2(e26,e23)) = op1(j(e26),j(e23))
        & j(op2(e26,e24)) = op1(j(e26),j(e24))
        & j(op2(e26,e25)) = op1(j(e26),j(e25))
        & j(op2(e26,e26)) = op1(j(e26),j(e26))
        & h(j(e20)) = e20
        & h(j(e21)) = e21
        & h(j(e22)) = e22
        & h(j(e23)) = e23
        & h(j(e24)) = e24
        & h(j(e25)) = e25
        & h(j(e26)) = e26
        & j(h(e10)) = e10
        & j(h(e11)) = e11
        & j(h(e12)) = e12
        & j(h(e13)) = e13
        & j(h(e14)) = e14
        & j(h(e15)) = e15
        & j(h(e16)) = e16 ) )).

%--------------------------------------------------------------------------