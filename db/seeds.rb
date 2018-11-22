Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

mojito   = Cocktail.create(name: 'Mojito')
gin_fizz = Cocktail.create(name: 'Gin fizz')

sparkling_water = Ingredient.create(name: 'Sparkling water')
rum             = Ingredient.create(name: 'Rum')
mint            = Ingredient.create(name: 'Mint')
ice             = Ingredient.create(name: 'Ice')
cane_sugar      = Ingredient.create(name: 'Cane sugar')

Dose.create(description: '20cl', ingredient: sparkling_water, cocktail: mojito )
Dose.create(description: '5cl',  ingredient: rum,             cocktail: mojito )
Dose.create(description: '2 leaves',  ingredient: mint,             cocktail: mojito )
Dose.create(description: '2 blocks',  ingredient: ice,             cocktail: mojito )
Dose.create(description: '2 spoons',  ingredient: cane_sugar,             cocktail: mojito )

gin      = Ingredient.create(name: 'Gin')
tonic    = Ingredient.create(name: 'Tonic')
lemon    = Ingredient.create(name: 'Lemon')
cucumber = Ingredient.create(name: 'Cucumber')
pepper   = Ingredient.create(name: 'Pepper')

Dose.create(description: '20cl', ingredient: gin, cocktail: gin_fizz )
Dose.create(description: '5cl',  ingredient: tonic,             cocktail: gin_fizz )
Dose.create(description: '2 slices',  ingredient: lemon,             cocktail: gin_fizz )
Dose.create(description: '2 slices',  ingredient: cucumber,             cocktail: gin_fizz )
Dose.create(description: '1/2 spoon',  ingredient: pepper,             cocktail: gin_fizz )







