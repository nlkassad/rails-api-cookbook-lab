#!/bin/bash

# create record

# version for rails console (bundle exec rails console)
#ingredient2 = Ingredient.create([{ name: 'Potatoes', std_measure: 'bushel', color: 'white', toxicity: 'Bad'}])

# CURL version
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
curl --include --request DELETE http://localhost:3000/ingredients/6
