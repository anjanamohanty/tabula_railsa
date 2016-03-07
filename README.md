### What is the best approach to storing environment variables (like a Weather Underground Key)? Why?

The best approach to storing environment variables (when running apps locally) is in your .bash_profile. Storing the keys here, then accessing them through ENV["KEY"] ensures that your private keys are not pushed up to github and available for public consumption.

### Do you ever run migrations on the test database?

Yes. Most commonly we migrate the test database up and down for every test case. It is also possible to do this once before all tests run, however can cause more confusion and items to keep track of since every tests can't create its own set of assumptions. We can use fixtures to create a set of shared db records that we want available for multiple test cases.
