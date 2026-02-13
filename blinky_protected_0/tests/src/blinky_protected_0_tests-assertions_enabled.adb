procedure Blinky_Protected_0_Tests.Assertions_Enabled is
begin
   begin
      pragma Assert (False, "Should raise");
   exception
      when others =>
         return; -- properly raised
   end;
   raise Program_Error with "Assertion did not raise";
end Blinky_Protected_0_Tests.Assertions_Enabled;
