#!/bin/bash

# create record

ingredient1 = Ingredient.create([{ name: 'Potatoes', std_measure: 'bushel', color: 'white', toxicity: 'Bad'}])

# get ingredient

curl --include --request GET http://localhost:3000/ingredients/1
