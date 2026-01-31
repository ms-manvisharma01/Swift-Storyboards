//
//  DataModel.swift
//  RestaurantApp
//
//  Created by GEU on 28/01/26.
//

import Foundation
class DataModel {
    private var restaurants: [Restaurant] = []
    private var dishes: [Dish] = []
    init() {
        dishes = loadSampleDishes()
        restaurants = loadSampleData()
        
    }
    func getRestaurants() -> [Restaurant] {
        return restaurants
    }
    
    func getCuisines() -> [Cuisine] {
        Cuisine.allCases
    }
    
    func getRestaurantforCuisine(cuisine: Cuisine) -> [Restaurant] {
        restaurants.filter({$0.cuisine.contains(cuisine)})
    }
    
    func getDishesforCuisine(cuisine: Cuisine) -> [Dish] {
        dishes.filter({$0.cuisine.contains(cuisine)})
    }
    
    func loadSampleData() -> [Restaurant]{
        let restaurants = [
            Restaurant(id: UUID(), name: "The Liberty Diner", location: "New York", image: ["all_american_diner_dining"], cuisine: [.american,.chinese,.french,.italian,.korean], dishes: []),

            // 2. Chinese
            Restaurant(id: UUID(), name: "Asia Kitchen", location: "Bangkok", image: ["bangkok_bistro_dining"], cuisine: [.chinese], dishes: []),
            Restaurant(id: UUID(), name: "Dragon Bowl", location: "Chinatown, Kolkata", image: ["american_grill_house_exterior"], cuisine: [.chinese], dishes: [] ),

            // 3. French
            Restaurant(id: UUID(), name: "Le Français", location: "Paris", image: ["le_français_dining"], cuisine: [.french], dishes: []),

            // 4. Italian
            Restaurant(id: UUID(), name: "Pizza House", location: "Sicily", image: ["la_bella_italia_exterior"], cuisine: [.italian], dishes: []),

            // 5. Japanese
            Restaurant(id: UUID(), name: "Sushi Point", location: "Tokyo", image: ["grill_house_exterior"], cuisine: [.japanese,.chinese,.french,.italian,.korean], dishes: []),
            Restaurant(id: UUID(), name: "Sakura Sushi", location: "Pune", image: ["cancun_cantina_interior"], cuisine: [.japanese,.chinese,.french,.italian,.korean], dishes: []),

            // 6. Korean
            Restaurant(id: UUID(), name: "Seoul Garden", location: "Seoul", image: ["busan_bowl_interior"], cuisine: [.korean,.thai,.japanese,.chinese,.french,.italian,.american,.mexican], dishes: []),

            // 7. Mexican
            Restaurant(id: UUID(), name: "Aztec Kitchen", location: "Mexico City", image: ["cancun_cantina_interior"], cuisine: [.mexican,.chinese,.french,.italian,.korean], dishes: []),

            // 8. Mughlai
            Restaurant(id: UUID(), name: "Mughlai Mahal", location: "Lucknow", image: ["south_india_café_dining"], cuisine: [.mughlai,.korean,.thai,.japanese,.chinese,.french,.italian,.american,.mexican], dishes: []),

            // 9. North Indian
            Restaurant(id: UUID(), name: "Punjabi Tadka", location: "Chandigarh", image: ["punjab_express_interior"], cuisine: [.north_Indian,.chinese,.french,.italian,.korean,.american,.mexican], dishes: []),

            // 10. South Indian
            Restaurant(id: UUID(), name: "Dosa Delights", location: "Chennai", image: ["south_india_café_dining"], cuisine: [.south_Indian,.north_Indian,.chinese,.french,.italian,.korean,.american,.mexican], dishes: []),

            // 11. Thai
            Restaurant(id: UUID(), name: "momo Palace", location: "Dehradun", image: ["delhi_darbar_dining"], cuisine: [.thai], dishes: []),
            Restaurant(id: UUID(), name: "Bangkok Bistro", location: "Phuket", image: ["bombay_bites_interior"], cuisine: [.thai,.japanese,.chinese,.korean,.mexican], dishes: []),

            // 12. Vietnamese
            Restaurant(id: UUID(), name: "Saigon Spice", location: "Ho Chi Minh City", image: ["kyoto_kitchen_exterior"], cuisine: [.vietnamese], dishes: []),
            
            Restaurant(id: UUID(), name: "The Gilded Fork", location: "New York", image: ["all_american_diner_dining"], cuisine: [.chinese], dishes: []),
            Restaurant(id: UUID(), name: "Silk Road Table", location: "Bangkok", image: ["bangkok_bistro_dining"], cuisine: [.french], dishes: []),
            Restaurant(id: UUID(), name: "The Crimson Wok", location: "Chinatown, Kolkata", image: ["american_grill_house_exterior"], cuisine: [.french], dishes: [] ),
            Restaurant(id: UUID(), name: "L'Avenue 75", location: "Paris", image: ["le_français_dining"], cuisine: [.american], dishes: []),
            Restaurant(id: UUID(), name: "Vesuvio Hearth", location: "Sicily", image: ["la_bella_italia_exterior"], cuisine: [.north_Indian], dishes: []),
            Restaurant(id: UUID(), name: "Neon Nori", location: "Tokyo", image: ["grill_house_exterior"], cuisine: [.italian], dishes: []),
            Restaurant(id: UUID(), name: "Zen Garden Sushi", location: "Pune", image: ["cancun_cantina_interior"], cuisine: [.south_Indian,.north_Indian,.chinese,.french,.italian,.korean,.american,.mexican], dishes: []),
            Restaurant(id: UUID(), name: "Han River Grill", location: "Seoul", image: ["busan_bowl_interior"], cuisine: [.thai], dishes: []),
            Restaurant(id: UUID(), name: "Oaxaca Gold", location: "Mexico City", image: ["cancun_cantina_interior"], cuisine: [.mughlai,.north_Indian,.chinese,.french,.italian,.korean,.american,.mexican], dishes: []),
            Restaurant(id: UUID(), name: "The Royal Dastarkhān", location: "Lucknow", image: ["south_india_café_dining"], cuisine: [.mexican], dishes: []),
            Restaurant(id: UUID(), name: "The Butter Bastion", location: "Chandigarh", image: ["punjab_express_interior"], cuisine: [.north_Indian,.chinese,.french,.italian,.korean,.american,.mexican,.south_Indian], dishes: []),
            Restaurant(id: UUID(), name: "Coastal Curries", location: "Chennai", image: ["south_india_café_dining"], cuisine: [.north_Indian], dishes: []),
            Restaurant(id: UUID(), name: "The Lotus Leaf", location: "Dehradun", image: ["delhi_darbar_dining"], cuisine: [.vietnamese], dishes: []),
            Restaurant(id: UUID(), name: "Saffron & Lemongrass", location: "Phuket", image: ["bombay_bites_interior"], cuisine: [.thai], dishes: []),
            Restaurant(id: UUID(), name: "Emerald Pho", location: "Ho Chi Minh City", image: ["kyoto_kitchen_exterior"], cuisine: [.thai,.north_Indian,.chinese,.french,.italian,.korean,.american,.mexican], dishes: [])
        ]
        return restaurants
    }
    func loadSampleDishes() -> [Dish] {
        let dish = [
            
                Dish(id: UUID(), name: "Aloo Gobi", image: ["aloo_gobi"], description: "A classic vegetarian Indian dish made with potatoes, cauliflower, and various spices.", price: 10.99, cuisine: [.south_Indian]),
                Dish(id: UUID(), name: "Apple Pie", image: ["apple_pie"], description: "A classic dessert featuring a flaky crust filled with sweetened, spiced apples.", price: 6.99, cuisine: [.american]),
                Dish(id: UUID(), name: "Arancini", image: ["arancini"], description: "Italian rice balls that are stuffed, coated with breadcrumbs, and deep-fried.", price: 8.50, cuisine: [.italian]),
                Dish(id: UUID(), name: "Bacon Cheeseburger", image: ["bacon_cheeseburger"], description: "A juicy beef patty topped with crispy bacon, melted cheese, lettuce, and tomato.", price: 13.50, cuisine: [.american]),
                Dish(id: UUID(), name: "BBQ Ribs", image: ["bbq_ribs"], description: "Slow-cooked pork ribs glazed in a smoky barbecue sauce.", price: 18.99, cuisine: [.american]),
                Dish(id: UUID(), name: "Biryani", image: ["biryani"], description: "Fragrant long-grain rice layered with spiced meat or vegetables.", price: 14.99, cuisine: [.north_Indian]),
                Dish(id: UUID(), name: "Brownie Sundae", image: ["brownie_sundae"], description: "Warm chocolate brownie topped with vanilla ice cream and hot fudge.", price: 7.99, cuisine: [.american]),
                Dish(id: UUID(), name: "Bruschetta", image: ["bruschetta"], description: "Grilled bread rubbed with garlic and topped with tomatoes, olive oil, and basil.", price: 7.50, cuisine: [.italian]),
                Dish(id: UUID(), name: "Buffalo Wings", image: ["buffalo_wings"], description: "Deep-fried chicken wings tossed in a spicy and tangy cayenne pepper sauce.", price: 11.99, cuisine: [.american]),
                Dish(id: UUID(), name: "Butter Chicken", image: ["butter_chicken"], description: "Tender chicken cooked in a mild, creamy tomato-based sauce.", price: 15.50, cuisine: [.north_Indian]),
                Dish(id: UUID(), name: "Caesar Salad", image: ["caesar_salad"], description: "Romaine lettuce and croutons dressed with lemon juice, olive oil, and anchovies.", price: 9.99, cuisine: [.american]),
                Dish(id: UUID(), name: "Cannoli", image: ["cannoli"], description: "Italian pastries filled with a sweet, creamy ricotta filling.", price: 5.99, cuisine: [.italian]),
                Dish(id: UUID(), name: "Caprese Salad", image: ["caprese_salad"], description: "Fresh mozzarella, tomatoes, and sweet basil, seasoned with salt and olive oil.", price: 10.50, cuisine: [.italian]),
                Dish(id: UUID(), name: "Chicken Korma", image: ["chicken_korma"], description: "Chicken braised with yogurt or cream and mild spices for a rich texture.", price: 15.99, cuisine: [.south_Indian]),
                Dish(id: UUID(), name: "Chicken Parmigiana", image: ["chicken_parmigiana"], description: "Breaded chicken breast covered with tomato sauce and mozzarella cheese.", price: 16.50, cuisine: [.italian]),
                Dish(id: UUID(), name: "Chicken Tenders", image: ["chicken_tenders"], description: "Crispy breaded chicken breast strips served with dipping sauce.", price: 10.99, cuisine: [.american]),
                Dish(id: UUID(), name: "Chicken Vindaloo", image: ["chicken_vindaloo"], description: "A highly spiced Indian curry dish with a tangy vinegar base.", price: 15.99, cuisine: [.north_Indian]),
                Dish(id: UUID(), name: "Chole Bhature", image: ["chole_bhature"], description: "A combination of spicy chickpeas and deep-fried leavened bread.", price: 12.50, cuisine: [.south_Indian]),
                Dish(id: UUID(), name: "Clam Chowder", image: ["clam_chowder"], description: "A thick cream-based soup with clams, potatoes, and onions.", price: 8.99, cuisine: [.american]),
                Dish(id: UUID(), name: "Classic Burger", image: ["classic_burger"], description: "The original beef patty with lettuce, tomato, and onion on a toasted bun.", price: 11.50, cuisine: [.american]),
                Dish(id: UUID(), name: "Coleslaw", image: ["coleslaw"], description: "Finely shredded raw cabbage with a creamy salad dressing.", price: 4.50, cuisine: [.american]),
                Dish(id: UUID(), name: "Corn on the Cob", image: ["corn_cob"], description: "Sweet corn grilled or boiled, served with butter and salt.", price: 4.99, cuisine: [.american]),
                Dish(id: UUID(), name: "Dal Makhani", image: ["dal_makhani"], description: "Slow-cooked black lentils and kidney beans in a buttery, creamy sauce.", price: 11.50, cuisine: [.north_Indian]),
                Dish(id: UUID(), name: "Fettuccine Alfredo", image: ["fettuccine_alfredo"], description: "Long flat pasta tossed in a rich butter and Parmesan cheese sauce.", price: 13.99, cuisine: [.italian]),
                Dish(id: UUID(), name: "Fish Curry", image: ["fish_curry"], description: "Tender fish simmered in a coconut and spice-infused gravy.", price: 16.99, cuisine: [.south_Indian]),
                Dish(id: UUID(), name: "Fried Chicken", image: ["fried_chicken"], description: "Classic American-style deep-fried chicken with a crispy coating.", price: 12.99, cuisine: [.american]),
                Dish(id: UUID(), name: "Gelato Trio", image: ["gelato_trio"], description: "Three scoops of authentic, dense Italian-style ice cream.", price: 7.50, cuisine: [.italian]),
                Dish(id: UUID(), name: "Gnocchi Pesto", image: ["gnocchi_pesto"], description: "Soft potato dumplings served with a fresh basil and pine nut pesto.", price: 14.50, cuisine: [.italian]),
                Dish(id: UUID(), name: "Grilled Salmon", image: ["grilled_salmon"], description: "Freshly grilled salmon fillet seasoned with herbs and lemon.", price: 19.99, cuisine: [.american]),
                Dish(id: UUID(), name: "Gulab Jamun", image: ["gulab_jamun"], description: "Warm milk-solid dumplings soaked in a rose-flavored sugar syrup.", price: 5.50, cuisine: [.north_Indian]),
                Dish(id: UUID(), name: "Hot Dog", image: ["hot_dog"], description: "Grilled sausage served in a sliced bun with mustard and relish.", price: 6.50, cuisine: [.american]),
                Dish(id: UUID(), name: "Idli Sambar", image: ["idli_sambar"], description: "Steamed rice cakes served with a spicy lentil stew.", price: 8.99, cuisine: [.south_Indian]),
                Dish(id: UUID(), name: "Kulfi", image: ["kulfi"], description: "Traditional Indian dairy dessert that is denser and creamier than ice cream.", price: 5.99, cuisine: [.north_Indian]),
                Dish(id: UUID(), name: "Lasagna Bolognese", image: ["lasagna_bolognese"], description: "Layers of pasta, meat sauce, and creamy béchamel baked to perfection.", price: 15.99, cuisine: [.italian]),
                Dish(id: UUID(), name: "Loaded Fries", image: ["loaded_fries"], description: "Golden fries topped with melted cheese, bacon bits, and green onions.", price: 9.50, cuisine: [.american]),
                Dish(id: UUID(), name: "Mac and Cheese", image: ["mac_cheese"], description: "Elbow macaroni in a rich and creamy cheddar cheese sauce.", price: 10.99, cuisine: [.american]),
                Dish(id: UUID(), name: "Malai Kofta", image: ["malai_kofta"], description: "Paneer and vegetable dumplings in a creamy tomato-based gravy.", price: 13.50, cuisine: [.north_Indian]),
                Dish(id: UUID(), name: "Margherita Pizza", image: ["margherita_pizza"], description: "Simple and classic with tomato, fresh mozzarella, and basil.", price: 12.50, cuisine: [.italian]),
                Dish(id: UUID(), name: "Masala Dosa", image: ["masala_dosa"], description: "Crispy crepe filled with a savory spiced potato mash.", price: 10.99, cuisine: [.south_Indian]),
                Dish(id: UUID(), name: "Milkshake", image: ["milkshake"], description: "Creamy hand-spun milkshake topped with whipped cream.", price: 6.50, cuisine: [.american]),
                Dish(id: UUID(), name: "Minestrone Soup", image: ["minestrone_soup"], description: "A hearty Italian vegetable soup with beans and pasta.", price: 7.50, cuisine: [.italian]),
                Dish(id: UUID(), name: "Mozzarella Sticks", image: ["mozzarella_sticks"], description: "Deep-fried breaded cheese sticks served with marinara sauce.", price: 8.99, cuisine: [.american]),
                Dish(id: UUID(), name: "Naan Bread", image: ["naan_bread"], description: "Traditional oven-baked flatbread, perfect for dipping in curries.", price: 3.50, cuisine: [.north_Indian]),
                Dish(id: UUID(), name: "Nachos Supreme", image: ["nachos_supreme"], description: "Tortilla chips loaded with cheese, jalapeños, beans, and sour cream.", price: 11.99, cuisine: [.american]),
                Dish(id: UUID(), name: "Onion Rings", image: ["onion_rings"], description: "Crispy beer-battered onion rings served with dipping sauce.", price: 7.50, cuisine: [.american]),
                Dish(id: UUID(), name: "Osso Buco", image: ["osso_buco"], description: "Slow-braised veal shanks with vegetables and white wine.", price: 24.99, cuisine: [.italian]),
                Dish(id: UUID(), name: "Palak Paneer", image: ["palak_paneer"], description: "Indian cottage cheese in a thick, spiced spinach puree.", price: 13.99, cuisine: [.north_Indian]),
                Dish(id: UUID(), name: "Paneer Tikka", image: ["paneer_tikka"], description: "Grilled paneer cubes marinated in yogurt and Indian spices.", price: 12.99, cuisine: [.north_Indian]),
                Dish(id: UUID(), name: "Panna Cotta", image: ["panna_cotta"], description: "Silky smooth Italian cream dessert with berry coulis.", price: 7.50, cuisine: [.italian]),
                Dish(id: UUID(), name: "Paratha", image: ["paratha"], description: "Flaky, layered Indian flatbread cooked on a griddle.", price: 4.50, cuisine: [.north_Indian]),
                Dish(id: UUID(), name: "Pav Bhaji", image: ["pav_bhaji"], description: "Spiced mashed vegetable curry served with buttered bread rolls.", price: 10.50, cuisine: [.north_Indian]),
                Dish(id: UUID(), name: "Penne Arrabbiata", image: ["penne_arrabbiata"], description: "Pasta in a fiery tomato sauce with garlic and chili.", price: 12.50, cuisine: [.italian]),
                Dish(id: UUID(), name: "Philly Cheesesteak", image: ["philly_cheesesteak"], description: "Thinly sliced steak and melted provolone on a hoagie roll.", price: 13.99, cuisine: [.thai]),
                Dish(id: UUID(), name: "Prosciutto e Melone", image: ["prosciutto_melone"], description: "Classic Italian appetizer of cured ham served with sweet melon.", price: 11.50, cuisine: [.italian]),
                Dish(id: UUID(), name: "Pulled Pork", image: ["pulled_pork"], description: "Slow-smoked pork shredded and tossed in BBQ sauce.", price: 14.50, cuisine: [.chinese]),
                Dish(id: UUID(), name: "Quattro Formaggi", image: ["quattro_formaggi"], description: "Four-cheese pizza featuring mozzarella, gorgonzola, parmesan, and fontina.", price: 14.99, cuisine: [.italian]),
                Dish(id: UUID(), name: "Raita", image: ["raita"], description: "A cooling yogurt-based side with cucumber and mild spices.", price: 3.50, cuisine: [.north_Indian]),
                Dish(id: UUID(), name: "Ravioli Ricotta", image: ["ravioli_ricotta"], description: "Pasta pillows filled with creamy ricotta cheese and herbs.", price: 15.50, cuisine: [.italian]),
                Dish(id: UUID(), name: "Risotto Funghi", image: ["risotto_funghi"], description: "Creamy Italian rice dish cooked with wild mushrooms and parmesan.", price: 16.99, cuisine: [.chinese]),
                Dish(id: UUID(), name: "Rogan Josh", image: ["rogan_josh"], description: "Aromatic lamb curry cooked in a rich onion and tomato base.", price: 17.50, cuisine: [.north_Indian]),
                Dish(id: UUID(), name: "Saltimbocca", image: ["saltimbocca"], description: "Veal wrapped in prosciutto and sage, marinated in wine.", price: 22.99, cuisine: [.italian]),
                Dish(id: UUID(), name: "Samosa", image: ["samosa"], description: "Golden fried pastry filled with spiced potatoes and peas.", price: 5.50, cuisine: [.north_Indian]),
                Dish(id: UUID(), name: "Seafood Linguine", image: ["seafood_linguine"], description: "Pasta tossed with shrimp, clams, and mussels in a garlic sauce.", price: 19.99, cuisine: [.korean]),
                Dish(id: UUID(), name: "Spaghetti Carbonara", image: ["spaghetti_carbonara"], description: "Pasta with egg, hard cheese, cured pork, and black pepper.", price: 14.99, cuisine: [.italian]),
                Dish(id: UUID(), name: "Sweet Potato Fries", image: ["sweet_potato_fries"], description: "Crispy fried sweet potato strips served with chipotle mayo.", price: 6.99, cuisine: [.american]),
                Dish(id: UUID(), name: "Tandoori Chicken", image: ["tandoori_chicken"], description: "Chicken roasted in a clay oven with yogurt and spices.", price: 14.50, cuisine: [.north_Indian]),
                Dish(id: UUID(), name: "T-Bone Steak", image: ["tbone_steak"], description: "Juicy T-bone steak grilled to your preferred doneness.", price: 28.99, cuisine: [.american]),
                Dish(id: UUID(), name: "Tiramisu", image: ["tiramisu"], description: "Coffee-soaked ladyfingers layered with mascarpone cream.", price: 8.50, cuisine: [.japanese]),
                Dish(id: UUID(), name: "Uttapam", image: ["uttapam"], description: "Thick savory pancake topped with vegetables and served with chutney.", price: 9.99, cuisine: [.south_Indian]),
                Dish(id: UUID(), name: "Vada Pav", image: ["vada_pav"], description: "The iconic Mumbai street food: spiced potato fritter in a bun.", price: 7.50, cuisine: [.south_Indian]),
                // MARK: - EXTRA DISHES FOR MISSING CUISINES (OPTION 2 FIX)

                // Chinese
                Dish(
                    id: UUID(),
                    name: "Kung Pao Chicken",
                    image: ["philly_cheesesteak"],
                    description: "Spicy stir-fried chicken with peanuts and vegetables.",
                    price: 13.99,
                    cuisine: [.chinese]
                ),

                // Thai
                Dish(
                    id: UUID(),
                    name: "Some Thai",
                    image: ["penne_arrabbiata"],
                    description: "Thai-style stir-fried rice noodles.",
                    price: 14.99,
                    cuisine: [.thai]
                ),

                // Korean
                Dish(
                    id: UUID(),
                    name: "Bibimbap",
                    image: ["penne_arrabbiata"],
                    description: "Rice bowl with vegetables, egg, and chili paste.",
                    price: 12.99,
                    cuisine: [.korean]
                ),

                // Japanese
                Dish(
                    id: UUID(),
                    name: "Sushi Roll",
                    image: ["sushi_roll"],
                    description: "Rice rolls with seafood and vegetables.",
                    price: 16.99,
                    cuisine: [.japanese]
                ),

                // Mexican
                Dish(
                    id: UUID(),
                    name: "Tacos",
                    image: ["tacos"],
                    description: "Soft tortillas filled with spiced meat and toppings.",
                    price: 11.99,
                    cuisine: [.mexican]
                ),

                // Mughlai
                Dish(
                    id: UUID(),
                    name: "Mutton Korma",
                    image: ["mutton_korma"],
                    description: "Rich Mughlai curry cooked with nuts and spices.",
                    price: 18.99,
                    cuisine: [.mughlai]
                ),

                // Vietnamese
                Dish(
                    id: UUID(),
                    name: "Pho",
                    image: ["penne_arrabbiata"],
                    description: "Vietnamese noodle soup with herbs and broth.",
                    price: 15.99,
                    cuisine: [.vietnamese]
                ),

                // French
                Dish(
                    id: UUID(),
                    name: "Ratatouille",
                    image: ["penne_arrabbiata"],
                    description: "Classic French vegetable stew.",
                    price: 14.50,
                    cuisine: [.french]
                )

            ]
            
            
        return dish
    }
}

