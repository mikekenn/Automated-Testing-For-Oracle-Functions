BEGIN
   -- Run all the tests
   run_all_tests;
END;
/

-- Show test results
SELECT * FROM test_results;
/
