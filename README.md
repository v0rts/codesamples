# Contents

## revSort.sh

### Usage:

revString.sh [-heH] <string> ---- sort provided string in reverse order

where:
 -h  show this help text
You must use one of the following parameters:
 -e  sort using the easy method ( rev command )
 -H  sort using the harder method ( awk command )
Parameter must be followed by <string>
 <string> random ascii string

Example:
./revSort.sh -H ReverseMe

# Alex

Full disclosure.  The -e option using 'rev' is all mine.
The -H option using awk wask constructed with a little help from Google and Stackoverflow  😉
