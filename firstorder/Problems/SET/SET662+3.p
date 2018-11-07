%--------------------------------------------------------------------------
% File     : SET662+3 : ILTP v1.1.2
% Domain   : Set Theory (Relations)
% Problem  : The empty set is a relation from X to Y
% Version  : [Wor89] axioms : Reduced > Incomplete.
% English  : 

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Wor89] Woronowicz (1989), Relations Defined on Sets
% Source   : [ILF]
% Names    : RELSET_1 (25) [Wor89]

% Status   : Theorem
% Rating   : 0.18 v3.1.0, 0.11 v2.7.0, 0.17 v2.6.0, 0.14 v2.5.0, 0.12 v2.4.0, 0.25 v2.3.0, 0.33 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   22 (   3 unit)
%            Number of atoms       :   75 (   1 equality)
%            Maximal formula depth :   11 (   5 average)
%            Number of connectives :   58 (   5 ~  ;   0  |;   7  &)
%                                         (   6 <=>;  40 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    7 (   0 propositional; 1-2 arity)
%            Number of functors    :    8 (   2 constant; 0-2 arity)
%            Number of variables   :   43 (   0 singleton;  38 !;   5 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments :
%--------------------------------------------------------------------------
%---- line(relat_1 - th(58),1918738)
fof(p1,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ! [C] : 
            ( ilf_type(C,set_type)
           => subset(empty_set,cross_product(B,C)) ) ) )).

%---- line(relset_1 - df(1),1916080)
fof(p2,axiom,
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
fof(p3,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ! [C] : 
            ( ilf_type(C,set_type)
           => ? [D] : ilf_type(D,relation_type(C,B)) ) ) )).

%---- line(hidden - axiom233,1832636)
fof(p4,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ~ member(B,empty_set) ) )).

%---- declaration(line(hidden - axiom233,1832636)) Part 1
fof(p5a,axiom,
    ( empty(empty_set) )).

%---- declaration(line(hidden - axiom233,1832636)) Part 2
fof(p5b,axiom,
    ( type(empty_set,set_type) )).

%---- declaration(op(cross_product,2,function))
fof(p6,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ! [C] : 
            ( ilf_type(C,set_type)
           => ilf_type(cross_product(B,C),set_type) ) ) )).

%---- line(hidden - axiom234,1832648)
fof(p7,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ! [C] : 
            ( ilf_type(C,set_type)
           => ( ilf_type(C,subset_type(B))
            <=> ilf_type(C,member_type(power_set(B))) ) ) ) )).

%---- type_nonempty(line(hidden - axiom234,1832648))
fof(p8,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ? [C] : ilf_type(C,subset_type(B)) ) )).

%---- line(tarski - df(3),1832749)
fof(p9,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ! [C] : 
            ( ilf_type(C,set_type)
           => ( subset(B,C)
            <=> ! [D] : 
                  ( ilf_type(D,set_type)
                 => ( member(D,B)
                   => member(D,C) ) ) ) ) ) )).

%---- property(reflexivity,op(subset,2,predicate))
fof(p10,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => subset(B,B) ) )).

%---- line(hidden - axiom236,1832628)
fof(p11,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ( empty(B)
        <=> ! [C] : 
              ( ilf_type(C,set_type)
             => ~ member(C,B) ) ) ) )).

%---- line(hidden - axiom238,1832644)
fof(p12,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ! [C] : 
            ( ilf_type(C,set_type)
           => ( member(B,power_set(C))
            <=> ! [D] : 
                  ( ilf_type(D,set_type)
                 => ( member(D,B)
                   => member(D,C) ) ) ) ) ) )).

%---- declaration(line(hidden - axiom238,1832644))
fof(p13,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ( ~ empty(power_set(B))
          & ilf_type(power_set(B),set_type) ) ) )).

%---- line(hidden - axiom239,1832640)
fof(p14,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ! [C] : 
            ( ( ~ empty(C)
              & ilf_type(C,set_type) )
           => ( ilf_type(B,member_type(C))
            <=> member(B,C) ) ) ) )).

%---- type_nonempty(line(hidden - axiom239,1832640))
fof(p15,axiom,
    ( ! [B] : 
        ( ( ~ empty(B)
          & ilf_type(B,set_type) )
       => ? [C] : ilf_type(C,member_type(B)) ) )).

%---- line(relat_1 - df(1),1917627)
fof(p16,axiom,
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

%---- conditional_cluster(axiom240,relation_like)
fof(p17,axiom,
    ( ! [B] : 
        ( ( empty(B)
          & ilf_type(B,set_type) )
       => relation_like(B) ) )).

%---- conditional_cluster(axiom241,relation_like)
fof(p18,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ! [C] : 
            ( ilf_type(C,set_type)
           => ! [D] : 
                ( ilf_type(D,subset_type(cross_product(B,C)))
               => relation_like(D) ) ) ) )).

%---- declaration(op(ordered_pair,2,function))
fof(p19,axiom,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ! [C] : 
            ( ilf_type(C,set_type)
           => ilf_type(ordered_pair(B,C),set_type) ) ) )).

%---- declaration(set)
fof(p20,axiom,
    ( ! [B] : ilf_type(B,set_type) )).

%---- line(relset_1 - th(25),1916495)
fof(prove_relset_1_25,conjecture,
    ( ! [B] : 
        ( ilf_type(B,set_type)
       => ! [C] : 
            ( ilf_type(C,set_type)
           => ilf_type(empty_set,relation_type(B,C)) ) ) )).

%--------------------------------------------------------------------------
