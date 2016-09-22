# create

curl --include --request POST http://localhost:3000/ingredients \
  --header "Content-Type: application/json" \
  --data '{
    "ingredient": {
      "name": "Sprinkles",
      "std_measure": "tbsp",
      "color": "rainbow"
    }
  }'
