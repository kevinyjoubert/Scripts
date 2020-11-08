for i in $(seq 10)
do
    echo "Numero no for: $i"
done

echo

l=0

while [ $l -lt 10 ]]
do
    echo "Numero no while: $l"
    l=$(($l+1))
done