#!/bin/bash 
 
for name in $argv
do
   if [ -f $name ] 
   then
         echo -n "delete the file '${name}' (y/n/q)?"
   else
         echo -n "delete the entire directory '${name}' (y/n/q)? "
   fi	
   set ans = $<
   case ($ans)
      case n: 
         continue
      case q: 
         exit
      case y: 
         rm -r $name
         continue
      esac
done
