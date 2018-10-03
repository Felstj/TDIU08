with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure exempel_8 Is

  -- A : array(1..3) of Integer;

   --type My_Array is
    -- array(1..5) of Integer;
   
   type Ten_Ints_Array_Type is array (1..10) of Integer;
   
   -- gett_array
   procedure Get_Array( B: out Ten_Ints_Array_Type) is
    begin
  --     Get(B'Range 1..10);
   
       for P in B'Range loop
	  Get(B(P));
	      end loop;
	 
    end Get_Array;
    
    procedure Find_Maximum ( C: in Ten_Ints_Array_Type;
			       Max: out Integer;
			   Plats: out Integer) is
       
       Compare:Integer;
    begin
       Max:=C(C'First);
       Plats:=C'First;
       for I in C'Range loop
	  Compare:=C(I);
	  if Max < Compare then
	     Max:=Compare;
	     Plats:=I;
	  end if;
	  end loop;
       
       
      
       
       
    end Find_Maximum;
    
    
   --underprogram print_array
  
   procedure Print_Array(A : in Ten_Ints_Array_type) is
   begin
   --   Put("Arrayen börjar vid: "); Put(A'First, Width => 0); New_Line;
     -- Put("Arrayen slutar vid: "); Put(A'Last, Width => 0); New_Line;
     -- Put("Arrayens längd är: "); Put(A'Length, Width => 0); New_Line;
     -- Put("Innehållet kommer här: ");
      
      for I in A'Range loop
	 Put(A(I), Width => 3);
	 
      end loop;
   end Print_Array;
   
   procedure Put_Reverse( A: in Ten_Ints_Array_Type ) is
			   
			  
begin
   
   for I in reverse A'Range loop
      Put(A(I), Width => 3);
 end loop;  
  end Put_Reverse;

   B : Ten_Ints_Array_Type;-- := (14, 99, 16, 17, 18, 3, 4, 5, 6, 5);
   Max, Plats : Integer;
   
   
   --huvudprogram
begin
   -- B(2) := 15;
   Put("skriv in 10 heltal: ");
   Get_Array(B);
   Put("Talföljd: ");
   Print_Array(B);
   New_Line;
   Find_Maximum(B, Max, Plats);
   Put("Max: ");
   Put(Max, Width => 0);
   Put("  ");
   Put("Plats: ");
   Put(Plats, Width => 0);
   New_Line;
   Put("talföljd baklänges: ");
   Put_Reverse(B);
   
end Exempel_8;
