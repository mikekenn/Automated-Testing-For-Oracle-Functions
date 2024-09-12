CREATE OR REPLACE PROCEDURE run_all_tests IS
BEGIN
   -- Clear previous test results
   DELETE FROM test_results;
   COMMIT;

   -- Run individual test cases
   test_my_function(5, 10);   -- Expecting 10
   test_my_function(0, 0);    -- Expecting 0
   test_my_function(-2, -4);  -- Expecting -4

   -- Add more test cases as needed

END;
/
