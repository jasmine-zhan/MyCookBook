INSERT INTO ingredients (ingredientId, name, foodGroup, shelfLife) VALUES
('I001', 'Olive Oil', 'Fats', 180),
('I002', 'Garlic', 'Vegetables', 14),
('I003', 'Yellow Onion', 'Vegetables', 30),
('I004', 'Ground Beef', 'Protein', 2),
('I005', 'Ground Pork', 'Protein', 2),
('I006', 'Saffron', 'Seasoning', 730),
('I007', 'Beef Bouillon', 'Canned Goods', 730),
('I008', 'Can Crushed Tomatoes', 'Canned Goods', 730),
('I009', 'Tomato Paste', 'Canned Goods', 730),
('I010', 'Water', 'Sweeteners', 365),
('I011', 'Worcestershire Sauce', 'Condiments', 180),
('I012', 'Dried Bay Leaves', 'Dried Herbs', 365),
('I013', 'Thyme', 'Dried Herbs', 365),
('I014', 'Oregano', 'Dried Herbs', 365),
('I015', 'Salt', 'Seasoning', 1000),
('I016', 'Spaghetti', 'Grains', 730),
('I017', 'Parmesan Cheese', 'Dairy', 60),
('I018', 'Parsley', 'Fresh Herbs', 3),
('I019', 'Lemon', 'Fruits', 10),
('I020', 'Dijon Mustard', 'Condiments', 180),
('I021', 'Rosemary', 'Fresh Herbs', 10),
('I022', 'Black Pepper', 'Spices', 730),
('I023', 'Chicken Breast', 'Protein', 2),
('I024', 'Romaine Lettuce', 'Vegetables', 5),
('I025', 'Wheat Bread', 'Bread', 7),
('I026', 'Caesar Dressing', 'Condiments', 90),
('I027', 'Greek Yogurt', 'Dairy', 7),
('I028', 'Anchovy Paste', 'Condiments', 90),
('I029', 'Burger Buns', 'Bread', 7),
('I030', 'Tomato', 'Vegetables', 5),
('I031', 'Burger Sauce', 'Condiments', 90),
('I032', 'Ketchup', 'Condiments', 365),
('I033', 'Mustard', 'Condiments', 365),
('I034', 'Bread Crumbs', 'Baking Ingredients', 180),
('I035', 'Red Onion', 'Vegetables', 30),
('I036', 'Milk', 'Dairy', 7),
('I037', 'Eggs', 'Protein', 30),
('I038', 'Garlic Powder', 'Spices', 730),
('I039', 'Brown Sugar', 'Sweeteners', 730),
('I040', 'Fettuccine', 'Grains', 730),
('I041', 'Chicken Stock', 'Canned Goods', 365),
('I042', 'Heavy Cream', 'Dairy', 7),
('I043', 'Sirloin Steak', 'Protein', 2),
('I044', 'Ribeye', 'Protein', 2),
('I045', 'All-purpose Flour', 'Baking Ingredients', 365),
('I046', 'Butter', 'Dairy', 90),
('I047', 'Mushroom', 'Vegetables', 7),
('I048', 'Beef Broth', 'Canned Goods', 365),
('I049', 'Sour Cream', 'Dairy', 7),
('I050', 'Potatoes', 'Vegetables', 30),
('I051', 'Noodles', 'Grains', 730),
('I052', 'Tortilla', 'Grains', 28),
('I053', 'Rice', 'Grains', 730),
('I054', 'Mayonnaise', 'Condiments', 365),
('I055', 'Cheddar', 'Dairy', 45);

INSERT INTO recipes (recipeId, recipeName, steps, cookTime, mealType, cuisine, calories, servingSize) VALUES
('R001', 'Spaghetti Aglio e Olio', 'Cook spaghetti. Heat olive oil, garlic, red pepper flakes, and parsley in a pan. Toss cooked spaghetti in the oil mixture.', 15, 'Dinner', 'Italian', 450, 2),
('R002', 'Beef Tacos', 'Cook ground beef with onions and garlic. Assemble with tortillas, cheese, lettuce, and salsa.', 20, 'Dinner', 'Mexican', 600, 3),
('R003', 'Caesar Salad', 'Mix romaine lettuce, Caesar dressing, croutons, and parmesan cheese.', 10, 'Lunch', 'American', 350, 1),
('R004', 'Grilled Chicken Salad', 'Grill chicken breast and serve over a bed of lettuce with tomatoes, cucumbers, and a dressing of choice.', 25, 'Lunch', 'American', 500, 2),
('R005', 'Vegetable Stir Fry', 'Sauté garlic, onion, bell pepper, broccoli, and green beans. Serve with rice or noodles.', 30, 'Dinner', 'Asian', 400, 2),
('R006', 'Hamburgers', 'Cook ground beef into patties. Grill or fry and serve on burger buns with lettuce, tomato, and condiments.', 25, 'Dinner', 'American', 700, 2),
('R007', 'Chicken Alfredo', 'Cook chicken breast and fettuccine. Make a creamy sauce with heavy cream, garlic, parmesan cheese, and butter. Combine with pasta and chicken.', 30, 'Dinner', 'Italian', 800, 4),
('R008', 'Chicken Tacos', 'Cook chicken breast and shred it. Serve on tortillas with lettuce, salsa, and cheese.', 20, 'Dinner', 'Mexican', 550, 2),
('R009', 'Chicken and Rice', 'Cook chicken with rice, garlic, and broth for a simple meal.', 35, 'Dinner', 'American', 600, 2),
('R010', 'Egg Salad Sandwich', 'Make egg salad with boiled eggs, mayonnaise, and mustard. Serve on bread.', 10, 'Lunch', 'American', 300, 1),
('R011', 'Mushroom Burger', 'Grill beef patties and top with mushrooms. Serve on buns.', 30, 'Dinner', 'American', 750, 2),
('R012', 'Beef Stew', 'Cook beef with potatoes, carrots, onions, and broth for a hearty stew.', 60, 'Dinner', 'American', 650, 4),
('R013', 'Tomato Soup', 'Cook tomatoes with garlic, onion, and broth. Blend until smooth.', 40, 'Dinner', 'American', 250, 4),
('R014', 'Garlic Parmesan Pasta', 'Cook pasta. Sauté garlic in olive oil and butter. Toss with pasta and parmesan cheese.', 20, 'Dinner', 'Italian', 600, 2),
('R015', 'Pasta Primavera', 'Cook pasta. Sauté bell peppers, zucchini, and cherry tomatoes in olive oil. Combine with pasta and toss with herbs.', 30, 'Dinner', 'Italian', 550, 2),
('R016', 'Steak and Potatoes', 'Grill or pan-fry sirloin or ribeye steak. Serve with roasted or mashed potatoes.', 30, 'Dinner', 'American', 800, 2),
('R017', 'Mushroom Risotto', 'Sauté mushrooms and onions. Add rice and broth gradually, stirring until creamy.', 45, 'Dinner', 'Italian', 650, 3),
('R018', 'Crispy Chicken Wings', 'Bake or fry chicken wings with spices and toss in buffalo sauce.', 40, 'Dinner', 'American', 750, 4),
('R019', 'Grilled Cheese Sandwich', 'Make a sandwich with buttered bread and cheese, then grill until golden brown.', 10, 'Lunch', 'American', 450, 1),
('R020', 'Chicken Parmesan', 'Bread chicken breast and fry. Top with marinara sauce and mozzarella cheese, then bake.', 40, 'Dinner', 'Italian', 750, 2),
('R021', 'Beef Burritos', 'Cook ground beef and fill tortillas with beef, cheese, lettuce, and salsa.', 20, 'Dinner', 'Mexican', 600, 3),
('R022', 'Lemon Garlic Chicken', 'Marinate chicken in lemon, garlic, and olive oil. Grill or bake the chicken.', 30, 'Dinner', 'American', 550, 2),
('R023', 'Chicken Fried Rice', 'Cook rice. Sauté chicken, garlic, and vegetables in oil. Mix in the rice and soy sauce.', 25, 'Dinner', 'Asian', 600, 3),
('R024', 'Chili', 'Cook ground beef with beans, tomatoes, chili powder, and other spices for a hearty chili.', 60, 'Dinner', 'American', 700, 4),
('R029', 'Pasta Carbonara', 'Cook pasta. Sauté pancetta or bacon. Toss pasta with eggs, parmesan cheese, and pancetta.', 25, 'Dinner', 'Italian', 650, 2),
('R030', 'Beef and Broccoli Stir Fry', 'Cook beef and broccoli in soy sauce, garlic, and ginger. Serve over rice.', 25, 'Dinner', 'Asian', 500, 3),
('R031', 'Garlic Butter Shrimp', 'Sauté shrimp with garlic and butter. Serve over pasta or with rice.', 15, 'Dinner', 'Seafood', 450, 2),
('R032', 'Vegetarian Chili', 'Cook beans, tomatoes, bell peppers, and spices to make chili.', 60, 'Dinner', 'American', 450, 4),
('R033', 'Shrimp Scampi', 'Sauté shrimp with garlic, butter, and lemon juice. Serve with pasta.', 20, 'Dinner', 'Italian', 550, 2),
('R034', 'Pulled Pork Sandwich', 'Slow cook pork shoulder with spices. Shred and serve on buns with BBQ sauce.', 90, 'Dinner', 'American', 800, 3),
('R035', 'Crispy Baked Potatoes', 'Roast potatoes with olive oil and seasonings until crispy.', 40, 'Side Dish', 'American', 350, 4),
('R036', 'Sweet and Sour Chicken', 'Cook chicken with bell peppers, pineapple, and a sweet-sour sauce.', 30, 'Dinner', 'Asian', 600, 3),
('R037', 'Roast Chicken', 'Roast a whole chicken with herbs, garlic, and lemon.', 90, 'Dinner', 'American', 700, 4),
('R038', 'Chicken Soup', 'Cook chicken with carrots, celery, onion, and broth for a classic soup.', 45, 'Dinner', 'American', 350, 4),
('R039', 'Vegetarian Quesadillas', 'Sauté vegetables and cheese between tortillas. Grill until crispy.', 20, 'Dinner', 'Mexican', 550, 2),
('R040', 'Spinach and Ricotta Stuffed Shells', 'Stuff pasta shells with spinach and ricotta. Top with marinara sauce and bake.', 45, 'Dinner', 'Italian', 600, 4),
('R041', 'Pork Chops with Applesauce', 'Cook pork chops and serve with applesauce on the side.', 30, 'Dinner', 'American', 550, 2),
('R042', 'Lamb Curry', 'Cook lamb in a curry sauce with vegetables and spices.', 60, 'Dinner', 'Indian', 750, 4),
('R043', 'Falafel', 'Fry falafel patties made from chickpeas, herbs, and spices.', 40, 'Lunch', 'Middle Eastern', 500, 3),
('R044', 'Ratatouille', 'Sauté eggplant, zucchini, onions, tomatoes, and herbs.', 45, 'Dinner', 'French', 400, 4),
('R045', 'Lasagna', 'Layer pasta, ricotta cheese, marinara sauce, and meat or vegetables. Bake.', 60, 'Dinner', 'Italian', 700, 4),
('R046', 'Chicken Kiev', 'Prepare chicken breasts with garlic butter filling. Coat with breadcrumbs and bake.', 45, 'Dinner', 'Russian', 750, 2),
('R047', 'Grilled Shrimp Skewers', 'Skewer shrimp and grill with olive oil, garlic, and lemon.', 20, 'Dinner', 'Seafood', 500, 2),
('R048', 'Beef Wellington', 'Wrap beef in puff pastry and bake with mushrooms and pate.', 90, 'Dinner', 'British', 850, 2),
('R049', 'Pork Schnitzel', 'Bread and fry pork cutlets. Serve with lemon wedges.', 40, 'Dinner', 'German', 600, 2),
('R050', 'Tofu Stir Fry', 'Sauté tofu with vegetables in soy sauce and garlic. Serve with rice.', 30, 'Dinner', 'Asian', 450, 2),
('R051', 'Baked Salmon', 'Bake salmon fillets with olive oil, lemon, and herbs.', 20, 'Dinner', 'Seafood', 450, 2),
('R052', 'Vegetable Soup', 'Cook vegetables like carrots, celery, onion, and potatoes with vegetable broth.', 45, 'Dinner', 'American', 300, 4),
('R053', 'Baked Ziti', 'Cook ziti pasta. Make a marinara sauce with tomatoes, garlic, and herbs. Combine pasta with sauce, cheese, and bake.', 40, 'Dinner', 'Italian', 700, 4);

-- Spaghetti Aglio e Olio
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R001', 'I001', 0.1, 'cup'), -- Olive Oil
('R001', 'I002', 2, 'cloves'), -- Garlic
('R001', 'I018', 1, 'tbsp'), -- Parsley
('R001', 'I016', 1, 'bundle'); -- spaghetti

-- Beef Tacos
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R002', 'I005', 1, 'lb'), -- Ground Beef
('R002', 'I003', 1, 'medium'), -- Yellow Onion
('R002', 'I002', 2, 'cloves'), -- Garlic
('R002', 'I024', 1, 'cup'), -- Romaine Lettuce
('R002', 'I030', 0.5, 'diced'), -- Tomato
('R002', 'I052', 1, 'piece'); -- tortilla

-- Caesar Salad
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R003', 'I024', 3, 'cups'), -- Romaine Lettuce
('R003', 'I026', 3, 'tbsp'), -- Caesar Dressing
('R003', 'I017', 0.25, 'cup'); -- Parmesan Cheese

-- Grilled Chicken Salad
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R004', 'I023', 1, 'chicken breast'), -- Chicken Breast
('R004', 'I024', 2, 'cups'), -- Romaine Lettuce
('R004', 'I030', 1, 'medium'), -- Tomato
('R004', 'I042', 1, 'tbsp'); -- Olive Oil

-- Vegetable Stir Fry
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R005', 'I002', 2, 'cloves'), -- Garlic
('R005', 'I003', 1, 'medium'), -- Yellow Onion
('R005', 'I047', 1, 'cup'), -- Mushroom
('R005', 'I024', 1, 'cup'); -- Romaine Lettuce

-- Hamburgers
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R006', 'I005', 1, 'lb'), -- Ground Beef
('R006', 'I029', 2, 'buns'), -- Burger Buns
('R006', 'I024', 1, 'leaf'), -- Romaine Lettuce
('R006', 'I030', 1, 'slice'), -- Tomato
('R006', 'I031', 1, 'tbsp'), -- burger sauce
('R006', 'I032', 1, 'tbsp'); -- Ketchup

-- Chicken Alfredo
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R007', 'I023', 1, 'chicken breast'), -- Chicken Breast
('R007', 'I040', 1, 'cup'), -- Fettuccine
('R007', 'I042', 1, 'cup'), -- Heavy Cream
('R007', 'I017', 0.25, 'cup'); -- Parmesan Cheese

-- Chicken Tacos
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R008', 'I023', 1, 'chicken breast'), -- Chicken Breast
('R008', 'I024', 1, 'cup'), -- Romaine Lettuce
('R008', 'I052', 1, 'piece'), -- tortilla
('R008', 'I021', 1, 'tbsp'); -- Rosemary

-- Chicken and Rice
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R009', 'I023', 1, 'chicken breast'), -- Chicken Breast
('R009', 'I016', 2, 'cups'), -- Rice
('R009', 'I002', 2, 'cloves'), -- Garlic
('R009', 'I048', 1, 'cups'); -- beef broth

-- Egg Salad Sandwich
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R010', 'I037', 2, 'eggs'), -- Eggs
('R010', 'I025', 2, 'slices'), -- Wheat Bread
('R010', 'I020', 1, 'tbsp'), -- Dijon Mustard
('R010', 'I054', 2, 'tbsp'); -- mayo

-- Mushroom Burger
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R011', 'I043', 1, 'lb'), -- Beef Patties
('R011', 'I047', 0.5, 'cup'), -- Mushrooms
('R011', 'I029', 2, 'buns'); -- Burger Buns

-- Beef Stew
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R012', 'I043', 1, 'lb'), -- Sirloin Steak
('R012', 'I050', 2, 'medium'), -- Potatoes
('R012', 'I035', 1, 'medium'), -- Red Onion
('R012', 'I048', 1, 'cup'); -- Beef Broth

-- Beef Stew
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R013', 'I043', 1, 'lb'), -- Tomato
('R013', 'I002', 2, 'cloves'), -- Garlic
('R013', 'I035', 0.5, 'medium'), -- Red Onion
('R013', 'I048', 1, 'cup'); -- Beef Broth

-- Garlic Parmesan Pasta
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R014', 'I016', 2, 'cups'), -- Pasta
('R014', 'I001', 0.1, 'cup'), -- Olive Oil
('R014', 'I002', 2, 'cloves'), -- Garlic
('R014', 'I017', 0.25, 'cup'); -- Parmesan Cheese

-- Pasta Primavera
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R015', 'I016', 2, 'cups'), -- Pasta
('R015', 'I003', 1, 'medium'), -- Yellow Onion
('R015', 'I018', 1, 'tbsp'), -- Parsley
('R015', 'I017', 0.25, 'cup'); -- Parmesan Cheese

-- Steak and Potatoes
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R016', 'I043', 1, 'steak'), -- Sirloin Steak
('R016', 'I050', 3, 'medium'); -- Potatoes

-- Mushroom Risotto
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R017', 'I047', 1, 'cup'), -- Mushrooms
('R017', 'I035', 1, 'medium'), -- Red Onion
('R017', 'I016', 2, 'cups'), -- Rice
('R017', 'I048', 1, 'cup'); -- Beef Broth

-- Crispy Chicken Wings
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R018', 'I043', 1, 'lb'), -- Chicken Wings
('R018', 'I021', 1, 'tbsp'), -- Rosemary
('R018', 'I002', 3, 'cloves'); -- Garlic

-- Grilled Cheese Sandwich
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R019', 'I055', 2, 'slices'), -- Cheddar
('R019', 'I025', 2, 'slices'), -- Wheat Bread
('R019', 'I046', 1, 'tbsp'); -- Butter

-- Chicken Parmesan
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R020', 'I023', 1, 'chicken breast'), -- Chicken Breast
('R020', 'I008', 1, 'can'), -- Crushed Tomatoes
('R020', 'I017', 0.5, 'cup'), -- Parmesan Cheese
('R020', 'I029', 2, 'buns'); -- Burger Buns

-- Beef Burritos
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R021', 'I005', 1, 'lb'), -- Ground Beef
('R021', 'I024', 1, 'cup'), -- Romaine Lettuce
('R006', 'I030', 0.5, 'diced'), -- Tomato
('R021', 'I052', 1, 'piece'); -- tortilla

-- Lemon Garlic Chicken
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R022', 'I023', 1, 'chicken breast'), -- Chicken Breast
('R022', 'I019', 1, 'lemon'), -- Lemon
('R022', 'I002', 3, 'cloves'); -- Garlic

-- Chicken Fried Rice
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R023', 'I023', 1, 'chicken breast'), -- Chicken Breast
('R023', 'I002', 2, 'cloves'), -- Garlic
('R023', 'I047', 1, 'cup'), -- Mushrooms
('R023', 'I016', 2, 'cups'); -- Rice

-- Chili
INSERT INTO recipeIngredients (recipeId, ingredientId, quantity, unit) VALUES
('R024', 'I005', 1, 'lb'), -- Ground Beef
('R024', 'I050', 2, 'medium'), -- Potatoes
('R024', 'I035', 1, 'medium'), -- Red Onion
('R024', 'I008', 1, 'can'), -- Crushed Tomatoes
('R024', 'I048', 1, 'cup'); -- Beef Broth



INSERT INTO users (id, password, firstName, lastName, email, loggedIn)
VALUES
('U001', 'Emmet123!', 'Emmet', 'Brickowski', 'emmet.brickowski@lego.com', 1),
('U002', 'Woody!2023', 'Woody', 'Pride', 'woody.pride@toy.com', 0),
('U003', 'BuzzLight#2020', 'Buzz', 'Lightyear', 'buzz.lightyear@space.com', 0),
('U004', 'Homer@Simpson', 'Homer', 'Simpson', 'homer.simpson@springfield.com', 0),
('U005', 'Marge@Simpson', 'Marge', 'Simpson', 'marge.simpson@springfield.com', 0),
('U006', 'Bart2021#Simpson', 'Bart', 'Simpson', 'bart.simpson@springfield.com', 0),
('U007', 'LisaSimpson*123', 'Lisa', 'Simpson', 'lisa.simpson@springfield.com', 0),
('U008', 'Maggie123!', 'Maggie', 'Simpson', 'maggie.simpson@springfield.com', 0),
('U009', 'Shrek@Ogre99', 'Shrek', 'Green', 'shrek.ogre@farquaad.com', 0),
('U010', 'DonkeyD123!', 'Donkey', 'Mule', 'donkey.donkey@shrek.com', 0),
('U011', 'FionaOgre#2020', 'Fiona', 'Farquaad', 'fiona.ogre@farquaad.com', 0),
('U012', 'JackSparrow!22', 'Jack', 'Pirate', 'jack.sparrow@pirates.com', 0),
('U013', 'WillTurner#33', 'Will', 'Turner', 'will.turner@pirates.com', 0),
('U014', 'ElizaSwan123!', 'Eliza', 'Island', 'elizabeth.swan@pirates.com', 0),
('U015', 'SpongeBob!123', 'SpongeBob', 'SquarePants', 'spongebob.squarepants@bikini.com', 0),
('U016', 'PatrickStar#44', 'Patrick', 'Rock', 'patrick.star@bikini.com', 0),
('U017', 'Squidward@99', 'Squidward', 'Clarinet', 'squidward.tentacles@bikini.com', 0),
('U018', 'Krabs@Bikini77', 'Krabs', 'Shell', 'mr.krabs@bikini.com', 0),
('U019', 'Plankton1234', 'Plankton', 'Tiny', 'plankton.plankton@bikini.com', 0),
('U020', 'RexDinosaur99', 'Rex', 'T-Rex', 'rex.dinosaur@toy.com', 0),
('U021', 'WoodySheriff#1', 'Woody', 'Roundup', 'woody.sheriff@toy.com', 0),
('U022', 'Lightning#2021', 'Lightning', 'Speedster', 'lightning.mcqueen@cars.com', 0),
('U023', 'MaterTowtruck', 'Mater', 'Rusty', 'mater.towtruck@cars.com', 0),
('U024', 'McLovin@123', 'McLovin', 'Superbad', 'mclovin.mclovin@superbad.com', 0),
('U025', 'Dude@BigLebowski', 'Dude', 'Lebowski', 'the.dude@biglebowski.com', 0),
('U026', 'FerrisBueller!2021', 'Ferris', 'Rebel', 'ferris.bueller@bueller.com', 0),
('U027', 'NeoAnderson@Matrix', 'Neo', 'Chosen', 'neo.anderson@matrix.com', 0),
('U028', 'Trinity@Matrix12', 'Trinity', 'Codebreaker', 'trinity.matrix@matrix.com', 0),
('U029', 'MartyMcFly88', 'Marty', 'Timewalker', 'marty.mcfly@hillvalley.com', 0),
('U030', 'DocBrown#1985', 'Doc', 'Inventor', 'doc.brown@hillvalley.com', 0),
('U031', 'ForrestGump#2021', 'Forrest', 'Runner', 'forrest.gump@bubbagump.com', 0),
('U032', 'JennyCurran*33', 'Jenny', 'Singer', 'jenny.curran@bubbagump.com', 0),
('U033', 'Violet@Wonka77', 'Violet', 'GiantGum', 'violet.beauregarde@wonka.com', 0),
('U034', 'CharlieBucket123', 'Charlie', 'Golden', 'charlie.bucket@wonka.com', 0),
('U035', 'WillyWonka#2021', 'Willy', 'CandyMaster', 'willy.wonka@wonka.com', 0),
('U036', 'HarryPotter@2022', 'Harry', 'Wizard', 'harry.potter@hogwarts.com', 0),
('U037', 'HermioneGranger#1', 'Hermione', 'Witch', 'hermione.granger@hogwarts.com', 0),
('U038', 'RonWeasley1234', 'Ron', 'Wizard', 'ron.weasley@hogwarts.com', 0),
('U039', 'DobbyHouseElf!56', 'Dobby', 'Free', 'dobby.houseelf@hogwarts.com', 0),
('U040', 'YodaJedi88!', 'Yoda', 'Master', 'yoda.jedi@starwars.com', 0),
('U041', 'LukeSkywalker#77', 'Luke', 'Force', 'luke.skywalker@starwars.com', 0),
('U042', 'LeiaOrgana@2022', 'Leia', 'Princess', 'leia.organa@starwars.com', 0),
('U043', 'HanSolo@StarWars', 'Han', 'Smuggler', 'han.solo@starwars.com', 0),
('U044', 'ChewbaccaWookiee77', 'Chewbacca', 'Furry', 'chewbacca.wookiee@starwars.com', 0),
('U045', 'IronMan@2022', 'Iron', 'Armored', 'iron.man@marvel.com', 0),
('U046', 'CaptainAmerica!99', 'Captain', 'Patriot', 'captain.america@marvel.com', 0),
('U047', 'ThorGodOfThunder#1', 'Thor', 'Asgardian', 'thor.godofthunder@marvel.com', 0),
('U048', 'BlackWidow@Marvel', 'BlackWidow', 'Avenger', 'black.widow@marvel.com', 0),
('U049', 'SpiderMan@2023', 'Spider', 'Webslinger', 'spider.man@marvel.com', 0),
('U050', 'DeadpoolMerc#2022', 'Deadpool', 'Regenerator', 'deadpool.merc@marvel.com', 0),
('U051', 'WyldstyleLis#1', 'Wyldstyle', 'Builder', 'wyldstyle.lis@lego.com', 0),
('U052', 'BatmanWayne@2023', 'Batman', 'DarkKnight', 'batman.wayne@lego.com', 0),
('U053', 'UnikittySparkle88', 'Unikitty', 'Rainbow', 'unikitty.sparkle@lego.com', 0),
('U054', 'VitruviusGreybeard', 'Vitruvius', 'Wisdom', 'vitruvius.greybeard@lego.com', 0);


-- (User user, Ingredient ingredient, Double currentQuantity, LocalDate dateBought)
INSERT INTO ownedIngredients (userId, ingredientId, currentQuantity, expiry) VALUES
('U001', 'I001', 1, '2024-12-01'),
('U001', 'I002', 2, '2025-01-15'),
('U001', 'I003', 3, '2025-02-01'),
('U001', 'I004', 4, '2026-03-10'),
('U001', 'I005', 5, '2027-07-20'),
('U001', 'I006', 2, '2026-08-30'),
('U001', 'I007', 4, '2025-09-15'),
('U001', 'I008', 1, '2026-01-05'),
('U001', 'I009', 3, '2025-06-22'),
('U001', 'I010', 5, '2026-11-11'),
('U001', 'I011', 2, '2027-02-25'),
('U001', 'I012', 4, '2025-04-10'),
('U001', 'I013', 3, '2025-05-30'),
('U001', 'I014', 1, '2024-11-30'),
('U001', 'I015', 5, '2026-12-05'),
('U001', 'I016', 2, '2025-03-19'),
('U001', 'I017', 3, '2025-06-10'),
('U001', 'I018', 1, '2025-08-01'),
('U001', 'I019', 4, '2026-02-20'),
('U001', 'I020', 5, '2027-01-15'),
('U001', 'I021', 2, '2026-07-12'),
('U001', 'I022', 3, '2025-10-05'),
('U001', 'I023', 4, '2026-09-20'),
('U001', 'I024', 1, '2024-12-25'),
('U001', 'I025', 5, '2027-03-02'),
('U001', 'I026', 2, '2025-07-15'),
('U001', 'I027', 3, '2026-05-25'),
('U001', 'I028', 4, '2025-11-11'),
('U001', 'I029', 1, '2024-11-20'),
('U001', 'I030', 5, '2026-10-15'),
('U001', 'I031', 2, '2025-09-10'),
('U001', 'I032', 3, '2026-06-30'),
('U001', 'I033', 4, '2027-04-01'),
('U001', 'I034', 1, '2024-10-10'),
('U001', 'I035', 5, '2026-01-10'),
('U001', 'I036', 2, '2025-12-01'),
('U001', 'I037', 3, '2026-04-05'),
('U001', 'I038', 4, '2027-02-25'),
('U001', 'I039', 1, '2024-09-30'),
('U001', 'I040', 5, '2026-11-01'),
('U001', 'I041', 2, '2025-10-15'),
('U002', 'I001', 1, '2025-03-20'), --new user starts here
('U010', 'I043', 1, '2027-01-01'), --new user starts here
('U010', 'I050', 2, '2026-06-10'),
('U011', 'I055', 1, '2025-04-01'); --new user



INSERT INTO savedRecipes (userId, recipeId) VALUES
('U002', 'R001');


