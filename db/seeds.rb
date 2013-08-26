Recipe.delete_all
Ingredient.delete_all
Tutorial.delete_all
Item.delete_all
User.delete_all

u1 = User.create(:name => 'Henry', :email => 'henry@gmail.com', :password => 'a', :password_confirmation => 'a', :city => 'New York')
u2 = User.create(:name => 'Bobby', :email => 'bobby@gmail.com', :password => 'a', :password_confirmation => 'a', :city => 'Chicago')
u3 = User.create(:name => 'Sue', :email => 'sue@gmail.com', :password => 'a', :password_confirmation => 'a', :city => 'Montreal')
u1 = User.create(:name => 'Harry', :email => 'harry@gmail.com', :password => 'a', :password_confirmation => 'a', :city => 'New York')
u2 = User.create(:name => 'Billy', :email => 'billy@gmail.com', :password => 'a', :password_confirmation => 'a', :city => 'Chicago')
u3 = User.create(:name => 'Gary', :email => 'gary@gmail.com', :password => 'a', :password_confirmation => 'a', :city => 'New York')

r1 = Recipe.create(:title => 'Chocolate Cheesecake', :key_ingredient => 'Chocolate', :preptime => '20', :cooktime => '65', :image => 'http://cdn.taste.com.au/images/recipes/agt/2006/05/3564_l.jpg', :instructions => "Preheat oven to 160 deg cels. Brush a 24cm (base measurement) springform pan with melted butter to lightly grease. Line the base with non-stick baking paper. Place the biscuit, cinnamon and butter in the bowl of a food processor and process until well combined. Transfer mixture to the prepared pan. Use a straight-sided glass to spread and press mixture firmly over the base and side of the pan. Cover with plastic wrap and place in the fridge for 30 minutes to chill. Place the chocolate in a heatproof bowl over a saucepan of simmering water (make sure the bowl doesn't touch the water) and stir for 5 minutes or until melted. Use an electric beater to whisk together the sugar and eggs in a large bowl until light and creamy. Add the cream cheese and beat until well combined. Use a metal spoon to fold in the chocolate, cocoa powder and vanilla until just combined. Add the sour cream and stir to combine. Pour the mixture into the biscuit base and smooth the surface. Bake for 1 hour or until just set in the centre. Turn oven off. Leave cake in oven, with door ajar, for 2 hours or until cooled completely (this will prevent the cake from cracking). Cover and place in fridge for 2 hours to chill. Dust with extra cocoa powder and serve with cream.", :servings => '12')
r2 = Recipe.create(:title => 'Turkish Deligh Cheesecake with Roasted Rhubarb', :key_ingredient => 'Turkish Delight', :preptime => '45', :cooktime => '35', :image => 'http://cdn.taste.com.au/images/recipes/mc/2011/06/26886_l.jpg', :instructions => "Grease moulds. To make biscuit layer, process biscuits in a food processor to fine crumbs. Add butter and process until combined. Divide biscuit mixture among moulds (about 1 tbs each). Using the base of another mould, press down firmly to compact. Refrigerate until needed. To make cheesecake layer, place 180ml (3/4 cup) cream and ginger in a small saucepan and bring almost to the boil over low heat. Meanwhile, soak gelatine in a bowl of cold water for 3 minutes to soften, then squeeze out excess water. Discard ginger from cream mixture, then stir in gelatine until dissolved. Cool for 10 minutes. Meanwhile, using an electric mixer, beat cream cheese, yoghurt and sugar on low speed until smooth, then beat in gelatine mixture until combined, scraping down the side of the bowl occasionally. In a clean bowl, whisk remaining 250ml (1 cup) cream to soft peaks, then fold into cream cheese mixture until just combined. Gently fold in half the Turkish delight. Divide mixture among the moulds, then refrigerate for 4 hours or until set. Preheat oven to 180C. To make rhubarb, toss rhubarb with sugar in a small ovenproof dish, then drizzle over orange juice. Cover dish with foil, then bake for 30 minutes or until rhubarb is soft but still holds its shape. Cool, then refrigerate until needed. To serve, briefly dip moulds in a bowl of hot water, then run a knife around the inside of each mould to release cakes. Carefully invert onto plates or into cups. Top with remaining Turkish delight. Serve with rhubarb and syrup.", :servings => '12')
r3 = Recipe.create(:title => 'New York Cheesecake', :key_ingredient => 'Strawberries', :preptime => '20', :cooktime => '60', :image => 'http://cdn.taste.com.au/images/recipes/agt/2012/02/28928_l.jpg', :instructions => "To make the strawberry compote, stir the strawberry, wine and sugar in a saucepan over low heat until the sugar dissolves. Increase heat to medium-high and bring to the boil. Reduce heat to medium-low and simmer for 2 minutes or until the strawberry softens slightly. Set aside to cool completely. Preheat oven to 160 deg cels. Line the base and side of a 23cm (base measurement) springform pan with non-stick baking paper. Process biscuits in a food processor until finely crushed. Add the butter and process until well combined. Transfer to the pan. Use a straight-sided glass to spread and press the biscuit mixture over the base and side of pan, leaving 1cm at the top of the pan. Cover with plastic wrap and place in the fridge for 30 minutes to chill. Meanwhile, use an electric beater to beat the cream cheese, sugar, lemon rind and vanilla in a bowl until smooth. Add the eggs, 1 at a time, beating well after each addition until combined. Beat in the cream and lemon juice. Pour the cream cheese mixture over the biscuit base. Place pan on a baking tray and bake for 50-60 minutes or until almost set in the centre. Turn off oven. Leave cheesecake in oven, with door ajar, for 2 hours or until cooled completely. Place in fridge overnight to chill. Top with the strawberry compote.", :servings => '12')
r4 = Recipe.create(:title => 'Pepper and coriander pork roast', :key_ingredient => 'Pork', :preptime => '30', :cooktime => '60', :image => 'http://cdn.taste.com.au/images/recipes/sfi/2009/03/22076_l.jpg', :instructions => "Preheat oven to 240 degress c fan-forced. Place coriander, pepper, salt and half the oil in a bowl. Stir to combine. Rub mixture over pork. Place on a wire rack in a roasting dish. Roast on lowest oven shelf for 20 minutes. Reduce heat to 200 degress c fan-forced. Roast for 40 minutes or until juices run clear when pierced with a skewer. Remove from oven. Cover loosely with foil. Stand for 10 minutes. Thinly slice. Meanwhile, line a baking tray with baking paper. Place carrots on prepared tray. Roast on highest oven shelf for last 30 minutes of pork cooking time. Cook beans in a saucepan of boiling, salted water for 2 to 3 minutes or until just tender. Drain. Refresh under cold water. Place vinegar, mustard and remaining oil in a screw-top jar. Secure lid. Shake to combine. Place spinach, carrots, beans and vinegar mixture in a bowl. Toss to combine. Serve with pork.", :servings => '4')

i1 = Ingredient.create(:name => 'Butter', :units => 'grams', :cost_per_unit => 2.00, :std_unit_quantity => 300)
i2 = Ingredient.create(:name => 'Plain chocolate biscuits', :units => 'grams', :cost_per_unit => 2.00, :std_unit_quantity => 250)
i3 = Ingredient.create(:name => 'Ground cinnamon', :units => 'grams', :cost_per_unit => 1.20, :std_unit_quantity => 50)
i4 = Ingredient.create(:name => 'Dark chocolate', :units => 'grams', :cost_per_unit => 3.00, :std_unit_quantity => 250)
i5 = Ingredient.create(:name => 'Caster sugar', :units => 'grams', :cost_per_unit => 2.80, :std_unit_quantity => 300)
i6 = Ingredient.create(:name => 'Egg(s)', :units => 'eggs', :cost_per_unit => 4.00, :std_unit_quantity => 12)
i7 = Ingredient.create(:name => 'Cream cheese', :units => 'grams', :cost_per_unit => 2.60, :std_unit_quantity => 300)
i8 = Ingredient.create(:name => 'Cocoa powder', :units => 'grams', :cost_per_unit => 3.50, :std_unit_quantity => 250)
i9 = Ingredient.create(:name => 'Vanilla essence', :units => 'ml', :cost_per_unit => 2.20, :std_unit_quantity => 100)
i10 = Ingredient.create(:name => 'Sour cream', :units => 'ml', :cost_per_unit => 3.00, :std_unit_quantity => 300)
i11 = Ingredient.create(:name => 'Double cream', :units => 'ml', :cost_per_unit => 1.85, :std_unit_quantity => 300)
i12 = Ingredient.create(:name => 'Gingernut biscuits', :units => 'grams', :cost_per_unit => 2.00, :std_unit_quantity => 250)
i13 = Ingredient.create(:name => 'Cream', :units => 'ml', :cost_per_unit => 2.80, :std_unit_quantity => 200)
i14 = Ingredient.create(:name => 'Peeled ginger', :units => 'grams', :cost_per_unit => 2.25, :std_unit_quantity => 100)
i15 = Ingredient.create(:name => 'Gelatine', :units => 'grams', :cost_per_unit => 1.75, :std_unit_quantity => 100)
i16 = Ingredient.create(:name => 'Yoghurt', :units => 'ml', :cost_per_unit => 1.60, :std_unit_quantity => 200)
i17 = Ingredient.create(:name => 'Turkish Delight', :units => 'grams', :cost_per_unit => 2.90, :std_unit_quantity => 200)
i18 = Ingredient.create(:name => 'Rhubarb', :units => 'bunch', :cost_per_unit => 2.20, :std_unit_quantity => 1)
i19 = Ingredient.create(:name => 'Orange', :units => 'piece', :cost_per_unit => 0.30, :std_unit_quantity => 1)
i20 = Ingredient.create(:name => 'Digestive biscuits', :units => 'grams', :cost_per_unit => 2.10, :std_unit_quantity => 250)
i21 = Ingredient.create(:name => 'Butter, melted', :units => 'grams', :cost_per_unit => 0.80, :std_unit_quantity => 300)
i22 = Ingredient.create(:name => 'Thickened cream', :units => 'ml', :cost_per_unit => 1.90, :std_unit_quantity => 300)
i23 = Ingredient.create(:name => 'Strawberry compote', :units => 'ml', :cost_per_unit => 1.95, :std_unit_quantity => 300)
i24 = Ingredient.create(:name => 'Strawberries', :units => 'grams', :cost_per_unit => 2.10, :std_unit_quantity => 300)
i25 = Ingredient.create(:name => 'Dessert wine', :units => 'ml', :cost_per_unit => 3.50, :std_unit_quantity => 300)

i26 = Ingredient.create(:name => 'Coriander seeds', :units => 'grams', :cost_per_unit => 1.80, :std_unit_quantity => 150)
i27 = Ingredient.create(:name => 'Cracked black pepper', :units => 'grams', :cost_per_unit => 1.80, :std_unit_quantity => 150)
i28 = Ingredient.create(:name => 'Salt', :units => 'grams', :cost_per_unit => 1.80, :std_unit_quantity => 1000)
i29 = Ingredient.create(:name => 'Olive oil', :units => 'ml', :cost_per_unit => 5.50, :std_unit_quantity => 200)
i30 = Ingredient.create(:name => 'Boneless pork loin', :units => 'kg', :cost_per_unit => 12, :std_unit_quantity => 1)
i31 = Ingredient.create(:name => 'Baby carrots', :units => 'bunch', :cost_per_unit => 2.80, :std_unit_quantity => 1)
i32 = Ingredient.create(:name => 'Green beans', :units => 'grams', :cost_per_unit => 0.80, :std_unit_quantity => 150)
i33 = Ingredient.create(:name => 'Red wine vinegar', :units => 'ml', :cost_per_unit => 4.50, :std_unit_quantity => 300)
i34 = Ingredient.create(:name => 'Baby spinach leaves', :units => 'grams', :cost_per_unit => 1.20, :std_unit_quantity => 100)

i35 = Ingredient.create(:name => 'Lime', :units => 'lime', :cost_per_unit => 0.80, :std_unit_quantity => 1)
i35 = Ingredient.create(:name => 'Guava nectar', :units => 'L', :cost_per_unit => 3.50, :std_unit_quantity => 1)
i35 = Ingredient.create(:name => 'Ginger beer', :units => 'ml', :cost_per_unit => 2.80, :std_unit_quantity => 500)
i35 = Ingredient.create(:name => 'White rum', :units => 'ml', :cost_per_unit => 8, :std_unit_quantity => 500)

m1 = Tutorial.create(:name => 'Line', :description => "All you need is a pair of scissors. Take a large piece of baking paper and fold it in half, then fold it into quarters, then eighths. Cut a straight line through the paper, just inside the outer edge of the pan. Finally, unfold the paper and fit it inside the cake pan.", :video => 'OxB7VRdnK5o')
m2 = Tutorial.create(:name => 'Boil', :description => "Boil is defined as heating liquid until bubbles break on the surface of the liquid. The right cookware is very important when boiling or cooking.", :video => 'kieGBkOdyMU')
m3 = Tutorial.create(:name => 'Springform', :description => "The springform pan is a two-piece pan that not only has sides that can be removed but the bottom comes out too. There is a round base and an interlocking band, usually 2 to 3 inches high, that forms the sides, opening and closing with the flick of a latch.", :video => 'O_aJz1oIQLs')
m4 = Tutorial.create(:name => 'Metal', :description => "When folding ingredients through beaten eggwhites, a metal spoon is the best utensil as it cleanly cuts through the mixture without losing too much air.", :video => '')
m5 = Tutorial.create(:name => 'Gelatine', :description => "Soak sheets of gelatin in a bowl cold water for 5 to 10 minutes. Wring gently to remove excess water, than add to warm liquid, the quantity called for in the recipe, stirring until dissolved.", :video => '0kcmESxmVSw')

it1 = Item.create(:quantity => 150, :recipe_note => "150g butter, melted")
it2 = Item.create(:quantity => 250, :recipe_note => '1 x 250g pkt plain chocolate biscuits, coarsely broken')
it3 = Item.create(:quantity => 30, :recipe_note => '1/2 tsp ground cinnamon')
it4 = Item.create(:quantity => 250, :recipe_note => '250g dark chocolate, finely chopped')
it5 = Item.create(:quantity => 155, :recipe_note => '155g (3/4 cup) caster sugar')
it6 = Item.create(:quantity => 3, :recipe_note => '3 eggs')
it7 = Item.create(:quantity => 750, :recipe_note => '3 x 250g pkts cream cheese, at room temperature')
it8 = Item.create(:quantity => 50, :recipe_note => '2 tbs cocoa powder, sifted')
it9 = Item.create(:quantity => 30, :recipe_note => '1 tsp vanilla essence')
it10 = Item.create(:quantity => 600, :recipe_note => '2 x 300g ctns sour cream')
it11 = Item.create(:quantity => 30, :recipe_note => 'Cocoa powder, extra, to serve')

it12 = Item.create(:quantity => 20, :recipe_note => "1 tablespoon coriander seeds, crushed")
it13 = Item.create(:quantity => 20, :recipe_note => '1 tablespoon cracked black pepper')
it14 = Item.create(:quantity => 10, :recipe_note => '2 teaspoons sea salt')
it15 = Item.create(:quantity => 30, :recipe_note => '2 tablespoons olive oil')
it16 = Item.create(:quantity => 1, :recipe_note => '1kg boneless pork loin roast')
it17 = Item.create(:quantity => 3, :recipe_note => '1 bunch baby (Dutch) carrots')
it18 = Item.create(:quantity => 1, :recipe_note => '150g green beans, trimmed')
it19 = Item.create(:quantity => 0.10, :recipe_note => '2 teaspoons red wine vinegar')
it20 = Item.create(:quantity => 100, :recipe_note => '100g baby spinach leaves')


r1.ingredients = [i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11]
r1.items = [it1, it2, it3, it4, it5, it6, it7, it8, it9, it10, it11]

r4.ingredients = [i26, i27, i28, i29, i30, i31, i32, i33, i34]
r4.items = [it12, it13, it14, it15, it16, it17, it18, it19, it20]

i1.items = [it1]
i2.items = [it2]
i3.items = [it3]
i4.items = [it4]
i5.items = [it5]
i6.items = [it6]
i7.items = [it7]
i8.items = [it8]
i9.items = [it9]
i10.items = [it10]
i11.items = [it11]

i26.items = [it12]
i27.items = [it13]
i28.items = [it14]
i29.items = [it15]
i30.items = [it16]
i31.items = [it17]
i32.items = [it18]
i33.items = [it19]
i34.items = [it20]

# r1.tutorials = [m3]
# r2.tutorials = [m3, m5]
# r3.tutorials = [m2, m4]


