with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

with Ada.Text_Io; use Ada.Text_Io;
with eye;
with random_character;


procedure Tal is
A:Integer;   
B:Integer;  
   
begin
   
  
   
   Put("Skirv in ett heltal");
   Get(B);
   
   A:=B;
   
   Eye(A);
   
   New_Line;
   
   random_character(B);
   
   
   
end Tal;
  

