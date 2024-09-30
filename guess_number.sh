# This is a guessing game
    guess_random() {
#we declare a random number and assign it to a  varriable called random_number
rand_number=$((RANDOM % $1))
for i in {0..2}; do
echo "guess number"
read guess_number
if [ $rand_number -eq $2 ]; then
echo "you won!"
$2 = $guess_number
break
elif [ $rand_number -gt $2]; then
echo "you missed! the random number is grater than $2"
read -p "please try again: " guess_number 
$2 = $guess_number
else
echo "you missed! the random number is less than $2"
read -p "please try again: " guess_number 
$2 = $guess_number
fi
done
echo " you lose, the number was $random_number"
fi
}
