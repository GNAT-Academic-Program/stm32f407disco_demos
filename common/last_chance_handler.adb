with STM32.Board;

package body Last_Chance_Handler is

   procedure Last_Chance_Handler (Msg : System.Address; Line : Integer) is
      pragma Unreferenced (Msg);
      pragma Unreferenced (Line);
   begin
      loop
         Stm32.Board.Toggle (Stm32.Board.Red_LED);
         delay 0.1;
      end loop;
   end;

end Last_Chance_Handler;