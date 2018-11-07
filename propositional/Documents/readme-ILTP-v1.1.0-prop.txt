Propositional part of the ILTP-v1.1.0-Library
---------------------------------------------

Installation
------------

Unpack and untar ILTP-v1.1.0-prop.tar.gz
> tar -xzf ILTP-v1.1.0-prop.tar.gz
This will create the directory ILTP-v1.1.0-prop.
 
Contents
--------

* Problems    - benchmark formulas in a standardised syntax
* tptp2X      - tool for converting the formula into some of the existing 
                intuitionistic ATP system format:
* Documents   - formula and result statistics

tptp2X
------

This tool translates the problems into the syntax of the
Automatic-Theorem-Proving (ATP)-systems. It stems from the
TPTP-Library [1]. So-called format-files specify the syntax of the
respective ATP system.  
You will need some Prolog Interpreter. For full details see the
technical manual at http://www.cs.miami.edu/~tptp. 
 
a) Configure tptp2X tool:
> cd ILTP-v1.1.0-prop/TPTP2X
> ./tptp2X_install

Thi s script will ask for required information. (When you are asked to
state your desired format, then simply type 'a' for 'all').

b) Use TPTP2X tool to translate formulas:
> cd ..
> TPTP2X/tptp2X -f <ATP system> [-t <transformations>] [Problems/<domain>/'*.p']

This will write the translated formulas into the directory <ATP system>.
The parameters are:

<ATP system>: intuitionistic ATP systems are one of
              ft, ftprolog, jprover, strip, ljt, pitp,
              leancop (for ileanCoP, ileanTAP, ileanSeP),

<domain>: one of LCL,SYN,SYJ
                 
<transformations>: the most important ones are:
   stdfof: transforms non-standard connectives like <=, <~>, ~|, ~&
           into standard ones
   shorten: replace symbols by short ones, suppess header information

   combination possible, e.g. -t stdfof+shorten


Example: TPTP2X/tptp2X -f strip -t stdfof+shorten


Problems
--------

275 problems
statistics: 42 abstract problems, of which 15 are generic,
            status: 140 intuit. valid, 134 class. but not intuit. valid, 1 class. invalid 


References
----------

[1] G. Sutcliffe, C. Suttner. The TPTP problem library - CNF release
v1.2.1. Journal of Automated Reasoning, 21: 177-203, 1998.
http://www.cs.miami.edu/~tptp/


Contact
-------

Please contact us, if you have any questions, suggestions, or if you
have developed an ATP system or benchmark formulas for intuitionistic
logic. We would like to include your ATP system and your benchmark
formulas in the ILTP-library.


Thomas Raths
traths@cs.uni-potsdam.de

Jens Otten
jeotten@cs.uni-potsdam.de

University of Potsdam
Department of Computer Science
August-Bebel-Straﬂe 89
14482 Potsdam
Germany
