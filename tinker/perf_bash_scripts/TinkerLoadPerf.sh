#This script is to load a graph stored in an XML format, in a Sparksee Database
#The first argument is the location where we want to create a db.
#The second argument is the location of the XML file
#The third argument corresponds to the location of the log file

sh -c "sync ; echo 3 > /proc/sys/vm/drop_caches";
gremlin-groovy/bin/gremlin.sh -e /scripts/tinker/TinkerLoadPerf.groovy $1 $2 >> $3;
rm -r /tmp/*


