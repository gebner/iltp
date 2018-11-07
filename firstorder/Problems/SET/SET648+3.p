%--------------------------------------------------------------------------
% File     : SET648+3 : ILTP v1.1.0
% Domain   : Set Theory (Relations)
% Problem  : Range of R (X to Y) a subset of Y => R is (domain of R to Y)
% Version  : [Wor89] axioms : Reduced > Incomplete.
% English  : If the range of a relation R from X to Y is a subset of Y, R is 
%            a relation from the domain of a relation R from X to Y and Y.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Wor89] Woronowicz (1989), Relations Defined on Sets
% Source   : [ILF]
% Names    : RELSET_1 (10) [Wor89]

% Status   : Theorem
% Rating   : 0.55 v3.1.0, 0.56 v2.7.0, 0.50 v2.6.0, 0.43 v2.5.0, 0.50 v2.4.0, 0.75 v2.3.0, 0.67 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   27 (   2 unit)
%            Number of atoms       :  102 (   1 equality)
%            Maximal formula depth :   11 (   6 average)
%            Number of connectives :   79 (   4 ~  ;   0  |;  12  &)
%                                         (   9 <=>;  54 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   0 propositional; 1-2 arity)
%            Number of functors    :   10 (   2 constant; 0-2 arity)
%            Number of variables   :   57 (   0 singleton;  49 !;   8 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments :
%--------------------------------------------------------------------------
%---- line(boole - th(29),1909428)
fof(p1,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ! [C] : 
            ( ilf_type(C,set_type)
           => ! [D] : 
                ( ilf_type(D,set_type)
               => ( ( subset(B,C)
                    & subset(C,D) )
                 => subset(B,D) ) ) ) ) )).

%---- line(relat_1 - th(21),1917997)
fof(p2,axiom,
    ( ! [B] : 
        ( ilf_type(B,binary_relation_type)
       => subset(B,cross_product(domain_of(B),range_of(B))) ) )).

%---- line(zfmisc_1 - th(118),1905443)
fof(p3,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ! [C] : 
            ( ilf_type(C,set_type)
           => ! [D] : 
                ( ilf_type(D,set_type)
               => ( subset(B,C)
                 => ( subset(cross_product(B,D),cross_product(C,D))
                    & subset(cross_product(D,B),cross_product(D,C)) ) ) ) ) ) )).

%---- line(relset_1 - df(1),1916080)
fof(p4,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ! [C] : 
            ( ilf_type(C,set_type)
           => ( ! [D] : 
                  ( ilf_type(D,subset_type(cross_product(B,C)))
                 => ilf_type(D,relation_type(B,C)) )
              & ! [E] : 
                  ( ilf_type(E,relation_type(B,C))
                 => ilf_type(E,subset_type(cross_product(B,C))) ) ) ) ) )).

%---- type_nonempty(line(relset_1 - df(1),1916080))
fof(p5,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ! [C] : 
            ( ilf_type(C,set_type)
           => ? [D] : ilf_type(D,relation_type(C,B)) ) ) )).

%---- line(relat_1 - df(4),1917872)
fof(p6,axiom,
    ( ! [B] : 
        ( ilf_type(B,binary_relation_type)
       => ! [C] : 
            ( ilf_type(C,set_type)
           => ( member(C,domain_of(B))
            <=> ? [D] : 
                  ( ilf_type(D,set_type)
                  & member(ordered_pair(C,D),B) ) ) ) ) )).

%---- declaration(line(relat_1 - df(4),1917872))
fof(p7,axiom,
    ( ! [B] : 
        ( ilf_type(B,binary_relation_type)
       => ilf_type(domain_of(B),set_type) ) )).

%---- line(relat_1 - df(5),1917958)
fof(p8,axiom,
    ( ! [B] : 
        ( ilf_type(B,binary_relation_type)
       => ! [C] : 
            ( ilf_type(C,set_type)
           => ( member(C,range_of(B))
            <=> ? [D] : 
                  ( ilf_type(D,set_type)
                  & member(ordered_pair(D,C),B) ) ) ) ) )).

%---- declaration(line(relat_1 - df(5),1917958))
fof(p9,axiom,
    ( ! [B] : 
        ( ilf_type(B,binary_relation_type)
       => ilf_type(range_of(B),set_type) ) )).

%---- line(relat_1 - axiom70,1917641)
fof(p10,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ( ilf_type(B,binary_relation_type)
        <=> ( relation_like(B)
            & ilf_type(B,set_type) ) ) ) )).

%---- type_nonempty(line(relat_1 - axiom70,1917641))
fof(p11,axiom,
    ( ? [B] : ilf_type(B,binary_relation_type) )).

%---- line(tarski - df(3),1832749)
fof(p12,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ! [C] : 
            ( ilf_type(C,set_type)
           => ( subset(B,C)
            <=> ! [D] : 
                  ( ilf_type(D,set_type)
                 => ( member(D,B)
                   => member(D,C) ) ) ) ) ) )).

%---- declaration(op(cross_product,2,function))
fof(p13,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ! [C] : 
            ( ilf_type(C,set_type)
           => ilf_type(cross_product(B,C),set_type) ) ) )).

%---- declaration(op(ordered_pair,2,function))
fof(p14,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ! [C] : 
            ( ilf_type(C,set_type)
           => ilf_type(ordered_pair(B,C),set_type) ) ) )).

%---- line(hidden - axiom71,1832648)
fof(p15,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ! [C] : 
            ( ilf_type(C,set_type)
           => ( ilf_type(C,subset_type(B))
            <=> ilf_type(C,member_type(power_set(B))) ) ) ) )).

%---- type_nonempty(line(hidden - axiom71,1832648))
fof(p16,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ? [C] : ilf_type(C,subset_type(B)) ) )).

%---- property(reflexivity,op(subset,2,predicate))
fof(p17,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => subset(B,B) ) )).

%---- line(relat_1 - df(1),1917627)
fof(p18,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ( relation_like(B)
        <=> ! [C] : 
              ( ilf_type(C,set_type)
             => ( member(C,B)
               => ? [D] : 
                    ( ilf_type(D,set_type)
                    & ? [E] : 
                        ( ilf_type(E,set_type)
                        & C = ordered_pair(D,E) ) ) ) ) ) ) )).

%---- conditional_cluster(axiom74,relation_like)
fof(p19,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ! [C] : 
            ( ilf_type(C,set_type)
           => ! [D] : 
                ( ilf_type(D,subset_type(cross_product(B,C)))
               => relation_like(D) ) ) ) )).

%---- line(hidden - axiom75,1832644)
fof(p20,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ! [C] : 
            ( ilf_type(C,set_type)
           => ( member(B,power_set(C))
            <=> ! [D] : 
                  ( ilf_type(D,set_type)
                 => ( member(D,B)
                   => member(D,C) ) ) ) ) ) )).

%---- declaration(line(hidden - axiom75,1832644))
fof(p21,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ( ~ empty(power_set(B))
          & ilf_type(power_set(B),set_type) ) ) )).

%---- line(hidden - axiom76,1832640)
fof(p22,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ! [C] : 
            ( ( ~ empty(C)
              & ilf_type(C,set_type) )
           => ( ilf_type(B,member_type(C))
            <=> member(B,C) ) ) ) )).

%---- type_nonempty(line(hidden - axiom76,1832640))
fof(p23,axiom,
    ( ! [B] : 
        ( ( ~ empty(B)
          & ilf_type(B,set_type) )
       => ? [C] : ilf_type(C,member_type(B)) ) )).

%---- line(hidden - axiom77,1832628)
fof(p24,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ( empty(B)
        <=> ! [C] : 
              ( ilf_type(C,set_type)
             => ~ member(C,B) ) ) ) )).

%---- conditional_cluster(axiom78,empty)
fof(p25,axiom,
    ( ! [B] : 
        ( ( empty(B)
          & ilf_type(B,set_type) )
       => relation_like(B) ) )).

%---- declaration(set)
fof(p26,axiom,
    ( ! [B] : ilf_type(B,set_type) )).

%---- line(relset_1 - th(10),1916164)
fof(prove_relset_1_10,conjecture,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ! [C] : 
            ( ilf_type(C,binary_relation_type)
           => ( subset(range_of(C),B)
             => ilf_type(C,relation_type(domain_of(C),B)) ) ) ) )).

%--------------------------------------------------------------------------
