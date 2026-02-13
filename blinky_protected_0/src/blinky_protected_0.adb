with Stm32.Board;
with Control;
with Last_Chance_Handler;
pragma Unreferenced (Last_Chance_Handler);

with Ada.Real_Time; use Ada.Real_Time;

procedure Blinky_Protected_0 is
   Led_Period : Time_Span;
begin
   Stm32.Board.Initialize_LEDs;
   loop
      Led_Period := Control.Get_Led_Period;
      Stm32.Board.Toggle_LEDs (Stm32.Board.All_LEDs);
      delay To_Duration (Led_Period);
   end loop;
end Blinky_Protected_0;