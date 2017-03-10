# Lock Combinations
Write a function that prints all possible combinations for a lock with the following properties: combinations are 4 digits of the form MMDD; no digit occurs more than once.

Assume all months have 31 days.

Valid combinations:
```
0123 - January 23
0931 - September 31 - OK even though Sept doesn't have 31 days

Invalid combinations:
0121 - January 21 has a repeated digit (1)
0935 - No month has 35 days
```
# References
* Reach.io
*  


## Instructions
* Use [the Lock](./lib/lock/lock.rb)
* Get [the specs passing](./spec/lock_combinations_spec.rb)
    
