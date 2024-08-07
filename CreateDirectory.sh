#!/bin/bash

# download date
echo "Start day !!! "
read -p "year: " year   # year
read -p "month: " month # month
#------------------------------------------
if [ ${month#0} -eq 2 ]
then
    for (( i=1; i<=29;i++))
    do
      if  [[$i -lt 10 ]]
      then
          mkdir ${year}${month}0${i}R 
      elif [[ $i -ge 10 ]]
      then
          mkdir ${year}${month}${i}R
      fi    
    done    
elif [ ${month#0} -eq 4 ] || [ ${month#0} -eq 6 ] || [ ${month#0} -eq 9 ] || [ ${month#0} -eq 11 ]
then
    for (( i=1; i<=30;i++))
    do
      if [ $i -lt 10 ]
      then
          mkdir ${year}${month}0${i}R 
      elif [ $i -ge 10 ]
      then
          mkdir ${year}${month}${i}R
      fi    
    done
elif [ ${month#0} -eq 1 ] || [ ${month#0} -eq 3 ] || [ ${month#0} -eq 5 ] || [ ${month#0} -eq 7 ] || [ ${month#0} -eq 8 ] || [ ${month#0} -eq 10 ] || [ ${month#0} -eq 12 ]
then
    for (( i=1; i<=31;i++))
    do
      if [ $i -lt 10 ]
      then
          mkdir ${year}${month}0${i}R 
      elif [ $i -ge 10 ]
      then
          mkdir ${year}${month}${i}R
      fi
    done
fi    

echo "Out of the loop !!!"
#------------------------------------------