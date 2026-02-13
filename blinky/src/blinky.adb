with Stm32.Board;
with Last_Chance_Handler;
pragma Unreferenced (Last_Chance_Handler);

procedure Blinky is
begin
   Stm32.Board.Initialize_LEDs;
   loop
      Stm32.Board.Toggle_LEDs (Stm32.Board.All_LEDs);
      delay 2.0;
   end loop;
end;