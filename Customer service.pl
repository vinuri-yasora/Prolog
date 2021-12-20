/?%To Start the system type start.
% cst

:- use_module(library(jpl)).
start :-sleep(0.4),	
		write('-----------------------------------------------------------------'),nl,
		sleep(0.4),
		write('*****************************************************************'),nl,
		sleep(0.2),
		write("###################||| EXPERT SYSTEM |||#########################"),nl,
		sleep(0.4),
		write('*****************************************************************'),nl,
		sleep(0.4),
		write('-----------------------------------------------------------------'),nl,nl,nl,
		
		
        /*write("Hi mam! First of all tell me your name Please : "),
        read(Customer),*/
		
		
		interface2.
		
		
       /* hypothesis(Customer,Size),
        write(Customer),write(', you '), write(' probably have '),write(Size),write('.'),undo,
		nl,nl,nl,
		sleep(0.7),
		write('*****************************************************************'),nl,
		sleep(0.4),
		write("################||| THANK YOU FOR USE ME |||#####################"),nl,
		sleep(0.4),
		write('*****************************************************************'),nl.*/
        
        
    part(Customer,lightcolors) :- verify(Customer," like  lightcolors (y/n) ?").

	part(Customer,bust_size_of_34) :- verify(Customer," have a bust_size_of_34 (y/n) ?").
 
    part(Customer,waist_size_of_28) :- verify(Customer," have a waist_size_of_28 (y/n) ?").
  
    part(Customer,hip_size_of_37) :- verify(Customer," have a hip_size_of_37(y/n) ?").

    
    part(Customer,lightcolors) :- verify(Customer," like a lightcolors (y/n) ?").

   part(Customer,bust_size_of_36) :- verify(Customer," have a bust_size_of_36 (y/n) ?").
 
    part(Customer,waist_size_of_30) :- verify(Customer," have a waist_size_of_30 (y/n) ?").
  
    part(Customer,hip_size_of_39) :- verify(Customer," have a hip_size_of_39(y/n) ?").


    part(Customer,darkcolors) :- verify(Customer," like darkcolors (y/n) ?").

   part(Customer,bust_size_of_38) :- verify(Customer," have a bust_size_of_38 (y/n) ?").
 
    part(Customer,waist_size_of_32) :- verify(Customer," have a waist_size_of_32 (y/n) ?").
  
    part(Customer,hip_size_of_41) :- verify(Customer," have a hip_size_of_41(y/n) ?").
    
    
part(Customer,darkcolors) :- verify(Customer," like darkcolors (y/n) ?").

   part(Customer,bust_size_of_40) :- verify(Customer," have a bust_size_of_40 (y/n) ?").
 
    part(Customer,waist_size_of_34) :- verify(Customer," have a waist_size_of_34 (y/n) ?").
  
    part(Customer,hip_size_of_43) :- verify(Customer," have a hip_size_of_43(y/n) ?").


	part(Customer,darkcolors) :- verify(Customer," like darkcolors (y/n) ?").

   part(Customer,bust_size_of_42) :- verify(Customer," have a bust_size_of_42 (y/n) ?").
 
    part(Customer,waist_size_of_36) :- verify(Customer," have a waist_size_of_36 (y/n) ?").
  
    part(Customer,hip_size_of_45) :- verify(Customer," have a hip_size_of_45(y/n) ?").


	part(Customer,browncolor) :- verify(Customer," like browncolor (y/n) ?").

   part(Customer,bust_size_of_44) :- verify(Customer," have a bust_size_of_44 (y/n) ?").
 
    part(Customer,waist_size_of_38) :- verify(Customer," have a waist_size_of_38 (y/n) ?").
  
    part(Customer,hip_size_of_47) :- verify(Customer," have a hip_size_of_47(y/n) ?").
    
    
    	
	/*part(_,"Sorry, I don't seem to be able to find the size.").*/

        
    hypothesis(Customer,small) :-
		part(Customer,lightcolors),
        part(Customer,bust_size_of_34),
        part(Customer,waist_size_of_28),
        part(Customer,hip_size_of_37).
        
        
    
    hypothesis(Customer,medium) :-
		part(Customer,lightcolors),
        part(Customer,bust_size_of_36),
        part(Customer,waist_size_of_30),
        part(Customer,hip_size_of_39).

	hypothesis(Customer,large) :-
		part(Customer,darkcolors),
        part(Customer,bust_size_of_38),
        part(Customer,waist_size_of_32),
        part(Customer,hip_size_of_41).

		hypothesis(Customer,xl) :-
		part(Customer,darkcolors),
        part(Customer,bust_size_of_40),
        part(Customer,waist_size_of_34),
        part(Customer,hip_size_of_43).

		hypothesis(Customer,double_xl) :-
		part(Customer,darkcolors),
        part(Customer,bust_size_of_42),
        part(Customer,waist_size_of_36),
        part(Customer,hip_size_of_45).

		hypothesis(Customer,triple_xl) :-
		part(Customer,darkcolors),
        part(Customer,bust_size_of_44),
        part(Customer,waist_size_of_38),
        part(Customer,hip_size_of_47).
        
        
       
        
   
        
	hypothesis(_," I'm Sorry, I don't seem to be able to find the size").
	
    response(Reply) :-
        read(Reply),
        write(Reply),nl.
		
ask(Customer,Question) :-
	write(Customer),write(', do you'),write(Question),
	/*read(N),
	( (N == yes ; N == y)
      ->
       assert(yes(Question)) ;
       assert(no(Question)), fail),*/
	
	interface(', do you',Customer,Question),
	write('Loading.'),nl,
	sleep(1),
	write('Loading..'),nl,
	sleep(1),
	write('Loading...'),nl,
	sleep(1),
    nl.
	
:- dynamic yes/1,no/1.		
	
verify(P,S) :-
   (yes(S) 
    ->
    true ;
    (no(S)
     ->
     fail ;
     ask(P,S))).
	 
undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo.


pt(Customer):- 

		hypothesis(Customer,Size),
		interface3(Customer,', your size is ',Size,'.'),
        write(Customer),write(', your size is '),write(Size),write('.'),undo,end.

end :-
		nl,nl,nl,
		sleep(0.7),
		write('*****************************************************************'),nl,
		sleep(0.4),
		write("################||| THANK YOU FOR USE ME |||#####################"),nl,
		sleep(0.4),
		write('*****************************************************************'),nl.

interface(X,Y,Z) :-
	atom_concat(Y,X, FAtom),
	atom_concat(FAtom,Z,FinalAtom),
	jpl_new('javax.swing.JFrame', ['Expert System'], F),
	jpl_new('javax.swing.JLabel',['--- customerservice ---'],LBL),
	jpl_new('javax.swing.JPanel',[],Pan),
	jpl_call(Pan,add,[LBL],_),
	jpl_call(F,add,[Pan],_),
	jpl_call(F, setLocation, [400,300], _),
	jpl_call(F, setSize, [400,300], _),
	jpl_call(F, setVisible, [@(true)], _),
	jpl_call(F, toFront, [], _),
	jpl_call('javax.swing.JOptionPane', showInputDialog, [F,FinalAtom], N),
	jpl_call(F, dispose, [], _), 
	write(N),nl,
	( (N == yes ; N == y)
      ->
       assert(yes(Z)) ;
       assert(no(Z)), fail).
	   		
interface2 :-
	jpl_new('javax.swing.JFrame', ['Expert System'], F),
	jpl_new('javax.swing.JLabel',['--- CUSTOMERSERVICE ---'],LBL),
	jpl_new('javax.swing.JPanel',[],Pan),
	jpl_call(Pan,add,[LBL],_),
	jpl_call(F,add,[Pan],_),
	jpl_call(F, setLocation, [400,300], _),
	jpl_call(F, setSize, [400,300], _),
	jpl_call(F, setVisible, [@(true)], _),
	jpl_call(F, toFront, [], _),
	jpl_call('javax.swing.JOptionPane', showInputDialog, [F,'Hi mam! First of all tell me your name please'], N),
	jpl_call(F, dispose, [], _), 
	/*write(N),nl,*/
	(	N == @(null)
		->	write('you cancelled'),interface3('you cancelled. ','Thank you ','for use ','me.'),end,fail
		;	write("Hi. How are you? First of all tell me your name please : "),write(N),nl,pt(N)
	).
	
	
interface3(P,W1,D,W2) :-
	atom_concat(P,W1, A),
	atom_concat(A,D,B),
	atom_concat(B,W2,W3),
	jpl_new('javax.swing.JFrame', ['Expert System'], F),
	jpl_new('javax.swing.JLabel',['--- CUSTOMERSERVICE ---'],LBL),
	jpl_new('javax.swing.JPanel',[],Pan),
	jpl_call(Pan,add,[LBL],_),
	jpl_call(F,add,[Pan],_),
	jpl_call(F, setLocation, [400,300], _),
	jpl_call(F, setSize, [400,300], _),
	jpl_call(F, setVisible, [@(true)], _),
	jpl_call(F, toFront, [], _),
	jpl_call('javax.swing.JOptionPane', showMessageDialog, [F,W3], N),
	jpl_call(F, dispose, [], _), 
	/*write(N),nl,*/
	(	N == @(void)
		->	write('')
		;	write("")
	).
	
help :- write("To start the expert system please type 'start.' and press Enter key").