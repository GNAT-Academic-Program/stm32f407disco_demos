with Stm32.Board;
with Stm32.GPIO; use Stm32.GPIO;

package body Control is

   type Spec_T is record
      Led     : GPIO_Point;
      Offtime : Duration;
   end record;

   type Led_T is (Blue, Green, Orange, Red);
   type Led_Specs_T is array (Led_T) of Spec_T;

   Led_Specs : constant Led_Specs_T :=
     (Blue   => (Stm32.Board.Blue_LED,   1.000),
      Green  => (Stm32.Board.Green_LED,  0.500),
      Orange => (Stm32.Board.Orange_LED, 0.250),
      Red    => (Stm32.Board.Red_LED,    0.125));

   task type Blinker_T (L : Led_T);

   task body Blinker_T is
      My_LED : GPIO_Point := Led_Specs (L).Led;
      My_Offtime : constant Duration := Led_Specs (L).Offtime;
   begin
      loop
         Stm32.board.Toggle (My_LED);
         delay My_Offtime;
      end loop;
   end Blinker_T;

   Blue_Task   : Blinker_T (Blue);
   Green_Task  : Blinker_T (Green);
   Orange_Task : Blinker_T (Orange);
   Red_Task    : Blinker_T (Red);

end Control;