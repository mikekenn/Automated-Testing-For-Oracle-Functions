CREATE OR REPLACE PROCEDURE test_my_function(input_value NUMBER, expected_output NUMBER) IS
   actual_output NUMBER;
   test_status   VARCHAR2(10);
BEGIN
   -- Call the function you want to test
   actual_output := my_function(input_value);

   -- Check if the actual output matches the expected output
   IF actual_output = expected_output THEN
      test_status := 'PASS';
   ELSE
      test_status := 'FAIL';
   END IF;

   -- Insert the test result into the test_results table
   INSERT INTO test_results (test_name, expected_output, actual_output, test_status)
   VALUES ('test_my_function for input ' || input_value, expected_output, actual_output, test_status);

   COMMIT;
END;
/
