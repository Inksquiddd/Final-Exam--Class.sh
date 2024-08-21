#user inputs for what file, lines and words should be analyzed

echo "Enter ending page range:"
read ending

echo "Find repeats of:"
read repeats

#creating a variable for the specified range

textcontents=$(awk -v start="$beginning" -v end="$ending" 'NR>=start && NR<=end' "$filepath")


#The math for how lines are analyzed and listed out
s=${textcontents//"$repeats"/}
echo "Occurrences in the specified range: $(((${#textcontents} - ${#s}) / ${#repeats}))"

#content of the file is printed to the screen
awk -v start="$beginning" -v end="$ending" 'NR>=start && NR<=end' ${filepath}

textcontents=$(cat $filepath)

#math for total reoccurances of a given word/phrase is calculated and printed
s=${textcontents//"$repeats"}
echo "$(((${#textcontents} - ${#s}) / ${#repeats}))"

echo " ↑  above is the total amount of times word is listed outside of specified range within textfile "
