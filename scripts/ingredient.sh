#!/bin/bash

# create record

ingredient1 = Ingredient.create([{ name: 'Potatoes', std_measure: 'bushel', color: 'white', toxicity: 'Bad'}])

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
  # "name": "an@example.email",
  # "std_measure": "an example password",
  # "color": "an example password"

# delete ingredient
