package body Control is

   protected type Counters is
      procedure Inc_A;
      procedure Inc_B;
      function Get_Counters_Sum return Time_Span;
   private
      Counter_A : Natural := 0;
      Counter_B : Natural := 0;
   end Counters;

   protected body Counters is
      procedure Inc_A is
      begin
         Counter_A := @ + 1;
      end;
      procedure Inc_B is
      begin
         Counter_B := @ + 1;
      end;
      function Get_Counters_Sum return Time_Span is
         (Milliseconds (Counter_A + Counter_B));
   end Counters;

   PO : Counters;

   task TA;
   task body TA is
      Period : constant Time_Span := Milliseconds (30);
   begin
      loop
         PO.Inc_A;
         delay To_Duration (Period);
      end loop;
   end TA;

   task TB;
   task body TB is
      Period : constant Time_Span := Milliseconds (70);
   begin
      loop
         PO.Inc_B;
         delay To_Duration (Period);
      end loop;
   end TB;

   function Get_Led_Period return Time_Span is
      (PO.Get_Counters_Sum);

end Control;