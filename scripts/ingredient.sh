#!/bin/bash

# create record

#ingredient2 = Ingredient.create([{ name: 'Potatoes', std_measure: 'bushel', color: 'white', toxicity: 'Bad'}])
curl --include --request POST http://localhost:3000/ingredients \
  --header "Content-Type: application/json" \
  --data '{
    "ingredient": {
      "name": "Poison",
      "std_measure": "drop",
      "color": "black",
      "toxicity": "very"
    }
  }'


# get ingredient

curl --include --request GET http://localhost:3000/ingredients/1

# update ingredient

curl --include --request PATCH http://localhost:3000/ingredients/1 \
  --header "Content-Type: application/json" \
  --data '{
    "ingredient": {
      "toxicity": "non-toxic"
    }
  }'

# delete ingredient
