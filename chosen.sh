input_file="./chosen.txt"
output_file="./chosen_models.txt"

rm "$output_file"
output="create_fifty_rows_of_oob(data[,c(\"locality_project_richness\"" 
while IFS= read -r line
do
  output="$output, \"$line\""
  echo "$output)])" >> "$output_file"
done < "$input_file"
