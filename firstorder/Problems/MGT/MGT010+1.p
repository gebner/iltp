%--------------------------------------------------------------------------
% File     : MGT010+1 : ILTP v1.1.2
% Domain   : Management (Organisation Theory)
% Problem  : Large organization have higher reliability and accountability
% Version  : [PB+94] axioms.
% English  : Large organization have higher reliability and accountability
%            than small organizations (of the same class).

% Refs     : [PB+92] Peli et al. (1992), A Logical Approach to Formalizing
%          : [PB+94] Peli et al. (1994), A Logical Approach to Formalizing 
%          : [Kam94] Kamps (1994), Email to G. Sutcliffe
% Source   : [Kam94]
% Names    : THEOREM 10 [PB+92]
%          : T10FOL1 [PB+94]

% Status   : Theorem
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :    4 (   0 unit)
%            Number of atoms       :   40 (   0 equality)
%            Maximal formula depth :   25 (  18 average)
%            Number of connectives :   36 (   0 ~  ;   0  |;  31  &)
%                                         (   1 <=>;   4 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    8 (   0 propositional; 2-3 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   33 (   0 singleton;  32 !;   1 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
fof(mp3,axiom,
    ( ! [X,T] : 
        ( organization(X,T)
       => ? [Rp] : reproducibility(X,Rp,T) ) )).

%----Reliability and accountability require that organizational
%----structures be highly reproducible.
fof(a2_FOL,hypothesis,
    ( ! [X,Y,T1,T2,R1,R2,A1,A2,Rp1,Rp2] : 
        ( ( organization(X,T1)
          & organization(Y,T2)
          & reliability(X,R1,T1)
          & reliability(Y,R2,T2)
          & accountability(X,A1,T1)
          & accountability(Y,A2,T2)
          & reproducibility(X,Rp1,T1)
          & reproducibility(Y,Rp2,T2) )
       => ( greater(Rp2,Rp1)
        <=> ( greater(R2,R1)
            & greater(A2,A1) ) ) ) )).

fof(t9_FOL,hypothesis,
    ( ! [X,Y,C,Rp1,Rp2,S1,S2,T1,T2] : 
        ( ( organization(X,T1)
          & organization(Y,T2)
          & reorganization_free(X,T1,T1)
          & reorganization_free(Y,T2,T2)
          & class(X,C,T1)
          & class(Y,C,T2)
          & reproducibility(X,Rp1,T1)
          & reproducibility(Y,Rp2,T2)
          & size(X,S1,T1)
          & size(Y,S2,T2)
          & greater(S2,S1) )
       => greater(Rp2,Rp1) ) )).

fof(t10_FOL,conjecture,
    ( ! [X,Y,C,R1,R2,A1,A2,S1,S2,T1,T2] : 
        ( ( organization(X,T1)
          & organization(Y,T2)
          & reorganization_free(X,T1,T1)
          & reorganization_free(Y,T2,T2)
          & class(X,C,T1)
          & class(Y,C,T2)
          & reliability(X,R1,T1)
          & reliability(Y,R2,T2)
          & accountability(X,A1,T1)
          & accountability(Y,A2,T2)
          & size(X,S1,T1)
          & size(Y,S2,T2)
          & greater(S2,S1) )
       => ( greater(R2,R1)
          & greater(A2,A1) ) ) )).

%--------------------------------------------------------------------------
