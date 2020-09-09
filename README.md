Contents
====================

Scripts that I've been asked to code during interviews.

## revSort.sh

### Usage:

revString.sh [-heH] <string> ---- sort provided string in reverse order where:   

* -h  show this help text  

You must use one of the following parameters: 

* -e  sort using the easy method ( rev command )  
* -H  sort using the harder method ( awk command )  

Parameter must be followed by <string>  

* <string> random ascii string  


### Example:  
./revSort.sh -H ReverseMe


## palTest.sh

### Usage:

palTest.sh [-h] <string1> ---- identify palindromes  

where:  

* -h  show this help text  

Parameter must be followed by <string>  

* <string1> ascii string

Example:  
./palTest.sh  anna  



## anaTest.sh 

### Usage:   

anaTest.sh [-h] <string1> <string2> ---- identify anagrams  

where:  

* -h  show this help text  

Parameter must be followed by <string>  

* <string1> ascii string  
* <string2> ascii string  

Example:  
./anaTest.sh  tar rat  

