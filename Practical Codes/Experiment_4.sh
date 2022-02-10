#!/bin/bash

factorial()
{
    product=$1
  
    if((product <= 2)); then
        echo $product
    else
        f=$((product -1))
        
f=$(factorial $f)
f=$((f*product))
echo $f
fi
}

echo "Please enter the Number to get the Factorial:"   
read num


if((num == 0)); then   
echo 1
else

factorial $num
fi