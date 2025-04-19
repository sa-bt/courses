echo "🧪 Testing -p (prompt)"
read -p "What is your name? " name
echo "Hello, $name!"

echo
echo "🧪 Testing -s (silent input, for passwords)"
read -s -p "Enter your password: " password
echo -e "\nPassword captured (but not shown)."

echo
echo "🧪 Testing -n (read only 1 char)"
read -n 1 -p "Do you agree? (y/n): " agree
echo -e "\nYou chose: $agree"

echo
echo "🧪 Testing -t (timeout)"
read -t 5 -p "Enter something within 5 seconds: " timed_input
if [ $? -eq 0 ]; then
  echo "You entered: $timed_input"
else
  echo "⏰ Timeout reached. No input received."
fi

echo
echo "🧪 Testing -a (array input)"
read -p "Enter a few words: " -a words
echo "First word: ${words[0]}"
echo "All words: ${words[@]}"

echo
echo "🧪 Testing IFS (custom delimiter)"
IFS=',' read -p "Enter comma-separated values (name,age,city): " name age city
echo "Name: $name | Age: $age | City: $city"