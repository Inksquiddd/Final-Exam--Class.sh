echo "Name of  txt:"
read filepath

echo "Enter beginning page range:"
read beginning

echo "Enter ending page range:"
read ending

echo "Find repeats of:"
read repeats
         
textcontents=$(awk -v start="$beginning" -v end="$ending" 'NR>=start && NR<=end' "$filepath")
         
s=${textcontents//"$repeats"/}
echo "Occurrences in the specified range: $(((${#textcontents} - ${#s}) / ${#repeats}))"
             
awk -v start="$beginning" -v end="$ending" 'NR>=start && NR<=end' ${filepath}

#editing
textcontents=$(cat $filepath)  

    
s=${textcontents//"$repeats"}
echo "$(((${#textcontents} - ${#s}) / ${#repeats}))"
    
echo " ↑  above is the total amount of times word is listed outside of specified range within textfile "
