with Stm32.Board;
with Control;
with Last_Chance_Handler;
pragma Unreferenced (Last_Chance_Handler);

procedure Blinky_Tasks_0 is
begin
   Stm32.Board.Initialize_LEDs;
   loop
      delay 1.0;
   end loop;
end Blinky_Tasks_0;
