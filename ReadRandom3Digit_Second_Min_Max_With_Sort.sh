#!/bin/bash -x
i=1
    while [ $i -le 10 ]
    do
        array[$i]=$(($((RANDOM%899))+100))
        ((i++))
      done
        if [ "${#array[@]}" -lt  2 ]
        then
            echo Incoming array is not large enough >&2
             exit 1
        fi
           echo ${array[@]}
           largest=${array[0]}


          secondGreatest='unset'

      for ((i=1; i < ${#array[@]}; i++))
      do
         if [[ ${array[i]} > $largest ]]
         then
              secondGreatest=$largest
              largest=${array[i]}
         elif (( ${array[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${array[i]} > $secondGreatest ]]; }
         then
              secondGreatest=${array[i]}
         fi
        done

                echo "secondGreatest = $secondGreatest"



           smallest=${array[1]}
           secondsmallest='unset'

             for ((i=1; i < ${#array[@]}; i++))
             do
                     if [[ ${array[i]} < $smallest ]]
                      then
                              secondsmallest=$smallest
                              smallest=${array[i]}
                     elif (( ${array[i]} != $smallest )) && { [[ "$secondsmallest" = "unset" ]] || [[ ${array[i]} < $secondsmallest ]]; }
                     then
                                 secondsmallest=${array[i]}
     fi
                     done

                               echo "secondsmallest = "$secondsmallest
