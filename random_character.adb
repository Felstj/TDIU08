
with Ada.Text_IO; use Ada.Text_IO;


procedure Random_Character(Heltal: in Integer) is
   
   A:Character;
   B:String(1..7);
   C:Character;
   D:Character;
   E,F:Integer:=1;
    
begin
     A:='/';
     B:="-------";
     C:='\';
     D:='-'  ;
     E:= 0;
     F:= Heltal;
     for I in 1..Heltal loop
   	--- loop för mellanslag
	F:=Heltal;
        for I in 1..F loop
	Put(" ");
        F:=F-1;
	end loop;
	Put(A);
	E:= E+1;
	
	for I in 1..E loop
	 
	   Put(D);
	 
	end loop;
	
	   Put(B);
  	for I in 1..E loop
	 
	   Put(D);
	 end loop;
 
	--Put("-");
	Put( C);
	New_Line;
	end loop;
  
  end Random_Character;
