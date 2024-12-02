//
//  FoodWinePairingsData.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/14/24.
//

import Foundation

struct GrapeDetail: Identifiable {
    let id = UUID()  // Adding an id property to conform to Identifiable
    let name: String
    let description: String
    let servingTemperature: String
    let glassType: String
    let decantingRecommendation: String
    
}

struct FoodWinePairing: Identifiable {
    let id = UUID()
    let food: String
    let grapes: [GrapeDetail]
    let description: String
}

let foodWinePairingsData = [
    FoodWinePairing(food: "Steak", grapes: [
            GrapeDetail(
                    name: "Cabernet Sauvignon (Red)",
                    description: "Ideal for rich, red meat dishes like steak because it matches their intensity. Known for its bold tannins and flavors of black cherry and blackcurrant.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "Use a large, bold wine glass to enhance aromatics.",
                    decantingRecommendation: "Decant for at least one hour before serving to soften the tannins and bring out more nuanced flavors."
                ),
                GrapeDetail(
                    name: "Malbec (Red)",
                    description: "Especially Argentine Malbec, known for its dark fruit flavors and smoky finish. A great match for grilled steaks.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "Use a broad glass to capture its complex aromas.",
                    decantingRecommendation: "Decant for 30-60 minutes to allow the fruit flavors to fully develop and to soften the tannins."
                ),
                GrapeDetail(
                    name: "Syrah/Shiraz (Red)",
                    description: "Offers robust flavors of dark fruit and spice, standing up well to heavily seasoned or grilled steaks.",
                    servingTemperature: "Serve at 15-18°C (59-64°F)",
                    glassType: "Best served in a medium-sized wine glass.",
                    decantingRecommendation: "Decant for 30 minutes to one hour, especially if the wine is young, to open up the flavors and aromas."
                ),
                GrapeDetail(
                    name: "Tempranillo (Red)",
                    description: "Especially from regions like Rioja, where the wines can have a balance of fruit and savory flavors, making them excellent with steak.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A standard red wine glass works well.",
                    decantingRecommendation: "Decant older vintages to clarify. Use caution as older wines are more delicate and can lose some of their aromas if decanted too long."
                ),
                GrapeDetail(
                    name: "Zinfandel (Red)",
                    description: "Known for its bold fruit and often spicy character, Zinfandel can be a good choice for barbecued steak.",
                    servingTemperature: "Serve at 15-18°C (59-64°F)",
                    glassType: "Use a glass with a wide bowl to enhance its spicy notes.",
                    decantingRecommendation: "Decant for 30 minutes to soften the tannins and highlight the wine’s fruit character."
                ),
                GrapeDetail(
                    name: "Tannat (Red)",
                    description: "Known for its high tannin levels, Tannat is a powerful pairing for fatty cuts of steak.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "Best in a glass with a wide opening to soften tannins.",
                    decantingRecommendation: "Decant for an hour or more to mellow the tannins and fully develop the wine’s flavors."
                ),
                GrapeDetail(
                    name: "Nebbiolo (Red)",
                    description: "Famous for producing Barolo and Barbaresco, Nebbiolo wines have high acidity and tannin, pairing well with richer steak dishes.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "Use a large bowl glass to collect its aromatics.",
                    decantingRecommendation: "Decant for 1 - 2 hours before serving to allow the wine to soften and develop its flavor profile."
                )
        ], description: "Steak dishes, with their rich, savory flavors, pair best with bold red wines that offer firm tannins, good acidity, and complex flavor profiles."
                       
                       ),
        
        
        
        FoodWinePairing(food: "Chicken", grapes: [
            GrapeDetail(
                name: "Oaked Chardonnay (White)",
                description: "Best for chicken in creamy or buttery sauces. Its richness and buttery characteristics complement creamy dishes beautifully.",
                servingTemperature: "Serve at 12-14°C (54-57°F)",
                glassType: "Use a wide bowl glass to enhance aromatics.",
                decantingRecommendation: "Usually not necessary to decant."
            ),
            GrapeDetail(
                name: "Pinot Gris (White)",
                description: "Pairs well with light chicken dishes, offering a balanced acidity that complements without overpowering.",
                servingTemperature: "Serve at 8-10°C (46-50°F)",
                glassType: "A light, slim glass to maintain cool temperature and fresh flavors.",
                decantingRecommendation: "No decanting needed."
            ),
            GrapeDetail(
                name: "Riesling (White)",
                description: "Both dry and slightly sweet versions work well with spicy or Asian-style chicken dishes, balancing heat with their fruity sweetness.",
                servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                glassType: "A tall, slender glass helps to emphasize the wine's aromatic profile.",
                decantingRecommendation: "No decanting needed."
            ),
            GrapeDetail(
                name: "Sauvignon Blanc (White)",
                description: "Great with herb-flavored or citrus-based chicken dishes due to its crisp acidity and fresh, zesty character.",
                servingTemperature: "Serve chilled at 8-10°C (46-50°F)",
                glassType: "A standard white wine glass will suffice to concentrate the fruity aromas.",
                decantingRecommendation: "No decanting needed."
            ),
            GrapeDetail(
                name: "Viognier (White)",
                description: "A good match for chicken roasted with garlic and herbs, as it offers lush, aromatic flavors that enhance the dish.",
                servingTemperature: "Serve at 10-12°C (50-54°F)",
                glassType: "Use a medium to large glass to capture its complex floral aromas.",
                decantingRecommendation: "No decanting needed."
            ),
            GrapeDetail(
                name: "Merlot (Red)",
                description: "For chicken dishes with darker sauces, a softer Merlot complements without overwhelming due to its plush, velvety texture.",
                servingTemperature: "Serve at 16-18°C (60-65°F)",
                glassType: "A large red wine glass to allow the wine to breathe and develop.",
                decantingRecommendation: "Decant for 30 minutes to 1 hour to soften the wine."
            ),
            GrapeDetail(
                name: "Pinot Noir (Red)",
                description: "A versatile red that pairs beautifully with a simple roasted or grilled chicken due to its light body and soft tannins.",
                servingTemperature: "Serve at 14-16°C (57-61°F)",
                glassType: "A Burgundy glass, with a wide bowl, is ideal for enhancing its delicate aromas.",
                decantingRecommendation: "Decanting can open up the flavors, particularly in older vintages."
            ),
            GrapeDetail(
                name: "Prosecco (Sparkling)",
                description: "Light and bubbly, Prosecco can be a delightful pairing with fried chicken or a light chicken salad, adding a refreshing contrast.",
                servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                glassType: "A slim flute to preserve bubbles and enhance the lifting of aromas.",
                decantingRecommendation:"No decanting needed; serve immediately after opening to maintain effervescence."
            )
        ], description: "Versatile chicken dishes pair delightfully with a variety of wines. Crisp whites enhance lighter, herb-infused or citrus-based recipes, while soft reds beautifully complement grilled or roasted preparations."),






        
        FoodWinePairing(
            food: "Pork",
            grapes: [
                GrapeDetail(
                    name: "Oaked Chardonnay (White)",
                    description: "Oaked Chardonnay complements rich pork dishes like pork loin or chops with its buttery undertones and full body.",
                    servingTemperature: "Serve at 12-14°C (54-57°F)",
                    glassType: "Use a wide bowl glass to enhance the rich, creamy texture.",
                    decantingRecommendation: "Usually not necessary to decant."
                ),
                GrapeDetail(
                    name: "Pinot Noir (Red)",
                    description: "A light yet expressive wine that pairs exceptionally with pork due to its notes of red fruit and subtle earthiness, especially good with roasted or grilled pork.",
                    servingTemperature: "Serve at 14-16°C (57-61°F)",
                    glassType: "A Burgundy glass to capture its delicate flavors.",
                    decantingRecommendation: "Decant for 30 minutes to enhance its aromatic profile."
                ),
                GrapeDetail(
                    name: "Riesling (White)",
                    description: "Especially off-dry Riesling works well with spicy or sweet and sour pork dishes, balancing the heat and sweetness with its crisp acidity.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A tall, slender glass helps to preserve the aroma and acidity.",
                    decantingRecommendation: "Not required, serve chilled."
                ),
                GrapeDetail(
                    name: "Zinfandel (Red)",
                    description: "With its robust body and fruit-forward profile, Zinfandel matches well with barbecued pork, complementing smoky flavors and rich sauces.",
                    servingTemperature: "Serve at 15-18°C (59-64°F)",
                    glassType: "A wide rim glass to allow the bold aromas to emerge.",
                    decantingRecommendation: "Decant for 30-45 minutes before serving."
                ),
                GrapeDetail(
                    name: "Sauvignon Blanc (White)",
                    description: "Crisp and refreshing, ideal for cutting through the fattiness of dishes like pork belly or sausages, with vibrant acidity highlighting citrus and herb notes.",
                    servingTemperature: "Serve chilled at 8-10°C (46-50°F)",
                    glassType: "A standard white wine glass to concentrate the aromatic citrus and green notes.",
                    decantingRecommendation: "No decanting needed."
                ),
                GrapeDetail(
                    name: "Tempranillo (Red)",
                    description: "This Spanish variety, with its savory and complex notes, pairs well with Spanish pork dishes like chorizo and roasted pork, providing a harmonious blend of fruit and spice.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "Use a tempered red wine glass to enjoy its full spectrum of flavors.",
                    decantingRecommendation: "Decant for about 30 minutes to unlock its full potential."
                )
            ],
            description: "Pork dishes are as diverse as they are delightful, pairing beautifully with both robust reds and vibrant whites. The right wine can complement everything from a tenderloin to a spicy sausage, enhancing the natural flavors and richness of the pork."
        ),






        
        FoodWinePairing(
            food: "Lamb",
            grapes: [
                GrapeDetail(
                    name: "Cabernet Sauvignon (Red)",
                    description: "The king of reds pairs magnificently with lamb, offering bold tannins and dark fruit flavors that complement grilled or roasted lamb superbly.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "Use a large, bold wine glass to enhance the complex aromatics.",
                    decantingRecommendation: "Decant for at least one hour before serving."
                ),
                GrapeDetail(
                    name: "Syrah/Shiraz (Red)",
                    description: "With its spicy and dark fruity profile, Syrah stands up well to intensely flavored lamb dishes, such as lamb curry or spiced lamb kebabs.",
                    servingTemperature: "Serve at 15-18°C (59-64°F)",
                    glassType: "A medium to large glass to capture the rich flavors and aromas.",
                    decantingRecommendation: "Decant for 30 to 60 minutes to open up the wine."
                ),
                GrapeDetail(
                    name: "Merlot (Red)",
                    description: "A softer red that complements baked lamb dishes with its plush, velvety tannins and ripe berry flavors.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A large red wine glass to allow the wine to breathe and mellow.",
                    decantingRecommendation: "Short decanting can help soften the wine and enhance the flavor."
                ),
                GrapeDetail(
                    name: "Pinot Noir (Red)",
                    description: "A lighter red that works well with lamb cooked with more delicate seasonings, like lamb chops or a tender lamb stew.",
                    servingTemperature: "Serve at 14-16°C (57-61°F)",
                    glassType: "A Burgundy glass, with a wide bowl, is ideal for enhancing its delicate flavors.",
                    decantingRecommendation: "Decanting can open up the flavors, especially in older vintages."
                ),
                GrapeDetail(
                    name: "Tempranillo (Red)",
                    description: "This Spanish variety, with its leather and cherry notes, pairs well with Spanish-style lamb dishes like lamb albondigas (meatballs) or roasted leg of lamb.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A standard red wine glass works well to appreciate its balance of fruit and savory flavors.",
                    decantingRecommendation: "Decant for about 30 minutes to enhance the flavors."
                ),
                GrapeDetail(
                    name: "Malbec (Red)",
                    description: "The bold flavors of Malbec can stand up to the rich, fatty cuts of lamb, such as grilled lamb ribs, with its notes of blackberry and spice.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A robust glass to handle the bold flavors and tannins.",
                    decantingRecommendation: "Decant for up to an hour to soften tannins and enrich flavors."
                )
            ],
            description: "Lamb, with its rich, gamey flavors, is perfectly complemented by a variety of red wines. Selecting the right wine depends on the preparation and seasoning of the lamb, from grilled ribs to roasted legs."
        ),
        
        FoodWinePairing(
            food: "Duck",
            grapes: [
                GrapeDetail(
                    name: "Pinot Noir (Red)",
                    description: "A classic pairing for duck, Pinot Noir's light body and soft tannins complement the fattiness of the duck without overwhelming its delicate flavor. Ideal for roasted or pan-seared duck.",
                    servingTemperature: "Serve at 14-16°C (57-61°F)",
                    glassType: "A Burgundy glass, which has a wide bowl, enhances the subtle flavors of the wine.",
                    decantingRecommendation: "Decant for 30 minutes to open up its aromatic profile."
                ),
                GrapeDetail(
                    name: "Merlot (Red)",
                    description: "Merlot, with its soft tannins and fruity notes, balances the richness of duck, especially when served with a fruit-based sauce like cherry or plum.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A medium to large wine glass allows the flavors to develop fully.",
                    decantingRecommendation: "Short decanting can help to enhance the flavors."
                ),
                GrapeDetail(
                    name: "Syrah (Red)",
                    description: "Syrah's robust structure and hint of spice pair well with spicier duck preparations, like duck breast with a peppercorn sauce.",
                    servingTemperature: "Serve at 15-18°C (59-64°F)",
                    glassType: "A glass with a wide opening best supports the bold flavors of Syrah.",
                    decantingRecommendation: "Decant for up to an hour to soften the wine and bring forward its complex flavors."
                ),
                GrapeDetail(
                    name: "Riesling (White)",
                    description: "An off-dry Riesling complements duck's richness with its brightness and slight sweetness, perfect for duck dishes with sweet elements or Asian-inspired spices.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A tall, slender glass helps to concentrate the aromatic floral and fruity notes.",
                    decantingRecommendation: "Not required, serve chilled to preserve its crispness."
                ),
                GrapeDetail(
                    name: "Zinfandel (Red)",
                    description: "Zinfandel, with its bold fruit flavors and slight sweetness, can stand up to richly flavored duck dishes, such as duck confit or duck with a spicy rub.",
                    servingTemperature: "Serve at 15-18°C (59-64°F)",
                    glassType: "Use a glass that enhances its fruity and spicy profile.",
                    decantingRecommendation: "Decant for about 30 minutes to enhance the flavors and soften the tannins."
                )
            ],
            description: "Duck's rich flavors and tender textures pair well with a variety of wines. The best choice depends on both the preparation of the duck and the style of the wine, ranging from light reds to aromatic whites."
        ),
        
        FoodWinePairing(
            food: "Turkey",
            grapes: [
                GrapeDetail(
                    name: "Pinot Noir (Red)",
                    description: "A classic choice for turkey, Pinot Noir's light body and bright acidity complement the delicate flavor of turkey without overwhelming it. Ideal for roasted or grilled turkey.",
                    servingTemperature: "Serve at 14-16°C (57-61°F)",
                    glassType: "A Burgundy glass, which has a wide bowl, is perfect for enhancing the delicate flavors.",
                    decantingRecommendation: "Decant for 30 minutes to open up its aromatic profile."
                ),
                GrapeDetail(
                    name: "Chardonnay (White)",
                    description: "Oaked Chardonnay brings richness and buttery notes that are wonderful with turkey, especially if it’s served with creamy sauces or a rich stuffing.",
                    servingTemperature: "Serve at 12-14°C (54-57°F)",
                    glassType: "Use a wide bowl glass to enhance the creamy texture of the wine.",
                    decantingRecommendation: "Usually not necessary to decant."
                ),
                GrapeDetail(
                    name: "Zinfandel (Red)",
                    description: "Zinfandel's robust fruit flavors and a hint of spice make it a festive choice that stands up well to heavily seasoned turkey and richer side dishes.",
                    servingTemperature: "Serve at 15-18°C (59-64°F)",
                    glassType: "A glass with a wide opening is ideal for the bold flavors.",
                    decantingRecommendation: "Decant for about 30 minutes to enhance the flavors."
                ),
                GrapeDetail(
                    name: "Riesling (White)",
                    description: "A dry or off-dry Riesling works beautifully with turkey, offering a crisp acidity that cuts through the richness and complements both the meat and a variety of side dishes.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A tall, slender glass helps to concentrate the wine's aromatic profile.",
                    decantingRecommendation: "Not required, serve chilled."
                ),
                GrapeDetail(
                    name: "Sauvignon Blanc (White)",
                    description: "Its crisp and fresh profile with hints of citrus and green herbs pairs excellently with turkey, especially when accompanied by herb-driven side dishes like sage dressing.",
                    servingTemperature: "Serve chilled at 8-10°C (46-50°F)",
                    glassType: "A standard white wine glass will concentrate the vibrant aromatics.",
                    decantingRecommendation: "No decanting needed."
                ),
                GrapeDetail(
                    name: "Grenache (Red)",
                    description: "Grenache, with its soft tannins and fruity profile, offers a gentle complement to turkey, making it suitable for dishes that include cranberry or fruit elements.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A medium-bodied red wine glass helps to balance the fruit and spice notes.",
                    decantingRecommendation: "Decant for about 20 minutes to enhance the fruit flavors."
                )
            ],
            description: "Turkey, with its mild flavor, pairs well with both white and light red wines. The best pairing will depend on the preparation and seasoning of the turkey, as well as the side dishes served alongside."
        ),
        
        FoodWinePairing(
            food: "Gamey Meats",
            grapes: [
                GrapeDetail(
                    name: "Syrah/Shiraz (Red)",
                    description: "Syrah, with its bold, spicy profile and dark fruit flavors, is excellent for gamey meats, matching their intensity and complementing the rich, earthy flavors often found in these meats.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A large glass to allow the complex aromas to evolve.",
                    decantingRecommendation: "Decant for at least an hour to soften and open up."
                ),
                GrapeDetail(
                    name: "Malbec (Red)",
                    description: "Malbec's robust tannins and deep berry notes make it a fantastic match for gamey meats, particularly well-suited for grilled or barbecued preparations.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "Use a robust glass to enhance the bold flavors.",
                    decantingRecommendation: "Decant for 30 to 60 minutes to enhance its full-bodied character."
                ),
                GrapeDetail(
                    name: "Cabernet Sauvignon (Red)",
                    description: "The king of reds, Cabernet Sauvignon, with its high tannins and deep flavors of cassis and black cherry, pairs wonderfully with gamey meats, especially those served with rich sauces or reductions.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A bold wine glass to handle the strong tannins and rich flavors.",
                    decantingRecommendation: "Decant for an hour to allow the complex flavors to unfold fully."
                ),
                GrapeDetail(
                    name: "Nebbiolo (Red)",
                    description: "Nebbiolo offers a powerful structure and high tannins, which are great for cutting through the richness of gamey meats. Its notes of tar and roses add a unique dimension to the pairing.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A wide-bowled glass to collect its intense aromas.",
                    decantingRecommendation: "Decant for at least two hours before serving."
                ),
                GrapeDetail(
                    name: "Zinfandel (Red)",
                    description: "Zinfandel, with its fruity yet spicy profile, complements gamey meats smoked or cooked with bold spices, balancing the strong flavors with its peppery finish.",
                    servingTemperature: "Serve at 15-18°C (59-64°F)",
                    glassType: "A glass with a wide opening best supports the spicy and fruity flavors.",
                    decantingRecommendation: "Decant for about 30 minutes to enhance the flavors."
                ),
                GrapeDetail(
                    name: "Sangiovese (Red)",
                    description: "Sangiovese's high acidity and rustic nature make it an ideal pairing for gamey meats, especially those served in a tomato-based sauce or with Italian herbs.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A standard red wine glass works well to appreciate its balance of fruit and savory flavors.",
                    decantingRecommendation: "Decant for about 30 minutes to enhance the flavors."
                )
            ],
            description: "Gamey meats, with their distinctive flavors, require robust wines with enough character to complement the intensity of the meat. Wines chosen should have the structure to cut through the richness and enhance the meal's earthy tones."
        ),
        
        FoodWinePairing(
            food: "Salads",
            grapes: [
                GrapeDetail(
                    name: "Sauvignon Blanc (White)",
                    description: "Its crisp acidity and grassy, citrus notes make Sauvignon Blanc a perfect match for green salads, especially those dressed with vinaigrette or featuring goat cheese.",
                    servingTemperature: "Serve chilled at 8-10°C (46-50°F)",
                    glassType: "A standard white wine glass to concentrate the vibrant aromatics.",
                    decantingRecommendation: "No decanting needed."
                ),
                GrapeDetail(
                    name: "Pinot Grigio (White)",
                    description: "Light and crisp, Pinot Grigio complements simple salads without heavy dressings, enhancing ingredients like fresh greens, apples, or pears.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A light, slim glass to maintain cool temperature and fresh flavors.",
                    decantingRecommendation: "Not required, serve chilled."
                ),
                GrapeDetail(
                    name: "Unoaked Chardonnay (White)",
                    description: "A lighter, unoaked Chardonnay with its subtle fruitiness is ideal for salads with chicken or seafood, providing a smooth texture that complements without overpowering.",
                    servingTemperature: "Serve at 10-12°C (50-54°F)",
                    glassType: "Use a medium-sized glass to capture its delicate fruit flavors.",
                    decantingRecommendation: "Usually not necessary to decant."
                ),
                GrapeDetail(
                    name: "Dry Rosé",
                    description: "Dry Rosé, with its hints of red fruit and crisp finish, pairs wonderfully with fruit-based salads or those with a slight sweetness, like a strawberry spinach salad.",
                    servingTemperature: "Serve chilled at 8-10°C (46-50°F)",
                    glassType: "A standard rosé glass, which is similar to a white wine glass, enhances its fruity and floral notes.",
                    decantingRecommendation: "No decanting required; serve chilled."
                ),
                GrapeDetail(
                    name: "Prosecco (Sparkling)",
                    description: "The bubbly and slightly sweet nature of Prosecco makes it a delightful pairing for salads with fruit elements or sweeter dressings, adding a refreshing sparkle.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A slim flute to preserve bubbles and enhance the lifting of aromas.",
                    decantingRecommendation: "Serve immediately after opening to maintain effervescence."
                ),
                GrapeDetail(
                    name: "Dry or Off-Dry Riesling (White)",
                    description: "Riesling’s versatility with its balance of sweetness and acidity can adapt to salads with bitter greens or a tangy dressing, enhancing complex salad flavors.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A tall, slender glass helps to concentrate the wine's aromatic profile.",
                    decantingRecommendation: "Not required, serve chilled."
                )
            ],
            description: "Salads are diverse in flavor, and the ideal wine pairing should complement the freshness and ingredients' nuances. Light, crisp wines, or even slightly sweet and sparkling options, are generally the best matches, elevating the salad’s natural flavors without dominating them."
        ),
        
        FoodWinePairing(
            food: "Tofu",
            grapes: [
                GrapeDetail(
                    name: "Pinot Grigio (White)",
                    description: "A light and crisp Pinot Grigio complements the delicate texture of tofu, particularly when the tofu is lightly seasoned or served in a fresh salad.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A light, slim glass to maintain cool temperature and fresh flavors.",
                    decantingRecommendation: "Not required, serve chilled."
                ),
                GrapeDetail(
                    name: "Unoaked Chardonnay (White)",
                    description: "Unoaked Chardonnay, with its moderate acidity and mild fruitiness, pairs well with creamy tofu dishes or tofu baked with a light sauce.",
                    servingTemperature: "Serve at 10-12°C (50-54°F)",
                    glassType: "Use a medium-sized glass to capture its delicate fruit flavors.",
                    decantingRecommendation: "Usually not necessary to decant."
                ),
                GrapeDetail(
                    name: "Sauvignon Blanc (White)",
                    description: "The herbaceous and crisp notes of Sauvignon Blanc can complement tofu dishes that include green vegetables or are flavored with herbal or citrus marinades.",
                    servingTemperature: "Serve chilled at 8-10°C (46-50°F)",
                    glassType: "A standard white wine glass will concentrate the vibrant aromatics.",
                    decantingRecommendation: "No decanting needed."
                ),
                GrapeDetail(
                    name: "Dry or Off-Dry Riesling (White)",
                    description: "Dry or slightly sweet Riesling works well with spicy or Asian-inspired tofu dishes, balancing spice with its fruity sweetness and refreshing acidity.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A tall, slender glass helps to concentrate the wine's aromatic profile.",
                    decantingRecommendation: "Not required, serve chilled."
                ),
                GrapeDetail(
                    name: "Grenache (Red)",
                    description: "A light Grenache with soft tannins complements grilled or smoked tofu, aligning well with its smoky flavors without overpowering the dish.",
                    servingTemperature: "Serve at 14-16°C (57-61°F)",
                    glassType: "A medium-bodied red wine glass helps to balance the fruit and spice notes.",
                    decantingRecommendation: "Decant for about 20 minutes to enhance the fruit flavors."
                ),
                GrapeDetail(
                    name: "Merlot (Red)",
                    description: "A softer Merlot can pair nicely with richly flavored tofu dishes, such as those with mushroom sauces or marinated in robust seasonings, providing a plush backdrop to the meal.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A large red wine glass to allow the wine to breathe and develop.",
                    decantingRecommendation: "Short decanting is beneficial to soften the wine."
                )
            ],
            description: "Tofu’s mild flavor and adaptable nature make it a perfect canvas for a range of wines. Choose a wine based on the preparation and accompanying flavors of the dish, from light and crisp whites to milder reds that complement without overwhelming."
        ),
        
        FoodWinePairing(
            food: "Tomato-Based Pasta",
            grapes: [
                GrapeDetail(
                    name: "Sangiovese (Red)",
                    description: "Sangiovese's high acidity and savory flavors make it an excellent match for tomato-based sauces, enhancing the natural tomato and herb flavors in the pasta.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A large red wine glass to allow the wine's complexities to unfold.",
                    decantingRecommendation: "Decant for 30 minutes to enhance its aromatic profile."
                ),
                GrapeDetail(
                    name: "Barbera (Red)",
                    description: "Barbera's bright acidity and juicy fruit notes cut through the richness of tomato-based sauces, offering a refreshing contrast to hearty dishes like lasagna or meat sauce pasta.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A medium-bodied red wine glass to highlight its fruit-forward profile.",
                    decantingRecommendation: "Decanting is optional but can be done for 20 minutes to open up the flavors."
                ),
                GrapeDetail(
                    name: "Merlot (Red)",
                    description: "Merlot, with its soft tannins and ripe fruit flavors, pairs well with mildly spiced tomato sauces, providing a smooth and velvety texture that complements the pasta without overwhelming it.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A large red wine glass to enhance the smooth and fruity characteristics.",
                    decantingRecommendation: "Short decanting can help soften the tannins and release more flavor."
                ),
                GrapeDetail(
                    name: "Zinfandel (Red)",
                    description: "Zinfandel's bold fruit and spice notes make it a strong contender for richer tomato-based dishes, such as those with meat or a hint of sweetness in the sauce.",
                    servingTemperature: "Serve at 15-18°C (59-64°F)",
                    glassType: "A robust glass to support its bold flavors and spicy undertones.",
                    decantingRecommendation: "Decant for 30 minutes to mellow the tannins and enhance the fruity spices."
                ),
                GrapeDetail(
                    name: "Montepulciano (Red)",
                    description: "Montepulciano's robust structure and ripe berry flavors, along with subtle spice and earthy notes, make it an excellent match for tomato-based pasta dishes. Its natural acidity and tannins complement the rich tomato flavors, making it ideal for dishes like penne arrabbiata or a hearty marinara.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A medium to large red wine glass to allow the aromatics and flavors to fully develop.",
                    decantingRecommendation: "Decant for about 30 minutes to soften the tannins and enrich the fruit flavors."
                )
            ],
            description: "Tomato-based pasta dishes, rich in herbs and spices, pair beautifully with wines that feature good acidity and fruit notes."
        ),
        
        FoodWinePairing(
            food: "Creamy Pasta Dishes",
            grapes: [
                GrapeDetail(
                    name: "Oaked Chardonnay (White)",
                    description: "Oaked Chardonnay, with its buttery and creamy texture, complements the richness of creamy pasta dishes like fettuccine Alfredo or a creamy carbonara.",
                    servingTemperature: "Serve at 12-14°C (54-57°F)",
                    glassType: "Use a wide bowl glass to enhance the complex aromatics and rich textures.",
                    decantingRecommendation: "Usually not necessary to decant, but can be briefly aerated."
                ),
                GrapeDetail(
                    name: "Pinot Gris (White)",
                    description: "Pinot Gris offers a rich texture that matches well with creamy sauces, providing a balanced acidity that helps cut through the richness of dishes like penne alla vodka.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A light, slim glass to maintain cool temperature and fresh flavors.",
                    decantingRecommendation: "Not required, serve chilled."
                ),
                GrapeDetail(
                    name: "Viognier (White)",
                    description: "Viognier, with its aromatic and slightly oily texture, pairs beautifully with creamy pasta dishes that feature herbs or mild spices, enhancing the floral and creamy elements of both the wine and the dish.",
                    servingTemperature: "Serve at 10-12°C (50-54°F)",
                    glassType: "A medium to large glass to capture its aromatic floral and fruit notes.",
                    decantingRecommendation: "Short decanting can enhance aromatics."
                ),
                GrapeDetail(
                    name: "Riesling (White)",
                    description: "A dry or slightly off-dry Riesling can complement the richness of creamy pasta with its acidity and fruit-forward profile, especially in dishes that include a touch of sweetness or spice.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A tall, slender glass helps to concentrate the wine's aromatic profile.",
                    decantingRecommendation: "Not required, serve chilled."
                )
                        ],
            description: "Creamy pasta dishes require wines that can cut through the creaminess with acidity or complement the richness with similar buttery or creamy profiles. The selected wines provide a range of options that can enhance the enjoyment of these luxurious dishes."
        ),
        
        FoodWinePairing(
            food: "Light Fish Dishes",
            grapes: [
                GrapeDetail(
                    name: "Pinot Grigio (White)",
                    description: "Pinot Grigio's light body and crisp acidity make it ideal for light fish dishes, such as grilled sea bass or flounder, enhancing the delicate flavors without overpowering them.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A light, slim glass to maintain cool temperature and fresh flavors.",
                    decantingRecommendation: "Not required, serve chilled."
                ),
                GrapeDetail(
                    name: "Sauvignon Blanc (White)",
                    description: "With its zesty and herbaceous qualities, Sauvignon Blanc pairs beautifully with light fish dishes seasoned with herbs or served with a light citrus dressing, such as lemon-drizzled tilapia or poached cod.",
                    servingTemperature: "Serve chilled at 8-10°C (46-50°F)",
                    glassType: "A standard white wine glass will concentrate the vibrant aromatics.",
                    decantingRecommendation: "No decanting needed."
                ),
                GrapeDetail(
                    name: "Chenin Blanc (White)",
                    description: "Chenin Blanc, especially in its drier forms, complements light fish dishes with its balance of acidity and subtle fruity notes, ideal for fish paired with mild vinaigrettes or light vegetable garnishes.",
                    servingTemperature: "Serve at 8-10°C (46-50°F)",
                    glassType: "A medium-sized glass to best express the wine's floral and fruity aromas.",
                    decantingRecommendation: "Usually not necessary to decant."
                ),
                GrapeDetail(
                    name: "Albariño (White)",
                    description: "Albariño's lively acidity and stone fruit flavors are a match for light fish dishes, particularly those featuring shellfish or subtle spices, offering a refreshing complement to the seafood's sweetness.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A tall, slender glass helps to focus the aromatic profile.",
                    decantingRecommendation: "Not required, serve chilled."
                )
            ],
            description: "Light fish dishes, characterized by their delicate textures and flavors, pair well with white wines that offer a balance of acidity and light fruity or floral notes. The selected wines ensure that the natural flavors of the fish are enhanced rather than masked."
        ),
        
        FoodWinePairing(
            food: "Rich Fish Dishes",
            grapes: [
                GrapeDetail(
                    name: "Chardonnay (White)",
                    description: "Oaked Chardonnay, with its rich, buttery profile and notes of vanilla, is excellent for complementing fatty fish like salmon or fish prepared with creamy sauces, providing a luxurious texture that matches the richness of the dish.",
                    servingTemperature: "Serve at 10-12°C (50-54°F)",
                    glassType: "Use a wide bowl glass to enhance the complex aromatics and rich textures.",
                    decantingRecommendation: "Usually not necessary to decant, but can be briefly aerated."
                ),
                GrapeDetail(
                    name: "Viognier (White)",
                    description: "Viognier, known for its full body and aromatic intensity, pairs well with rich fish dishes that feature bold seasoning or are served with fruit salsas, such as grilled tuna with mango salsa.",
                    servingTemperature: "Serve at 10-12°C (50-54°F)",
                    glassType: "A medium to large glass to capture its aromatic floral and fruit notes.",
                    decantingRecommendation: "Not required but can be aerated briefly if too crisp."
                ),
                GrapeDetail(
                    name: "Pinot Noir (Red)",
                    description: "A lighter red wine like Pinot Noir can be an excellent choice for oily fish, such as grilled mackerel or salmon, with its subtle earthy undertones and red fruit flavors providing a pleasant contrast without overwhelming the fish.",
                    servingTemperature: "Serve slightly chilled at 12-14°C (54-57°F)",
                    glassType: "A Burgundy glass, which has a wide bowl, is ideal for enhancing its delicate flavors.",
                    decantingRecommendation: "Decant for 30 minutes to open up its flavors."
                ),
                GrapeDetail(
                    name: "Marsanne (White)",
                    description: "Marsanne offers a rich texture and nutty complexity that can stand up to rich fish dishes, especially those that include roasted or smoked elements, complementing the depth of flavors with its structured profile.",
                    servingTemperature: "Serve at 10-12°C (50-54°F)",
                    glassType: "A broad glass to allow the complex flavors to unfold.",
                    decantingRecommendation: "Brief decanting can enhance the sensory experience."
                )
            ],
            description: "Rich fish dishes, often characterized by their oilier textures and more intense flavors, require wines that can match their richness without overpowering. The selected wines provide a range of textures and flavors that complement these heartier seafood preparations."
        ),
        
        FoodWinePairing(
            food: "Shellfish",
            grapes: [
                GrapeDetail(
                    name: "Chardonnay (White)",
                    description: "Chardonnay, especially when unoaked, offers crisp minerality and bright acidity that pairs well with oysters and other raw shellfish, enhancing the natural brininess without overpowering the delicate flavors.",
                    servingTemperature: "Serve well-chilled at 8-10°C (46-50°F)",
                    glassType: "A light, slim glass to maintain the wine's cool temperature and delicate flavors.",
                    decantingRecommendation: "Not required, serve chilled."
                ),
                GrapeDetail(
                    name: "Albariño (White)",
                    description: "Albariño, with its bright acidity and aromatic profile, pairs beautifully with grilled shellfish like scallops and prawns, bringing out the sweetness of the meat with its citrus and peach notes.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A tall, slender glass helps to focus the aromatic profile, enhancing the wine’s floral and fruity notes.",
                    decantingRecommendation: "Not required, serve chilled."
                ),
                GrapeDetail(
                    name: "Sauvignon Blanc (White)",
                    description: "Sauvignon Blanc's zesty and herbaceous character complements a wide range of shellfish dishes, especially those with garlic or herb seasonings, like garlic shrimp or herbed crab.",
                    servingTemperature: "Serve chilled at 8-10°C (46-50°F)",
                    glassType: "A standard white wine glass to concentrate the crisp, vibrant flavors.",
                    decantingRecommendation: "No decanting needed."
                ),
                GrapeDetail(
                    name: "Melon de Bourgogne (White)",
                    description: "Melon de Bourgogne offers a subtle lemon-lime zest and sea spray quality that is perfect for enhancing the flavor of steamed clams or mussels, supporting their delicate flavors without overshadowing.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A light, slim glass to preserve the freshness and subtlety of the wine.",
                    decantingRecommendation: "Not required, serve chilled."
                ),
                GrapeDetail(
                    name: "Champagne (Sparkling)",
                    description: "Champagne, with its bright acidity and lively effervescence, is an iconic pairing for oysters. The bubbles and crisp minerality of Champagne enhance the delicate, briny flavors of oysters, making each bite more vibrant while cleansing the palate.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A slim flute to preserve the bubbles and enhance the aroma.",
                    decantingRecommendation: "Not required; serve immediately after opening to maintain effervescence."
                )
            ],
            description: "Shellfish dishes, known for their delicate and sometimes sweet flavors, pair well with wines that offer crispness and a certain minerality. The right wine enhances the seafood's natural flavors without competing with them, ensuring a harmonious match with each bite."
        ),
        
        FoodWinePairing(
            food: "Lobster",
            grapes: [
                GrapeDetail(
                    name: "Chardonnay (White)",
                    description: "Rich, buttery Chardonnay complements lobster's sweet, tender meat, especially when the lobster is grilled or served with butter.",
                    servingTemperature: "Serve at 10-12°C (50-54°F)",
                    glassType: "A wide bowl glass to enhance the complex aromatics and rich textures.",
                    decantingRecommendation: "Usually not necessary to decant, but can be briefly aerated."
                ),
                GrapeDetail(
                    name: "Viognier (White)",
                    description: "With its floral notes and full body, Viognier is excellent with spiced or herb-seasoned lobster dishes, enhancing the natural flavors without overwhelming.",
                    servingTemperature: "Serve at 10-12°C (50-54°F)",
                    glassType: "A medium to large glass to capture its aromatic floral and fruit notes.",
                    decantingRecommendation: "Not required but can be aerated briefly if too crisp."
                ),
                GrapeDetail(
                    name: "Champagne (Sparkling)",
                    description: "Champagne offers a luxurious pairing for lobster, especially cold dishes or lobster salads, with its acidity and bubbles providing a refreshing contrast.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A slim flute to preserve the bubbles and enhance the aroma.",
                    decantingRecommendation: "Not required; serve immediately after opening to maintain effervescence."
                )
            ],
            description: "Lobster, with its sweet and tender meat, pairs beautifully with wines that offer a balance of richness, acidity, and aromatics. Whether choosing a full-bodied, oaky Chardonnay, a floral Viognier, or a crisp Champagne, the right wine can elevate the luxurious flavors of this seafood delicacy."
        ),
        
        FoodWinePairing(
            food: "Crab",
            grapes: [
                GrapeDetail(
                    name: "Albariño (White)",
                    description: "Albariño's zesty acidity and stone fruit flavors are perfect for enhancing the delicate sweetness of crab, especially in lighter preparations like crab salads.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A tall, slender glass helps to focus the aromatic profile, enhancing the wine’s floral and fruity notes.",
                    decantingRecommendation: "Not required, serve chilled."
                ),
                GrapeDetail(
                    name: "Sauvignon Blanc (White)",
                    description: "The crisp and herbaceous Sauvignon Blanc complements crab dishes with herbal or citrus elements, such as crab cakes with aioli or lemon-garnished crab legs.",
                    servingTemperature: "Serve chilled at 8-10°C (46-50°F)",
                    glassType: "A standard white wine glass will concentrate the vibrant aromatics.",
                    decantingRecommendation: "No decanting needed."
                ),
                GrapeDetail(
                    name: "Pinot Gris (White)",
                    description: "Pinot Gris offers a balanced, slightly fruity complement to both raw and cooked crab, supporting the flavors with a subtle roundness and clean finish.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A light, slim glass to maintain the wine's freshness and delicate fruit flavors.",
                    decantingRecommendation: "Not required, serve chilled."
                )
            ],
            description: "Crab, known for its sweet, subtle flavor, pairs beautifully with a variety of crisp white wines that enhance without overpowering the delicate seafood flavors."
        ),
        
        FoodWinePairing(
            food: "Pizza",
            grapes: [
                GrapeDetail(
                    name: "Sangiovese (Red)",
                    description: "Ideal for classic tomato-based pizzas like Margherita or pepperoni, as its acidity matches well with tomato sauce and its savory notes complement both cheese and cured meats.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A standard red wine glass to appreciate its balance of fruit and savory flavors.",
                    decantingRecommendation: "Decant for about 30 minutes to enhance the flavors."
                ),
                GrapeDetail(
                    name: "Barbera (Red)",
                    description: "With its high acidity and bright fruit flavors, Barbera is a versatile choice for most pizzas, especially those with fatty meats or rich cheeses, providing a refreshing palate cleanse.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A medium-bodied red wine glass to highlight its fruit-forward profile.",
                    decantingRecommendation: "Decanting is optional but can be done for 20 minutes to open up the flavors."
                ),
                GrapeDetail(
                    name: "Chardonnay (White)",
                    description: "A buttery, oaked Chardonnay pairs wonderfully with white pizzas or those with chicken and white sauce, echoing the creamy textures and complementing milder toppings.",
                    servingTemperature: "Serve at 10-12°C (50-54°F)",
                    glassType: "Use a wide bowl glass to enhance the creamy texture of the wine.",
                    decantingRecommendation: "Usually not necessary to decant."
                ),
                GrapeDetail(
                    name: "Pinot Noir (Red)",
                    description: "Light and versatile, Pinot Noir works well with vegetarian pizzas or those with delicate flavors like Margherita, enhancing the fresh basil and tomato without overpowering.",
                    servingTemperature: "Serve slightly chilled at 14-16°C (57-61°F)",
                    glassType: "A Burgundy glass, which has a wide bowl, is ideal for enhancing its delicate flavors.",
                    decantingRecommendation: "Decant for 30 minutes to open up its aromatic profile."
                ),
                GrapeDetail(
                    name: "Zinfandel (Red)",
                    description: "The boldness of Zinfandel with its fruity and spicy profile makes it suitable for pizzas with barbecue sauce or spicy toppings, providing a robust counterpoint to hearty and flavorful ingredients.",
                    servingTemperature: "Serve at 15-18°C (59-64°F)",
                    glassType: "A robust glass to support its bold flavors and spicy undertones.",
                    decantingRecommendation: "Decant for about 30 minutes to enhance the flavors and soften the tannins."
                ),
                GrapeDetail(
                    name: "Syrah (Red)",
                    description: "Syrah, with its smoky and peppery notes, is excellent for pizzas topped with sausages or a smoky barbecue sauce, complementing the smoky flavors with its intense profile.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A glass with a wide opening best supports the bold flavors of Syrah.",
                    decantingRecommendation: "Decant for up to an hour to soften the wine and bring forward its complex flavors."
                )
            ],
            description: "Pizza, with its myriad toppings and styles, pairs delightfully with a variety of wines. The key is to match the intensity and flavors of the pizza with a suitable wine, considering factors like the richness of the sauce, the type of toppings, and the overall flavor profile."
        ),
        
        FoodWinePairing(
            food: "Soft Cheeses",
            grapes: [
                GrapeDetail(
                    name: "Champagne (Sparkling)",
                    description: "The crisp acidity and lively bubbles of Champagne cut through the richness of soft cheeses like Brie and Camembert, cleansing the palate and enhancing the creamy textures.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A slim flute to preserve the bubbles and enhance the aroma.",
                    decantingRecommendation: "Not required; serve immediately after opening to maintain effervescence."
                ),
                GrapeDetail(
                    name: "Sauvignon Blanc (White)",
                    description: "Its high acidity and vibrant grassy and citrus notes make Sauvignon Blanc an excellent match for goat cheese, highlighting its tangy profile and balancing the cheese’s creamy texture.",
                    servingTemperature: "Serve chilled at 8-10°C (46-50°F)",
                    glassType: "A standard white wine glass to concentrate the vibrant aromatics.",
                    decantingRecommendation: "No decanting needed."
                ),
                GrapeDetail(
                    name: "Chenin Blanc (White)",
                    description: "With its balance of sweetness and acidity, Chenin Blanc pairs beautifully with soft cheeses that have a hint of sweetness, such as those with fruit inclusions or those that are slightly tangy.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A tall, slender glass helps to emphasize the wine's aromatic profile.",
                    decantingRecommendation: "Not required, serve chilled."
                ),
                GrapeDetail(
                    name: "Riesling (White)",
                    description: "Both dry and off-dry Riesling work wonderfully with soft cheeses, as their fruity sweetness and sharp acidity complement the mild and creamy textures, especially cheeses like Munster or young Gouda.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A tall, slender glass to focus the aromatic floral and fruity notes.",
                    decantingRecommendation: "Not required, serve chilled."
                ),
                GrapeDetail(
                    name: "Pinot Noir (Red)",
                    description: "A light Pinot Noir with its subtle earthy undertones and red fruit flavors pairs nicely with soft, creamy cheeses, providing a gentle contrast without overwhelming the cheese’s flavor.",
                    servingTemperature: "Serve slightly chilled at 14-16°C (57-61°F)",
                    glassType: "A Burgundy glass, which has a wide bowl, is ideal for enhancing its delicate aromas.",
                    decantingRecommendation: "Decant for 30 minutes to open up its flavors."
                )
            ],
            description: "Soft cheeses, known for their creamy textures and mild flavors, pair delightfully with wines that offer a balance of acidity, sweetness, or effervescence. The right wine can cut through the creaminess and highlight the subtle flavors of the cheese."
        ),
        
        FoodWinePairing(
            food: "Hard Cheeses",
            grapes: [
                GrapeDetail(
                    name: "Cabernet Sauvignon (Red)",
                    description: "The bold tannins and dark fruit flavors of Cabernet Sauvignon pair well with aged hard cheeses like aged Cheddar or Gouda, matching their intensity and complementing the richness.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A large, bold wine glass to enhance the complex aromatics.",
                    decantingRecommendation: "Decant for at least 30 minutes before serving."
                ),
                GrapeDetail(
                    name: "Sangiovese (Red)",
                    description: "Sangiovese's bright acidity and savory notes make it an excellent match for hard cheeses like Parmigiano-Reggiano, enhancing the cheese's nutty and salty characteristics.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A standard red wine glass works well to appreciate its balance of fruit and savory flavors.",
                    decantingRecommendation: "Decant for about 30 minutes to enhance the flavors."
                ),
                GrapeDetail(
                    name: "Tempranillo (Red)",
                    description: "Tempranillo, with its leather and cherry notes, pairs well with Manchego and other Spanish hard cheeses, providing a harmonious blend of fruit and spice.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "Use a tempered red wine glass to enjoy its full spectrum of flavors.",
                    decantingRecommendation: "Decant for about 30 minutes to unlock its full potential."
                ),
                GrapeDetail(
                    name: "Malbec (Red)",
                    description: "The robust tannins and ripe berry flavors of Malbec can stand up to rich, aged cheeses, such as aged Pecorino, enhancing the depth of flavors in both the cheese and the wine.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A robust glass to handle the bold flavors and tannins.",
                    decantingRecommendation: "Decant for up to an hour to soften tannins and enrich flavors."
                ),
                GrapeDetail(
                    name: "Zinfandel (Red)",
                    description: "Zinfandel, with its bold fruit and spice notes, is suitable for hard cheeses with a slightly sweeter edge, such as aged Asiago, providing a robust counterpoint to the intense flavors of the cheese.",
                    servingTemperature: "Serve at 15-18°C (59-64°F)",
                    glassType: "A glass with a wide bowl to enhance its spicy notes.",
                    decantingRecommendation: "Decant for about 30 minutes to enhance the flavors and soften the tannins."
                ),
                GrapeDetail(
                    name: "Nebbiolo (Red)",
                    description: "Nebbiolo's high tannins and acidity make it a perfect pairing for very hard cheeses like Grana Padano, as it can cut through the richness and complement the granular texture.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A large bowl glass to collect its aromatics and enhance the complex flavors.",
                    decantingRecommendation: "Decant for several hours before serving to allow the wine to fully express its characteristics."
                )
            ],
            description: "Hard cheeses require wines that can match their depth of flavor and often salty, nutty characteristics. The selected wines provide a range of tannins, acidities, and flavor profiles to complement and enhance these cheeses."
        ),
        
        FoodWinePairing(
            food: "Chocolate",
            grapes: [
                GrapeDetail(
                    name: "Port (Red)",
                    description: "Rich, sweet Port is a classic pairing for dark chocolate, enhancing its deep cocoa flavors with its own lush, red fruit and spice notes.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "Use a small port glass to concentrate the rich aromas and flavors.",
                    decantingRecommendation: "Decanting is not usually necessary but can be done briefly to aerate."
                ),
                GrapeDetail(
                    name: "Zinfandel (Red)",
                    description: "Zinfandel, with its bold fruit and peppery notes, pairs well with milk chocolate, complementing its sweetness and helping to balance the richness.",
                    servingTemperature: "Serve at 15-18°C (59-64°F)",
                    glassType: "A glass with a wide bowl enhances its fruity and spicy profile.",
                    decantingRecommendation: "Decant for about 30 minutes to soften the tannins and enhance the fruity spices."
                ),
                GrapeDetail(
                    name: "Banyuls (Red)",
                    description: "Banyuls, a fortified wine from France, pairs exceptionally with dark chocolate, echoing its natural flavors of plum and coffee with a velvety texture that complements the chocolate’s bitterness.",
                    servingTemperature: "Serve slightly chilled at 12-14°C (54-57°F)",
                    glassType: "A small dessert wine glass helps focus the complex, rich flavors.",
                    decantingRecommendation: "Serve directly without decanting to preserve the intense flavors."
                ),
                GrapeDetail(
                    name: "Muscat (White)",
                    description: "Sweet Muscat wines, with their aromatic floral and peach notes, are delightful with white chocolate, providing a light, fragrant contrast to the sweetness of the chocolate.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A tall, slender glass maximizes the aromatic experience.",
                    decantingRecommendation: "Not required, serve chilled."
                ),
                GrapeDetail(
                    name: "Cabernet Sauvignon (Red)",
                    description: "A robust Cabernet Sauvignon can pair well with dark chocolate, especially those chocolates that contain caramel or a hint of salt, providing a complex interplay of tannins and sweet-bitter flavors.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A large, bold wine glass to allow the complex flavors to develop fully.",
                    decantingRecommendation: "Decant for at least 30 minutes to allow the wine to open up."
                ),
                GrapeDetail(
                    name: "Riesling (White)",
                    description: "Late-harvest Riesling, with its sweet, fruity profile and balancing acidity, complements chocolate desserts that incorporate fruity elements like chocolate-covered strawberries or raspberry chocolate mousse.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A tall, slender glass helps to focus the sweet and acidic balance.",
                    decantingRecommendation: "Not required, serve chilled to enjoy its vibrant flavors."
                )
            ],
            description: "Chocolate, with its varying degrees of sweetness and richness, pairs beautifully with a range of wines. Selecting the right wine can enhance the chocolate’s primary flavors, whether it’s the intense bitterness of dark chocolate or the creamy sweetness of white chocolate."
        ),
        
        FoodWinePairing(
            food: "Barbecue",
            grapes: [
                GrapeDetail(
                    name: "Zinfandel (Red)",
                    description: "Zinfandel is a classic match for barbecue due to its bold fruit flavors and a hint of spice that pairs well with smoky meats and sweet or spicy sauces.",
                    servingTemperature: "Serve at 15-18°C (59-64°F)",
                    glassType: "A glass with a wide bowl to enhance its spicy notes.",
                    decantingRecommendation: "Decant for about 30 minutes to enhance the flavors and soften the tannins."
                ),
                GrapeDetail(
                    name: "Shiraz (Red)",
                    description: "Shiraz, with its robust structure and rich dark fruit flavors, stands up well to the intense flavors of barbecue, especially dishes with a peppery rub or marinade.",
                    servingTemperature: "Serve at 15-18°C (59-64°F)",
                    glassType: "A large glass to allow the bold aromas to emerge.",
                    decantingRecommendation: "Decant for 30 to 60 minutes to open up the wine."
                ),
                GrapeDetail(
                    name: "Malbec (Red)",
                    description: "Malbec's robust tannins and deep berry notes make it a fantastic match for barbecued beef, complementing the smoky flavors and richness of the meat.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A robust glass to handle the bold flavors.",
                    decantingRecommendation: "Decant for up to an hour to soften tannins and enrich flavors."
                ),
                GrapeDetail(
                    name: "Cabernet Sauvignon (Red)",
                    description: "The king of reds, Cabernet Sauvignon, with its high tannins and deep flavors of cassis and black cherry, pairs wonderfully with fatty cuts of barbecued meats, enhancing the grilled flavors.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A bold wine glass to handle the strong tannins and rich flavors.",
                    decantingRecommendation: "Decant for an hour to allow the complex flavors to unfold fully."
                ),
                GrapeDetail(
                    name: "Merlot (Red)",
                    description: "A softer option, Merlot can complement barbecue, especially chicken or pork, with its plush, velvety texture and ripe berry flavors that provide a counterbalance to mild spices.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A large red wine glass to allow the wine to breathe and develop.",
                    decantingRecommendation: "Short decanting is beneficial to soften the wine."
                ),
                GrapeDetail(
                    name: "Grenache (Red)",
                    description: "Grenache, with its fruity and spicy profile, works well with barbecued lamb or other meats that feature aromatic herbs and spices, offering a burst of ripe fruit that complements smoky flavors.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A medium-bodied red wine glass helps to balance the fruit and spice notes.",
                    decantingRecommendation: "Decant for about 30 minutes to enhance the flavor profile."
                )
            ],
            description: "Barbecue dishes, known for their smoky and often spicy flavors, pair well with wines that can stand up to the intensity of the food. The selected wines, from robust reds to softer options, offer a range of profiles that complement the rich, bold flavors of barbecue."
        ),
        
        FoodWinePairing(
            food: "Sushi",
            grapes: [
                GrapeDetail(
                    name: "Sauvignon Blanc (White)",
                    description: "Its crisp acidity and citrusy notes make Sauvignon Blanc a perfect match for sushi, especially with lighter fish and wasabi, as it cuts through the richness and complements the zestiness.",
                    servingTemperature: "Serve chilled at 8-10°C (46-50°F)",
                    glassType: "A standard white wine glass to concentrate the vibrant aromatics.",
                    decantingRecommendation: "No decanting needed."
                ),
                GrapeDetail(
                    name: "Riesling (White)",
                    description: "A dry or off-dry Riesling enhances sushi with its balance of sweetness and acidity, working well with both nigiri and spicy rolls to balance the heat and complement the fish's flavor.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A tall, slender glass helps to concentrate the wine's aromatic profile.",
                    decantingRecommendation: "Not required, serve chilled."
                ),
                GrapeDetail(
                    name: "Pinot Gris (White)",
                    description: "Pinot Gris, with its light body and crisp finish, pairs beautifully with sushi, especially sashimi, as it doesn't overpower the delicate flavors of the fish.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A light, slim glass to maintain cool temperature and fresh flavors.",
                    decantingRecommendation: "Not required, serve chilled."
                ),
                GrapeDetail(
                    name: "Champagne (Sparkling)",
                    description: "The effervescence of Champagne offers a delightful contrast to the textures of sushi, particularly with fatty fish like tuna and salmon, cleansing the palate between bites.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A slim flute to preserve bubbles and enhance the lifting of aromas.",
                    decantingRecommendation: "Not required; serve immediately after opening to maintain effervescence."
                ),
                GrapeDetail(
                    name: "Chardonnay (White)",
                    description: "Chardonnay from Chablis, known for its minerality and vibrant acidity, is excellent with sushi, providing a flinty contrast to the oceanic flavors of sushi and enhancing the overall umami experience.",
                    servingTemperature: "Serve at 10-12°C (50-54°F)",
                    glassType: "A medium-sized glass to focus the mineral qualities and crisp acidity.",
                    decantingRecommendation: "Usually not necessary to decant."
                ),
                GrapeDetail(
                    name: "Grüner Veltliner (White)",
                    description: "Grüner Veltliner, with its peppery and crisp nature, matches well with a variety of sushi, including those with avocado or cucumber, offering a spice that complements without dominating.",
                    servingTemperature: "Serve chilled at 8-10°C (46-50°F)",
                    glassType: "A standard white wine glass enhances the peppery and citrus notes.",
                    decantingRecommendation: "No decanting needed."
                )
            ],
            description: "Sushi, with its subtle and varied flavors, requires a careful wine pairing that respects its delicacy and complements its richness. The selected wines range from crisp whites to sparkling options, each chosen to enhance the freshness and flavors of sushi without overpowering them."
        ),
        
        FoodWinePairing(
            food: "Mushroom Dishes",
            grapes: [
                GrapeDetail(
                    name: "Pinot Noir (Red)",
                    description: "Pinot Noir, with its earthy notes and mild tannins, complements the savory flavors of mushrooms, especially in dishes like mushroom risotto or sautéed mushrooms.",
                    servingTemperature: "Serve at 14-16°C (57-61°F)",
                    glassType: "A Burgundy glass, with a wide bowl, is ideal for enhancing its delicate flavors.",
                    decantingRecommendation: "Decanting can open up the flavors, particularly in older vintages."
                ),
                GrapeDetail(
                    name: "Chardonnay (White)",
                    description: "An oaked Chardonnay brings richness and buttery notes that pair beautifully with creamy mushroom sauces or mushroom soup, providing a lush texture that matches the dish's richness.",
                    servingTemperature: "Serve at 12-14°C (54-57°F)",
                    glassType: "Use a wide bowl glass to enhance the rich, creamy texture.",
                    decantingRecommendation: "Usually not necessary to decant."
                ),
                GrapeDetail(
                    name: "Merlot (Red)",
                    description: "Merlot, with its plush, velvety texture and ripe berry flavors, can complement dishes like mushroom burgers or pasta with mushroom sauce, balancing the earthiness without overwhelming.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A large red wine glass to allow the wine to breathe and develop.",
                    decantingRecommendation: "Short decanting is beneficial to soften the wine."
                ),
                GrapeDetail(
                    name: "Syrah (Red)",
                    description: "Syrah, known for its peppery and bold profile, pairs well with hearty mushroom dishes, such as grilled portobello mushrooms or mushroom stews, enhancing the earthy flavors.",
                    servingTemperature: "Serve at 15-18°C (59-64°F)",
                    glassType: "A glass with a wide opening best supports the bold flavors of Syrah.",
                    decantingRecommendation: "Decant for up to an hour to soften the wine and bring forward its complex flavors."
                ),
                GrapeDetail(
                    name: "Nebbiolo (Red)",
                    description: "Nebbiolo, with its high acidity and tannin, is excellent for rich mushroom dishes, particularly those featuring truffles or heavy sauces, as it cuts through the richness and complements the flavors.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A large bowl glass to collect its intense aromas.",
                    decantingRecommendation: "Decant for several hours before serving."
                ),
                GrapeDetail(
                    name: "Sangiovese (Red)",
                    description: "Sangiovese's rustic and acidic profile makes it a suitable match for Italian mushroom dishes like mushroom risotto or pasta with porcini, aligning well with the herbal and earthy notes.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A standard red wine glass works well to appreciate its balance of fruit and savory flavors.",
                    decantingRecommendation: "Decant for about 30 minutes to enhance the flavors."
                )
            ],
            description: "Mushroom dishes, with their earthy and often rich flavors, require wines that offer complementary profiles, such as earthy reds or rich, oaked whites. These wines enhance the natural umami qualities of mushrooms, making each bite more complex and satisfying."
        ),
        
        FoodWinePairing(
            food: "Charcuterie",
            grapes: [
                GrapeDetail(
                    name: "Tempranillo (Red)",
                    description: "Tempranillo, with its leather and cherry notes, pairs well with Spanish charcuterie like chorizo and serrano ham, providing a harmonious blend of fruit and savory flavors.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A standard red wine glass works well.",
                    decantingRecommendation: "Decant for about 30 minutes to enhance the flavors."
                ),
                GrapeDetail(
                    name: "Pinot Noir (Red)",
                    description: "Pinot Noir, with its light body and fruit-forward profile, complements a wide range of charcuterie, especially milder meats like prosciutto, by not overpowering the delicate flavors.",
                    servingTemperature: "Serve at 14-16°C (57-61°F)",
                    glassType: "A Burgundy glass, with a wide bowl, is ideal for enhancing its delicate aromas.",
                    decantingRecommendation: "Decanting can open up the flavors, particularly in older vintages."
                ),
                GrapeDetail(
                    name: "Syrah (Red)",
                    description: "Syrah’s robust structure and hint of spice pair well with spicier charcuterie, like peppered salami, enhancing the rich and complex flavors of the meat.",
                    servingTemperature: "Serve at 15-18°C (59-64°F)",
                    glassType: "A glass with a wide opening best supports the bold flavors of Syrah.",
                    decantingRecommendation: "Decant for up to an hour to soften the wine and bring forward its complex flavors."
                ),
                GrapeDetail(
                    name: "Sangiovese (Red)",
                    description: "Sangiovese's high acidity and rustic nature make it an ideal pairing for Italian charcuterie, particularly with fatty cuts like salami, aligning well with the herbal and earthy notes.",
                    servingTemperature: "Serve at 16-18°C (60-65°F)",
                    glassType: "A standard red wine glass works well to appreciate its balance of fruit and savory flavors.",
                    decantingRecommendation: "Decant for about 30 minutes to enhance the flavors."
                ),
                GrapeDetail(
                    name: "Champagne (Sparkling)",
                    description: "Champagne, with its crisp acidity and bubbles, offers a refreshing contrast to the fattiness of charcuterie, especially with rich meats like pâté or foie gras.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A slim flute to preserve the bubbles and enhance the lifting of aromas.",
                    decantingRecommendation: "Not required; serve immediately after opening to maintain effervescence."
                ),
                GrapeDetail(
                    name: "Riesling (White)",
                    description: "A dry or off-dry Riesling works beautifully with a variety of charcuterie, offering a crisp acidity that cuts through the richness and complements both the meat and any pickled accompaniments.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A tall, slender glass helps to concentrate the wine's aromatic profile.",
                    decantingRecommendation: "Not required, serve chilled."
                )
            ],
            description: "Charcuterie boards, featuring a range of cured meats, require wines that can cut through the fat and complement the rich, savory flavors. The selected wines range from robust reds to crisp whites and sparkling options, each chosen to enhance the charcuterie experience without overwhelming the palate."
        ),
        
        FoodWinePairing(
            food: "Artichokes",
            grapes: [
                GrapeDetail(
                    name: "Sauvignon Blanc (White)",
                    description: "The crisp acidity and herbal notes of Sauvignon Blanc complement the earthy, slightly sweet flavor of artichokes, making it a great match for steamed or grilled artichokes.",
                    servingTemperature: "Serve chilled at 8-10°C (46-50°F)",
                    glassType: "A standard white wine glass will concentrate the vibrant aromatics.",
                    decantingRecommendation: "No decanting needed."
                ),
                GrapeDetail(
                    name: "Vermentino (White)",
                    description: "Vermentino, with its bright acidity and citrusy notes, pairs well with artichokes, especially those prepared in a Mediterranean style with lemon and herbs.",
                    servingTemperature: "Serve at 10-12°C (50-54°F)",
                    glassType: "Use a medium-sized glass to capture its delicate fruit flavors and aromatic complexity.",
                    decantingRecommendation: "Usually not necessary to decant."
                ),
                GrapeDetail(
                    name: "Gruner Veltliner (White)",
                    description: "Gruner Veltliner's peppery and zesty profile makes it a fantastic complement to artichokes, particularly when they're served with vinaigrettes or in a salad.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A tall, slender glass helps to concentrate the wine's aromatic profile.",
                    decantingRecommendation: "Not required, serve chilled."
                ),
                GrapeDetail(
                    name: "Unoaked Chardonnay (White)",
                    description: "Unoaked Chardonnay, with its lighter body and subtle fruitiness, can be a good choice for artichokes, especially if they're incorporated into creamy dishes like artichoke dip or risotto.",
                    servingTemperature: "Serve at 10-12°C (50-54°F)",
                    glassType: "A medium to large glass to allow the mineral qualities and crispness to enhance the dish.",
                    decantingRecommendation: "Not usually required but can be briefly aerated."
                )
            ],
            description: "Artichokes, with their unique flavor and texture, pair well with wines that offer crisp acidity and herbal notes. The selected wines are chosen to enhance the natural flavors of the artichokes without overwhelming them, ensuring a harmonious match with each preparation style."
        ),
        
        FoodWinePairing(
            food: "Spicy Foods",
            grapes: [
                GrapeDetail(
                    name: "Riesling (Off-Dry White)",
                    description: "Off-dry Riesling has a slight sweetness that helps balance the heat of spicy dishes like Thai curry or Indian cuisine, while its high acidity refreshes the palate.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A tall, slender glass helps to concentrate the wine's aromatic profile.",
                    decantingRecommendation: "Not required, serve chilled."
                ),
                GrapeDetail(
                    name: "Gewürztraminer (White)",
                    description: "Gewürztraminer’s exotic floral and spice notes complement spicy foods, particularly dishes with Asian spices, offering a balance of sweetness and acidity.",
                    servingTemperature: "Serve chilled at 8-10°C (46-50°F)",
                    glassType: "A standard white wine glass will concentrate the vibrant aromatics.",
                    decantingRecommendation: "No decanting needed."
                ),
                GrapeDetail(
                    name: "Syrah (Red)",
                    description: "Syrah, with its bold, peppery profile and dark fruit flavors, works well with spicy foods that have a smoky or peppery element, such as spicy grilled meats or dishes with a pepper sauce.",
                    servingTemperature: "Serve at 15-18°C (59-64°F)",
                    glassType: "A glass with a wide opening best supports the bold flavors of Syrah.",
                    decantingRecommendation: "Decant for up to an hour to soften the wine and bring forward its complex flavors."
                ),
                GrapeDetail(
                    name: "Rosé (Dry or Off-Dry)",
                    description: "A dry or slightly off-dry Rosé can handle the heat of spicy dishes, particularly Mediterranean or Middle Eastern cuisine, balancing the flavors without overpowering the dish.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A standard rosé glass, which is similar to a white wine glass, enhances its fruity and floral notes.",
                    decantingRecommendation: "No decanting required; serve chilled."
                ),
                GrapeDetail(
                    name: "Moscato d'Asti (Sparkling White)",
                    description: "With its low alcohol and sweet, fruity flavors, Moscato d'Asti pairs well with spicy dishes, helping to soothe the palate and balance intense spices.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A slim flute to preserve bubbles and enhance the lifting of aromas.",
                    decantingRecommendation: "Not required; serve immediately after opening to maintain effervescence."
                )
            ],
            description: "Spicy foods often require wines that either have a touch of sweetness, lower alcohol content, or bold flavors with spice notes to balance the heat and enhance the flavors of the dish."
        ),
        
        FoodWinePairing(
            food: "Plant-Based Proteins",
            grapes: [
                GrapeDetail(
                    name: "Pinot Noir (Red)",
                    description: "Pinot Noir’s light body and red fruit flavors pair well with plant-based proteins like lentils, tofu, and tempeh, especially when prepared with earthy spices or herbs.",
                    servingTemperature: "Serve at 14-16°C (57-61°F)",
                    glassType: "A Burgundy glass, with a wide bowl, is ideal for enhancing its delicate flavors.",
                    decantingRecommendation: "Decanting can open up the flavors, particularly in older vintages."
                ),
                GrapeDetail(
                    name: "Sauvignon Blanc (White)",
                    description: "The crisp acidity and herbal notes of Sauvignon Blanc complement a variety of plant-based proteins, particularly in fresh salads or dishes with a lot of herbs.",
                    servingTemperature: "Serve chilled at 8-10°C (46-50°F)",
                    glassType: "A standard white wine glass will concentrate the vibrant aromatics.",
                    decantingRecommendation: "No decanting needed."
                ),
                GrapeDetail(
                    name: "Chenin Blanc (White)",
                    description: "Chenin Blanc, with its balance of acidity and slight sweetness, is versatile enough to pair with a variety of plant-based proteins, particularly those in mildly spiced or savory dishes.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A tall, slender glass helps to emphasize the wine's aromatic profile.",
                    decantingRecommendation: "Not required, serve chilled."
                ),
                GrapeDetail(
                    name: "Zinfandel (Red)",
                    description: "Zinfandel’s bold fruit and spice profile can complement plant-based proteins with smoky or barbecue flavors, such as grilled vegetables or tempeh skewers.",
                    servingTemperature: "Serve at 15-18°C (59-64°F)",
                    glassType: "A robust glass to support its bold flavors and spicy undertones.",
                    decantingRecommendation: "Decant for about 30 minutes to enhance the flavors and soften the tannins."
                )
            ],
            description: "Plant-based proteins, with their versatile flavors and textures, pair well with wines that offer a range of profiles from light and crisp whites to bold, fruity reds."
        ),
        
        FoodWinePairing(
            food: "Fruit-Based Desserts",
            grapes: [
                GrapeDetail(
                    name: "Moscato d'Asti (Sparkling White)",
                    description: "Moscato d'Asti, with its light sweetness and low alcohol, is perfect for pairing with fruit-based desserts like tarts and fruit salads, enhancing the fresh fruit flavors.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A slim flute to preserve bubbles and enhance the lifting of aromas.",
                    decantingRecommendation: "Not required; serve immediately after opening to maintain effervescence."
                ),
                GrapeDetail(
                    name: "Late-Harvest Riesling (White)",
                    description: "Late-harvest Riesling, with its rich, honeyed sweetness and balanced acidity, pairs beautifully with fruit pies or cobblers, providing a sweet yet refreshing finish.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A tall, slender glass helps to concentrate the wine's aromatic profile.",
                    decantingRecommendation: "Not required, serve chilled."
                ),
                GrapeDetail(
                    name: "Brachetto d’Acqui (Red Sparkling)",
                    description: "Brachetto d’Acqui, a light sparkling red wine, pairs well with berry-based desserts, offering a sweet, floral complement to dishes like strawberry shortcake or raspberry sorbet.",
                    servingTemperature: "Serve well-chilled at 6-8°C (43-46°F)",
                    glassType: "A standard flute glass to enhance the bubbles and fruity aromas.",
                    decantingRecommendation: "No decanting needed; serve immediately after opening to preserve bubbles."
                ),
                GrapeDetail(
                    name: "Sauternes (White Dessert Wine)",
                    description: "Sauternes, with its rich, luscious sweetness and notes of apricot and honey, pairs exceptionally well with baked fruit desserts, such as apple crisp or peach cobbler.",
                    servingTemperature: "Serve well-chilled at 8-10°C (46-50°F)",
                    glassType: "A small dessert wine glass helps focus the complex, rich flavors.",
                    decantingRecommendation: "Not required, but slight aeration can enhance the aromas."
                )
            ],
            description: "Fruit-based desserts, with their natural sweetness and acidity, pair well with wines that complement their flavors without overwhelming them. The selected wines offer a balance of sweetness, acidity, and refreshing qualities to enhance the dessert experience."
        )
    ]



