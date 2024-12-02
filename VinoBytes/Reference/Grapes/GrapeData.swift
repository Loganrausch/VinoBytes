//
//  GrapeData.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/2/24.
//

import Foundation

struct GrapeData {
    static let redGrapes: [Grape] = [
    

        Grape(
            name: "Agiorgitiko",
            details: GrapeDetails(
                origin: "Agiorgitiko, also known as Saint George, is a native grape of Greece, primarily grown in the Nemea region of the Peloponnese. It has a long history and is named after Saint George, the patron saint of the region.",
                countries: Countries(
                    primary: [
                        "Greece: Predominantly in the Nemea region of the Peloponnese."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep ruby red.",
                    aroma: "Red fruit aromas, such as cherry, raspberry, and strawberry, with hints of spices, herbs, and sometimes floral notes like violets.",
                    palate: "Medium to full-bodied with balanced acidity and moderate tannins. Flavors of red berries, plums, and a touch of black pepper and vanilla from oak aging.",
                    finish: "Smooth, with a lingering fruity and spicy aftertaste."
                ),
               
                wineStyles: [
                    "Red Wines: Ranges from fresh, young, and fruity wines to more complex, oak-aged versions.\n",
                    "Rosé Wines: Produced in a lighter style with fresh red fruit flavors and crisp acidity.\n",
                    "Sweet Wines: Often produced from late-harvested or sun-dried grapes, offering concentrated flavors of dried fruits and honey with balanced acidity."
                ],
               
                grapeSummary: "Agiorgitiko is a versatile grape, capable of producing a wide range of wine styles, from refreshing rosés to concentrated sweet wines. It is often compared to Merlot for its versatility and approachable style."
            )
        ),

        Grape(
            name: "Aglianico",
            details: GrapeDetails(
                origin: "Aglianico is an ancient grape variety believed to have been introduced by the Greeks to southern Italy. It thrives in volcanic soils and at high altitudes, particularly in Campania and Basilicata, where cooler temperatures allow for slow ripening and balanced wines.",
                countries: Countries(
                    primary: [
                        "Italy: Predominantly in the regions of Campania and Basilicata."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep garnet red.",
                    aroma: "Intense aromas of dark fruits such as blackberry and plum, with hints of smoke, cured meat, and savory herbs like oregano.",
                    palate: "Full-bodied with high acidity and firm tannins that soften with age. Flavors of black cherry, plum, and smoke, with notes of tobacco and baking spices.",
                    finish: "Long and complex, with a persistent and structured finish."
                ),
               
                wineStyles: [
                    "Red Wines: Typically produces full-bodied, age-worthy reds with high acidity and tannins.\n",
                    "Rosé Wines: Occasionally crafted in a vibrant ‘Rosato’ style, with fresh red fruit flavors and bright acidity."
                ],
               
                grapeSummary: "Aglianico is a noble grape variety of southern Italy, known for producing robust, age-worthy wines. Its high acidity and tannins make it ideal for long aging, and it is often compared to Nebbiolo for its structure and complexity. Aglianico is the key grape in prestigious appellations such as Taurasi DOCG in Campania and Aglianico del Vulture DOCG in Basilicata, where it produces some of Italy’s finest age-worthy wines."
            )
        ),

        Grape(
            name: "Alicante Bouschet",
            details: GrapeDetails(
                origin: "Alicante Bouschet is a teinturier grape variety created by Henri Bouschet in France in 1866 by crossing Petit Bouschet with Grenache. It is known for its deep color and high anthocyanin content.",
                countries: Countries(
                    primary: [
                        "Portugal: Widely grown in the Alentejo region, where it is a key component in many red blends and varietal wines.\n",
                        "Spain: Known as Garnacha Tintorera, especially in regions like Castilla-La Mancha, where it adds color and structure to various blends.\n",
                        "France: Still cultivated in the Languedoc, where it is used in red blends."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep ruby to purple.",
                    aroma: "Aromas of dark berries, plum, and cherry, with hints of spices, earth, and tobacco.",
                    palate: "Full-bodied with firm tannins and balanced acidity. Flavors of black fruits, such as blackberry and black cherry, with notes of pepper and chocolate.",
                    finish: "Long and robust with lingering fruit and spice notes."
                ),
               
                wineStyles: [
                    "Red Wines: Frequently used in blends to add color, body, and complexity, ranging from entry-level to high-quality wines.",
                    "Varietal Wines: Produces rich, dark wines with moderate aging potential."
                ],
               
                grapeSummary: "Alicante Bouschet is one of the few grape varieties with red flesh, making it unique in its ability to produce deeply colored wines. It is valued for its versatility in blending and its contribution to the structure and color of wines. It is highly resistant to drought, thriving in warm, dry climates, which makes it particularly important in regions facing climate challenges."
            )
        ),


Grape(
    name: "Baga",
    details: GrapeDetails(
                origin: "Baga is a native grape variety from Portugal, primarily grown in the Bairrada region. It is a charismatic grape known for its rusticity and high acidity.",
                countries: Countries(
                    primary: [
                        "Portugal: Especially prevalent in the Bairrada and Dão regions."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep ruby to purple.",
                    aroma: "Aromas of blackberry, black currant, dried cherry, cocoa, and tar.",
                    palate: "Medium to full-bodied with high tannins and high acidity. Flavors of black fruits, with earthy and smoky notes. Softens with age and develops notes of leather, tobacco, and dried fruits.",
                    finish: "Long and robust with lingering fruit and spice notes."
                ),
                
                wineStyles: [
                    "Red Wines: Known for producing tannic, age-worthy wines with significant structure.\n",
                    "Rosé Wines: Can produce vibrant and complex sparkling rosé.\n",
                    "Sparkling Wines: Commonly used in the production of Bairrada’s traditional sparkling wines, known for their crisp acidity and complex flavors."
                ],
               
                grapeSummary: "Baga is often compared to Pinot Noir and Nebbiolo due to its ability to reflect the terroir and its high acidity and tannin structure. It is essential in the production of Bairrada's signature sparkling and red wines. Baga thrives in cool coastal climates, particularly in Bairrada, but requires careful vineyard management due to its tight clusters and susceptibility to rot."
            )
        ),

Grape(
    name: "Barbera",
    details: GrapeDetails(
        origin: "Barbera is a native grape of Piedmont, Italy, with a history dating back to the 13th century. It is one of Italy’s most widely planted red grape varieties.",
        countries: Countries(
            primary: [
                "Italy: Predominantly in Piedmont, Emilia-Romagna, Lombardy, and other central and northern regions.\n",
                "Other: Found in California and Argentina, where it produces vibrant, fruit-driven wines."
            ]
        ),
        tastingNotes: TastingNotes(
            color: "Deep ruby to purple.",
            aroma: "Aromas of red cherry, blackberry, and plum, with hints of dried herbs, black pepper, and licorice.",
            palate: "Medium to full-bodied with low to moderate tannins and high acidity. Flavors of tart cherry, blackberry, and dried herbs, often complemented by spice and vanilla in oak-aged styles.",
            finish: "Bright and zesty with a lingering acidity and fruit-forward finish."
        ),
      
        wineStyles: [
            "Red Wines: Known for producing fresh, fruit-forward wines as well as more complex, oak-aged styles that can be both youthful and age-worthy."
        ],
       
        grapeSummary: "Barbera is often overshadowed by Nebbiolo in Piedmont but is beloved for its versatility and approachable style. It is most notable in Barbera d’Asti and Barbera d’Alba, where it produces some of the finest examples of this variety, ranging from youthful and vibrant to complex and age-worthy. Its high acidity makes it a perfect food wine."
    )
 
),



Grape(
    name: "Blaufränkisch",
    details: GrapeDetails(
        origin: "Blaufränkisch, also known as Lemberger and Kékfrankos, is a black-skinned grape variety primarily grown in Austria and Hungary. It is believed to have originated in Central Europe and is known for producing rich, spicy wines.",
        countries: Countries(
            primary: [
                "Austria: Particularly in Burgenland and Neusiedlersee regions.\n",
                "Hungary: Known as Kékfrankos, especially in Sopron and Eger.\n",
                "Germany: Known as Lemberger, especially in Württemberg."
            ]
        ),
        tastingNotes: TastingNotes(
            color: "Deep ruby to purple.",
            aroma: "Aromas of blackberry, black cherry, and dark chocolate with notes of allspice and pepper.",
            palate: "Medium-bodied with medium-high tannins and vibrant acidity, which can be tart in youth but mellows with age. Flavors of black fruits, pepper, and earthy undertones.",
            finish: "Long and spicy with balanced acidity and firm tannins."
        ),
      
        wineStyles: [
            "Red Wines: Produces both fresh, fruity wines and more complex, age-worthy wines that develop notes of leather, dried herbs, and tobacco with time."
        ],
      
        grapeSummary: "Blaufränkisch is notable for its ability to reflect terroir, producing a wide range of wine styles from different regions. It is often compared to Syrah for its spicy character and to Pinot Noir for its ability to age gracefully. Blaufränkisch thrives in cool to moderate climates, where it retains its vibrant acidity and develops complex flavors."
    )
    
),
    
Grape(
        name: "Bobal",
        details: GrapeDetails(
            origin: "Bobal is indigenous to the Utiel-Requena region in Valencia, Spain, where it is one of the most widely planted red grape varieties.",
            countries: Countries(
                primary: [
                    "Spain: Predominantly in Valencia, particularly in Utiel-Requena. Also grown in La Mancha and Manchuela, where it contributes to robust red blends and varietal wines."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Deep, dark cherry red.",
                aroma: "Aromas of ripe red fruits like plum and blackberry, with hints of earthiness and herbal touches.",
                palate: "Full-bodied with robust tannins and high acidity, offering flavors of dark fruit, licorice, and sometimes leather.",
                finish: "Long and persistent, often with a slightly bitter finish that is characteristic of the variety."
            ),
            
            wineStyles: [
                "Red Wines: Typically robust and tannic, often aged in oak to develop complexity with notes of vanilla, spice, and cocoa.\n",
                "Rosé Wines: Fresh, aromatic, and fruit-forward, increasingly popular for their vibrant flavors and refreshing acidity."
            ],
            
            grapeSummary: "Bobal is known for its deep color and ability to produce both full-bodied red wines and fresh rosés. It is highly drought-resistant, making it well-suited to the dry, hot climate of central Spain, where it thrives despite challenging conditions."
        )
    ),

        Grape(
            name: "Bonarda",
            details: GrapeDetails(
                origin: "Bonarda in Argentina refers to Douce Noir, a grape variety originally from the Savoie region in France. It is now predominantly found in Argentina, where it is the second most planted red grape variety after Malbec. It is important to note that the name 'Bonarda' is also used in Italy to refer to different grape varieties, such as Bonarda Piemontese and Bonarda Novarese (Uva Rara), which are distinct from the Bonarda in Argentina.",
                countries: Countries(
                    primary: [
                        "Argentina: Widely planted across Mendoza and San Juan.\n",
                        "California: Known as Charbono, where it produces fruit-forward wines."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Medium ruby red.",
                    aroma: "Aromas of cherry, plum, and fig, with floral and sometimes earthy notes.",
                    palate: "Medium-bodied with moderate acidity and smooth tannins, featuring fruity flavors with occasional spicy or earthy undertones.",
                    finish: "Medium-length with fruity and sometimes floral or earthy echoes."
                ),
               
                wineStyles: [
                    "Red Wines: Typically fruity and approachable, often vinified to be enjoyed young, but also crafted in oak-aged styles that develop over time."
                ],
                
                grapeSummary: "Bonarda, known as Douce Noir or Charbono in other regions, is valued for its fruit-forward, accessible wines that are best enjoyed while young. It plays a significant role in Argentina's red wine production, particularly in the Mendoza and San Juan regions. Bonarda thrives in warm climates and high-altitude vineyards, contributing to its prominence in Argentina’s red wine production."
            )
        ),

Grape(
            name: "Brachetto",
            details: GrapeDetails(
                origin: "Brachetto is an ancient grape variety native to the Piedmont region in Italy, particularly known for its sweet, aromatic wines.",
                countries: Countries(
                    primary: [
                        "Italy: Primarily in Piedmont, especially in the Acqui Terme area."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Light ruby to bright red.",
                    aroma: "Strong floral aromas of rose, along with red fruits like strawberry and raspberry, and hints of spice.",
                    palate: "Light-bodied, often sweet or semi-sweet, with pronounced fruitiness and low tannins.",
                    finish: "Refreshing and aromatic, emphasizing the floral and fruity characteristics."
                ),
                
                wineStyles: [
                    "Sweet Red Wines: Often frizzante (lightly sparkling) and sweet, known as Brachetto d’Acqui."
                ],
               
                grapeSummary: "Brachetto is best known for its expression in the Brachetto d’Acqui DOCG, where it is crafted into sweet, lightly sparkling wines that are a hallmark of Piedmont. Typically served chilled, Brachetto pairs beautifully with desserts such as chocolate or fruit-based pastries."
            )
        ),
        
Grape(
            name: "Cabernet Franc",
            details: GrapeDetails(
                origin: "Originating from the Bordeaux region of France, Cabernet Franc is a key variety also found in the Loire Valley where it shines in appellations such as Chinon, Bourgueil, and Saumur. In Bordeaux, it is a key component of blends, particularly in the Right Bank regions of Saint-Émilion and Pomerol, where it contributes aromatic complexity and structure. It is a parent grape to Cabernet Sauvignon and Merlot.",
                countries: Countries(
                    primary: [
                        "France: Predominantly in Bordeaux and Loire Valley.\n",
                        "Italy: Increasingly popular in northern regions.\n",
                        "USA: Widely planted in California, Washington State, and Virginia.\n",
                        "Argentina: Emerging as a varietal wine in cooler areas like Mendoza."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Medium red with lighter tints compared to Cabernet Sauvignon.",
                    aroma: "Aromas of raspberry, green bell pepper, cassis, and sometimes tobacco and graphite.",
                    palate: "Medium-bodied with bright acidity and moderate tannins, flavors of red fruits, herbaceous notes, and a distinct peppery profile.",
                    finish: "Elegant and persistent with herbal and fruity nuances."
                ),
               
                wineStyles: [
                    "Red Wines: Often blended but also makes varietal wines, appreciated for their aromatic complexity."
                ],
                
                grapeSummary: "Cabernet Franc is appreciated for its finesse, aromatic complexity, and ability to age gracefully. It serves both as a blending grape and as a standalone varietal in many regions."
            )
        ),

        
Grape(
            name: "Cabernet Sauvignon",
            details: GrapeDetails(
                origin: "Cabernet Sauvignon, originating from the Bordeaux region of France, has transcended its regional beginnings to become one of the most celebrated and widely planted red wine grape varieties worldwide. Its rise to fame is attributed to its prominent role in Bordeaux blends, where it contributes structure, tannins, and longevity. Over centuries, it has adapted to a variety of climates and terroirs, making it a versatile grape that has helped to establish and enhance the reputation of emerging wine regions across the globe. This includes the acclaimed vineyards of Napa Valley in California, the diverse terrains of Chile and Australia, the historic estates of South Africa, and as a crucial component in Italy’s Super Tuscans, where it adds depth and complexity to these innovative blends. Cabernet Sauvignon is a natural cross between Cabernet Franc and Sauvignon Blanc",
                countries: Countries(
                    primary: [
                        "France: A staple in Bordeaux blends.\n",
                        "USA: Dominant in California, especially Napa Valley.\n",
                        "Italy: Integral to Super Tuscans alongside traditional regions.\n",
                        "Chile, Australia, South Africa: Extensively planted.\n",
                        "Other: Also grown in Argentina, Spain, and New Zealand. "
                        
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep ruby to almost black.",
                    aroma: "Black cherry, blackcurrant, and cedar with hints of spice, mint, and tobacco.",
                    palate: "Full-bodied with firm tannins and acidity, robust flavors of dark fruits and oak influence.",
                    finish: "Long and persistent with layered complexity."
                ),
              
                wineStyles: [
                    "Red Wines: Typically powerful and age-worthy, often requiring time to reach maturity, but also crafted in more approachable, fruit-forward styles in New World regions."
                ],
                
                grapeSummary: "Cabernet Sauvignon is renowned for its depth, structure, and capacity to produce complex wines with exceptional aging potential. Celebrated for its robust tannins and rich flavors of dark fruits and spices, it has played a pivotal role in crafting some of the world’s most prestigious wines. The grape’s adaptability to different climates and soils, combined with its consistent quality across both Old and New World wine regions, has solidified its status as a cornerstone of the global wine industry. Its influence extends beyond the vineyard, shaping winemaking techniques and consumer preferences around the world."
            )
        ),

        
        Grape(
            name: "Cannonau",
            details: GrapeDetails(
                origin: "While Cannonau is genetically identical to Grenache, it is debated whether it is native to Sardinia or was introduced from Spain during Aragonese rule.",
                countries: Countries(
                    primary: [
                        "Italy: Almost exclusively cultivated in Sardinia."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Medium to deep red.",
                    aroma: "Aromas of ripe red fruits like cherry and plum, with hints of spice, tobacco, and a touch of earthiness.",
                    palate: "Medium to full-bodied with pronounced tannins and moderate acidity. Flavors include red fruit, spice, and herbal notes.",
                    finish: "Warm and persistent, with a spicy and sometimes smoky aftertaste."
                ),
               
                wineStyles: [
                    "Red Wines: Typically robust and well-structured, suitable for aging, though lighter, fresher styles are produced./n",
                    "Rosé Wines: Produced in vibrant, fresh styles with delicate red fruit flavors and a hint of spice."
                ],
               
                grapeSummary: "Cannonau is celebrated for its bold flavors and is a staple in Sardinian culture, often associated with longevity of life among the island’s inhabitants. As the Sardinian expression of Grenache, Cannonau shares a connection with this globally cultivated variety but retains a unique identity tied to Sardinian terroir and culture."
            )
        ),
        
        
        // Carignan Details
        Grape(
            name: "Carignan",
            details: GrapeDetails(
                origin: "Carignan is believed to have originated in Aragón, Spain, before becoming extensively planted in the Languedoc-Roussillon region in France.",
                countries: Countries(
                    primary: [
                        "France: Widely found in Languedoc-Roussillon, as well as Provence and Corsica.\n",
                        "Spain: Known as Cariñena in Aragón, where it is historically significant and shares its name with a DO (Denominación de Origen).\n",
                        "Italy: Grown in Sardinia, primarily for DOC wines like Carignano del Sulcis."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep, dark red.",
                    aroma: "Aromas of red and black fruits, spice, hints of tar and leather, and occasionally herbal notes like garrigue.",
                    palate: "High acidity and tannins with flavors of dark berries, pepper, earthy notes, and hints of Mediterranean herbs.",
                    finish: "Robust and tannic, often with a rustic character, though old vines can yield more balance and complexity."
                ),
                wineStyles: [
                    "Red Wines: Often used in blends, adding color, acidity, and tannin structure. Occasionally vinified as a single-varietal wine, especially from old vines.",
                    "Rosé Wines: Also made into deeply colored rosés."
                ],
                grapeSummary: "Carignan is known for its ability to produce deeply colored, robust wines. While often used in blends for complexity and structure, old vines are prized for creating high-quality, balanced wines with depth."
            )
        ),

    
        Grape(
            name: "Carmenere",
            details: GrapeDetails(
                origin: "Originally from Bordeaux, France, Carmenere was one of the original six Bordeaux varieties. It largely disappeared from France due to phylloxera but was rediscovered in Chile in the 1990s, where it has become a signature grape variety.",
                countries: Countries(
                    primary: [
                        "Chile: Extensively planted throughout the Central Valley, particularly thriving in regions like Colchagua Valley and Maipo Valley.\n",
                        "France: Rarely grown in Bordeaux today, with only small quantities remaining."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep red with purple hues.",
                    aroma: "Complex aromas of red and dark fruits like raspberry and blueberry, with distinctive notes of spice, coffee, green bell pepper, and occasionally black olive or soy sauce.",
                    palate: "Medium to full-bodied with soft tannins and moderate acidity, offering flavors of dark chocolate, tobacco, leather, and ripe fruit.",
                    finish: "Smooth with a persistent, spicy finish."
                ),
                wineStyles: [
                    "Red Wines: Often made as a single varietal, showcasing its unique profile. Also used in blends, particularly with Cabernet Sauvignon and Merlot."
                ],
                grapeSummary: "Carmenere is celebrated for its rich, smooth character and complex spice and fruit flavors. Once nearly extinct, it was rediscovered in Chile, where it thrives in the warm, sunny climate of the Central Valley, becoming a flagship grape for the country."
            )
        ),

        // Castelão Details
        Grape(
            name: "Castelão",
            details: GrapeDetails(
                origin: "Native to Portugal, Castelão is one of the country’s most widely planted red grape varieties, thriving in warm, dry regions such as Ribatejo and Península de Setúbal.",
                countries: Countries(
                    primary: [
                        "Portugal: Widely planted across the southern regions, including Ribatejo, Península de Setúbal, and Alentejo."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Ruby red.",
                    aroma: "Aromas of red fruits like strawberries and plums, with additional notes of leather, herbs, dried figs, and licorice.",
                    palate: "Medium-bodied with moderate acidity and tannins, offering a mix of fruity, earthy, and occasionally gamey flavors.",
                    finish: "Pleasantly rustic with a fruity and slightly spicy finish."
                ),
                wineStyles: [
                    "Red Wines: Often used in blends to add structure and fruitiness, but also produces varietal wines that balance rusticity and elegance, particularly from old vines in regions like Setúbal."
                ],
                grapeSummary: "Castelão is a versatile and adaptable grape variety, known for its drought resistance and ability to produce rustic yet approachable wines with fruit-forward and earthy characteristics. It thrives in Portugal’s warm, southern regions."
            )
        ),
        // Cinsault Details
        Grape(
            name: "Cinsault",
            details: GrapeDetails(
                origin: "Cinsault is a heat-tolerant grape variety believed to have originated in the Languedoc region of southern France. It is widely used in blends with Grenache and Syrah for its aromatics and acidity.",
                countries: Countries(
                    primary: [
                        "France: Common in the Languedoc-Roussillon and Provence regions, and occasionally used in Rhône blends.\n",
                        "North Africa: Cultivated in Morocco and Algeria, where it is used in blends and sometimes as a single varietal.\n",
                        "South Africa: Widely used in blends, for making rosé wines, and as a parent of Pinotage (a cross with Pinot Noir)."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Light red, often with a pale hue.",
                    aroma: "Aromatic with notes of red berries, cherry, floral undertones, and occasionally a hint of spice.",
                    palate: "Light to medium-bodied, featuring high acidity and fresh, fruity flavors with minimal tannins and a touch of earthiness.",
                    finish: "Refreshing and straightforward with a smooth, clean finish."
                ),
                wineStyles: [
                    "Red Wines: Often blended for its aromatics and acidity but occasionally vinified as a light, fresh red wine on its own.\n",
                    "Rosé Wines: Frequently used to produce light, aromatic rosés."
                ],
                grapeSummary: "Cinsault is favored for its ability to add freshness and aromatic lift to blends, its drought resistance, and its versatility in producing elegant rosé wines and fresh, light reds in hot climates."
            )
        ),
        // Corvina Details
        Grape(
            name: "Corvina",
            details: GrapeDetails(
                origin: "Corvina is native to the Veneto region of Italy, thriving in the hilly, well-drained soils that characterize the area. It is notably used in the production of Valpolicella and Amarone wines.",
                countries: Countries(
                    primary: [
                        "Italy: Predominantly in the Veneto region, especially in Valpolicella, Amarone, and Recioto wines."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Medium ruby red.",
                    aroma: "Notes of sour cherry, almond, and spices, with hints of dried fruits such as figs and prunes in Amarone styles. Herbal nuances like bay leaf or rosemary are also common.",
                    palate: "Medium-bodied with moderate to high acidity and light to medium tannins, offering flavors of cherry, red berries, and subtle herbal notes, with a smooth texture.",
                    finish: "Elegant with a slightly bitter almond note, particularly in lighter Valpolicella styles, and a rich, lingering finish in Amarone."
                ),
                wineStyles: [
                    "Red Wines: Ranges from the light, crisp Valpolicella to the rich, concentrated Amarone, often blended with Rondinella and Molinara.",
                    "Recioto: Sweet wines made from semi-dried grapes, offering intense, raisined flavors."
                ],
                grapeSummary: "Corvina is best known for its role in creating the distinct styles of red wines from the Veneto region. It is appreciated for its bright acidity, fresh cherry flavors, and ability to produce wines ranging from light and vibrant to rich and raisined, as seen in Amarone and Recioto."
            )
        ),

        // Corvinone Details
        Grape(
            name: "Corvinone",
            details: GrapeDetails(
                origin: "Corvinone, like Corvina, is native to the Veneto region in Italy. Often mistaken for a clone of Corvina, it is a distinct variety that plays a key role in Valpolicella blends.",
                countries: Countries(
                    primary: [
                        "Italy: Predominantly in the Veneto region, especially in the Valpolicella area."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep ruby red.",
                    aroma: "Richer and more intense than Corvina, with aromas of dark cherry, blackberry, and spice, along with nuances of dried fruits such as figs and raisins in Amarone styles.",
                    palate: "Fuller-bodied than Corvina, with strong tannins and acidity, offering deep berry flavors, chocolate, and hints of tobacco and clove.",
                    finish: "Robust and lingering, particularly noted in the dried grape styles like Amarone, where it adds depth and complexity."
                ),
                wineStyles: [
                    "Red Wines: Commonly used in Valpolicella blends, enhancing structure and depth, particularly in Amarone and Ripasso wines. Rarely vinified as a single varietal."
                ],
                grapeSummary: "Corvinone is valued for its contribution to the body and structure of Veneto's prestigious red wines. Its large berries and thick skins make it ideal for the appassimento process, adding complexity, richness, and aging potential, especially in Amarone."
            )
        ),
        // Counoise Details
        Grape(
            name: "Counoise",
            details: GrapeDetails(
                origin: "Counoise is a lesser-known grape variety from the Rhône region of France. It is one of the 13 permitted varieties in Châteauneuf-du-Pape and is valued for its ability to add freshness and balance to blends.",
                countries: Countries(
                    primary: [
                        "France: Primarily found in the Rhône Valley, especially in Châteauneuf-du-Pape. It is also occasionally seen in blends from the Languedoc.\n",
                        "United States: Small plantings exist in California, where it is sometimes vinified as a single varietal."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Medium garnet.",
                    aroma: "Aromatic with notes of fresh red berries, spice, violet, pepper, and occasionally herbal or earthy undertones.",
                    palate: "Light to medium-bodied, with lively acidity and moderate tannins, offering flavors of cherry, raspberry, and a peppery spice.",
                    finish: "Bright and fruity with a spicy and slightly herbal undertone."
                ),
                wineStyles: [
                    "Red Wines: Mostly used in blends, contributing freshness, acidity, and aromatic complexity. Occasionally vinified as a single varietal to highlight its unique profile."
                ],
                grapeSummary: "Counoise is appreciated for its contribution to the aromatic complexity and freshness in Rhône blends, particularly in Châteauneuf-du-Pape. Its naturally high acidity makes it a valuable balancing component in warm climates."
            )
        ),

        // Dolcetto Details
        Grape(
            name: "Dolcetto",
            details: GrapeDetails(
                origin: "Dolcetto is a native Italian grape primarily grown in the Piedmont region. Its name translates to 'little sweet one,' though its wines are typically dry.",
                countries: Countries(
                    primary: [
                        "Italy: Predominantly in the Piedmont region, especially in areas like Dogliani, Alba, and Asti.\n",
                        "United States: Small plantings exist in California, where it is used for producing fruit-forward red wines.",
                        "Australia: Occasionally grown for boutique production."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep ruby red.",
                    aroma: "Rich aromas of black cherry, plum, and licorice, with additional notes of chocolate and occasional hints of dried herbs or underbrush.",
                    palate: "Medium-bodied with low acidity and moderate to high tannins, showcasing flavors of dark fruits, licorice, and a slight bitter almond note.",
                    finish: "Smooth with a characteristically dry, slightly bitter finish."
                ),
                wineStyles: [
                    "Red Wines: Generally consumed young for their fruitiness and approachability, though higher-quality expressions, particularly from Dogliani, can benefit from short-term aging."
                ],
                grapeSummary: "Dolcetto is cherished for its early maturation and the ability to produce soft, fruit-driven wines that are best enjoyed young. It serves as an approachable alternative to the more tannic Nebbiolo wines of Piedmont."
            )
        ),
        Grape(
            name: "Dornfelder",
            details: GrapeDetails(
                origin: "Dornfelder is a relatively new grape variety developed in 1955 by August Herold in Germany. It is a cross between Helfensteiner and Heroldrebe, created to produce deeply colored and flavorful red wines.",
                countries: Countries(
                    primary: [
                        "Germany: Widely planted across Pfalz and Rheinhessen, with notable presence in other regions.\n",
                        "England: Small plantings exist, valued for its early ripening and cold tolerance."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep, dark red, almost opaque.",
                    aroma: "Intense aromas of dark fruits such as blackberry and plum, often complemented by hints of oak, spice, and occasionally floral notes like violet.",
                    palate: "Medium to full-bodied with moderate acidity and soft tannins, offering rich flavors of dark berries, chocolate, and subtle herbal or spicy undertones.",
                    finish: "Smooth and fruit-forward with a lingering sweet spice."
                ),
                wineStyles: [
                    "Red Wines: Typically made in a fruit-driven, approachable style, often aged in oak to enhance complexity.\n",
                    "Off-Dry and Semi-Sweet Wines: Popular in Germany, showcasing Dornfelder’s natural fruitiness and soft tannins."
                ],
                grapeSummary: "Dornfelder is known for its deep color and robust flavors, offering an accessible yet rich red wine option from Germany. Its versatility allows for both dry and off-dry styles, making it a popular choice domestically and increasingly appreciated internationally."
            )
        ),

        // Frappato Details
        Grape(
            name: "Frappato",
            details: GrapeDetails(
                origin: "Frappato is an indigenous grape variety from Sicily, believed to date back to the 17th century. It is closely associated with the Vittoria region, where it plays a key role in Sicily’s only DOCG wine, Cerasuolo di Vittoria.",
                countries: Countries(
                    primary: [
                        "Italy: Primarily grown in Sicily, particularly in the Vittoria area, but increasingly planted in other parts of the island."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Light ruby red with a translucent quality.",
                    aroma: "Bright aromas of red cherry, strawberry, and floral notes, complemented by herbal nuances such as Mediterranean scrub and subtle earthy undertones.",
                    palate: "Light-bodied with vibrant acidity, offering fresh red fruit flavors, a hint of savory herbs, and a delicate minerality.",
                    finish: "Refreshing and fruity with a clean, crisp finish."
                ),
                wineStyles: [
                    "Red Wines: Typically produced as a varietal wine, showcasing its aromatic freshness, or blended with Nero d’Avola in Cerasuolo di Vittoria.\n",
                    "Rosé Wines: Occasionally made into light, aromatic rosés."
                ],
                grapeSummary: "Frappato is celebrated for its bright, expressive fruit character and vibrant acidity. It adds freshness and aromatics to blends like Cerasuolo di Vittoria and is increasingly appreciated as a single-varietal wine, embodying the distinctive elegance of Sicilian viticulture."
            )
        ),
        // Gamay Details
        Grape(
            name: "Gamay",
            details: GrapeDetails(
                origin: "Gamay, predominantly associated with Beaujolais, France, is a light-bodied red wine grape that originally hails from the Burgundy region. Although Beaujolais is geographically part of Burgundy, its distinct style often leads enthusiasts to consider it separately. It was first noted in historical records around the 15th century. However, due to its high yield and the resulting lower quality of wine compared to Pinot Noir, it was less favored by the Duke of Burgundy, Philip the Bold. He famously ordered the uprooting of Gamay vines from the Côte d'Or in 1395, calling it 'a very bad and disloyal plant.' As a result, Gamay became more concentrated in the Beaujolais area, south of the main Burgundy region, where it thrives on granite-based soils and produces the distinctively fruity and light wines that the area is known for today.",
                countries: Countries(
                    primary: [
                        "France: Predominantly in Beaujolais.\n",
                        "Switzerland: Small plantings, where it is often blended with Pinot Noir.\n",
                        "United States: Found in regions like Oregon and California."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Light to medium ruby red.",
                    aroma: "Aromas of red fruits like cherries, raspberries, and strawberries, with hints of banana, violets, and subtle spices.",
                    palate: "Light-bodied with high acidity and low tannins, featuring juicy red fruit flavors, floral nuances, and a fresh, vibrant finish.",
                    finish: "Refreshing and fruity, with a smooth texture and a hint of minerality in more structured styles."
                ),
                wineStyles: [
                    "Red Wines: Primarily produced as light, fruity reds. Beaujolais Nouveau is a popular early-release style, while Cru Beaujolais wines (e.g., Morgon, Fleurie, Moulin-à-Vent) are more complex and age-worthy.\n",
                    "Rosé Wines: Occasionally made into light and refreshing rosés."
                ],
                grapeSummary: "Gamay is celebrated for its bright, fruit-driven profile and versatility, producing wines that range from the youthful and vibrant Beaujolais Nouveau to terroir-driven Cru Beaujolais, which can age gracefully."
            )
        ),
        
        Grape(
            name: "Graciano",
            details: GrapeDetails(
                origin: "Graciano is a Spanish grape variety known for its deep color and aromatic complexity, primarily grown in the Rioja and Navarra regions. It is a low-yielding variety, which contributed to its historical decline, but its quality has led to a resurgence in modern viticulture.",
                countries: Countries(
                    primary: [
                        "Spain: Mainly in Rioja and Navarra, with some plantings in the Basque Country and La Mancha.\n",
                        "Australia: Gaining attention for its ability to thrive in warm climates.\n",
                        "United States: Found in California and Texas, where it is used in both blends and single-varietal wines.\n",
                        "Portugal: Small plantings used in experimental blends."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep, vibrant purple.",
                    aroma: "Intense aromas of black fruits, such as blackberries and plums, complemented by herbal and floral notes, a distinct peppery spice, and earthy undertones.",
                    palate: "Medium to full-bodied with high acidity and firm tannins, offering concentrated flavors of dark fruits, herbal undertones, spice, and a touch of leather in aged examples.",
                    finish: "Long and persistent, with a characteristic freshness and spicy, earthy aftertaste."
                ),
                wineStyles: [
                    "Red Wines: Often used in blends to enhance aroma, color, and structure, particularly in Rioja Gran Reserva wines. Single-varietal expressions are increasingly produced to highlight its unique character."
                ],
                grapeSummary: "Graciano is prized for its aromatic intensity, deep color, and aging potential. It contributes complexity, freshness, and structure to blends and is increasingly recognized as a standout varietal in its own right."
            )
        ),

        
        
        Grape(
            name: "Grenache",
            details: GrapeDetails(
                origin: "Grenache, or Garnacha in Spanish, is one of the most widely planted red wine grape varieties worldwide. It is believed to have originated in Aragón, Spain, before spreading throughout the Mediterranean and beyond. Known for its adaptability to warm climates, it has become a cornerstone of winemaking in Southern France and Spain.",
                countries: Countries(
                    primary: [
                        "Spain: Predominantly in regions like Priorat, Aragón, and Rioja.\n",
                        "France: Extensively used in the Rhône Valley, Languedoc-Roussillon, and Provence.\n",
                        "Italy: Known as Cannonau in Sardinia, where it is highly regarded.\n",
                        "USA: Grown in California, particularly in Paso Robles and Santa Barbara.\n",
                        "Australia: Found in regions like Barossa Valley and McLaren Vale.\n",
                        "South Africa: Small plantings exist, especially in Swartland."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Light to medium red, often with orange hues as it ages.",
                    aroma: "Aromas of red fruits like strawberry and raspberry, with notes of spice, anise, tobacco, and occasionally garrigue or dried herbs.",
                    palate: "Medium to full-bodied with soft tannins and high alcohol, featuring flavors of red fruit, orange peel, cinnamon, and hints of dried fruit or jam in warmer climates.",
                    finish: "Warm and spicy with a smooth, often sweet finish."
                ),
                wineStyles: [
                    "Red Wines: Often used in blends, especially in Rhône blends and as a major component of Châteauneuf-du-Pape. Also used in fortified wines like Roussillon's Vin Doux Naturel.\n",
                    "Rosé Wines: Important in rosé production in regions like Tavel and Provence."
                ],
                grapeSummary: "Grenache is renowned for its versatility, producing lush, berry-flavored red wines, crisp and flavorful rosés, and even fortified wines. Its ability to thrive in warm climates and contribute structure, alcohol, and aromatics makes it a favorite among winemakers and wine lovers alike."
            )
        ),

        // Kadarka Details
        Grape(
            name: "Kadarka",
            details: GrapeDetails(
                origin: "Kadarka is a historic red grape variety that is believed to have originated in the Balkans, now most commonly associated with Hungarian and Bulgarian wines.",
                countries: Countries(
                    primary: [
                        "Hungary: Particularly in regions like Szekszárd and Eger.\n",
                        "Bulgaria: Also widely planted and used in Bulgarian wine production."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Medium ruby red with a lighter rim.",
                    aroma: "Aromatic with notes of ripe red berries, paprika, and hints of earthiness.",
                    palate: "Medium-bodied with moderate acidity and tannins, offering flavors of cherry, blackberry, and spice with an earthy undertone.",
                    finish: "Delicate and moderately long with a spicy, somewhat floral aftertaste."
                ),
               
                wineStyles: [
                    "Red Wines: Typically made into varietal wines that are appreciated for their unique flavor profile."
                ],
               
                grapeSummary: "Kadarka is prized for its contribution to traditional blends like Bikavér (Bull's Blood) and varietal wines that offer a distinctive mix of fruitiness and spice."
            )
        ),
        // Kotsifali Details
        Grape(
            name: "Kotsifali",
            details: GrapeDetails(
                origin: "Kotsifali is an indigenous grape variety from Crete, Greece, known for its role in traditional Cretan red wines.",
                countries: Countries(
                    primary: [
                        "Greece: Almost exclusively cultivated in Crete."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Medium ruby red.",
                    aroma: "Aromas of ripe red fruits like cherries and strawberries, with herbal and spicy notes.\n",
                    palate: "Medium-bodied with moderate tannins and acidity, offering flavors of red fruit, earth, and hints of spice.\n",
                    finish: "Smooth with a slightly spicy and warm finish."
                ),
               
                wineStyles: [
                    "Red Wines: Often blended with Mandilaria to create balanced, aromatic reds typical of the region."
                ],
              
                grapeSummary: "Kotsifali is celebrated for its ability to produce aromatic, approachable red wines that embody the essence of Cretan winemaking."
            )
        ),

        // Lambrusco Details
        Grape(
            name: "Lambrusco",
            details: GrapeDetails(
                origin: "Lambrusco refers to both a variety of grapes and a style of sparkling red wine made primarily in the Emilia-Romagna and Lombardy regions of Italy.",
                countries: Countries(
                    primary: [
                        "Italy: Predominantly in Emilia-Romagna and Lombardy."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep ruby to purple, often with a frothy mousse when poured.",
                    aroma: "Aromatic with notes of blackberry, raspberry, and violet, along with earthy undertones.",
                    palate: "Light to medium-bodied, with a natural sweetness balanced by high acidity and flavors of fresh red berries, often with a hint of earthiness.",
                    finish: "Lively and refreshing with a fruity and slightly tannic finish."
                ),
               
                wineStyles: [
                    "Sparkling Red Wines: Ranges from secco (dry) to dolce (sweet), with most being frizzante (lightly sparkling)."
                ],
              
                grapeSummary: "Lambrusco is valued for its versatility and the delightful, refreshing sparkling wines it produces, which range widely in sweetness levels."
            )
        ),
        // Limnio Details
        Grape(
            name: "Limnio",
            details: GrapeDetails(
                origin: "Limnio is one of the oldest documented grape varieties, originally cultivated on the island of Lemnos in Greece and mentioned by Aristotle as 'Limnia grape'.",
                countries: Countries(
                    primary: [
                        "Greece: Mainly in Macedonia and parts of the Aegean Islands."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Medium to deep ruby red.",
                    aroma: "Aromatic with notes of red fruits, herbs, and floral hints, alongside earthy and mineral elements.",
                    palate: "Medium-bodied with balanced acidity and moderate tannins, featuring flavors of cherry, plum, and a distinct herbal quality.",
                    finish: "Elegant with a mineral-driven aftertaste and herbal freshness."
                ),
             
                wineStyles: [
                    "Red Wines: Typically produced as a varietal wine or used in blends, offering a distinctive expression of Greek terroir."
                ],
                
                grapeSummary: "Limnio is renowned for its historical significance and its capacity to produce aromatic, characterful red wines that reflect the rich heritage of Greek viticulture."
            )
        ),
        // Malbec Details
        Grape(
            name: "Malbec",
            details: GrapeDetails(
                origin: "Originally from the Bordeaux region of France, Malbec has become synonymous with Argentine wine, where it thrives and is considered the national variety.",
                countries: Countries(
                    primary: [
                        "Argentina: Predominantly in Mendoza and also found in Salta and Patagonia.\n",
                        "France: Still grown in Cahors and some parts of Bordeaux.\n",
                        "USA: Increasingly popular in California and Washington.\n"
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep purple, almost inky.",
                    aroma: "Aromas of blackberry, plum, and black cherry, with hints of cocoa, tobacco, and sometimes a floral note of violets.",
                    palate: "Full-bodied with robust tannins and moderate acidity, offering flavors of dark fruits, chocolate, and vanilla from oak aging.",
                    finish: "Long and fruit-rich, often with spicy and smoky undertones."
                ),
               
                wineStyles: [
                    "Red Wines: Typically bold and structured, often aged in oak to enhance complexity."
                ],
                
                grapeSummary: "Malbec is celebrated for its rich, dark flavors and smooth tannins, making it a favorite for those who enjoy robust red wines."
            )
        ),

        // Mavrodaphne Details
        Grape(
            name: "Mavrodaphne",
            details: GrapeDetails(
                origin: "Mavrodaphne is a dark-skinned grape variety primarily grown in the Peloponnese region of Greece, known for producing rich, sweet fortified wines.",
                countries: Countries(
                    primary: [
                        "Greece: Mainly in the Peloponnese and the Ionian Islands."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep, dark red to almost black.",
                    aroma: "Complex aromas of dried fruits, such as figs and raisins, along with spices, chocolate, and caramel.",
                    palate: "Full-bodied with low to medium acidity and high sweetness, featuring flavors of prune, black cherry, and spice, often with a nutty or woody finish due to aging.",
                    finish: "Long and sweet, with a velvety texture."
                ),
               
                wineStyles: [
                    "Fortified Wines: Most commonly made into sweet, fortified wines that are aged extensively."
                ],
                
                grapeSummary: "Mavrodaphne is distinguished by its ability to produce intensely flavorful, sweet wines that are traditionally enjoyed as aperitifs or with desserts."
            )
        ),
        // Mencía Details
        Grape(
            name: "Mencía",
            details: GrapeDetails(
                origin: "Mencía is primarily found in the northwestern part of Spain, particularly in Bierzo, Ribeira Sacra, and Valdeorras. It is known for producing aromatic, medium-bodied red wines.",
                countries: Countries(
                    primary: [
                        "Spain: Concentrated in Bierzo, Ribeira Sacra, and Valdeorras.\n",
                        "Portugal: Known as Jaen in the Dão and Bairrada regions."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Medium cherry red.",
                    aroma: "Aromas of red fruits like cherry and raspberry, complemented by floral notes, particularly violets, and mineral undertones.",
                    palate: "Medium-bodied with moderate to high acidity and soft tannins, featuring flavors of fresh red berries, herbal notes, and a distinctive minerality.",
                    finish: "Elegant and fresh with a lingering fruity and floral aftertaste."
                ),
             
                wineStyles: [
                    "Red Wines: Predominantly made as varietal wines or occasionally blended, celebrated for their expressiveness and freshness."
                ],
                
                grapeSummary: "Mencía is appreciated for its vibrant fruit flavors and floral aromatics, offering a distinctive and refreshing take on Spanish red wines."
            )
        ),

        // Merlot Details
        Grape(
            name: "Merlot",
            details: GrapeDetails(
                origin: "Merlot is one of the world's most popular and widely planted red wine grapes, originating from the Bordeaux region of France. It is prized for its soft, ripe, elegant profile.",
                countries: Countries(
                    primary: [
                        "France: A key component in Bordeaux blends, especially from the Right Bank.\n",
                        "USA: Extensively planted across California and Washington.\n",
                        "Chile, Italy, Australia: Also significant in these regions."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Medium to dark ruby red.",
                    aroma: "Rich aromas of black cherry, plum, and currant, with notes of chocolate, bay leaf, and sometimes cedar.",
                    palate: "Medium to full-bodied with low to medium tannins and moderate acidity, offering a plush texture and flavors of ripe dark fruits, vanilla, and herbs.",
                    finish: "Smooth and velvety with a chocolatey, fruity linger."
                ),
                
                wineStyles: [
                    "Red Wines: Often blended with Cabernet Sauvignon and Cabernet Franc in Bordeaux styles or made into lush, velvety single varietal wines."
                ],
                
                grapeSummary: "Merlot is celebrated for its accessibility, smooth tannins, and rich fruit flavors, making it a favorite for both blending and single varietal expressions."
            )
        ),
        // Molinara Details
        Grape(
            name: "Molinara",
            details: GrapeDetails(
                origin: "Molinara is a traditional Italian grape variety, primarily known from the Veneto region and used in the production of Valpolicella and Bardolino wines.",
                countries: Countries(
                    primary: [
                        "Italy: Mainly grown in Veneto, particularly in the Valpolicella and Bardolino zones."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Light ruby red, often contributing a paler hue to blends.",
                    aroma: "Delicate aromas of red berries, cherry, and hints of herbal notes.",
                    palate: "Light-bodied with high acidity and soft tannins, featuring subtle flavors of cherry, almond, and herbal undertones.",
                    finish: "Crisp and refreshing with a slightly bitter finish that is characteristic of the variety."
                ),
                
                wineStyles: [
                    "Red Wines: Mostly used in blends with Corvina and Rondinella for Valpolicella and Bardolino wines."
                ],
                
                grapeSummary: "While Molinara provides good acidity and freshness, its tendency to oxidize has caused producers to reduce or completely avoid its use in their wines."
            )
        ),
        // Mondeuse Details
        Grape(
            name: "Mondeuse",
            details: GrapeDetails(
                origin: "Mondeuse is a rare red wine grape from the Savoie region in eastern France, noted for its peppery and spicy characteristics.",
                countries: Countries(
                    primary: [
                        "France: Primarily cultivated in the Savoie region."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Dark ruby red.",
                    aroma: "Aromas of dark fruits like blackcurrant and blackberry, with notes of pepper, violet, and sometimes earthy tones.",
                    palate: "Medium to full-bodied with high acidity and robust tannins, offering flavors of dark berries, spice, and herbal notes.",
                    finish: "Lingering with a characteristic peppery note and a hint of tartness."
                ),
                
                wineStyles: [
                    "Red Wines: Typically vinified on its own to produce varietal wines that highlight its unique flavor profile."
                ],
               
                grapeSummary: "Mondeuse is celebrated for its complex, spicy profile and is often likened to Syrah for its peppery and vibrant dark fruit flavors."
            )
        ),

        // Montepulciano Details
        Grape(
            name: "Montepulciano",
            details: GrapeDetails(
                origin: "Montepulciano is a prominent red wine grape from central Italy, not to be confused with the Tuscan town of Montepulciano where Vino Nobile di Montepulciano is made predominantly from Sangiovese.",
                countries: Countries(
                    primary: [
                        "Italy: Extensively cultivated in the Abruzzo region, and also found in Marche, Molise, and Puglia."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep ruby red, tending towards purple.",
                    aroma: "Rich aromas of ripe red and black fruits such as cherries and blackberries, with hints of spice and earth.",
                    palate: "Full-bodied with medium to high tannins and acidity, offering robust flavors of dark fruits, tobacco, and cocoa.",
                    finish: "Rich and lingering, with a smooth, velvety texture."
                ),
               
                wineStyles: [
                    "Red Wines: Most commonly made into robust, age-worthy wines that are often enjoyed for their fruity and earthy complexity."
                ],
               
                grapeSummary: "Montepulciano is known for its deep color, robust tannins, and ability to produce rich, flavorful wines that pair excellently with a wide range of foods."
            )
        ),
        // Mourvèdre Details
        Grape(
            name: "Mourvèdre",
            details: GrapeDetails(
                origin: "Mourvèdre, originally from Spain where it's known as Monastrell, is extensively used in the Rhône and Provence regions of France. It's valued for its deep color, rich tannins, and dark fruit flavors.",
                countries: Countries(
                    primary: [
                        "France: Widely planted in the Rhône Valley and Provence, particularly famous in Bandol.\n",
                        "Spain: Known as Monastrell, especially prevalent in regions like Jumilla and Alicante.\n",
                        "USA: Grown in California and Washington."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep purple to blackish.",
                    aroma: "Complex aromas of blackberry, plum, and red meat, with notes of black pepper, thyme, and sometimes floral hints of violet.",
                    palate: "Full-bodied with high tannins and medium acidity, delivering flavors of dark fruit, game, leather, and earth.",
                    finish: "Long and persistent, often with spicy and chocolatey undertones."
                ),
               
                wineStyles: [
                    "Red Wines: Often used in GSM (Grenache-Syrah-Mourvèdre) blends, as well as varietal wines and rosés in Bandol."
                ],
                
                grapeSummary: "Mourvèdre is celebrated for its contribution to complex, age-worthy wines, offering a robust structure and rich flavors that are ideal for blending or as standalone varietal wines."
            )
        ),

        // Nebbiolo Details
        Grape(
            name: "Nebbiolo",
            details: GrapeDetails(
                origin: "Nebbiolo is one of the most prestigious grape varieties from Italy, primarily associated with the Piedmont region where it is the backbone of Barolo and Barbaresco wines.",
                countries: Countries(
                    primary: [
                        "Italy: Predominantly in Piedmont, particularly in the Langhe area."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Light brick red, often with orange hues as it ages.",
                    aroma: "Intense aromas of rose, cherry, tar, and dried herbs, with evolving truffle and leather notes as it matures.",
                    palate: "Full-bodied with robust tannins and high acidity, offering deep flavors of red fruit, licorice, and dried flowers.",
                    finish: "Long and powerful, renowned for its considerable aging potential, which softens the tannins and enhances complexity."
                ),
                
                wineStyles: [
                    "Red Wines: Primarily used to produce Barolo and Barbaresco, among the world’s most revered wines."
                ],
               
                grapeSummary: "Nebbiolo is famed for its profound aromatic complexity, formidable structure, and exceptional longevity, making it a cornerstone of Italian viticulture."
            )
        ),
        // Negroamaro Details
        Grape(
            name: "Negroamaro",
            details: GrapeDetails(
                origin: "Negroamaro is a grape variety native to southern Italy, particularly prevalent in Puglia. It's known for its deep color and robust wines.",
                countries: Countries(
                    primary: [
                        "Italy: Widely cultivated in Puglia, especially in the Salento peninsula."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Dark, almost blackish red.",
                    aroma: "Aromas of ripe black fruits like blackberry and plum, with earthy and herbal nuances, often complemented by spicy and smoky notes.",
                    palate: "Full-bodied with pronounced tannins and acidity, delivering flavors of dark fruits, tobacco, and an earthy bitterness.",
                    finish: "Rich and robust with a lingering bittersweet chocolate and anise aftertaste."
                ),
               
                wineStyles: [
                    "Red Wines: Typically produces robust, dark wines that can age well. Also used in blends and rosé wines."
                ],
               
                grapeSummary: "Negroamaro is celebrated for its bold flavors and is a staple in the winemaking tradition of southern Italy, especially in Puglia."
            )
        ),

        // Nerello Mascalese Details
        Grape(
            name: "Nerello Mascalese",
            details: GrapeDetails(
                origin: "Nerello Mascalese is native to Sicily, Italy, particularly known for its cultivation on the slopes of Mount Etna. It is appreciated for its finesse and complexity, similar to that of fine Burgundy or Nebbiolo wines.",
                countries: Countries(
                    primary: [
                        "Italy: Primarily grown on the slopes of Mount Etna in Sicily."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Light ruby red with a tendency to orange as it ages.",
                    aroma: "Aromatic with notes of red berries, herbs, and volcanic minerality, complemented by hints of tobacco and leather as it matures.",
                    palate: "Medium-bodied with firm tannins and high acidity, offering a flavor profile that includes red fruit, smoke, and spice, with a distinctive minerality.",
                    finish: "Elegant and persistent, with a refined structure that evolves gracefully with age."
                ),
                
                wineStyles: [
                    "Red Wines: Often made into varietal wines or blended with Nerello Cappuccio, showcasing elegance and aging potential."
                ],
                
                grapeSummary: "Nerello Mascalese is highly regarded for its ability to balance power and elegance, producing wines that are both approachable in their youth and capable of long aging."
            )
        ),
        // Nero d’Avola Details
        Grape(
            name: "Nero d’Avola",
            details: GrapeDetails(
                origin: "Nero d'Avola is the most widely planted red wine grape in Sicily, Italy, known for its bold flavors and adaptability.",
                countries: Countries(
                    primary: [
                        "Italy: Predominantly grown in Sicily, especially in regions around Siracusa and the southern parts of the island."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep ruby to almost black.",
                    aroma: "Rich aromas of black cherry, plum, and blackberry, with notes of licorice and sometimes peppery spices.",
                    palate: "Full-bodied with robust tannins and moderate acidity, offering lush fruit flavors along with hints of tobacco and dark chocolate.",
                    finish: "Long and smooth, often with a spicy or slightly sweet note on the finish."
                ),
                
                wineStyles: [
                    "Red Wines: Typically made as a varietal wine, sometimes aged in oak to enhance complexity."
                ],
                
                grapeSummary: "Nero d'Avola is celebrated for its rich, full-bodied wines that embody the warmth and intensity of Sicily’s sun-drenched vineyards."
            )
        ),

        // Petit Verdot Details
        Grape(
            name: "Petit Verdot",
            details: GrapeDetails(
                origin: "Petit Verdot is a red wine grape that originated in the Bordeaux region of France, traditionally used as a blending grape in Bordeaux blends.",
                countries: Countries(
                    primary: [
                        "France: Historically part of the Bordeaux blend.\n",
                        "USA: Increasingly popular in California and Virginia.\n",
                        "Australia: Grown in regions like Margaret River and Barossa Valley."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Dark, inky purple.",
                    aroma: "Intense aromas of blueberry, violet, and leather, often complemented by spicy and woody notes.",
                    palate: "Full-bodied with high tannins and acidity, delivering flavors of dark fruits, vanilla, and spices.",
                    finish: "Long and robust, with a lingering spicy and floral note."
                ),
               
                wineStyles: [
                    "Red Wines: Often used in small amounts to add color, tannin, and flavor to blends. It is also used to create varietal wines in New World regions."
                ],
               
                grapeSummary: "Petit Verdot is known for its power and concentration, offering depth and complexity to wines, especially in blends where it can shine even in small proportions."
            )
        ),
        // Petite Sirah Details
        Grape(
            name: "Petite Sirah",
            details: GrapeDetails(
                origin: "Petite Sirah, also known as Durif, is a variety that originated from a cross between Syrah and Peloursin grapes in France. It has found a particularly hospitable home in California.",
                countries: Countries(
                    primary: [
                        "USA: Extensively planted in California, especially in regions like Napa Valley and Paso Robles.\n",
                        "Australia: Known as Durif, where it's also popular."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep, inky purple to black.",
                    aroma: "Intense aromas of blackberry, blueberry, and dark chocolate, often accompanied by spicy and smoky notes.",
                    palate: "Full-bodied with firm tannins and low to moderate acidity, featuring robust flavors of dark fruit, pepper, and licorice.",
                    finish: "Long and powerful, with persistent dark fruit and spicy notes."
                ),
               
                wineStyles: [
                    "Red Wines: Typically bold and intense, often benefiting from aging in oak to enhance complexity."
                ],
               
                grapeSummary: "Petite Sirah is known for its powerful, tannic wines with deep color and longevity, making it a favorite for bold red wine enthusiasts."
            )
        ),

        // Pinot Noir Details
        Grape(
            name: "Pinot Noir",
            details: GrapeDetails(
                origin: "Pinot Noir is a red wine grape of the species Vitis vinifera. Originating from the Burgundy region of France, it is now grown under a variety of climate conditions and is known for producing some of the finest wines in the world.",
                countries: Countries(
                    primary: [
                        "France: Primarily in Burgundy, also in Champagne and Alsace.\n",
                        "USA: Widely grown in California, Oregon, and New York.\n",
                        "New Zealand, Australia, Chile, and Germany: Also significant producers."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Light to medium ruby red, often paler compared to other red wines.",
                    aroma: "Complex aromas of cherries, raspberries, and strawberries, with earthy undertones of mushroom and forest floor, and floral hints of violet.",
                    palate: "Medium-bodied with soft to moderate tannins and high acidity, offering flavors of red fruit, spice, and earthy notes.",
                    finish: "Elegant and smooth, with a nuanced, lingering finish that can develop greater complexity with age."
                ),
                
                wineStyles: [
                    "Red Wines: Renowned for its versatility, ranging from light and fruity to rich and full-bodied, depending on the region and winemaking techniques used."
                ],
               
                grapeSummary: "Pinot Noir is highly prized for its depth, complexity, and versatility, producing some of the most sought-after wines in the world."
            )
        ),
        // Pinotage Details
        Grape(
            name: "Pinotage",
            details: GrapeDetails(
                origin: "Pinotage is a red wine grape that is South Africa's signature variety, created by crossing Pinot Noir and Cinsault (known locally as Hermitage) in 1925 at Stellenbosch University.",
                countries: Countries(
                    primary: [
                        "South Africa: Extensively planted across regions like Stellenbosch, Swartland, and Paarl."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Dark ruby red.",
                    aroma: "Unique aromas of bramble fruits, banana, and often a distinctive smoky, earthy component.",
                    palate: "Medium to full-bodied with bold tannins and a high acidity, offering flavors of dark fruits, roasted earth, and sometimes notes of tar and tobacco.",
                    finish: "Robust and lingering, with a rustic character that can soften with aging."
                ),
                
                wineStyles: [
                    "Red Wines: Typically made into varietal wines that showcase its unique flavor profile, also used in blends."
                ],
              
                grapeSummary: "Pinotage is celebrated for its distinctive and bold profile, embodying the terroir and winemaking heritage of South Africa."
            )
        ),

        // Portugieser Details
        Grape(
            name: "Portugieser",
            details: GrapeDetails(
                origin: "Portugieser is a red wine grape popular in Germany and Austria, known for producing light, early-drinking wines. It is often associated with the Rheinhessen and Pfalz regions in Germany.",
                countries: Countries(
                    primary: [
                        "Germany: Mainly in Rheinhessen and Pfalz.",
                        "Austria: Also found in regions like Burgenland."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Light ruby red.",
                    aroma: "Fresh and fruity with aromas of red berries, cherries, and a subtle herbal note.",
                    palate: "Light-bodied with low tannins and moderate acidity, offering straightforward fruit flavors and a pleasant, easy-drinking quality.",
                    finish: "Short to medium, refreshing, with a focus on fruitiness rather than complexity."
                ),
               
                wineStyles: [
                    "Red Wines: Typically made as light, quaffable wines meant for early consumption."
                ],
                
                grapeSummary: "Portugieser is appreciated for its light, fruity wines that are best enjoyed young, often serving as a pleasant everyday wine."
            )
        ),
        // Primitivo Details
        Grape(
            name: "Primitivo",
            details: GrapeDetails(
                origin: "Primitivo, also known internationally as Zinfandel, is a red wine grape that has become synonymous with the Puglia region of southern Italy. It is known for its robust wines and early ripening.",
                countries: Countries(
                    primary: [
                        "Italy: Predominantly grown in Puglia, especially in the Manduria area.\n",
                        "USA: Known as Zinfandel, especially in California."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep crimson to dark red.",
                    aroma: "Aromas of dark fruits like blackberry and plum, with spicy notes of clove and black pepper.",
                    palate: "Full-bodied with high alcohol content, offering flavors of jammy fruits, spice, and sometimes tobacco and leather, with a sweet edge if made in a late harvest style.",
                    finish: "Rich and intense with a lingering sweetness and spice."
                ),
               
                wineStyles: [
                    "Red Wines: Often made in a bold, rich style."
                ],
              
                grapeSummary: "Primitivo is celebrated for its capacity to produce powerful, fruity wines that showcase the intensity of Southern Italian viticulture."
            )
        ),

        // Refosco Details
        Grape(
            name: "Refosco",
            details: GrapeDetails(
                origin: "Refosco is a family of closely related dark-skinned wine grapes native to the northeastern Italian regions of Friuli Venezia Giulia and Veneto. It is appreciated for its robust, earthy wines.",
                countries: Countries(
                    primary: [
                        "Italy: Mainly in Friuli Venezia Giulia and parts of Veneto."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep purple.",
                    aroma: "Aromatic with notes of red and black berries, forest floor, and herbal hints.",
                    palate: "Medium to full-bodied with noticeable tannins and acidity, offering flavors of dark fruits, violet, and a distinct minerality.",
                    finish: "Tart and tannic with a rustic, earthy aftertaste."
                ),
             
                wineStyles: [
                    "Red Wines: Typically produced as a varietal wine, showcasing its unique flavor profile and structure."
                ],
               
                grapeSummary: "Refosco is known for its deep color, vibrant acidity, and ability to produce complex wines that reflect the terroir of northeastern Italy."
            )
        ),
        
        // Rondinella Details
        Grape(
            name: "Rondinella",
            details: GrapeDetails(
                origin: "Rondinella is a variety native to the Veneto region of Italy, typically used in the production of Valpolicella and Bardolino wines, often blended with Corvina and Molinara.",
                countries: Countries(
                    primary: [
                        "Italy: Primarily found in Veneto, particularly in the Valpolicella and Bardolino DOC areas."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Light to medium ruby red.",
                    aroma: "Subtle aromas of red fruits like cherries and cranberries, with floral undertones and hints of almond.",
                    palate: "Light-bodied with moderate acidity and soft tannins, featuring delicate flavors of red berries and a slight herbal note.",
                    finish: "Soft and refreshing with a clean, slightly bitter finish typical of the grapes from this region."
                ),
              
                wineStyles: [
                    "Red Wines: Commonly used in blends to add color and aroma.\n",
                    "Rosé Wines: Sometimes used to produce light rosés."
                ],
               
                grapeSummary: "Rondinella is valued for its contribution to the floral and fruity components in traditional Venetian blends, enhancing the overall elegance and drinkability of the wines."
            )
        ),

        // Sagrantino Details
        Grape(
            name: "Sagrantino",
            details: GrapeDetails(
                origin: "Sagrantino is an indigenous Italian grape variety primarily grown in the region of Umbria, especially around the town of Montefalco. It produces some of Italy’s most tannic and full-bodied wines.",
                countries: Countries(
                    primary: [
                        "Italy: Almost exclusively in Umbria, particularly Montefalco."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep, opaque ruby red.",
                    aroma: "Complex aromas of dark fruits like blackberry and plum, enriched by notes of spice, incense, and forest floor.",
                    palate: "Full-bodied and robust, with a high tannin content and matching acidity, offering intense flavors of dark chocolate, black cherry, and spice.",
                    finish: "Long and powerful, with persistent tannic strength and potential for aging."
                ),
              
                wineStyles: [
                    "Red Wines: Predominantly produced as a dry red wine that benefits greatly from aging. Also made into a sweet passito style wine."
                ],
               
                grapeSummary: "Sagrantino is celebrated for its depth, complexity, and aging potential, making it one of the most prestigious and sought-after wines of Umbria."
            )
        ),
        // Sangiovese Details
        Grape(
            name: "Sangiovese",
            details: GrapeDetails(
                origin: "Sangiovese is Italy’s most widely planted grape, revered for its role in producing some of the country's most iconic wines, including Chianti and Brunello di Montalcino. It originated in Tuscany and has been cultivated there since ancient times.",
                countries: Countries(
                    primary: [
                        "Italy: Predominantly in Tuscany, also grown in Umbria and Emilia-Romagna."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Medium to deep ruby red, with potential to lighten as it ages.",
                    aroma: "Aromas of red cherries, earth, and spices, with rustic notes of leather and tobacco as it matures.",
                    palate: "Medium to full-bodied with high acidity and robust tannins, offering flavors of red fruit, dried herbs, and often a distinct balsamic or mineral edge.",
                    finish: "Long and savory, with a potential for cherry and floral notes in the aftertaste."
                ),
               
                wineStyles: [
                    "Red Wines: Often used in blends but also shines as a varietal wine. Notable for its role in Chianti, Chianti Classico, and Brunello di Montalcino."
                ],
               
                grapeSummary: "Sangiovese is celebrated for its versatility, depth, and ability to express terroir, making it a cornerstone of Italian winemaking."
            )
        ),

        // Schiava Details
        Grape(
            name: "Schiava",
            details: GrapeDetails(
                origin: "Schiava is a light-skinned red wine grape from the Alto Adige region of northern Italy. It is known for producing light, fruity red wines that are typically enjoyed young.",
                countries: Countries(
                    primary: [
                        "Italy: Mainly cultivated in the Alto Adige/Südtirol region."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Light ruby red, often with a pale rim.",
                    aroma: "Aromatic with scents of red berries, cherries, almonds, and violets.",
                    palate: "Light-bodied with low tannins and moderate acidity, delivering flavors of strawberry, raspberry, and hints of nuttiness.",
                    finish: "Soft and fruity, with a pleasantly smooth texture."
                ),
                
                wineStyles: [
                    "Red Wines: Primarily made as a varietal wine, often consumed young to appreciate its fresh, fruity qualities."
                ],
                
                grapeSummary: "Schiava is valued for its approachability and charm, offering a refreshing take on red wine that is best enjoyed in its youth."
            )
        ),
        // St. Laurent Details
        Grape(
            name: "St. Laurent",
            details: GrapeDetails(
                origin: "St. Laurent is a dark-skinned wine grape variety with a debated origin. Some believe it originated in Austria, where it is widely grown today, while others suggest it may have French roots due to its genetic similarities with Pinot Noir. Regardless of its origin, St. Laurent is valued for its unique, spicy profile.",
                countries: Countries(
                    primary: [
                        "Austria: Widely grown, particularly in Lower Austria and Burgenland.\n",
                        "Czech Republic: Also found in regions like Moravia."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep, dark red.",
                    aroma: "Aromas of dark cherries, blackberries, and a distinctive spicy note, often accompanied by earthy undertones.",
                    palate: "Medium-bodied with moderate tannins and high acidity, featuring flavors of ripe dark fruits and a hint of herbal spice.",
                    finish: "Elegant and somewhat tart, with a lingering spicy finish."
                ),
               
                wineStyles: [
                    "Red Wines: Primarily produced as a varietal wine, often aged in oak to enhance its spicy character."
                ],
               
                grapeSummary: "St. Laurent is valued for its ability to produce deeply colored, aromatic wines that balance fruitiness with spice, making it popular among enthusiasts of unique varietal wines."
            )
        ),

        // Syrah Details
        Grape(
            name: "Syrah",
            details: GrapeDetails(
                origin: "Syrah, also known as Shiraz, is a robust red wine grape that originated in the Rhône Valley of France. It's known for its powerful flavor profile and is a key component in both varietal and blended wines.",
                countries: Countries(
                    primary: [
                        "France: Dominantly in the Rhône Valley.\n",
                        "Australia: Known as Shiraz, particularly prevalent in Barossa Valley and McLaren Vale.\n",
                        "USA: Widely planted in California and Washington."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep purple to almost black.",
                    aroma: "Rich aromas of blackberry, blueberry, and plums, with spice notes like black pepper, and often hints of smoked meat and chocolate.",
                    palate: "Full-bodied with firm tannins and moderate to high acidity, offering flavors of dark fruits, pepper, and dark chocolate, with a smoky, meaty character in some wines.",
                    finish: "Long and persistent, with a peppery and spicy aftertaste that complements its robust structure."
                ),
              
                wineStyles: [
                    "Red Wines: Made as a full-bodied varietal wine, commonly aged in oak to add complexity. Also crucial in blends like Côtes du Rhône and GSM (Grenache, Syrah, Mourvèdre)."
                ],
               
                grapeSummary: "Syrah is celebrated for its intense flavors and ability to produce deeply colored, complex wines that are highly valued across the world."
            )
        ),
        // Tannat Details
        Grape(
            name: "Tannat",
            details: GrapeDetails(
                origin: "Tannat is originally from the Madiran region in South West France. It's also incredibly popular in Uruguay, where it has become the national grape, known for its robust tannins and dark fruit flavors.",
                countries: Countries(
                    primary: [
                        "France: Predominantly in Madiran and surrounding areas.\n",
                        "Uruguay: Widely considered the national grape, extensively cultivated across the country.\n",
                        "USA: Planted in smaller amounts, particularly in California."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep, dark red, almost black.",
                    aroma: "Powerful aromas of black plum, blackberry, and raspberry, with earthy and spicy undertones, often accompanied by a smoky, dark chocolate character.",
                    palate: "Full-bodied with pronounced tannins and acidity, delivering flavors of dark fruits, tobacco, and dark chocolate.",
                    finish: "Long and tannic, with a persistent dark fruit and spicy aftertaste."
                ),
                
                wineStyles: [
                    "Red Wines: Often vinified to soften its tannins, typically through extended aging in oak."
                ],
                
                grapeSummary: "Tannat is renowned for its bold structure and high tannin content, making it suitable for aging and blending, offering significant health benefits due to its high levels of antioxidants."
            )
        ),

        // Tempranillo Details
        Grape(
            name: "Tempranillo",
            details: GrapeDetails(
                origin: "Tempranillo is the quintessential Spanish grape, central to the profiles of wines from Rioja and Ribera del Duero. Its name derives from 'temprano', meaning 'early', referring to its tendency to ripen earlier than other Spanish red grapes.",
                countries: Countries(
                    primary: [
                        "Spain: Dominant in Rioja and Ribera del Duero, also widely planted across the Iberian Peninsula.\n",
                        "Portugal: Known as Tinta Roriz in the Douro and Dão regions, used in Port wine production."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Medium ruby red, tending to garnet with aging.",
                    aroma: "Complex aromas of red fruits like strawberries and cherries, with notes of tobacco, leather, and vanilla, gaining more earthy and herbal qualities as it matures.",
                    palate: "Medium-bodied with moderate to high acidity and tannins, offering a balanced profile of fruit, oak, and earthy elements.",
                    finish: "Smooth and lingering, often with a spicy and leathery complexity."
                ),
              
                wineStyles: [
                    "Red Wines: Typically aged in oak, contributing to its characteristic flavor profile; prominent in blends and varietal wines."
                ],
               
                grapeSummary: "Tempranillo is celebrated for its versatility and complexity, capable of producing a wide range of wine styles from fresh and fruity to deeply nuanced and age-worthy."
            )
        ),
        // Teroldego Details
        Grape(
            name: "Teroldego",
            details: GrapeDetails(
                origin: "Teroldego is a red grape variety native to the Trentino-Alto Adige region of Italy, particularly known for its cultivation in the Rotaliano plain. It produces deeply colored and richly flavored wines.",
                countries: Countries(
                    primary: [
                        "Italy: Predominantly found in Trentino-Alto Adige."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep ruby to purple.",
                    aroma: "Intense aromas of dark berries, cherries, and plums, with hints of violet, licorice, and earth.",
                    palate: "Medium to full-bodied with vibrant acidity and tannins, offering flavors of ripe red and black fruits, underpinned by earthy and herbal notes.",
                    finish: "Long and robust, with a lingering presence of fruit and spice."
                ),
               
                wineStyles: [
                    "Red Wines: Typically made as varietal wines, showcasing the grape’s characteristic flavors and aging potential."
                ],
               
                grapeSummary: "Teroldego is celebrated for its profound color and complex flavor profile, making it one of the gems of northern Italian viticulture."
            )
        ),

        // Touriga Nacional Details
        Grape(
            name: "Touriga Nacional",
            details: GrapeDetails(
                origin: "Touriga Nacional is considered one of the finest red grapes in Portugal, key to the production of both high-quality dry red wines and Port. It is known for its concentrated flavors and aging potential.",
                countries: Countries(
                    primary: [
                        "Portugal: Widely planted across all major wine regions, including Douro, Dão, and Alentejo."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Dark, almost inky purple.",
                    aroma: "Complex aromas of dark fruits like blackberries and blueberries, with floral notes of violets and bergamot, complemented by spicy and resinous undertones.",
                    palate: "Full-bodied with high tannins and acidity, delivering flavors of ripe dark fruits, balsamic, and chocolate, enriched by oak aging.",
                    finish: "Long and persistent, with a velvety texture and powerful tannic backbone."
                ),
              
                wineStyles: [
                    "Red Wines: Primarily used in the production of complex, structured wines and fortified Port wines."
                ],
               
                grapeSummary: "Touriga Nacional is renowned for its depth and complexity, serving as the backbone of Portugal’s most prestigious red and fortified wines."
            )
        ),
        // Trousseau Details
        Grape(
            name: "Trousseau",
            details: GrapeDetails(
                origin: "Trousseau is a red wine grape from the Jura region in France, known for its light-bodied wines. It's also grown in Portugal, where it's known as Bastardo, and has found a niche in California.",
                countries: Countries(
                    primary: [
                        "France: Predominantly in the Jura region.\n",
                        "Portugal: Known as Bastardo, particularly in the Douro and Dão regions for Port production.\n",
                        "USA: Limited plantings in California, especially in cooler, coastal areas."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Light ruby to garnet.",
                    aroma: "Aromatic with notes of red berries, cherries, and floral hints, often complemented by earthy and herbal qualities.",
                    palate: "Light to medium-bodied with moderate acidity and tannins, presenting flavors of strawberry, raspberry, and spice with a rustic edge.",
                    finish: "Elegant and moderately long with a spicy and slightly earthy aftertaste."
                ),
              
                wineStyles: [
                    "Red Wines: Primarily made as varietal wines, often light and expressive, suitable for early consumption."
                ],
               
                grapeSummary: "Trousseau is valued for its aromatic complexity and versatility, producing distinctive wines that express a strong sense of place."
            )
        ),

        // Xinomavro Details
        Grape(
            name: "Xinomavro",
            details: GrapeDetails(
                origin: "Xinomavro is a prominent red grape variety from Greece, known for its strong tannic structure and high acidity. It is primarily associated with the northern Greek regions of Naoussa and Amyndeon.",
                countries: Countries(
                    primary: [
                        "Greece: Predominantly in Naoussa, Amyndeon, and other parts of Macedonia."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep red with a tendency to develop orange hues as it ages.",
                    aroma: "Complex aromas of red fruits like tomatoes and olives, along with dried herbs, spice, and often a touch of tar and leather.",
                    palate: "Medium to full-bodied with pronounced acidity and tannins, offering flavors of red berries, earthy notes, and spice, with aging potential that brings out dried fruit and tobacco nuances.",
                    finish: "Long and robust, with a characteristic acidity that lingers."
                ),
               
                wineStyles: [
                    "Red Wines: Often made as a varietal wine, celebrated for its aging potential and complex flavor development."
                ],
                
                grapeSummary: "Xinomavro is acclaimed for its complexity and aging potential, often compared to Nebbiolo for its ability to produce profound and long-lived wines."
            )
        ),

        // Zinfandel Details
        Grape(
            name: "Zinfandel",
            details: GrapeDetails(
                origin: "Zinfandel is a red grape variety that became immensely popular in California, USA. Genetically identical to Croatia's Crljenak Kaštelanski and Italy's Primitivo, it produces a range of wine styles from robust reds to sweet rosés (White Zinfandel).",
                countries: Countries(
                    primary: [
                        "USA: Especially in California, where it is considered almost a native variety."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Medium to deep red, sometimes leaning towards purple.",
                    aroma: "Rich and intense with notes of blackberry, raspberry, and cherry, complemented by spice, tobacco, and sometimes sweet confectionary qualities.",
                    palate: "Medium to full-bodied with moderate to high alcohol content, featuring a jammy fruitiness, balanced by peppery spice and a lush texture.",
                    finish: "Warm and long, with a sweet or spicy edge depending on the style."
                ),
               
                wineStyles: [
                    "Red Wines: Ranges from medium-bodied to rich and intense. Also famous for the sweet, light rosé style known as White Zinfandel.\n",
                    "Rosé Wines: White Zinfandel, which is a sweeter and lighter rosé wine style."
                ],
                
                grapeSummary: "Zinfandel is versatile and capable of producing a wide array of wine styles, each expressing a distinct character that ranges from rich and spicy to sweet and light."
            )
        ),
        // Zweigelt Details
        Grape(
            name: "Zweigelt",
            details: GrapeDetails(
                origin: "Zweigelt is a red grape variety created in 1922 by Dr. Fritz Zweigelt through the crossing of St. Laurent and Blaufränkisch. It is the most widely planted red grape variety in Austria, known for producing juicy, medium-bodied wines.",
                countries: Countries(
                    primary: [
                        "Austria: Predominantly in regions like Burgenland, Lower Austria, and Vienna."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Medium ruby red.",
                    aroma: "Vibrant aromas of red cherry, raspberry, and black pepper, with floral hints of violet.",
                    palate: "Medium-bodied with moderate acidity and soft tannins, offering a palate of ripe red fruits complemented by subtle spice and sometimes notes of dark chocolate.",
                    finish: "Smooth and fruity, with a pleasant, easy-drinking finish."
                ),
               
                wineStyles: [
                    "Red Wines: Often produced as varietal wines but also used in blends. It is capable of producing wines that range from light and fresh to more complex and oak-aged versions."
                ],
               
                grapeSummary: "Zweigelt is cherished for its versatility and approachability, producing vibrant and fruit-forward wines that appeal to a wide array of wine enthusiasts."
            )
        )
    ]
//
//
//
static let whiteGrapes: [Grape] = [


    Grape(
        name: "Airen",
        details: GrapeDetails(
            origin: "Airen is a native grape of Spain, particularly grown in the central regions like Castilla-La Mancha. It is one of the most widely planted grape varieties in Spain.",
            countries: Countries(
                primary: [
                    "Spain: Predominantly in Castilla-La Mancha and other central regions. Airen is one of Spain's most important and widely planted white grape varieties."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Subtle aromas of apple, citrus, and floral notes with a hint of herbaceousness.",
                palate: "Light-bodied with moderate acidity. Flavors of green apple, citrus fruits, and a touch of pear.",
                finish: "Crisp and clean with a short to medium finish."
            ),
           
            wineStyles: [
                "White Wines: Often produced as a light, easy-drinking wine with refreshing acidity.\n",
                "Blended Wines: Commonly used in blends to add body and neutral flavors."
            ],
          
            grapeSummary: "Airen is notable for its high yield and adaptability to harsh growing conditions, making it a significant grape variety in Spain's wine production."
        )
    ),

    // Albariño (Alvarinho) Details
    Grape(
        name: "Albariño (Alvarinho)",
        details: GrapeDetails(
            origin: "Albariño, known as Alvarinho in Portugal, is a white grape variety from the Iberian Peninsula. It is especially prominent in the Rías Baixas DO in Spain and Vinho Verde in Portugal.",
            countries: Countries(
                primary: [
                    "Spain: Particularly in Rías Baixas, Galicia.\n",
                    "Portugal: Known as Alvarinho, especially in the Vinho Verde region."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold with greenish hues.",
                aroma: "Aromatic with notes of citrus, peach, and floral elements like jasmine.",
                palate: "Light to medium-bodied with high acidity, offering flavors of lime, apricot, and a distinct saline minerality.",
                finish: "Crisp and refreshing with a lingering citrus and mineral finish."
            ),
           
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style, often showcasing its fresh acidity and aromatic complexity."
            ],
            
            grapeSummary: "Albariño is celebrated for its bright acidity and aromatic intensity, making it a favorite for refreshing, seafood-friendly wines."
        )
    ),

    // Aligoté Details
    Grape(
        name: "Aligoté",
        details: GrapeDetails(
            origin: "Aligoté is a white grape variety from Burgundy, France. It is the second most planted white grape in the region after Chardonnay.",
            countries: Countries(
                primary: [
                    "France: Predominantly in Burgundy, especially in the Côte Chalonnaise."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of green apple, lemon, and floral notes with hints of minerality.",
                palate: "Light-bodied with high acidity, offering flavors of citrus, green apple, and a crisp, clean minerality.",
                finish: "Bright and refreshing with a zesty, mineral-driven finish."
            ),
            
            wineStyles: [
                "White Wines: Often used in blends or on its own to produce crisp, refreshing wines."
            ],
           
            grapeSummary: "Aligoté is known for its high acidity and fresh, citrus-driven profile, making it a versatile white wine option, particularly in Burgundy."
        )
    ),

    // Arinto Details
    Grape(
        name: "Arinto",
        details: GrapeDetails(
            origin: "Arinto is a versatile white grape variety from Portugal, known for its high acidity and citrus flavors. It is widely planted throughout the country.",
            countries: Countries(
                primary: [
                    "Portugal: Extensively grown in regions such as Bucelas, Vinho Verde, and Alentejo."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow with greenish tints.",
                aroma: "Aromas of lemon, lime, and green apple, with subtle floral and herbal notes.",
                palate: "Light to medium-bodied with high acidity, featuring flavors of citrus, green apple, and a distinct minerality.",
                finish: "Crisp and zesty with a refreshing, mineral-driven finish."
            ),
           
            wineStyles: [
                "White Wines: Often made into varietal wines or used in blends, showcasing its acidity and fresh citrus flavors."
            ],
           
            grapeSummary: "Arinto is appreciated for its vibrant acidity and citrus flavors, making it a key component in many refreshing Portuguese white wines."
        )
    ),
    // Arneis Details
    Grape(
        name: "Arneis",
        details: GrapeDetails(
            origin: "Arneis is a white grape variety native to the Piedmont region of Italy, particularly known from the Roero area. Historically, it was used to soften the tannins of Nebbiolo wines, but now it stands on its own in producing aromatic whites.",
            countries: Countries(
                primary: [
                    "Italy: Predominantly in Piedmont, especially Roero."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale straw yellow.",
                aroma: "Aromas of pear, apricot, and white flowers with subtle notes of almond and herbs.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of ripe pear, peach, and a hint of citrus with a slightly nutty finish.",
                finish: "Elegant and smooth, with a lingering fruit and floral aftertaste."
            ),
            
            wineStyles: [
                "White Wines: Typically produced as a varietal wine, showcasing its aromatic and fruity profile."
            ],
          
            grapeSummary: "Arneis is celebrated for its aromatic complexity and elegant fruit flavors, making it a standout white wine from Piedmont."
        )
    ),

    // Assyrtiko Details
    Grape(
        name: "Assyrtiko",
        details: GrapeDetails(
            origin: "Assyrtiko is a white grape variety native to the Greek island of Santorini. It is known for its high acidity and mineral character, often attributed to the volcanic soils of its homeland.",
            countries: Countries(
                primary: [
                    "Greece: Particularly prominent in Santorini, but also grown in other regions like Macedonia and Attica."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow with greenish highlights.",
                aroma: "Aromas of citrus fruits, green apple, and hints of flint and saline.",
                palate: "Light to medium-bodied with high acidity, offering flavors of lemon, lime, and green apple, complemented by a distinct minerality.",
                finish: "Crisp and clean with a long, mineral-driven finish."
            ),
           
            wineStyles: [
                "White Wines: Typically made in a dry style, emphasizing its high acidity and mineral notes."
            ],
            
            grapeSummary: "Assyrtiko is renowned for its vibrant acidity and mineral complexity, making it one of Greece's most esteemed white grape varieties."
        )
    ),

    // Boal (Bual) Details
    Grape(
        name: "Boal (Bual)",
        details: GrapeDetails(
            origin: "Boal, also known as Bual, is one of the traditional white grape varieties used in Madeira wine production. It is known for producing rich, medium-sweet wines with good acidity.",
            countries: Countries(
                primary: [
                    "Portugal: Especially in Madeira."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Amber to deep gold, depending on the aging process.",
                aroma: "Aromas of dried fruits, caramel, and nuts, with hints of spices and floral notes.",
                palate: "Medium-bodied with balanced sweetness and acidity, featuring flavors of raisins, caramel, and a touch of citrus.",
                finish: "Long and smooth with a lingering sweet and nutty aftertaste."
            ),
          
            wineStyles: [
                "Fortified Wines: Used primarily for medium-sweet Madeira wines."
            ],
            
            grapeSummary: "Boal is esteemed for its role in producing medium-sweet Madeira wines, offering a rich, balanced profile with notable aging potential."
        )
    ),
    // Chardonnay Details
    Grape(
        name: "Chardonnay",
        details: GrapeDetails(
            origin: "Chardonnay is a versatile white grape variety that originated in the Burgundy region of France. It is now one of the most widely planted and well-known white wine grapes globally.",
            countries: Countries(
                primary: [
                    "France: Especially in Burgundy and Champagne.\n",
                    "USA: Notably in California.\n",
                    "Australia: Particularly in the regions of Adelaide Hills and Yarra Valley."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold to deep yellow.",
                aroma: "Varies greatly depending on the climate and winemaking techniques, but often includes notes of green apple, pear, citrus, tropical fruits, and sometimes vanilla and butter from oak aging.",
                palate: "Medium to full-bodied with flavors ranging from green apple and lemon in cooler climates to peach and pineapple in warmer regions, often with a creamy texture if malolactic fermentation is used.",
                finish: "Can be crisp and refreshing or rich and buttery, depending on the style."
            ),
           
            wineStyles: [
                "White Wines: Can range from lean, crisp, and unoaked to rich, buttery, and oak-aged.\n",
                "Sparkling Wines: Key grape in Champagne and other sparkling wines."
            ],
           
            grapeSummary: "Chardonnay is celebrated for its versatility and adaptability, capable of producing a wide range of wine styles that are enjoyed worldwide."
        )
    ),

    // Chenin Blanc Details
    Grape(
        name: "Chenin Blanc",
        details: GrapeDetails(
            origin: "Chenin Blanc is a white grape variety originating from the Loire Valley in France. It is known for its high acidity and versatility in producing a wide range of wine styles.",
            countries: Countries(
                primary: [
                    "France: Especially in the Loire Valley (Vouvray, Anjou).\n",
                    "South Africa: Known locally as Steen."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow to deep gold.",
                aroma: "Aromas of green apple, quince, honey, and floral notes, with potential for tropical fruit aromas in warmer climates.",
                palate: "High acidity with flavors of apple, pear, and citrus in dry styles, and honey, apricot, and marmalade in sweeter styles.",
                finish: "Can be crisp and clean or rich and sweet, depending on the style."
            ),
        
            wineStyles: [
                "White Wines: Ranges from dry to sweet, including sparkling and dessert wines."
            ],
           
            grapeSummary: "Chenin Blanc is valued for its high acidity and versatility, capable of producing a wide range of wine styles from bone-dry to lusciously sweet."
        )
    ),

    // Colombard Details
    Grape(
        name: "Colombard",
        details: GrapeDetails(
            origin: "Colombard is a white grape variety originating from the Charentes region in France, traditionally used in Cognac production but also appreciated for its fresh, fruity wines.",
            countries: Countries(
                primary: [
                    "France: Mainly in the Charentes and Gascony regions.\n",
                    "USA: Particularly in California.\n",
                    "South Africa: Increasingly popular for its fresh, easy-drinking wines."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of citrus, green apple, and tropical fruits with floral hints.",
                palate: "Light-bodied with high acidity, featuring flavors of lemon, green apple, and occasionally tropical fruit.",
                finish: "Crisp and refreshing with a clean, zesty finish."
            ),
           
            wineStyles: [
                "White Wines: Often used in blends to add freshness and acidity, also made into varietal wines."
            ],
           
            grapeSummary: "Colombard is appreciated for its bright acidity and fresh, fruity profile, making it a popular choice for refreshing white wines and blends."
        )
    ),
    // Cortese Details
    Grape(
        name: "Cortese",
        details: GrapeDetails(
            origin: "Cortese is a white grape variety native to the Piedmont region of Italy. It is best known for producing the wine Gavi.",
            countries: Countries(
                primary: [
                    "Italy: Predominantly in Piedmont, especially in the Gavi DOCG area."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale straw yellow.",
                aroma: "Aromas of citrus fruits, green apple, and white flowers, with hints of almond.",
                palate: "Light-bodied with high acidity, offering flavors of lemon, green apple, and a distinct minerality.",
                finish: "Crisp and refreshing with a clean, mineral finish."
            ),
            
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style, often showcasing its fresh acidity and aromatic complexity."
            ],
           
            grapeSummary: "Cortese is celebrated for its high acidity and fresh, citrus-driven profile, making it a key component in the production of Gavi wines."
        )
    ),

    // Falanghina Details
    Grape(
        name: "Falanghina",
        details: GrapeDetails(
            origin: "Falanghina is a white grape variety native to Campania in southern Italy. It is one of the region's oldest and most esteemed varieties, known for its vibrant acidity and aromatic profile.",
            countries: Countries(
                primary: [
                    "Italy: Primarily in Campania, particularly in the areas of Sannio and Campi Flegrei."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow with greenish highlights.",
                aroma: "Aromas of citrus fruits, white peach, and floral notes, with hints of herbs and almonds.",
                palate: "Medium-bodied with high acidity, featuring flavors of lemon, apple, and a distinct minerality.",
                finish: "Crisp and refreshing with a lingering citrus and mineral finish."
            ),
           
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its vibrant acidity and fresh fruit flavors."
            ],
            
            grapeSummary: "Falanghina is prized for its bright acidity and aromatic complexity, making it a standout white wine from Campania."
        )
    ),

    // Fernão Pires Details
    Grape(
        name: "Fernão Pires",
        details: GrapeDetails(
            origin: "Fernão Pires, also known as Maria Gomes in Bairrada, is a white grape variety native to Portugal. It is widely planted and valued for its aromatic qualities and versatility.",
            countries: Countries(
                primary: [
                    "Portugal: Predominantly in the regions of Bairrada, Tejo, and Lisboa."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of citrus fruits, tropical fruits, and floral notes with hints of spice.",
                palate: "Light to medium-bodied with moderate acidity, featuring flavors of orange, lime, and a touch of honey.",
                finish: "Smooth and aromatic with a lingering fruit and floral finish."
            ),
            
            wineStyles: [
                "White Wines: Often made as a varietal wine but also used in blends, showcasing its aromatic and fresh qualities."
            ],
           
            grapeSummary: "Fernão Pires is appreciated for its aromatic intensity and versatility, making it a key component in many refreshing Portuguese white wines."
        )
    ),
    // Fiano Details
    Grape(
        name: "Fiano",
        details: GrapeDetails(
            origin: "Fiano is a white grape variety native to the Campania region in southern Italy, particularly known from the town of Avellino where it produces Fiano di Avellino DOCG wines.",
            countries: Countries(
                primary: [
                    "Italy: Primarily in Campania, especially in the Avellino area."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Straw yellow with greenish highlights.",
                aroma: "Aromas of honey, pear, hazelnut, and floral notes with hints of spice.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of apple, citrus, and a touch of honey and nuts.",
                finish: "Rich and lingering with a smooth, nutty finish."
            ),
           
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its aromatic complexity and rich flavors."
            ],
           
            grapeSummary: "Fiano is prized for its rich, aromatic profile and nutty flavors, making it a standout white wine from Campania."
        )
    ),

    // Folle Blanche Details
    Grape(
        name: "Folle Blanche",
        details: GrapeDetails(
            origin: "Folle Blanche is a white grape variety from the Loire Valley in France. It is traditionally used in the production of Cognac and Armagnac, but also produces light, crisp white wines.",
            countries: Countries(
                primary: [
                    "France: Predominantly in the Loire Valley, Cognac, and Armagnac regions."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of green apple, citrus, and floral notes with hints of herbs.",
                palate: "Light-bodied with high acidity, featuring flavors of lemon, green apple, and a crisp, clean minerality.",
                finish: "Bright and refreshing with a zesty, mineral-driven finish."
            ),
           
            wineStyles: [
                "White Wines: Often made into light, crisp wines, and also used in the production of spirits."
            ],
           
            grapeSummary: "Folle Blanche is known for its high acidity and crisp, clean profile, making it a versatile grape for both wine and spirit production."
        )
    ),

    // Friulano Details
    Grape(
        name: "Friulano",
        details: GrapeDetails(
            origin: "Friulano, formerly known as Tocai Friulano, is a white grape variety native to the Friuli-Venezia Giulia region in northeastern Italy. It produces fresh, aromatic wines with a distinctive almond finish.",
            countries: Countries(
                primary: [
                    "Italy: Predominantly in Friuli-Venezia Giulia."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of pear, apple, and white flowers with hints of herbs and almond.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of green apple, pear, and a characteristic almond note.",
                finish: "Smooth and slightly bitter with a lingering almond aftertaste."
            ),
           
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its fresh fruit flavors and distinctive almond finish."
            ],
            
            grapeSummary: "Friulano is appreciated for its fresh, aromatic profile and distinctive almond finish, making it a key white wine from Friuli-Venezia Giulia."
        )
    ),
    // Furmint Details
    Grape(
        name: "Furmint",
        details: GrapeDetails(
            origin: "Furmint is a white grape variety native to Hungary, best known for its role in the production of the famous Tokaji wines. It is also used to produce dry white wines.",
            countries: Countries(
                primary: [
                    "Hungary: Especially in the Tokaj region."
                ]
        ),
            tastingNotes: TastingNotes(
                color: "Pale to golden yellow.",
                aroma: "Aromas of green apple, pear, and quince, with floral and honeyed notes in sweeter styles.",
                palate: "Medium-bodied with high acidity, featuring flavors of apple, citrus, and apricot, with a distinctive mineral character.",
                finish: "Crisp and refreshing in dry styles, luscious and long in sweet styles."
            ),
           
            wineStyles: [
                "White Wines: Ranges from dry to sweet, including the renowned Tokaji Aszú."
            ],
            
            grapeSummary: "Furmint is celebrated for its versatility and ability to produce both crisp dry wines and complex sweet wines, particularly the renowned Tokaji."
        )
    ),

    // Garganega Details
    Grape(
        name: "Garganega",
        details: GrapeDetails(
            origin: "Garganega is a white grape variety native to the Veneto region of Italy. It is the primary grape used in the production of Soave and Gambellara wines.",
            countries: Countries(
                primary: [
                    "Italy: Predominantly in Veneto, especially in the Soave and Gambellara DOC areas."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale straw yellow.",
                aroma: "Aromas of citrus fruits, peach, and almonds, with floral and herbal notes.",
                palate: "Light to medium-bodied with moderate acidity, featuring flavors of lemon, melon, and a distinct minerality.",
                finish: "Crisp and refreshing with a lingering almond and citrus finish."
            ),
           
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style, showcasing its fresh acidity and aromatic complexity."
            ],
          
            grapeSummary: "Garganega is known for its fresh, aromatic profile and is a key component in the production of Soave wines, making it one of Veneto's most important white grape varieties."
        )
    ),

    // Gewürztraminer Details
    Grape(
        name: "Gewürztraminer",
        details: GrapeDetails(
            origin: "Gewürztraminer is a highly aromatic white grape variety believed to have originated in the Tramin region (now part of South Tyrol in Italy). It later gained prominence in Alsace, France, where it is known for its distinctively spicy and floral character.",
            countries: Countries(
                primary: [
                    "France: Especially in Alsace.\n",
                    "Germany: Known as Traminer or Roter Traminer in some regions.\n",
                    "USA: Particularly in California and Oregon."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Deep golden yellow.",
                aroma: "Intense aromas of lychee, rose petals, and tropical fruits, with hints of ginger and spice.",
                palate: "Full-bodied with moderate acidity, featuring flavors of lychee, mango, and pineapple, complemented by a spicy and floral character.",
                finish: "Rich and long-lasting with a slightly bitter, spicy finish."
            ),
            
            wineStyles: [
                "White Wines: Typically made in a dry to off-dry style, showcasing its aromatic and spicy profile."
            ],
          
            grapeSummary: "Gewürztraminer is renowned for its aromatic intensity and distinctively spicy and floral character, making it one of the most recognizable white grape varieties."
        )
    ),
    // Glera Details
    Grape(
        name: "Glera",
        details: GrapeDetails(
            origin: "Glera, formerly known as Prosecco, is a white grape variety from the Veneto region of Italy. It is the primary grape used in the production of Prosecco sparkling wine.",
            countries: Countries(
                primary: [
                    "Italy: The production of Prosecco spans both Veneto and Friuli-Venezia Giulia regions, with the majority of Glera cultivation concentrated in these areas."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale straw yellow.",
                aroma: "Aromas of green apple, pear, and white flowers with hints of citrus and almond.",
                palate: "Light-bodied with high acidity, featuring flavors of apple, peach, and a touch of honey.",
                finish: "Crisp and refreshing with a clean, slightly sweet finish."
            ),
           
            wineStyles: [
                "Sparkling Wines: Primarily used for Prosecco, which can range from dry (Brut) to slightly sweet (Extra Dry)."
            ],
          
            grapeSummary: "Glera is celebrated for its role in producing Prosecco, offering bright, fruity flavors and a refreshing effervescence."
        )
    ),

    // Godello Details
    Grape(
        name: "Godello",
        details: GrapeDetails(
            origin: "Godello is a white grape variety native to the Galicia region in northwest Spain. It is particularly associated with the Valdeorras DO.",
            countries: Countries(
                primary: [
                    "Spain: Primarily in Galicia, especially in the Valdeorras and Bierzo regions."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Aromas of citrus, green apple, and pear, with subtle floral and mineral notes.",
                palate: "Medium-bodied with high acidity, featuring flavors of lemon, apple, and a distinct minerality.",
                finish: "Crisp and refreshing with a long, mineral-driven finish."
            ),
           
            wineStyles: [
                "White Wines: Often made in a dry style, showcasing its fresh acidity and mineral complexity."
            ],
            
            grapeSummary: "Godello is appreciated for its fresh acidity and mineral complexity, making it a key white grape in the Valdeorras region of Spain."
        )
    ),

    // Grechetto Details
    Grape(
        name: "Grechetto",
        details: GrapeDetails(
            origin: "Grechetto is a white grape variety native to central Italy, particularly the Umbria region. It is known for producing wines with good structure and aging potential.",
            countries: Countries(
                primary: [
                    "Italy: Primarily in Umbria and Lazio."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow with greenish tints.",
                aroma: "Aromas of apple, pear, and citrus, with hints of herbs and almond.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of green apple, lemon, and a subtle nuttiness.",
                finish: "Crisp and refreshing with a lingering almond and citrus finish."
            ),
           
            wineStyles: [
                "White Wines: Often made as a varietal wine or blended, showcasing its fresh acidity and nutty complexity."
            ],
            
            grapeSummary: "Grechetto is appreciated for its fresh acidity and subtle nutty flavors, making it a versatile white grape from central Italy."
        )
    ),

    // Greco Details
    Grape(
        name: "Greco",
        details: GrapeDetails(
            origin: "Greco is a white grape variety believed to have ancient Greek origins but has been primarily cultivated in southern Italy, especially Campania, for centuries. It is the key grape in the production of Greco di Tufo DOCG wines.",
            countries: Countries(
                primary: [
                    "Italy: Primarily in Campania, especially in the Greco di Tufo DOCG area."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of peach, apricot, and citrus, with floral and mineral notes.",
                palate: "Medium-bodied with high acidity, featuring flavors of stone fruits, lemon, and a distinct minerality.",
                finish: "Crisp and clean with a long, mineral-driven finish."
            ),
           
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its high acidity and mineral complexity."
            ],
           
            grapeSummary: "Greco is renowned for its high acidity and mineral complexity, making it one of southern Italy's most esteemed white grape varieties."
        )
    ),

    // Grenache Blanc Details
    Grape(
        name: "Grenache Blanc",
        details: GrapeDetails(
            origin: "Grenache Blanc is a white grape variety that is a mutation of the red Grenache grape. It originated in Spain and is widely planted in the Rhône Valley of France.",
            countries: Countries(
                primary: [
                    "France: Particularly in the Rhône Valley and Languedoc-Roussillon.\n",
                    "Spain: Known as Garnacha Blanca, especially in Catalonia and Navarra."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Aromas of green apple, pear, and citrus, with floral and herbal notes.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of apple, peach, and a touch of spice.",
                finish: "Smooth and slightly creamy with a lingering fruit and floral finish."
            ),
            
            wineStyles: [
                "White Wines: Often used in blends to add richness and body, but also made as a varietal wine."
            ],
           
            grapeSummary: "Grenache Blanc is valued for its versatility and ability to add body and complexity to white wines, making it a key component in many Rhône and Spanish blends."
        )
    ),
    // Gros Manseng Details
    Grape(
        name: "Gros Manseng",
        details: GrapeDetails(
            origin: "Gros Manseng is a white grape variety native to the southwest of France. It is often used in the production of Jurançon wines, both dry and sweet.",
            countries: Countries(
                primary: [
                    "France: Primarily in the southwest, especially in the Jurançon and Pacherenc du Vic-Bilh appellations."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of citrus, apricot, and white flowers, with hints of spice and honey.",
                palate: "Medium-bodied with high acidity, featuring flavors of lemon, quince, and a touch of honey.",
                finish: "Crisp and refreshing with a lingering citrus and floral finish."
            ),
           
            wineStyles: [
                "White Wines: Used for both dry and sweet wines, showcasing its high acidity and aromatic complexity."
            ],
           
            grapeSummary: "Gros Manseng is known for its high acidity and aromatic complexity, making it a versatile grape for both dry and sweet wines in southwest France."
        )
    ),

    // Grüner Veltliner Details
    Grape(
        name: "Grüner Veltliner",
        details: GrapeDetails(
            origin: "Grüner Veltliner is a white grape variety that is native to Austria. It is the country's most widely planted grape and is known for producing fresh, aromatic wines.",
            countries: Countries(
                primary: [
                    "Austria: Especially in the regions of Wachau, Kamptal, and Kremstal."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow with greenish highlights.",
                aroma: "Aromas of green apple, lime, and white pepper, with hints of herbs and minerals.",
                palate: "Light to medium-bodied with high acidity, featuring flavors of citrus, green apple, and a characteristic peppery spice.",
                finish: "Crisp and refreshing with a long, mineral-driven finish."
            ),
            
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its fresh acidity and characteristic peppery notes."
            ],
           
            grapeSummary: "Grüner Veltliner is celebrated for its fresh acidity and distinctive peppery spice, making it Austria's most important and versatile white grape variety."
        )
    ),

    // Hárslevelű Details
    Grape(
        name: "Hárslevelű",
        details: GrapeDetails(
            origin: "Hárslevelű is a white grape variety native to Hungary. It is often blended with Furmint in the production of the famous Tokaji wines, but also used to produce aromatic dry wines.",
            countries: Countries(
                primary: [
                    "Hungary: Especially in the Tokaj region."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Aromas of lime blossom, honey, and apricot, with floral and spicy notes.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of peach, melon, and a hint of spice.",
                finish: "Smooth and aromatic with a lingering honeyed finish."
            ),
            
            wineStyles: [
                "White Wines: Used for both dry and sweet wines, often blended with Furmint."
            ],
            
            grapeSummary: "Hárslevelű is known for its aromatic intensity and versatility, playing a crucial role in the production of both dry and sweet Tokaji wines."
        )
    ),
    // Irsai Olivér Details
    Grape(
        name: "Irsai Olivér",
        details: GrapeDetails(
            origin: "Irsai Olivér is a white grape variety developed in Hungary. It is known for producing aromatic and fresh white wines.",
            countries: Countries(
                primary: [
                    "Hungary: Widely grown throughout the country."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Intense aromas of muscat, citrus, and tropical fruits, with floral notes.",
                palate: "Light-bodied with moderate acidity, featuring flavors of lemon, orange, and a touch of spice.",
                finish: "Crisp and refreshing with a lingering fruity finish."
            ),
            
            wineStyles: [
                "White Wines: Typically made in a dry, aromatic style, showcasing its fresh fruit and floral notes."
            ],
            
            grapeSummary: "Irsai Olivér is celebrated for its aromatic intensity and fresh fruit flavors, making it a popular choice for aromatic white wines in Hungary."
        )
    ),

    // Juhfark Details
    Grape(
        name: "Juhfark",
        details: GrapeDetails(
            origin: "Juhfark is a rare white grape variety native to Hungary, particularly known from the Somló region. It is appreciated for its high acidity and unique flavor profile.",
            countries: Countries(
                primary: [
                    "Hungary: Primarily in the Somló region."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Aromas of green apple, citrus, and minerality, with hints of herbs and spice.",
                palate: "Medium-bodied with high acidity, featuring flavors of lemon, green apple, and a distinct mineral character.",
                finish: "Crisp and clean with a long, mineral-driven finish."
            ),
           
            wineStyles: [
                "White Wines: Often made in a dry style, showcasing its high acidity and mineral complexity."
            ],
            
            grapeSummary: "Juhfark is known for its high acidity and distinct mineral character, making it a unique and sought-after white grape from Hungary."
        )
    ),

    // Kerner Details
    Grape(
        name: "Kerner",
        details: GrapeDetails(
            origin: "Kerner is a white grape variety developed in Germany by crossing Riesling with Trollinger. It is known for its aromatic intensity and crisp acidity.",
            countries: Countries(
                primary: [
                    "Germany: Particularly in the regions of Pfalz, Rheinhessen, and Mosel.\n",
                    "Italy: Also grown in South Tyrol."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of green apple, peach, and citrus, with floral and spicy notes.",
                palate: "Light to medium-bodied with high acidity, featuring flavors of apple, pear, and a hint of spice.",
                finish: "Crisp and refreshing with a lingering fruity and spicy finish."
            ),
            
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its fresh acidity and aromatic complexity."
            ],
           
            grapeSummary: "Kerner is appreciated for its crisp acidity and aromatic intensity, making it a versatile and popular white grape variety in Germany and beyond."
        )
    ),
    // Macabeo (Viura) Details
    Grape(
        name: "Macabeo",
        details: GrapeDetails(
            origin: "Macabeo, also known as Viura in Rioja, is a white grape variety native to Spain. It is widely used in both still white wines and as a key component in Cava sparkling wines.",
            countries: Countries(
                primary: [
                    "Spain: Particularly in Rioja, Catalonia (for Cava), and other regions.\n",
                    "France: Known as Macabeu, especially in the Languedoc-Roussillon."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of citrus, green apple, and floral notes with a hint of almond.",
                palate: "Light to medium-bodied with moderate acidity, featuring flavors of lemon, apple, and a slight nuttiness.",
                finish: "Crisp and clean with a refreshing citrus finish."
            ),
            
            wineStyles: [
                "White Wines: Often used in both young and aged white wines.\n",
                "Sparkling Wines: Key component in Cava."
            ],
           
            grapeSummary: "Macabeo (Viura) is a versatile grape known for its crisp acidity and ability to produce both fresh and aged white wines, as well as being a key component in Cava sparkling wines."
        )
    ),

    // Malmsey Details
    Grape(
        name: "Malmsey",
        details: GrapeDetails(
            origin: "Malmsey is a white grape variety specifically associated with the production of rich, sweet Madeira wines. It belongs to the broader Malvasia family of grapes, which have a long history of cultivation across the Mediterranean.",
            countries: Countries(
                primary: [
                    "Portugal: Primarily in Madeira, where it is used for fortified wines.\n",
                    "Italy: As part of the Malvasia family, it is cultivated in regions such as Tuscany and Lazio to produce a variety of wine styles."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Deep gold to amber.",
                aroma: "Aromas of dried fruits, caramel, and honey, with hints of spice and nuts.",
                palate: "Full-bodied with moderate acidity, featuring flavors of raisins, figs, and a rich, honeyed sweetness.",
                finish: "Long and luscious with a lingering sweet and nutty finish."
            ),
           
            wineStyles: [
                        "Fortified Wines: Primarily used in sweet Madeira wines in Portugal.",
                        "White Wines: In Italy, Malvasia is used to produce a range of white wines, from light and dry to rich and aromatic."
                    ],
           
            grapeSummary: "Malmsey is renowned for its role in producing rich, sweet Madeira wines, offering complex flavors and a luxurious finish."
        )
    ),

    // Marsanne Details
    Grape(
        name: "Marsanne",
        details: GrapeDetails(
            origin: "Marsanne is a white grape variety originating from the Rhône Valley in France. It is often blended with Roussanne and is known for producing rich, full-bodied white wines.",
            countries: Countries(
                primary: [
                    "France: Particularly in the northern Rhône Valley (Hermitage, Crozes-Hermitage, Saint-Joseph).\n",
                    "Australia: Grown in regions like Victoria."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Aromas of pear, peach, and honeysuckle, with hints of nuts and spice.",
                palate: "Full-bodied with moderate acidity, featuring flavors of stone fruits, melon, and a touch of almond.",
                finish: "Rich and lingering with a slightly oily texture and a nutty finish."
            ),
            
            wineStyles: [
                "White Wines: Often blended with Roussanne, showcasing its rich, full-bodied character. Also vinified as a varietal wine, particularly in Australia, to highlight its unique richness and texture."
            ],
           
            grapeSummary: "Marsanne is celebrated for its rich, full-bodied character and is often blended with Roussanne or vinified on its own to produce complex, aromatic white wines."
        )
    ),
    // Melon de Bourgogne Details
    Grape(
        name: "Melon de Bourgogne",
        details: GrapeDetails(
            origin: "Melon de Bourgogne is a white grape variety originating from Burgundy, France. It is best known for its role in producing the light, crisp wines of Muscadet in the Loire Valley.",
            countries: Countries(
                primary: [
                    "France: Particularly in the Loire Valley, especially the Muscadet appellations."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of green apple, lemon, and mineral notes, with hints of bread dough from extended lees aging.",
                palate: "Light-bodied with high acidity, featuring flavors of citrus, green apple, and a distinct minerality.",
                finish: "Crisp and refreshing with a clean, mineral-driven finish."
            ),
         
            wineStyles: [
                        "White Wines: Typically made in a dry, unoaked style, often with extended lees aging ('sur lie') to add complexity and a subtle bread dough character."
                    ],
          
            grapeSummary: "Melon de Bourgogne is valued for its high acidity and fresh, mineral-driven profile, making it the ideal grape for the crisp, refreshing wines of Muscadet. The grape's ability to thrive in the Loire Valley's maritime climate and its compatibility with extended lees aging ('sur lie') techniques contributes to the unique character of Muscadet wines."
        )
    ),

    // Moscatel Details
    Grape(
        name: "Moscatel",
        details: GrapeDetails(
            origin: "Moscatel, also known as Muscat, is one of the oldest and most genetically diverse grape varieties in the world, with a rich history of cultivation across the Mediterranean and beyond. It is known for its intensely aromatic wines, ranging from sweet to dry styles.",
            countries: Countries(
                primary: [
                    "Spain: Particularly in regions like Valencia and Andalucía.\n",
                    "Portugal: Known as Moscatel in Setúbal.\n",
                    "Italy: Known as Moscato, especially in Piedmont (for Moscato d'Asti) and Sicily.\n",
                    "France: Known as Muscat, especially in Languedoc-Roussillon and Alsace.\n",
                    "Greece: Grown widely, especially in Samos for Muscat of Samos."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Intense aromas of orange blossom, apricot, and honey, with floral, spicy, and sometimes musky notes.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of ripe peach, orange, and a touch of honey, with variations depending on the style.",
                finish: "Sweet and luscious with a long, aromatic finish, or crisp and refreshing in drier styles."
            ),
            
            wineStyles: [
                "White Wines: Often made in sweet and fortified styles, showcasing its aromatic intensity, but also produced as dry and sparkling wines in regions like Italy (Moscato d'Asti) and Greece (Muscat of Samos)."
            ],
            
            grapeSummary: "Moscatel is celebrated for its intensely aromatic wines, capable of producing a wide range of styles from sweet and fortified to dry and sparkling, making it one of the most versatile and widely cultivated grape varieties globally."
        )
    ),

    // Moschofilero Details
    Grape(
        name: "Moschofilero",
        details: GrapeDetails(
            origin: "Moschofilero is a white grape variety native to Greece, particularly grown in the Peloponnese region. It is known for producing aromatic and floral wines.",
            countries: Countries(
                primary: [
                    "Greece: Primarily in the Peloponnese, especially in the Mantinia PDO."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow with pinkish tints.",
                aroma: "Aromas of rose petals, citrus, and spices, with hints of tropical fruits.",
                palate: "Light-bodied with high acidity, featuring flavors of lemon, orange, and a touch of spice.",
                finish: "Crisp and aromatic with a refreshing floral finish."
            ),
           
            wineStyles: [
                "White Wines: Typically made in a dry, aromatic style, showcasing its floral and citrus notes."
            ],
           
            grapeSummary: "Moschofilero is known for its aromatic and floral character, making it a unique and distinctive white grape from Greece."
        )
    ),
    // Müller-Thurgau Details
    Grape(
        name: "Müller-Thurgau",
        details: GrapeDetails(
            origin: "Müller-Thurgau is a white grape variety developed in Germany in the late 19th century by crossing Riesling with Madeleine Royale. It is known for its early ripening and ability to grow in a variety of climates.",
            countries: Countries(
                primary: [
                    "Germany: Widely grown in regions like Rheinhessen and Mosel.\n",
                    "Switzerland: “Known as Riesling-Silvaner due to the historical belief that it was a cross between Riesling and Silvaner."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of green apple, peach, and floral notes with a hint of spice.",
                palate: "Light-bodied with moderate acidity, featuring flavors of apple, pear, and a touch of citrus.",
                finish: "Crisp and refreshing with a clean, fruity finish."
            ),
          
            wineStyles: [
                "White Wines: Typically made in a dry to off-dry style, showcasing its fresh fruit and floral notes."
            ],
           
            grapeSummary: "Müller-Thurgau is valued for its early ripening and fresh, fruity profile, making it a versatile and widely planted grape variety in Germany and beyond."
        )
    ),

    // Muscadelle Details
    Grape(
        name: "Muscadelle",
        details: GrapeDetails(
            origin: "Muscadelle is a white grape variety native to France, often used in the production of Bordeaux and Australian sweet wines. It is known for its aromatic intensity and floral character.",
            countries: Countries(
                primary: [
                    "France: Particularly in Bordeaux and Bergerac.\n",
                    "Australia: Especially in Rutherglen for sweet wines."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Aromas of honey, orange blossom, and tropical fruits with hints of spice.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of apricot, peach, and a touch of honey.",
                finish: "Sweet and aromatic with a long, fruity finish."
            ),
           
            wineStyles: [
                "White Wines: Often used in blends for sweet and fortified wines."
            ],
            
            grapeSummary: "Muscadelle is celebrated for its aromatic intensity and floral character, making it a key component in many sweet and fortified wines from Bordeaux and Australia."
        )
    ),

    // Muscat of Alexandria Details
    Grape(
        name: "Muscat of Alexandria",
        details: GrapeDetails(
            origin: "Muscat of Alexandria is one of the oldest known grape varieties, believed to have originated in Egypt. It is part of the Muscat family and is used for both table grapes and wine production.",
            countries: Countries(
                primary: [
                    "Spain: Particularly in regions like Valencia and Málaga.\n",
                    "Italy: Known as Zibibbo, especially in Sicily.\n",
                    "Australia: Grown in various regions including Rutherglen for fortified wines."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Aromas of orange blossom, apricot, and honey, with floral and spicy notes.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of ripe peach, orange, and a touch of honey.",
                finish: "Sweet and luscious with a long, aromatic finish."
            ),
           
            wineStyles: [
                "White Wines: Often made in sweet and fortified styles, showcasing its aromatic intensity."
            ],
           
            grapeSummary: "Muscat of Alexandria is celebrated for its intensely aromatic and sweet wines, making it one of the most versatile and widely cultivated grape varieties."
        )
    ),
    
    // Muscat Blanc à Petits Grains Details
    Grape(
        name: "Muscat Blanc à Petits Grains",
        details: GrapeDetails(
            origin: "Muscat Blanc à Petits Grains is one of the oldest and most esteemed grape varieties in the Muscat family, believed to have originated in ancient Greece. It is known for its small berries and intensely aromatic wines, often used in the production of both sweet and dry wines.",
            countries: Countries(
                primary: [
                    "France: Especially in regions like Alsace, Languedoc-Roussillon, and the Rhône Valley for Muscat de Beaumes-de-Venise and Muscat de Rivesaltes.\n",
                    "Italy: Known as Moscato Bianco, particularly in Piedmont for Moscato d'Asti and Asti Spumante.\n",
                    "Greece: Widely grown in Samos and Patras, where it is used to produce sweet wines like Muscat of Samos.\n",
                    "Spain: Grown in regions like Valencia and Málaga, often used in sweet wine production."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale straw to deep gold, depending on the wine style.",
                aroma: "Intense aromas of orange blossom, rose, honeysuckle, and grapefruit, with hints of fresh herbs and spices.",
                palate: "Light to medium-bodied with a refreshing acidity, featuring flavors of peach, apricot, and citrus, with a honeyed sweetness in sweeter styles.",
                finish: "Crisp and floral in dry styles, or rich and long-lasting with a sweet, aromatic finish in dessert wines."
            ),
           
            wineStyles: [
                "White Wines: Produced in a variety of styles, including dry, sweet, fortified, and sparkling, showcasing its aromatic complexity and versatility."
            ],
          
            grapeSummary: "Muscat Blanc à Petits Grains is celebrated for its aromatic intensity and versatility, producing some of the world's finest sweet wines, as well as dry and sparkling wines with a distinct floral and fruity character."
        )
    ),

    // Muscat Ottonel Details
    Grape(
        name: "Muscat Ottonel",
        details: GrapeDetails(
            origin: "Muscat Ottonel is a white grape variety developed in France in the mid-19th century. It is known for its aromatic wines and is widely grown in Eastern Europe and Alsace.",
            countries: Countries(
                primary: [
                    "France: Particularly in Alsace.\n",
                    "Hungary: Widely grown for its aromatic qualities.\n",
                    "Romania: Known for its sweet and aromatic wines."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of rose petals, lychee, and muscat, with hints of citrus and spice.",
                palate: "Light-bodied with moderate acidity, featuring flavors of peach, apricot, and a touch of honey.",
                finish: "Aromatic and refreshing with a lingering floral finish."
            ),
           
            wineStyles: [
                "White Wines: Often made in off-dry to sweet styles, showcasing its aromatic intensity."
            ],
           
            grapeSummary: "Muscat Ottonel is valued for its aromatic intensity and fresh, floral character, making it a popular choice for aromatic white wines in Eastern Europe and Alsace."
        )
    ),

    // Olaszrizling (Welschriesling) Details
    Grape(
        name: "Olaszrizling (Welschriesling)",
        details: GrapeDetails(
            origin: "Olaszrizling, also known as Welschriesling, is a white grape variety widely grown in Central Europe. Despite its name, it is not related to Riesling.",
            countries: Countries(
                primary: [
                    "Hungary: Known as Olaszrizling.\n",
                    "Austria: Known as Welschriesling.\n",
                    "Croatia: Known as Graševina."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of green apple, citrus, and white flowers, with hints of almonds.",
                palate: "Light-bodied with high acidity, featuring flavors of lemon, green apple, and a touch of bitterness.",
                finish: "Crisp and refreshing with a clean, slightly bitter finish."
            ),
           
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its fresh acidity and light, crisp flavors."
            ],
            
            grapeSummary: "Olaszrizling (Welschriesling) is appreciated for its fresh acidity and light, crisp profile, making it a versatile and widely planted grape variety in Central Europe."
        )
    ),
    // Palomino Details
    Grape(
        name: "Palomino",
        details: GrapeDetails(
            origin: "Palomino is a white grape variety native to Spain, primarily known for its role in the production of Sherry in the Jerez region.",
            countries: Countries(
                primary: [
                    "Spain: Particularly in the Jerez region for Sherry production."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of apple, almond, and chamomile with subtle saline notes.",
                palate: "Light-bodied with moderate acidity, featuring flavors of apple, citrus, and a distinctive briny character.",
                finish: "Crisp and dry with a clean, slightly nutty finish."
            ),
            
            wineStyles: [
                "Fortified Wines: Primarily used in the production of Sherry, including Fino, Manzanilla, and Amontillado styles."
            ],
           
            grapeSummary: "Palomino is the backbone of Sherry production, known for its light, crisp wines with a distinctive saline and nutty character."
        )
    ),

    // Parellada Details
    Grape(
        name: "Parellada",
        details: GrapeDetails(
            origin: "Parellada is a white grape variety from Spain, primarily used in the production of Cava, the country's renowned sparkling wine.",
            countries: Countries(
                primary: [
                    "Spain: Particularly in Catalonia for Cava production."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of green apple, pear, and citrus with floral notes.",
                palate: "Light-bodied with moderate acidity, featuring flavors of apple, lemon, and a hint of herbs.",
                finish: "Crisp and refreshing with a clean, fruity finish."
            ),
           
            wineStyles: [
                "Sparkling Wines: Primarily used in blends for Cava, contributing freshness and elegance."
            ],
           
            grapeSummary: "Parellada is a key grape in the production of Cava, valued for its fresh acidity and delicate flavors, making it an essential component in Spain's sparkling wine industry."
        )
    ),

    // Pedro Ximénez Details
    Grape(
        name: "Pedro Ximénez",
        details: GrapeDetails(
            origin: "Pedro Ximénez is a white grape variety from Spain, primarily renowned for producing intensely sweet, dark dessert wines known as Pedro Ximénez Sherry in the Jerez and Montilla-Moriles regions.",
            countries: Countries(
                primary: [
                    "Spain: Especially in the Jerez and Montilla-Moriles regions."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Deep amber to mahogany.",
                aroma: "Aromas of dried figs, raisins, molasses, and spice with hints of coffee and chocolate.",
                palate: "Full-bodied with low acidity, featuring rich flavors of dried fruits, caramel, and a touch of spice.",
                finish: "Lusciously sweet with a long, complex finish."
            ),
           
            wineStyles: [
                "Fortified Wines: Used to produce rich, sweet dessert wines known as Pedro Ximénez Sherry."
            ],
            
            grapeSummary: "Pedro Ximénez is celebrated for its role in producing Pedro Ximénez Sherry, an intensely sweet and rich dessert wine with complex flavors and a luxurious finish, making it a staple in the Sherry production of Spain."
        )
    ),
    // Petit Manseng Details
    Grape(
        name: "Petit Manseng",
        details: GrapeDetails(
            origin: "Petit Manseng is a white grape variety native to the southwest of France, particularly the Jurançon region. It is known for its thick skins and ability to produce both dry and sweet wines.",
            countries: Countries(
                primary: [
                    "France: Particularly in Jurançon and Pacherenc du Vic-Bilh."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Aromas of tropical fruits, citrus, and spice with floral notes.",
                palate: "Medium-bodied with high acidity, featuring flavors of pineapple, mango, and a hint of honey.",
                finish: "Crisp and refreshing with a long, fruity finish."
            ),
           
            wineStyles: [
                "White Wines: Used for both dry and sweet wines, showcasing its high acidity and aromatic complexity."
            ],
          
            grapeSummary: "Petit Manseng is celebrated for its high acidity and aromatic intensity, making it a versatile grape for both dry and sweet wines in southwest France."
        )
    ),

    // Picpoul Details
    Grape(
        name: "Picpoul",
        details: GrapeDetails(
            origin: "Picpoul, also known as Piquepoul, is a white grape variety native to the Languedoc region of France. It is known for producing crisp, high-acid wines, particularly in the Picpoul de Pinet appellation.",
            countries: Countries(
                primary: [
                    "France: Particularly in the Languedoc, especially Picpoul de Pinet."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of lemon, green apple, and white flowers with hints of herbs.",
                palate: "Light-bodied with high acidity, featuring flavors of citrus, green apple, and a distinct minerality.",
                finish: "Crisp and refreshing with a clean, zesty finish."
            ),
           
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style, showcasing its fresh acidity and citrus flavors."
            ],
           
            grapeSummary: "Picpoul is appreciated for its high acidity and fresh citrus flavors, making it a key grape in the production of crisp, refreshing white wines in the Languedoc."
        )
    ),

    // Pinot Blanc Details
    Grape(
        name: "Pinot Blanc",
        details: GrapeDetails(
            origin: "Pinot Blanc is a white grape variety believed to have originated in Burgundy, France. It is known for producing elegant, medium-bodied wines.",
            countries: Countries(
                primary: [
                    "France: Particularly in Alsace and Burgundy.\n",
                    "Germany: Known as Weissburgunder.\n",
                    "Italy: Known as Pinot Bianco, especially in Alto Adige."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Aromas of apple, pear, and white flowers with hints of citrus and almond.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of green apple, lemon, and a touch of minerality.",
                finish: "Smooth and elegant with a lingering fruity finish."
            ),
           
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its fresh fruit and elegant profile."
            ],
           
            grapeSummary: "Pinot Blanc is valued for its fresh acidity and elegant fruit flavors, making it a versatile and widely planted grape variety in many cool-climate wine regions."
        )
    ),
    // Pinot Gris Details
    Grape(
        name: "Pinot Gris",
        details: GrapeDetails(
            origin: "Pinot Gris, also known as Grauburgunder in Germany and Pinot Grigio in Italy, is a white grape variety believed to have originated in Burgundy, France. It is known for producing a wide range of wine styles, from dry to sweet, and is closely related to Pinot Noir.",
            countries: Countries(
                primary: [
                    "France: Particularly in Alsace.\n",
                    "Italy: Known as Pinot Grigio, especially in Veneto and Friuli-Venezia Giulia.\n",
                    "Germany: Known as Grauburgunder, especially in Baden, Pfalz, and Rheinhessen.\n",
                    "USA: Particularly in Oregon."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold to coppery pink.",
                aroma: "Aromas of ripe pear, apple, and citrus with hints of honey and spice.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of pear, peach, and melon with a touch of spice.",
                finish: "Smooth and slightly creamy with a long, fruit-driven finish."
            ),
           
            wineStyles: [
                "White Wines: Ranges from dry to off-dry, showcasing its rich fruit flavors and aromatic complexity."
            ],
           
            grapeSummary: "Pinot Gris, or Grauburgunder, is valued for its aromatic complexity and rich fruit flavors, making it a versatile and popular white wine variety enjoyed worldwide."
        )
    ),

    // Ribolla Gialla Details
    Grape(
        name: "Ribolla Gialla",
        details: GrapeDetails(
            origin: "Ribolla Gialla is a white grape variety native to the Friuli-Venezia Giulia region in northeastern Italy. It is known for producing crisp, aromatic wines with good acidity.",
            countries: Countries(
                primary: [
                    "Italy: Particularly in Friuli-Venezia Giulia.\n",
                    "Slovenia: Known as Rebula."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of citrus, green apple, and white flowers with hints of herbs.",
                palate: "Light-bodied with high acidity, featuring flavors of lemon, apple, and a distinct minerality.",
                finish: "Crisp and refreshing with a clean, zesty finish."
            ),
           
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style, showcasing its fresh acidity and citrus flavors."
            ],
        
            grapeSummary: "Ribolla Gialla is appreciated for its high acidity and fresh citrus flavors, making it a key grape in the production of crisp, aromatic white wines in Friuli-Venezia Giulia."
        )
    ),

    // Riesling Details
    Grape(
        name: "Riesling",
        details: GrapeDetails(
            origin: "Riesling is a white grape variety originating from the Rhine region of Germany. It is known for its aromatic intensity, high acidity, and versatility in producing wines ranging from dry to sweet.",
            countries: Countries(
                primary: [
                    "Germany: Particularly in the Mosel, Rheingau, and Pfalz regions.\n",
                    "France: Especially in Alsace.\n",
                    "Australia: Particularly in the Clare and Eden Valleys."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow to deep gold.",
                aroma: "Aromas of green apple, lime, and peach with floral notes and hints of petrol (especially in aged wines).",
                palate: "Light to medium-bodied with high acidity, featuring flavors of citrus, green apple, and stone fruits with a distinct minerality.",
                finish: "Crisp and refreshing with a long, zesty finish."
            ),
          
            wineStyles: [
                "White Wines: Ranges from bone-dry to lusciously sweet, showcasing its aromatic complexity and high acidity."
            ],
           
            grapeSummary: "Riesling is celebrated for its aromatic intensity, high acidity, and versatility, making it one of the most esteemed and widely planted white grape varieties in the world."
        )
    ),
    // Robola Details
    Grape(
        name: "Robola",
        details: GrapeDetails(
            origin: "Robola is a white grape variety native to the Ionian Islands of Greece, particularly the island of Cephalonia. It is known for producing crisp, mineral-driven wines.",
            countries: Countries(
                primary: [
                    "Greece: Particularly in the Ionian Islands, especially Cephalonia."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of citrus, green apple, and white flowers with hints of herbs.",
                palate: "Light-bodied with high acidity, featuring flavors of lemon, green apple, and a distinct minerality.",
                finish: "Crisp and refreshing with a clean, zesty finish."
            ),
          
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style, showcasing its fresh acidity and mineral complexity."
            ],
           
            grapeSummary: "Robola is appreciated for its high acidity and fresh citrus flavors, making it a key grape in the production of crisp, mineral-driven white wines from the Ionian Islands."
        )
    ),

    // Roussanne Details
    Grape(
        name: "Roussanne",
        details: GrapeDetails(
            origin: "Roussanne is a white grape variety originating from the Rhône Valley in France. It is often blended with Marsanne and is known for producing rich, aromatic wines with good aging potential.",
            countries: Countries(
                primary: [
                    "France: Particularly in the northern and southern Rhône Valley (Hermitage, Crozes-Hermitage, Châteauneuf-du-Pape).\n",
                    "USA: Particularly in California."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Aromas of pear, apricot, and herbal tea with floral and honeyed notes.",
                palate: "Medium to full-bodied with moderate acidity, featuring flavors of stone fruits, melon, and a touch of spice.",
                finish: "Rich and long-lasting with a slightly oily texture and a honeyed finish."
            ),
           
            wineStyles: [
                "White Wines: Often blended with Marsanne, showcasing its rich, aromatic character."
            ],
            
            grapeSummary: "Roussanne is celebrated for its rich, aromatic character and is often blended with Marsanne to produce complex, full-bodied white wines with good aging potential."
        )
    ),

    // Rkatsiteli Details
    Grape(
        name: "Rkatsiteli",
        details: GrapeDetails(
            origin: "Rkatsiteli is a white grape variety native to Georgia, with a history of cultivation dating back thousands of years. It is known for producing aromatic and high-acid wines.",
            countries: Countries(
                primary: [
                    "Georgia: Widely grown throughout the country."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Aromas of green apple, quince, and floral notes with hints of spice.",
                palate: "Medium-bodied with high acidity, featuring flavors of apple, citrus, and a distinct minerality.",
                finish: "Crisp and refreshing with a long, zesty finish."
            ),
            
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its fresh acidity and aromatic complexity."
            ],
          
            grapeSummary: "Rkatsiteli is valued for its high acidity and aromatic intensity, making it one of the most important and widely planted white grape varieties in Georgia."
        )
    ),


    // Sauvignon Blanc Details
    Grape(
        name: "Sauvignon Blanc",
        details: GrapeDetails(
            origin: "Sauvignon Blanc is a white grape variety with a somewhat contested origin, believed to have ties to both the Loire Valley and Bordeaux regions of France. While some argue it first appeared in the Loire, others claim Bordeaux as its true birthplace. It is known for its high acidity, aromatic intensity, and versatility in producing primarily dry wines, though it is also used in the production of sweet wines, particularly in Bordeaux.",
            countries: Countries(
                primary: [
                    "France: Particularly in the Loire Valley (Sancerre, Pouilly-Fumé) and Bordeaux.\n",
                    "New Zealand: Especially in Marlborough.\n",
                    "USA: Particularly in California, where it is sometimes known as Fumé Blanc, typically indicating an oaked style."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow to light gold.",
                aroma: "Aromas of green apple, lime, and passion fruit with herbal notes and hints of bell pepper.",
                palate: "Light to medium-bodied with high acidity, featuring flavors of citrus, green apple, and tropical fruits with a distinct minerality.",
                finish: "Crisp and refreshing with a long, zesty finish."
            ),
           
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its fresh acidity and aromatic complexity."
            ],
           
            grapeSummary: "Sauvignon Blanc is celebrated for its high acidity, aromatic intensity, and versatility, making it one of the most popular and widely planted white grape varieties in the world."
        )
    ),

    // Savagnin Details
    Grape(
        name: "Savagnin",
        details: GrapeDetails(
            origin: "Savagnin is a white grape variety originating from the Jura region in eastern France. It is best known for producing the unique and oxidative Vin Jaune wines.",
            countries: Countries(
                primary: [
                    "France: Particularly in the Jura region."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Aromas of green apple, almond, and curry spice with hints of walnut and yeast.",
                palate: "Medium-bodied with high acidity, featuring flavors of apple, lemon, and a distinct nuttiness.",
                finish: "Long and complex with a distinctive oxidative character."
            ),
           
            wineStyles: [
                "White Wines: Often made in an oxidative style, showcasing its complex and unique flavors."
            ],
           
            grapeSummary: "Savagnin is celebrated for its unique and complex flavor profile, making it a key grape in the production of the distinctive Vin Jaune wines from the Jura region."
        )
    ),
    // Savatiano Details
    Grape(
        name: "Savatiano",
        details: GrapeDetails(
            origin: "Savatiano is a white grape variety native to Greece, primarily grown in the Attica region. It is known for its resilience to heat and drought, making it well-suited to the Greek climate.",
            countries: Countries(
                primary: [
                    "Greece: Particularly in the Attica region."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of citrus, green apple, and white flowers with hints of herbs.",
                palate: "Light to medium-bodied with moderate acidity, featuring flavors of lemon, apple, and a slight nuttiness.",
                finish: "Crisp and refreshing with a clean, mineral finish."
            ),
           
            wineStyles: [
                        "White Wines: Typically made in a dry, crisp style, showcasing its fresh acidity and mineral character.",
                        "Retsina: A traditional Greek wine made by adding pine resin during fermentation, giving it a distinctive pine flavor."
                    ],
           
            grapeSummary: "Savatiano is appreciated for its resilience to heat and its ability to produce crisp, refreshing wines that are a staple in Greek wine culture."
        )
    ),

    // Scheurebe Details
    Grape(
        name: "Scheurebe",
        details: GrapeDetails(
            origin: "Scheurebe is a white grape variety developed in Germany in the early 20th century by crossing Riesling with Bukettraube. It is known for its aromatic intensity and versatility in producing both dry and sweet wines.",
            countries: Countries(
                primary: [
                    "Germany: Particularly in the Rheinhessen and Pfalz regions.\n",
                    "Austria: Grown in regions like Burgenland and Lower Austria."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of blackcurrant, grapefruit, and peach with floral and herbal notes. The presence of blackcurrant is distinctive and unusual for a white grape, adding to Scheurebe's unique profile.",
                palate: "Medium-bodied with high acidity, featuring flavors of citrus, peach, and a hint of spice.",
                finish: "Crisp and aromatic with a long, fruity finish."
            ),
           
            wineStyles: [
                "White Wines: Ranges from dry to sweet, showcasing its aromatic intensity and fresh acidity."
            ],
         
            grapeSummary: "Scheurebe is celebrated for its aromatic intensity and versatility, making it a popular choice for both dry and sweet wines in Germany and Austria."
        )
    ),

    // Sercial Details
    Grape(
        name: "Sercial",
        details: GrapeDetails(
            origin: "Sercial is a white grape variety native to Portugal, particularly the island of Madeira. It is known for producing dry, high-acid wines that are a key component in Madeira wine production.",
            countries: Countries(
                primary: [
                    "Portugal: Particularly on the island of Madeira."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Aromas of lemon, green apple, and almonds with hints of dried fruits and spice.",
                palate: "Light-bodied with high acidity, featuring flavors of citrus, green apple, and a distinct nuttiness.",
                finish: "Crisp and dry with a long, mineral-driven finish."
            ),
           
            wineStyles: [
                "Fortified Wines: Primarily used in the production of dry Madeira wines."
            ],
           
            grapeSummary: "Sercial is valued for its high acidity and ability to produce dry, crisp wines that are a key component in the production of Madeira, offering a distinct mineral and nutty character."
        )
    ),
    // Semillon Details
    Grape(
        name: "Semillon",
        details: GrapeDetails(
            origin: "Semillon is a white grape variety originating from the Bordeaux region of France. It is known for its role in producing both dry and sweet wines, including the famous Sauternes.",
            countries: Countries(
                primary: [
                    "France: Particularly in Bordeaux.\n",
                    "Australia: Especially in the Hunter Valley.\n",
                    "South Africa: Widely grown in various regions."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow to deep gold.",
                aroma: "Aromas of citrus, peach, and fig with hints of honey and beeswax in aged wines.",
                palate: "Medium to full-bodied with moderate acidity, featuring flavors of lemon, apple, and a touch of honey.",
                finish: "Rich and long-lasting with a smooth, slightly oily texture."
            ),
           
            wineStyles: [
                "White Wines: Ranges from dry to sweet, including botrytized dessert wines like Sauternes."
            ],
           
            grapeSummary: "Semillon is celebrated for its versatility and ability to produce both dry and sweet wines, with a rich, complex profile that develops beautifully with age."
        )
    ),

    // Silvaner Details
    Grape(
        name: "Silvaner",
        details: GrapeDetails(
            origin: "Silvaner is a white grape variety believed to have originated in Austria or Germany. It is widely grown in Franconia and Rheinhessen regions of Germany.",
            countries: Countries(
                primary: [
                    "Germany: Particularly in Franconia (Franken) and Rheinhessen.\n",
                    "Austria: Grown in various regions.\n",
                    "France: Known as Sylvaner, particularly in Alsace."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of green apple, pear, and herbs with hints of citrus and mineral notes.",
                palate: "Light to medium-bodied with moderate acidity, featuring flavors of apple, melon, and a touch of spice.",
                finish: "Crisp and clean with a refreshing, mineral-driven finish."
            ),
           
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its fresh acidity and mineral complexity."
            ],
            
            grapeSummary: "Silvaner is valued for its fresh acidity and crisp, clean profile, making it a versatile and widely planted grape variety in Germany and Austria."
        )
    ),

    // Torrontés Details
    Grape(
        name: "Torrontés",
        details: GrapeDetails(
            origin: "Torrontés is a white grape variety native to Argentina, where it is primarily grown. It is known for producing highly aromatic and floral wines.",
            countries: Countries(
                primary: [
                    "Argentina: Particularly in the regions of Salta, La Rioja, and Mendoza."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Intense aromas of jasmine, rose, and citrus with hints of peach and tropical fruits.",
                palate: "Light to medium-bodied with moderate acidity, featuring flavors of lemon, lychee, and peach.",
                finish: "Aromatic and refreshing with a lingering floral and fruity finish."
            ),
           
            wineStyles: [
                "White Wines: Typically made in a dry, aromatic style, showcasing its intense floral and fruit aromas."
            ],
           
            grapeSummary: "Torrontés is celebrated for its highly aromatic and floral character, making it Argentina's most distinctive and important white grape variety."
        )
    ),
    // Trebbiano (Ugni Blanc) Details
    Grape(
        name: "Trebbiano",
        details: GrapeDetails(
            origin: "Trebbiano is a white grape variety believed to have originated in Italy. It is one of the most widely planted grape varieties in the world.",
            countries: Countries(
                primary: [
                    "Italy: Widely grown in many regions.\n",
                    "France: Known as Ugni Blanc, particularly in Cognac and Armagnac."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of green apple, lemon, and herbs with hints of floral and almond.",
                palate: "Light-bodied with high acidity, featuring flavors of citrus, green apple, and a touch of minerality.",
                finish: "Crisp and refreshing with a clean, dry finish."
            ),
            
            wineStyles: [
                "White Wines: Often made in a dry, crisp style, showcasing its fresh acidity and subtle fruit flavors.\n",
                "Spirits: Used in the production of Cognac and Armagnac."
            ],
           
            grapeSummary: "Trebbiano (Ugni Blanc) is valued for its high acidity and fresh, crisp profile, making it a versatile grape used in both wine and spirit production."
        )
    ),

    // Treixadura Details
    Grape(
        name: "Treixadura",
        details: GrapeDetails(
            origin: "Treixadura is a white grape variety primarily associated with the Ribeiro region in Galicia, Spain. It is also grown in Portugal, particularly in the Vinho Verde region. The grape is known for producing aromatic and well-structured wines.",
            countries: Countries(
                primary: [
                    "Spain: Particularly in Galicia, especially in the Ribeiro and Rías Baixas regions.\n",
                    "Portugal: Known as Trajadura, especially in the Vinho Verde region."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of apple, pear, and citrus with floral and herbal notes.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of green apple, lemon, and a touch of minerality.",
                finish: "Crisp and refreshing with a clean, mineral-driven finish."
            ),
           
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its fresh acidity and aromatic complexity."
            ],
           
            grapeSummary: "Treixadura is appreciated for its aromatic intensity and fresh acidity, making it a key grape in the production of crisp, well-structured white wines from Galicia."
        )
    ),

    // Verdejo Details
    Grape(
        name: "Verdejo",
        details: GrapeDetails(
            origin: "Verdejo is a white grape variety native to the Rueda region in Spain. It is known for producing fresh, aromatic wines with good acidity.",
            countries: Countries(
                primary: [
                    "Spain: Particularly in the Rueda region."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow with greenish tints.",
                aroma: "Aromas of grapefruit, lemon, and peach with hints of fennel and herbs.",
                palate: "Light to medium-bodied with high acidity, featuring flavors of citrus, green apple, and a touch of herbaceousness.",
                finish: "Crisp and refreshing with a long, zesty finish."
            ),
            
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style, showcasing its fresh acidity and aromatic complexity."
            ],
           
            grapeSummary: "Verdejo is celebrated for its fresh acidity and aromatic intensity, making it the most important white grape variety in the Rueda region of Spain."
        )
    ),
    // Verdelho Details
    Grape(
        name: "Verdelho",
        details: GrapeDetails(
            origin: "Verdelho is a white grape variety originally from Portugal, particularly the island of Madeira. It is known for its versatility and is used in both dry table wines and fortified wines.",
            countries: Countries(
                primary: [
                    "Portugal: Especially in Madeira.\n",
                    "Australia: Particularly in the Hunter Valley."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Aromas of tropical fruits, citrus, and herbs with hints of spice.",
                palate: "Medium-bodied with high acidity, featuring flavors of lemon, pineapple, and a touch of almond.",
                finish: "Crisp and refreshing with a long, zesty finish."
            ),
           
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style.\n",
                "Fortified Wines: Used in the production of medium-dry Madeira."
            ],
           
            grapeSummary: "Verdelho is appreciated for its high acidity and versatility, making it a key grape in both table wines and fortified wines like Madeira."
        )
    ),

    // Verdicchio Details
    Grape(
        name: "Verdicchio",
        details: GrapeDetails(
            origin: "Verdicchio is a white grape variety native to the Marche region of Italy. It is known for producing fresh, high-acid wines that are often considered some of Italy's best white wines.",
            countries: Countries(
                primary: [
                    "Italy: Particularly in the Marche region, including Verdicchio dei Castelli di Jesi and Verdicchio di Matelica."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow with greenish tints.",
                aroma: "Aromas of citrus, green apple, and almond with floral and herbal notes.",
                palate: "Light to medium-bodied with high acidity, featuring flavors of lemon, apple, and a touch of bitter almond.",
                finish: "Crisp and refreshing with a long, mineral-driven finish."
            ),
            
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style, showcasing its fresh acidity and mineral complexity."
            ],
           
            grapeSummary: "Verdicchio is celebrated for its high acidity and fresh, mineral-driven profile, making it one of Italy's most esteemed white grape varieties."
        )
    ),

    // Vernaccia Details
    Grape(
        name: "Vernaccia di San Gimignano",
        details: GrapeDetails(
            origin: "Vernaccia di San Gimignano is a white grape variety native to Italy, specifically from the San Gimignano region in Tuscany. It is known for producing crisp, aromatic wines with good acidity and is one of Italy's most famous white wine varieties.",
            countries: Countries(
                primary: [
                    "Italy: Particularly in San Gimignano, Tuscany."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of citrus, green apple, and white flowers with hints of almond and herbs.",
                palate: "Light to medium-bodied with high acidity, featuring flavors of lemon, apple, and a touch of bitter almond.",
                finish: "Crisp and refreshing with a clean, mineral finish."
            ),
           
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style, showcasing its fresh acidity and aromatic complexity."
            ],
           
            grapeSummary: "Vernaccia di San Gimignano is appreciated for its high acidity and fresh, aromatic profile, making it a key grape in the production of crisp, elegant white wines from Tuscany."
        )
    ),
    // Vermentino Details
    Grape(
        name: "Vermentino",
        details: GrapeDetails(
            origin:  "Vermentino is a white grape variety with debated origins, believed to have historical roots in both Italy and Corsica. Today, it is widely planted in the coastal regions of Liguria, Tuscany, and Sardinia in Italy, as well as in Corsica, where it thrives in the Mediterranean climate.",
            countries: Countries(
                primary: [
                    "Italy: Particularly in Liguria, Tuscany, and Sardinia.\n",
                    "France: Known as Rolle, especially in Provence and Corsica."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of citrus, green apple, and white flowers with hints of herbs and almond.",
                palate: "Light to medium-bodied with high acidity, featuring flavors of lemon, lime, and a touch of saline minerality.",
                finish: "Crisp and refreshing with a clean, zesty finish."
            ),
           
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style, showcasing its fresh acidity and aromatic complexity."
            ],
           
            grapeSummary: "Vermentino is celebrated for its fresh acidity and aromatic complexity, making it a popular choice for crisp, refreshing white wines in coastal regions."
        )
    ),

    // Viognier Details
    Grape(
        name: "Viognier",
        details: GrapeDetails(
            origin: "Viognier is a white grape variety originating from the Rhône Valley in France. It is known for its rich, aromatic wines with floral and fruit-driven characteristics.",
            countries: Countries(
                primary: [
                    "France: Particularly in the northern Rhône Valley (Condrieu, Château-Grillet).\n",
                    "USA: Particularly in California and Virginia.\n",
                    "Australia: Widely grown in various regions."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Intense aromas of apricot, peach, and honeysuckle with floral and spice notes.",
                palate: "Medium to full-bodied with moderate acidity, featuring flavors of stone fruits, citrus, and a touch of spice.",
                finish: "Rich and long-lasting with a slightly oily texture and a floral finish."
            ),
           
            wineStyles: [
                "White Wines: Typically made in a rich, aromatic style, showcasing its intense floral and fruit flavors."
            ],
            
            grapeSummary: "Viognier is celebrated for its rich, aromatic character and is often used to produce complex, full-bodied white wines with a distinctive floral and fruit-driven profile."
        )
    ),

    

    // Xarel·lo Details
    Grape(
        name: "Xarel·lo",
        details: GrapeDetails(
            origin: "Xarel·lo is a white grape variety native to Catalonia in Spain. It is one of the primary grape varieties used in the production of Cava, Spain's renowned sparkling wine.",
            countries: Countries(
                primary: [
                    "Spain: Particularly in Catalonia, especially in the Penedès region."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of green apple, pear, and citrus with floral and herbal notes.",
                palate: "Light to medium-bodied with high acidity, featuring flavors of lemon, apple, and a distinct minerality.",
                finish: "Crisp and refreshing with a clean, zesty finish."
            ),
           
            wineStyles: [
                "Sparkling Wines: Primarily used in blends for Cava, contributing freshness and structure.",
                "White Wines: Also used to produce still wines, showcasing its fresh acidity and mineral character."
            ],
           
            grapeSummary: "Xarel·lo is celebrated for its high acidity and fresh, mineral-driven profile, making it a key grape in the production of Cava and a popular choice for crisp, refreshing white wines in Catalonia."
        )
    
  )]


}




