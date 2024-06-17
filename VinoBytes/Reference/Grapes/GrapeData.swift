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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Thrives in Mediterranean climates with warm, dry summers and mild winters.",
                    soil: "Prefers well-drained soils, particularly sandy and clay loams.",
                    growingConditions: "Resistant to drought and can adapt to various elevations. Known for its high yield and vigorous growth."
                ),
                wineStyles: [
                    "Red Wines: Ranges from fresh, young, and fruity wines to more complex, oak-aged versions.",
                    "Rosé Wines: Produced in a lighter style with fresh red fruit flavors and crisp acidity."
                ],
                foodPairing: [
                    "Red Wines: Pairs well with grilled meats, lamb, moussaka, and Mediterranean cuisine featuring herbs and spices.",
                    "Rosé Wines: Complements lighter dishes like salads, seafood, and poultry."
                ],
                notableProducers: [
                    "Gaia Wines",
                    "Skouras Winery",
                    "Domaine Spiropoulos"
                ],
                otherNames: "Locally known as Agiorgitiko, which means 'Saint George's grape.'",
                grapeSummary: "Agiorgitiko is a versatile grape, capable of producing a wide range of wine styles, from refreshing rosés to concentrated sweet wines. It is often compared to Merlot for its versatility and approachable style. Agiorgitiko plays a significant role in Greece’s wine production."
            ),
            imageName: "agiorgitiko",
            iconNames: ["leaf", "drop"]
        ),

        Grape(
            name: "Aglianico",
            details: GrapeDetails(
                origin: "Aglianico is an ancient grape variety believed to have been introduced by the Greeks to southern Italy. It is primarily grown in the Campania and Basilicata regions, with a long history of producing high-quality wines.",
                countries: Countries(
                    primary: [
                        "• Italy: Predominantly in the regions of Campania and Basilicata."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep garnet red.",
                    aroma: "Intense aromas of dark fruits such as blackberry and plum, with hints of smoke, cured meat, and savory herbs like oregano.",
                    palate: "Full-bodied with high acidity and firm tannins. Flavors of black cherry, plum, and smoke, with notes of tobacco and baking spices.",
                    finish: "Long and complex, with a persistent and structured finish."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Thrives in warm climates with plenty of sunlight, often grown at higher altitudes to maintain acidity.",
                    soil: "Prefers volcanic soils, which are rich in minerals and provide good drainage.",
                    growingConditions: "Known for its late ripening, requiring a long growing season. It is resilient and can withstand hot climates, producing wines with high acidity and tannins."
                ),
                wineStyles: [
                    "Red Wines: Typically produces full-bodied, age-worthy reds with high acidity and tannins.",
                    "Rosé Wines: Occasionally made into rosé, offering bright acidity and fresh fruit flavors."
                ],
                foodPairing: [
                    "Red Wines: Pairs well with rich, hearty dishes such as braised meats, game, and aged cheeses.",
                    "Rosé Wines: Complements lighter fare like charcuterie, grilled vegetables, and poultry."
                ],
                notableProducers: [
                    "Mastroberardino",
                    "Feudi di San Gregorio",
                    "Terredora di Paolo"
                ],
                otherNames: "Sometimes referred to as 'the Barolo of the South' due to its tannic structure and aging potential.",
                grapeSummary: "Aglianico is a noble grape variety of southern Italy, known for producing robust, age-worthy wines. Its high acidity and tannins make it ideal for long aging, and it is often compared to Nebbiolo for its structure and complexity. Aglianico is a cornerstone of Italian viticulture, particularly in the regions of Campania and Basilicata."
            ),
            imageName: "aglianico",
            iconNames: ["leaf", "drop"]
        ),

Grape(
    name: "Alicante Bouschet",
    details: GrapeDetails(
        origin: "Alicante Bouschet is a teinturier grape variety created by Henri Bouschet in France in 1866 by crossing Petit Bouschet with Grenache. It is known for its deep color and high anthocyanin content.",
        countries: Countries(
            primary: [
                "France: Particularly in the Languedoc and Provence regions.",
                "Portugal: Widely grown in the Alentejo region."
            ]
        ),
        tastingNotes: TastingNotes(
            color: "Deep ruby to purple.",
            aroma: "Aromas of dark berries, plum, and cherry, with hints of spices, earth, and tobacco.",
            palate: "Full-bodied with firm tannins and balanced acidity. Flavors of black fruits, such as blackberry and black cherry, with notes of pepper and chocolate.",
            finish: "Long and robust with lingering fruit and spice notes."
        ),
        viticulturalCharacteristics: ViticulturalCharacteristics(
            climate: "Thrives in warm, sunny climates with well-drained soils.",
            soil: "Prefers a variety of soil types, including sandy, clay, and limestone soils.",
            growingConditions: "Vigorous and productive, known for its resistance to disease and ability to produce deeply colored wines."
        ),
        wineStyles: [
            "Red Wines: Often used in blends to add color, body, and complexity.",
            "Varietal Wines: Produces rich, dark wines with aging potential."
        ],
        foodPairing: [
            "Red Wines: Pairs well with grilled meats, game, stews, and dishes with robust flavors.",
            "Varietal Wines: Complements hearty dishes, aged cheeses, and dark chocolate."
        ],
        notableProducers: [
            "Herdade do Esporão",
            "Adega de Borba",
            "Château de la Selve"
        ],
        otherNames: "Sometimes referred to as 'Garnacha Tintorera' in Spain.",
        grapeSummary: "Alicante Bouschet is one of the few grape varieties with red flesh, making it unique in its ability to produce deeply colored wines. It is valued for its versatility in blending and its contribution to the structure and color of wines."
    ),
    imageName: "alicante_bouschet",
    iconNames: ["leaf", "drop"]
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
                    palate: "Medium to full-bodied with high tannins and high acidity. Flavors of black fruits, with earthy and smoky notes.",
                    finish: "Long and robust with lingering fruit and spice notes."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Thrives in warm, dry climates with well-drained soils.",
                    soil: "Prefers clay and limestone soils, which help balance the grape's acidity and tannins.",
                    growingConditions: "Vigorous and late-ripening, requiring careful management to avoid rot and ensure phenolic ripeness."
                ),
                wineStyles: [
                    "Red Wines: Known for producing tannic, age-worthy wines with significant structure.",
                    "Rosé Wines: Can produce vibrant and complex sparkling rosé."
                ],
                foodPairing: [
                    "Red Wines: Pairs well with roasted meats, braised beef ribs, and robust dishes.",
                    "Rosé Wines: Complements lighter dishes, smoked trout, and white meats."
                ],
                notableProducers: [
                    "Luis Pato",
                    "Niepoort",
                    "Quinta das Bágeiras"
                ],
                otherNames: "Also known as Tinta Bairrada, Tinta Poeirinha.",
                grapeSummary: "Baga is often compared to Pinot Noir and Nebbiolo due to its ability to reflect the terroir and its high acidity and tannin structure. It is essential in the production of Bairrada's signature sparkling and red wines."
            ),
            imageName: "baga",
            iconNames: ["leaf", "drop"]
        ),

Grape(
    name: "Barbera",
    details: GrapeDetails(
        origin: "Barbera is a native grape of Piedmont, Italy, with a history dating back to the 13th century. It is one of Italy’s most widely planted red grape varieties.",
        countries: Countries(
            primary: [
                "Italy: Predominantly in Piedmont, Emilia-Romagna, Lombardy, and other central and northern regions."
            ]
        ),
        tastingNotes: TastingNotes(
            color: "Deep ruby to purple.",
            aroma: "Aromas of red cherry, blackberry, and plum, with hints of dried herbs, black pepper, and licorice.",
            palate: "Medium to full-bodied with low tannins and high acidity. Flavors of tart cherry, blackberry, and dried herbs.",
            finish: "Bright and zesty with a lingering acidity and fruit-forward finish."
        ),
        viticulturalCharacteristics: ViticulturalCharacteristics(
            climate: "Thrives in warm, sunny climates.",
            soil: "Prefers well-drained sandy and clay soils.",
            growingConditions: "Vigorous and high-yielding, requiring careful vineyard management to maintain quality."
        ),
        wineStyles: [
            "Red Wines: Known for producing fresh, fruit-forward wines that are both youthful and age-worthy."
        ],
        foodPairing: [
            "Red Wines: Pairs well with pizza, stews, mushroom dishes, grilled meats, and aged cheeses like Pecorino and Asiago."
        ],
        notableProducers: [
            "Vietti",
            "Braida",
            "Giacomo Bologna"
        ],
        otherNames: "Known as 'Barbera Nera' in some regions.",
        grapeSummary: "Barbera is often overshadowed by Nebbiolo in Piedmont but is beloved for its versatility and approachable style. Its high acidity makes it a perfect food wine."
    ),
    imageName: "barbera",
    iconNames: ["leaf", "drop"]
),



Grape(
    name: "Blaufränkisch",
    details: GrapeDetails(
        origin: "Blaufränkisch, also known as Lemberger and Kékfrankos, is a black-skinned grape variety primarily grown in Austria and Hungary. It is believed to have originated in Central Europe and is known for producing rich, spicy wines.",
        countries: Countries(
            primary: [
                "Austria: Particularly in Burgenland and Neusiedlersee regions.",
                "Hungary: Known as Kékfrankos, especially in Sopron and Eger."
            ]
        ),
        tastingNotes: TastingNotes(
            color: "Deep ruby to purple.",
            aroma: "Aromas of blackberry, black cherry, and dark chocolate with notes of allspice and pepper.",
            palate: "Medium-bodied with medium-high tannins and acidity. Flavors of black fruits, pepper, and earthy undertones.",
            finish: "Long and spicy with balanced acidity and firm tannins."
        ),
        viticulturalCharacteristics: ViticulturalCharacteristics(
            climate: "Thrives in warm, sunny climates.",
            soil: "Grows well in diverse soils, including limestone, clay, and volcanic soils.",
            growingConditions: "Late-ripening and high-yielding, requires careful vineyard management to achieve optimal phenolic ripeness."
        ),
        wineStyles: [
            "Red Wines: Produces both fresh, fruity wines and more complex, age-worthy wines."
        ],
        foodPairing: [
            "Red Wines: Pairs well with smoked sausages, red potato goulash, and cheesy spaetzle dumplings."
        ],
        notableProducers: [
            "Weingut Moric",
            "Weingut Prieler",
            "Heinrich Winery"
        ],
        otherNames: "Known as Kékfrankos in Hungary and Lemberger in Germany and the United States.",
        grapeSummary: "Blaufränkisch is notable for its ability to reflect terroir, producing a wide range of wine styles from different regions. It is often compared to Syrah for its spicy character and to Pinot Noir for its ability to age gracefully."
    ),
    imageName: "blaufrankisch",
    iconNames: ["leaf", "drop"]
    
),
    
Grape(
        name: "Bobal",
        details: GrapeDetails(
            origin: "Bobal is indigenous to the Utiel-Requena region in Valencia, Spain, where it is one of the most widely planted red grape varieties.",
            countries: Countries(
                primary: [
                    "Spain: Predominantly in Valencia, particularly in Utiel-Requena."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Deep, dark cherry red.",
                aroma: "Aromas of ripe red fruits like plum and blackberry, with hints of earthiness and herbal touches.",
                palate: "Full-bodied with robust tannins and high acidity, offering flavors of dark fruit, licorice, and sometimes leather.",
                finish: "Long and persistent, often with a slightly bitter finish that is characteristic of the variety."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Adapts well to hot, arid climates.",
                soil: "Thrives in limestone-rich soils but can adapt to a variety of soil types.",
                growingConditions: "Bobal is known for its hardiness and resistance to drought and diseases."
            ),
            wineStyles: [
                "Red Wines: Typically robust and tannic, suitable for aging.",
                "Rosé Wines: Fruit-forward and vibrant, usually consumed young."
            ],
            foodPairing: [
                "Red Wines: Pairs well with hearty meat dishes like stews and grilled red meats.",
                "Rosé Wines: Excellent with tapas, charcuterie, and lighter fare."
            ],
            notableProducers: [
                "Mustiguillo",
                "Bodega Sierra Norte"
            ],
            otherNames: "None",
            grapeSummary: "Bobal is known for its deep color and ability to produce both full-bodied red wines and fresh rosés. It is appreciated for its adaptability to the hot climate of central Spain and its versatility in winemaking."
        ),
        imageName: "bobal",
        iconNames: ["leaf", "drop"]
    ),

Grape(
            name: "Bonarda",
            details: GrapeDetails(
                origin: "Originally from Italy, Bonarda is now predominantly found in Argentina where it is the second most planted red grape variety after Malbec.",
                countries: Countries(
                    primary: [
                        "Argentina: Widely planted across Mendoza and San Juan."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Medium ruby red.",
                    aroma: "Aromas of cherry, plum, and fig, with floral and sometimes earthy notes.",
                    palate: "Medium-bodied with moderate acidity and smooth tannins, featuring fruity flavors with occasional spicy or earthy undertones.",
                    finish: "Medium-length with fruity and sometimes floral or earthy echoes."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers warmer climates.",
                    soil: "Performs best in sandy loam soils.",
                    growingConditions: "Resilient to local pests and diseases, producing consistent and high yields."
                ),
                wineStyles: [
                    "Red Wines: Typically fruity and approachable, often vinified to be enjoyed young."
                ],
                foodPairing: [
                    "Pairs well with pizza, pasta dishes with red sauces, and various meats like chicken and pork."
                ],
                notableProducers: [
                    "Familia Zuccardi",
                    "El Esteco"
                ],
                otherNames: "Also known as Douce Noir in California and Charbono in other regions.",
                grapeSummary: "Bonarda is valued for its fruit-forward, accessible wines that are best enjoyed while young. It plays a significant role in Argentina's red wine production."
            ),
            imageName: "bonarda",
            iconNames: ["leaf", "drop"]
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers cooler climates to maintain its aromatic profile.",
                    soil: "Best in calcareous marl soils.",
                    growingConditions: "Sensitive to overcropping but can maintain high acidity in suitable growing conditions."
                ),
                wineStyles: [
                    "Sweet Red Wines: Often frizzante (lightly sparkling) and sweet, known as Brachetto d’Acqui."
                ],
                foodPairing: [
                    "Ideal with desserts, particularly those featuring berries, chocolate, or cream."
                ],
                notableProducers: [
                    "Braida",
                    "Casa Vinicola H. M. Borgo"
                ],
                otherNames: "Brachetto d’Acqui when made in its traditional sparkling, sweet style.",
                grapeSummary: "Brachetto is celebrated for its sweet, aromatic wines that showcase its distinctive floral and fruity notes. It is often enjoyed as a dessert wine, particularly in its sparkling form."
            ),
            imageName: "brachetto",
            iconNames: ["leaf", "drop"]
        ),
        
Grape(
            name: "Cabernet Franc",
            details: GrapeDetails(
                origin: "Originating from the Bordeaux region of France, Cabernet Franc is a key variety also found in the Loire Valley. It is a parent grape to Cabernet Sauvignon and Merlot.",
                countries: Countries(
                    primary: [
                        "France: Predominantly in Bordeaux and Loire Valley.",
                        "Italy: Increasingly popular in northern regions.",
                        "USA: Widely planted in California and Washington State."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Medium red with lighter tints compared to Cabernet Sauvignon.",
                    aroma: "Aromas of raspberry, bell pepper, cassis, and sometimes tobacco and graphite.",
                    palate: "Medium-bodied with bright acidity and moderate tannins, flavors of red fruits, herbaceous notes, and a distinct peppery profile.",
                    finish: "Elegant and persistent with herbal and fruity nuances."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers cooler climates than Cabernet Sauvignon, ripens earlier.",
                    soil: "Thrives on well-drained, lime-rich soils.",
                    growingConditions: "Moderately vigorous, bud-breaks early which can be susceptible to spring frosts."
                ),
                wineStyles: [
                    "Red Wines: Often blended but also makes varietal wines, appreciated for their aromatic complexity."
                ],
                foodPairing: [
                    "Ideal with roasted meats, poultry, and hearty vegetable dishes like ratatouille."
                ],
                notableProducers: [
                    "Château Cheval Blanc",
                    "Domaine Bernard Baudry",
                    "Frog's Leap"
                ],
                otherNames: "Also known as Breton in the Loire Valley.",
                grapeSummary: "Cabernet Franc is appreciated for its finesse, aromatic complexity, and ability to age gracefully. It serves both as a blending grape and as a standalone varietal in many regions."
            ),
            imageName: "cabernet_franc",
            iconNames: ["leaf", "drop"]
        ),

        
Grape(
            name: "Cabernet Sauvignon",
            details: GrapeDetails(
                origin: "Originally from Bordeaux, France, Cabernet Sauvignon has become one of the most widely recognized red wine grape varieties globally.",
                countries: Countries(
                    primary: [
                        "France: A staple in Bordeaux blends.",
                        "USA: Dominant in California, especially Napa Valley.",
                        "Chile, Australia, South Africa: Extensively planted."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep ruby to almost black.",
                    aroma: "Black cherry, blackcurrant, and cedar with hints of spice, mint, and tobacco.",
                    palate: "Full-bodied with firm tannins and acidity, robust flavors of dark fruits and oak influence.",
                    finish: "Long and persistent with layered complexity."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers warmer climates to fully ripen but can adapt to cooler areas.",
                    soil: "Best in deep, well-drained gravelly and loamy soils.",
                    growingConditions: "Vigorous and hardy, but can be susceptible to poor fruit set due to cold or rainy weather during flowering."
                ),
                wineStyles: [
                    "Red Wines: Typically powerful and age-worthy, often requiring time to reach maturity."
                ],
                foodPairing: [
                    "Pairs excellently with grilled steaks, lamb, and hearty stews."
                ],
                notableProducers: [
                    "Château Margaux",
                    "Robert Mondavi Winery",
                    "Penfolds"
                ],
                otherNames: "None",
                grapeSummary: "Cabernet Sauvignon is celebrated for its depth, longevity, and structure. It plays a central role in some of the world's most prestigious wines."
            ),
            imageName: "cabernet_sauvignon",
            iconNames: ["leaf", "drop"]
        ),
Grape(
            name: "Cannonau",
            details: GrapeDetails(
                origin: "Cannonau is believed to be native to Sardinia, Italy, and is genetically identical to Grenache, which is widespread across Spain and France.",
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Thrives in the warm, Mediterranean climate of Sardinia.",
                    soil: "Best in sandy and calcareous soils, which help in retaining warmth.",
                    growingConditions: "Resilient to drought and heat, suitable for the rugged terrain of Sardinia."
                ),
                wineStyles: [
                    "Red Wines: Typically robust and well-structured, suitable for aging."
                ],
                foodPairing: [
                    "Pairs well with rich, hearty dishes such as roasted meats, game, and strong cheeses."
                ],
                notableProducers: [
                    "Cantina di Santadi",
                    "Argiolas"
                ],
                otherNames: "Identical to Grenache or Garnacha but locally known as Cannonau.",
                grapeSummary: "Cannonau is celebrated for its bold flavors and is a staple in Sardinian culture, often associated with longevity of life among the island’s inhabitants."
            ),
            imageName: "cannonau",
            iconNames: ["leaf", "drop"]
        ),
        
        
        // Carignan Details
Grape(
            name: "Carignan",
            details: GrapeDetails(
                origin: "Carignan is believed to have originated in Spain but became extensively planted in the Languedoc-Roussillon region in France.",
                countries: Countries(
                    primary: [
                        "France: Widely found in Languedoc-Roussillon.",
                        "Spain: Known as Cariñena in Aragón.",
                        "Italy: Grown in Sardinia where it is known as Carignano."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep, dark red.",
                    aroma: "Aromas of red and black fruits, spice, and sometimes hints of tar and leather.",
                    palate: "High acidity and tannins with flavors of dark berries, pepper, and earthy notes.",
                    finish: "Robust and tannic, often with a rustic character."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers warm, dry climates.",
                    soil: "Thrives in rocky and schist soils.",
                    growingConditions: "High yielding but susceptible to diseases; benefits from old vines and low yields for quality."
                ),
                wineStyles: [
                    "Red Wines: Often used in blends, adding color, acidity, and tannin structure.",
                    "Rosé Wines: Also made into deeply colored rosés."
                ],
                foodPairing: [
                    "Pairs well with grilled meats, game, and hearty stews."
                ],
                notableProducers: [
                    "Domaine de Courbissac",
                    "Château Maris"
                ],
                otherNames: "Known as Mazuelo in some regions of Spain.",
                grapeSummary: "Carignan is known for its ability to produce deeply colored, robust wines, often used in blends for added complexity and structure."
            ),
            imageName: "carignan",
            iconNames: ["leaf", "drop"]
        ),

        // Cariñena Details
Grape(
            name: "Cariñena",
            details: GrapeDetails(
                origin: "Cariñena, also known as Carignan, originates from the Aragón region of Spain, where it is still a prominent variety.",
                countries: Countries(
                    primary: [
                        "Spain: Particularly in the Aragón region.",
                        "France: Common in the southern regions, known as Carignan."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Dark garnet red.",
                    aroma: "Complex aromas of ripe plum, blackberry, with earthy and herbal undertones.",
                    palate: "Full-bodied with pronounced tannins and acidity, showcasing flavors of dark fruits, herbs, and mineral notes.",
                    finish: "Long and intense, often with a hint of spice and smoke."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Adapts well to hot, arid climates.",
                    soil: "Performs best in limestone and clay soils.",
                    growingConditions: "Durable and resistant to drought, but needs careful management to control yields and enhance quality."
                ),
                wineStyles: [
                    "Red Wines: Predominantly made as varietal wines or used in blends for structure and depth."
                ],
                foodPairing: [
                    "Excellent with lamb, beef, and spicy dishes."
                ],
                notableProducers: [
                    "Bodegas San Alejandro",
                    "Bodegas Paniza"
                ],
                otherNames: "Also known globally as Carignan, and as Mazuelo in other parts of Spain.",
                grapeSummary: "Cariñena is esteemed for its contribution to robust, structured wines, often bringing depth and longevity to blends."
            ),
            imageName: "carinena",
            iconNames: ["leaf", "drop"]
        ),
        // Carmenere Details
        Grape(
            name: "Carmenere",
            details: GrapeDetails(
                origin: "Originally from Bordeaux, France, Carmenere is now primarily associated with Chile where it has become a signature grape variety.",
                countries: Countries(
                    primary: [
                        "Chile: Extensively planted throughout the Central Valley.",
                        "France: Small quantities remain in Bordeaux."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep red with purple hues.",
                    aroma: "Complex aromas of red and dark fruits like raspberry and blueberry, with distinctive notes of spice, coffee, and sometimes green pepper.",
                    palate: "Medium to full-bodied with soft tannins and moderate acidity, offering flavors of dark chocolate, tobacco, and leather, alongside the fruit.",
                    finish: "Smooth with a persistent, spicy finish."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers moderate to warm climates.",
                    soil: "Performs best in deep, poor soils with good drainage.",
                    growingConditions: "Late ripening variety that requires careful management to avoid vegetal flavors."
                ),
                wineStyles: [
                    "Red Wines: Often made as a single varietal, showcasing its unique profile."
                ],
                foodPairing: [
                    "Ideal with lamb, spicy dishes, and hearty stews."
                ],
                notableProducers: [
                    "Viña Montes",
                    "Concha y Toro"
                ],
                otherNames: "Sometimes confused with Merlot in its early days in Chile.",
                grapeSummary: "Carmenere is celebrated for its rich, smooth character and complex spice and fruit flavors, embodying the winemaking heritage of Chile."
            ),
            imageName: "carmenere",
            iconNames: ["leaf", "drop"]
        ),

        // Castelao Details
        Grape(
            name: "Castelao",
            details: GrapeDetails(
                origin: "Native to Portugal, particularly thriving in the regions of Ribatejo and Península de Setúbal.",
                countries: Countries(
                    primary: [
                        "Portugal: Widely planted across the southern regions."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Ruby red.",
                    aroma: "Aromas of red fruits like strawberries and plums, with notes of leather and herbs.",
                    palate: "Medium-bodied with moderate acidity and tannins, featuring fruity and earthy flavors.",
                    finish: "Pleasantly rustic with a fruity finish."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Adapts well to warmer climates.",
                    soil: "Prefers sandy soils.",
                    growingConditions: "Resilient to local vine diseases and versatile in various viticultural environments."
                ),
                wineStyles: [
                    "Red Wines: Often used in blends, but also produces varietal wines known for their fruit-forward and rustic nature."
                ],
                foodPairing: [
                    "Pairs well with traditional Portuguese dishes, grilled meats, and cheeses."
                ],
                notableProducers: [
                    "José Maria da Fonseca",
                    "Quinta do Carmo"
                ],
                otherNames: "Also known as Periquita in some local regions.",
                grapeSummary: "Castelao is a versatile grape known for its adaptability and the rustic, approachable wines it produces."
            ),
            imageName: "castelao",
            iconNames: ["leaf", "drop"]
        ),
        // Cinsault Details
        Grape(
            name: "Cinsault",
            details: GrapeDetails(
                origin: "Cinsault is a heat-tolerant grape variety originating from the South of France, widely used in blends with Grenache and Syrah.",
                countries: Countries(
                    primary: [
                        "France: Common in the Languedoc-Roussillon and Provence regions.",
                        "South Africa: Used in many blends and for making rosé wines.",
                        "Lebanon: Integral part of the famed Chateau Musar blends."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Light red, often with a pale hue.",
                    aroma: "Aromatic with notes of red berries, cherry, and floral undertones.",
                    palate: "Light to medium-bodied, featuring high acidity and fresh, fruity flavors with minimal tannins.",
                    finish: "Refreshing and straightforward with a smooth, clean finish."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Thrives in hot, dry climates.",
                    soil: "Performs well in sandy and stony soils.",
                    growingConditions: "Highly vigorous and can produce high yields, but best quality comes from controlled yields."
                ),
                wineStyles: [
                    "Red Wines: Often blended for its aromatics and acidity.",
                    "Rosé Wines: Frequently used to produce light, aromatic rosés."
                ],
                foodPairing: [
                    "Excellent with light dishes, seafood, and Mediterranean cuisine."
                ],
                notableProducers: [
                    "Domaine de Triennes",
                    "Chateau Musar"
                ],
                otherNames: "Often used synonymously with its blends and sometimes referred to as Hermitage in South Africa.",
                grapeSummary: "Cinsault is favored for its ability to add freshness and aromatic lift to blends, as well as its capability to produce elegant rosé wines."
            ),
            imageName: "cinsault",
            iconNames: ["leaf", "drop"]
        ),
        // Corvina Details
        Grape(
            name: "Corvina",
            details: GrapeDetails(
                origin: "Corvina is primarily associated with the Veneto region of Italy, notably used in the production of Valpolicella and Amarone wines.",
                countries: Countries(
                    primary: [
                        "Italy: Predominantly in the Veneto region."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Medium ruby red.",
                    aroma: "Notes of sour cherry, almond, and spices, with sometimes hints of dried fruits in Amarone styles.",
                    palate: "Medium-bodied with moderate to high acidity and light to medium tannins, featuring flavors of cherry, red berry, and herbal notes.",
                    finish: "Elegant with a slightly bitter almond note on the finish."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers cooler, temperate climates.",
                    soil: "Thrives in calcareous, volcanic and alluvial soils.",
                    growingConditions: "Susceptible to grape diseases like powdery mildew but benefits from the traditional drying process for Amarone."
                ),
                wineStyles: [
                    "Red Wines: Ranges from light, crisp Valpolicella to rich, concentrated Amarone.",
                    "Recioto: Sweet wines also made from semi-dried grapes."
                ],
                foodPairing: [
                    "Valpolicella pairs well with pizza and lighter pasta dishes, while Amarone is excellent with game, roasted meats, and mature cheeses."
                ],
                notableProducers: [
                    "Allegrini",
                    "Masi Agricola"
                ],
                otherNames: "None",
                grapeSummary: "Corvina is best known for its role in creating the distinct styles of red wines from the Veneto region, especially appreciated in the raisined, intense flavors of Amarone."
            ),
            imageName: "corvina",
            iconNames: ["leaf", "drop"]
        ),

        // Corvinone Details
        Grape(
            name: "Corvinone",
            details: GrapeDetails(
                origin: "Corvinone, like Corvina, is native to the Veneto region in Italy and is often used interchangeably or alongside Corvina in the production of Valpolicella wines.",
                countries: Countries(
                    primary: [
                        "Italy: Predominantly in the Veneto region, especially in the Valpolicella area."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep ruby red.",
                    aroma: "Richer and more intense than Corvina, with aromas of dark cherry, blackberry, and spice, along with dried fruit nuances in Amarone styles.",
                    palate: "Fuller-bodied than Corvina, with strong tannins and acidity, offering deep berry flavors, spice, and chocolate notes.",
                    finish: "Robust and lingering, particularly noted in the dried grape styles like Amarone."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Adapts well to the temperate climate of Veneto.",
                    soil: "Performs best in volcanic and calcareous soils.",
                    growingConditions: "More robust and hardy than Corvina, less prone to diseases and capable of producing higher quality fruit in the drying process used for Amarone."
                ),
                wineStyles: [
                    "Red Wines: Commonly used in Valpolicella blends, enhancing structure and depth, particularly in Amarone and Ripasso wines."
                ],
                foodPairing: [
                    "Ideal with rich meat dishes, such as braised beef, and strong, aged cheeses."
                ],
                notableProducers: [
                    "Tedeshi",
                    "Tommasi"
                ],
                otherNames: "Often confused with Corvina but is a distinct variety with larger berries and looser clusters.",
                grapeSummary: "Corvinone is valued for its contribution to the body and structure of Veneto's prestigious red wines, particularly in Amarone, where it adds complexity and aging potential."
            ),
            imageName: "corvinone",
            iconNames: ["leaf", "drop"]
        ),
        // Counoise Details
        Grape(
            name: "Counoise",
            details: GrapeDetails(
                origin: "Counoise is a lesser-known grape variety from the Rhône region of France, often used as a blending grape in Châteauneuf-du-Pape.",
                countries: Countries(
                    primary: [
                        "France: Primarily found in the Rhône Valley, especially in Châteauneuf-du-Pape."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Medium garnet.",
                    aroma: "Aromatic with notes of fresh red berries, spice, and hints of violet and pepper.",
                    palate: "Light to medium-bodied, with lively acidity and moderate tannins, offering flavors of cherry, raspberry, and a peppery spice.",
                    finish: "Bright and fruity with a spicy undertone."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers warm, dry climates.",
                    soil: "Adapts well to various soil types but prefers stony, sandy soils.",
                    growingConditions: "Late-ripening variety that adds complexity and freshness to blends."
                ),
                wineStyles: [
                    "Red Wines: Mostly used in blends, contributing freshness and aromatic complexity."
                ],
                foodPairing: [
                    "Pairs well with grilled meats, charcuterie, and hearty vegetable dishes."
                ],
                notableProducers: [
                    "Château de Beaucastel",
                    "Domaine du Vieux Télégraphe"
                ],
                otherNames: "Sometimes known simply as Counoise in the U.S.",
                grapeSummary: "Counoise is appreciated for its contribution to the aromatic complexity and freshness in Rhône blends, particularly in those from Châteauneuf-du-Pape."
            ),
            imageName: "counoise",
            iconNames: ["leaf", "drop"]
        ),

        // Dolcetto Details
        Grape(
            name: "Dolcetto",
            details: GrapeDetails(
                origin: "Dolcetto is a native Italian grape primarily grown in the Piedmont region, known for producing early-drinking, fruit-forward wines.",
                countries: Countries(
                    primary: [
                        "Italy: Predominantly in the Piedmont region, especially in areas like Dogliani, Alba, and Asti."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep ruby red.",
                    aroma: "Rich aromas of black cherry, plum, and licorice with occasional notes of chocolate.",
                    palate: "Medium-bodied with low acidity and mild tannins, showcasing flavors of dark fruits and a slight bitter almond finish.",
                    finish: "Smooth with a characteristically dry, slightly bitter finish."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Thrives in cooler, temperate climates.",
                    soil: "Prefers calcareous marl soils, which help in moderating vigor.",
                    growingConditions: "Sensitive to vineyard conditions, particularly to over-cropping which can dilute flavors."
                ),
                wineStyles: [
                    "Red Wines: Generally consumed young, known for their fruitiness and approachability."
                ],
                foodPairing: [
                    "Perfect with pizza, pasta with meat sauces, and simple meat dishes."
                ],
                notableProducers: [
                    "Pecchenino",
                    "Marziano Abbona"
                ],
                otherNames: "None",
                grapeSummary: "Dolcetto is cherished for its early maturation and the ability to produce soft, fruit-driven wines that are best enjoyed young."
            ),
            imageName: "dolcetto",
            iconNames: ["leaf", "drop"]
        ),
        // Dornfelder Details
        Grape(
            name: "Dornfelder",
            details: GrapeDetails(
                origin: "Dornfelder is a relatively new grape variety developed in 1955 in Germany, primarily grown in the Pfalz and Rheinhessen regions.",
                countries: Countries(
                    primary: [
                        "Germany: Widely planted across Pfalz and Rheinhessen."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep, dark red, almost opaque.",
                    aroma: "Intense aromas of dark fruits such as blackberry and plum, often complemented by a hint of oak and spice.",
                    palate: "Medium to full-bodied with moderate acidity and soft tannins, offering rich flavors of dark berries, hints of chocolate, and spice.",
                    finish: "Smooth and fruit-forward with a lingering sweet spice."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers cooler climates but adaptable to various conditions.",
                    soil: "Versatile with soil types but performs best in loamy soils.",
                    growingConditions: "Highly vigorous and produces high yields, easy to grow and provides consistent quality."
                ),
                wineStyles: [
                    "Red Wines: Typically made in a fruit-driven, approachable style, often aged in oak to enhance complexity."
                ],
                foodPairing: [
                    "Pairs well with grilled meats, hearty pasta dishes, and rich cheeses."
                ],
                notableProducers: [
                    "Weingut Knipser",
                    "Weingut Becker"
                ],
                otherNames: "None",
                grapeSummary: "Dornfelder is known for its deep color and robust flavors, offering an appealing option for those looking for an accessible yet rich red wine from Germany."
            ),
            imageName: "dornfelder",
            iconNames: ["leaf", "drop"]
        ),

        // Frappato Details
        Grape(
            name: "Frappato",
            details: GrapeDetails(
                origin: "Frappato is an indigenous grape variety from Sicily, often associated with the Vittoria region where it is a key component of Cerasuolo di Vittoria DOCG.",
                countries: Countries(
                    primary: [
                        "Italy: Mostly in Sicily, particularly in the Vittoria area."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Light ruby red with a translucent quality.",
                    aroma: "Bright aromas of red cherry, strawberry, and hints of floral and herbal nuances.",
                    palate: "Light-bodied with vibrant acidity, featuring fresh red fruit flavors and a subtle earthy undertone.",
                    finish: "Refreshing and fruity with a clean, crisp finish."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Thrives in the warm, Mediterranean climate of Sicily.",
                    soil: "Performs best in sandy and clay-rich soils.",
                    growingConditions: "Resilient to heat and drought, but sensitive to overcropping which can dilute its aromatic profile."
                ),
                wineStyles: [
                    "Red Wines: Typically produced as a varietal wine or blended with Nero d’Avola in Cerasuolo di Vittoria.",
                    "Rosé Wines: Occasionally made into light, aromatic rosés."
                ],
                foodPairing: [
                    "Excellent with seafood, light pastas, and traditional Sicilian dishes like caponata."
                ],
                notableProducers: [
                    "Valle dell'Acate",
                    "Planeta"
                ],
                otherNames: "None",
                grapeSummary: "Frappato is celebrated for its bright, expressive fruit character and versatility in both red and rosé wine production, adding a distinctive Sicilian flair to blends and varietal wines."
            ),
            imageName: "frappato",
            iconNames: ["leaf", "drop"]
        ),
        // Gamay Details
        Grape(
            name: "Gamay",
            details: GrapeDetails(
                origin: "Gamay, best known for its production in Beaujolais, France, is a light-bodied red wine grape that originated in the Burgundy region but found its true home in Beaujolais, just south of Burgundy.",
                countries: Countries(
                    primary: [
                        "France: Predominantly in Beaujolais and parts of the Loire Valley."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Light to medium ruby red.",
                    aroma: "Aromas of red fruits like cherries, raspberries, and strawberries, often with hints of banana and spices.",
                    palate: "Light-bodied with high acidity and low tannins, featuring juicy red fruit flavors and a fresh, vibrant finish.",
                    finish: "Refreshing and fruity, with a distinctive smoothness that makes it very drinkable."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers a cooler climate to maintain its high acidity and delicate flavors.",
                    soil: "Thrives in granite-based soils, typical of the Beaujolais region.",
                    growingConditions: "Susceptible to diseases like powdery mildew; benefits from careful canopy management."
                ),
                wineStyles: [
                    "Red Wines: Primarily produced as light, fruity reds. Notably, the Beaujolais Nouveau is released annually with much fanfare.",
                    "Rosé Wines: Sometimes made into light and refreshing rosés."
                ],
                foodPairing: [
                    "Pairs well with a wide range of dishes, from light salads to hearty meats like sausages and grilled chicken."
                ],
                notableProducers: [
                    "Domaine Jean Foillard",
                    "Château des Jacques"
                ],
                otherNames: "None",
                grapeSummary: "Gamay is celebrated for its straightforward, fruit-driven profile and ability to produce wines best enjoyed young and fresh."
            ),
            imageName: "gamay",
            iconNames: ["leaf", "drop"]
        ),
        
        // Graciano Details
        Grape(
            name: "Graciano",
            details: GrapeDetails(
                origin: "Graciano is a Spanish grape variety known for its deep color and aromatic complexity, primarily grown in the Rioja and Navarra regions.",
                countries: Countries(
                    primary: [
                        "Spain: Mainly in Rioja and Navarra, with some plantings in the Basque Country."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep, vibrant purple.",
                    aroma: "Intense aromas of black fruits, such as blackberries and plums, complemented by herbal and floral notes, and a distinct peppery spice.",
                    palate: "Medium to full-bodied with high acidity and firm tannins, featuring concentrated flavors of dark fruits, herbal undertones, and spice.",
                    finish: "Long and persistent, with a characteristic freshness and spicy aftertaste."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Adapts well to warm, dry climates.",
                    soil: "Prefers well-drained, poor soils, which help concentrate its flavors.",
                    growingConditions: "Low yielding, which contributes to the concentration and intensity of the wines produced."
                ),
                wineStyles: [
                    "Red Wines: Often used in blends to enhance aroma and color, particularly in Rioja, and occasionally made into single-varietal wines."
                ],
                foodPairing: [
                    "Excellent with grilled red meats, game, and rich, savory dishes."
                ],
                notableProducers: [
                    "Bodegas Palacios Remondo",
                    "Bodegas Ysios"
                ],
                otherNames: "Sometimes known as Tintilla in other regions of Spain.",
                grapeSummary: "Graciano is prized for its aromatic intensity and aging potential, often contributing complexity and longevity to the wines in which it is used."
            ),
            imageName: "graciano",
            iconNames: ["leaf", "drop"]
        ),

        
        
        // Grenache Details
        Grape(
            name: "Grenache",
            details: GrapeDetails(
                origin: "Grenache, or Garnacha in Spanish, is one of the most widely planted red wine grape varieties worldwide. It likely originated in Spain before spreading to other regions, notably Southern France.",
                countries: Countries(
                    primary: [
                        "Spain: Predominantly in regions like Priorat and Aragón.",
                        "France: Extensively used in the Rhône Valley and Languedoc-Roussillon.",
                        "USA: Grown in California, particularly in Paso Robles and Santa Barbara.",
                        "Australia: Found in regions like Barossa Valley and McLaren Vale."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Light to medium red, often with orange hues as it ages.",
                    aroma: "Aromas of red fruit like strawberry and raspberry, with spice and sometimes hints of anise and tobacco.",
                    palate: "Medium to full-bodied with soft tannins and high alcohol, featuring flavors of red fruit, orange peel, and cinnamon.",
                    finish: "Warm and spicy with a smooth, often sweet finish."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Thrives in hot, dry climates.",
                    soil: "Performs well in sandy, stony, and clay soils.",
                    growingConditions: "Resistant to wind and drought, but susceptible to various vine diseases."
                ),
                wineStyles: [
                    "Red Wines: Often used in blends, especially in Rhône blends and as a major component of Châteauneuf-du-Pape.",
                    "Rosé Wines: Important in rosé production in regions like Tavel and Provence."
                ],
                foodPairing: [
                    "Pairs well with a variety of foods including grilled meats, spicy dishes, and hearty stews."
                ],
                notableProducers: [
                    "Château Rayas",
                    "Alvaro Palacios"
                ],
                otherNames: "Also known as Garnacha in Spain and Cannonau in Sardinia, Italy.",
                grapeSummary: "Grenache is renowned for its versatility in producing both lush, berry-flavored red wines and crisp, flavorful rosés, making it a favorite among winemakers and drinkers alike."
            ),
            imageName: "grenache",
            iconNames: ["leaf", "drop"]
        ),

        // Kadarka Details
        Grape(
            name: "Kadarka",
            details: GrapeDetails(
                origin: "Kadarka is a historic red grape variety that is believed to have originated in the Balkans, now most commonly associated with Hungarian and Bulgarian wines.",
                countries: Countries(
                    primary: [
                        "Hungary: Particularly in regions like Szekszárd and Eger.",
                        "Bulgaria: Also widely planted and used in Bulgarian wine production."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Medium ruby red with a lighter rim.",
                    aroma: "Aromatic with notes of ripe red berries, paprika, and hints of earthiness.",
                    palate: "Medium-bodied with moderate acidity and tannins, offering flavors of cherry, blackberry, and spice with an earthy undertone.",
                    finish: "Delicate and moderately long with a spicy, somewhat floral aftertaste."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers cooler to moderate climates, with a susceptibility to spring frosts.",
                    soil: "Thrives in loamy and clay soils.",
                    growingConditions: "Moderately vigorous with a tendency towards higher yields if not carefully managed."
                ),
                wineStyles: [
                    "Red Wines: Typically made into varietal wines that are appreciated for their unique flavor profile."
                ],
                foodPairing: [
                    "Ideal with traditional Hungarian dishes like goulash, as well as other spiced meat dishes and cheeses."
                ],
                notableProducers: [
                    "Heimann Family Estate",
                    "Takler Pince"
                ],
                otherNames: "Sometimes referred to as Gamza in Bulgaria.",
                grapeSummary: "Kadarka is prized for its contribution to traditional blends and varietal wines that offer a distinctive mix of fruitiness and spice, reflective of its Eastern European heritage."
            ),
            imageName: "kadarka",
            iconNames: ["leaf", "drop"]
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
                    aroma: "Aromas of ripe red fruits like cherries and strawberries, with herbal and spicy notes.",
                    palate: "Medium-bodied with moderate tannins and acidity, offering flavors of red fruit, earth, and hints of spice.",
                    finish: "Smooth with a slightly spicy and warm finish."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Adapts well to the warm, Mediterranean climate of Crete.",
                    soil: "Prefers calcareous and clay-rich soils.",
                    growingConditions: "Moderately vigorous, with a resistance to drought but susceptibility to certain fungal diseases."
                ),
                wineStyles: [
                    "Red Wines: Often blended with Mandilaria to create balanced, aromatic reds typical of the region."
                ],
                foodPairing: [
                    "Pairs well with Mediterranean dishes, grilled meats, and robust cheeses."
                ],
                notableProducers: [
                    "Lyrarakis Winery",
                    "Boutari"
                ],
                otherNames: "None",
                grapeSummary: "Kotsifali is celebrated for its ability to produce aromatic, approachable red wines that embody the essence of Cretan winemaking."
            ),
            imageName: "kotsifali",
            iconNames: ["leaf", "drop"]
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers cooler climates which enhance its acidity and freshness.",
                    soil: "Thrives in alluvial and sandy soils, which help maintain its vibrant fruit flavors.",
                    growingConditions: "High yielding, but quality can be maintained with careful vineyard management to control vigor."
                ),
                wineStyles: [
                    "Sparkling Red Wines: Ranges from secco (dry) to dolce (sweet), with most being frizzante (lightly sparkling)."
                ],
                foodPairing: [
                    "Excellent with charcuterie, pizza, and various regional Italian dishes, especially those featuring balsamic vinegar or rich meats."
                ],
                notableProducers: [
                    "Cantina della Volta",
                    "Cleto Chiarli"
                ],
                otherNames: "Several biotypes including Lambrusco Grasparossa, Lambrusco Salamino, and Lambrusco di Sorbara.",
                grapeSummary: "Lambrusco is valued for its versatility and the delightful, refreshing sparkling wines it produces, which range widely in sweetness levels."
            ),
            imageName: "lambrusco",
            iconNames: ["leaf", "drop"]
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers a Mediterranean climate, with sufficient warmth to fully ripen.",
                    soil: "Adapts well to various soil types but favors sandy and clay-rich soils.",
                    growingConditions: "Resilient to drought and heat, making it well-suited to the Greek climate."
                ),
                wineStyles: [
                    "Red Wines: Typically produced as a varietal wine or used in blends, offering a distinctive expression of Greek terroir."
                ],
                foodPairing: [
                    "Pairs excellently with Mediterranean dishes, grilled meats, and rich cheeses."
                ],
                notableProducers: [
                    "Domaine Porto Carras",
                    "Ktima Biblia Chora"
                ],
                otherNames: "Also historically known as Kalambaki.",
                grapeSummary: "Limnio is renowned for its historical significance and its capacity to produce aromatic, characterful red wines that reflect the rich heritage of Greek viticulture."
            ),
            imageName: "limnio",
            iconNames: ["leaf", "drop"]
        ),
        // Malbec Details
        Grape(
            name: "Malbec",
            details: GrapeDetails(
                origin: "Originally from the Bordeaux region of France, Malbec has become synonymous with Argentine wine, where it thrives and is considered the national variety.",
                countries: Countries(
                    primary: [
                        "Argentina: Predominantly in Mendoza and also found in Salta and Patagonia.",
                        "France: Still grown in Cahors and some parts of Bordeaux.",
                        "USA: Increasingly popular in California and Washington."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep purple, almost inky.",
                    aroma: "Aromas of blackberry, plum, and black cherry, with hints of cocoa, tobacco, and sometimes a floral note of violets.",
                    palate: "Full-bodied with robust tannins and moderate acidity, offering flavors of dark fruits, chocolate, and vanilla from oak aging.",
                    finish: "Long and fruit-rich, often with spicy and smoky undertones."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers warm, dry climates to fully ripen.",
                    soil: "Performs best in well-drained, sandy or rocky soils.",
                    growingConditions: "Highly vigorous, requiring careful management to avoid overproduction which can dilute flavors."
                ),
                wineStyles: [
                    "Red Wines: Typically bold and structured, often aged in oak to enhance complexity."
                ],
                foodPairing: [
                    "Pairs excellently with red meats, particularly steak and barbecue, as well as hearty stews and strong cheeses."
                ],
                notableProducers: [
                    "Catena Zapata",
                    "Bodega Colomé"
                ],
                otherNames: "Also known as Côt in the Loire Valley and Auxerrois in Cahors, France.",
                grapeSummary: "Malbec is celebrated for its rich, dark flavors and smooth tannins, making it a favorite for those who enjoy robust red wines."
            ),
            imageName: "malbec",
            iconNames: ["leaf", "drop"]
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Thrives in warm, Mediterranean climates.",
                    soil: "Best in calcareous and well-drained soils.",
                    growingConditions: "Susceptible to various vine diseases but suitable for organic cultivation due to its thick skin."
                ),
                wineStyles: [
                    "Fortified Wines: Most commonly made into sweet, fortified wines that are aged extensively."
                ],
                foodPairing: [
                    "Perfect with rich desserts, blue cheeses, or as a dessert on its own."
                ],
                notableProducers: [
                    "Achaia Clauss",
                    "Domaine Mercouri"
                ],
                otherNames: "None",
                grapeSummary: "Mavrodaphne is distinguished by its ability to produce intensely flavorful, sweet wines that are traditionally enjoyed as aperitifs or with desserts."
            ),
            imageName: "mavrodaphne",
            iconNames: ["leaf", "drop"]
        ),
        // Mencía Details
        Grape(
            name: "Mencía",
            details: GrapeDetails(
                origin: "Mencía is primarily found in the northwestern part of Spain, particularly in Bierzo, Ribeira Sacra, and Valdeorras. It is known for producing aromatic, medium-bodied red wines.",
                countries: Countries(
                    primary: [
                        "Spain: Concentrated in Bierzo, Ribeira Sacra, and Valdeorras.",
                        "Portugal: Known as Jaen in the Dão and Bairrada regions."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Medium cherry red.",
                    aroma: "Aromas of red fruits like cherry and raspberry, complemented by floral notes, particularly violets, and mineral undertones.",
                    palate: "Medium-bodied with moderate to high acidity and soft tannins, featuring flavors of fresh red berries, herbal notes, and a distinctive minerality.",
                    finish: "Elegant and fresh with a lingering fruity and floral aftertaste."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers cooler, more humid climates which help retain its acidity and aromatic profile.",
                    soil: "Thrives in slate and granite soils, which contribute to its mineral complexity.",
                    growingConditions: "Resistant to drought and relatively low-yielding, which helps concentrate flavors."
                ),
                wineStyles: [
                    "Red Wines: Predominantly made as varietal wines or occasionally blended, celebrated for their expressiveness and freshness."
                ],
                foodPairing: [
                    "Pairs well with roasted meats, charcuterie, and regional Spanish cuisine."
                ],
                notableProducers: [
                    "Descendientes de J. Palacios",
                    "Dominio de Tares"
                ],
                otherNames: "Known as Jaen in Portugal.",
                grapeSummary: "Mencía is appreciated for its vibrant fruit flavors and floral aromatics, offering a distinctive and refreshing take on Spanish red wines."
            ),
            imageName: "mencia",
            iconNames: ["leaf", "drop"]
        ),

        // Merlot Details
        Grape(
            name: "Merlot",
            details: GrapeDetails(
                origin: "Merlot is one of the world's most popular and widely planted red wine grapes, originating from the Bordeaux region of France. It is prized for its soft, ripe, elegant profile.",
                countries: Countries(
                    primary: [
                        "France: A key component in Bordeaux blends, especially from the Right Bank.",
                        "USA: Extensively planted across California and Washington.",
                        "Chile, Italy, Australia: Also significant in these regions."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Medium to dark ruby red.",
                    aroma: "Rich aromas of black cherry, plum, and currant, with notes of chocolate, bay leaf, and sometimes cedar.",
                    palate: "Medium to full-bodied with low to medium tannins and moderate acidity, offering a plush texture and flavors of ripe dark fruits, vanilla, and herbs.",
                    finish: "Smooth and velvety with a chocolatey, fruity linger."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Adaptable to both cool and warm climates, which affects the style significantly.",
                    soil: "Prefers clay and limestone soils for optimal growth, which help retain moisture and regulate temperature.",
                    growingConditions: "Vigorous and high yielding, but sensitive to cold and moisture-related diseases like mildew."
                ),
                wineStyles: [
                    "Red Wines: Often blended with Cabernet Sauvignon and Cabernet Franc in Bordeaux styles or made into lush, velvety single varietal wines."
                ],
                foodPairing: [
                    "Versatile with food, pairing well with everything from light poultry dishes to hearty red meats and rich pastas."
                ],
                notableProducers: [
                    "Château Pétrus",
                    "Duckhorn Vineyards"
                ],
                otherNames: "None",
                grapeSummary: "Merlot is celebrated for its accessibility, smooth tannins, and rich fruit flavors, making it a favorite for both blending and single varietal expressions."
            ),
            imageName: "merlot",
            iconNames: ["leaf", "drop"]
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers cooler, temperate climates.",
                    soil: "Performs best in well-drained, volcanic soils.",
                    growingConditions: "Resistant to many vine diseases but can be prone to overproduction, which dilutes quality."
                ),
                wineStyles: [
                    "Red Wines: Mostly used in blends with Corvina and Rondinella for Valpolicella and Bardolino wines."
                ],
                foodPairing: [
                    "Pairs well with light pasta dishes, pizza, and white meats, complementing their flavors without overpowering."
                ],
                notableProducers: [
                    "Zenato",
                    "Masi Agricola"
                ],
                otherNames: "None",
                grapeSummary: "Molinara is valued for its acidity and fresh, light profile in blends, adding balance and brightness to the wines."
            ),
            imageName: "molinara",
            iconNames: ["leaf", "drop"]
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers cooler mountain climates, which help maintain its acidity and aromatic complexity.",
                    soil: "Thrives in limestone and rocky soils.",
                    growingConditions: "Tolerant to cold but susceptible to some vine diseases; benefits from high-altitude planting for optimal ripening."
                ),
                wineStyles: [
                    "Red Wines: Typically vinified on its own to produce varietal wines that highlight its unique flavor profile."
                ],
                foodPairing: [
                    "Pairs well with game meats, charcuterie, and robust cheeses."
                ],
                notableProducers: [
                    "Domaine Jean Vullien",
                    "Domaine de l'Idylle"
                ],
                otherNames: "None",
                grapeSummary: "Mondeuse is celebrated for its complex, spicy profile and is often likened to Syrah for its peppery and vibrant dark fruit flavors."
            ),
            imageName: "mondeuse",
            iconNames: ["leaf", "drop"]
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers warmer climates to fully develop its flavors and color.",
                    soil: "Adaptable to various soil types but does best in clay and limestone soils.",
                    growingConditions: "Vigorous vine that can yield high but requires careful management to maintain quality."
                ),
                wineStyles: [
                    "Red Wines: Most commonly made into robust, age-worthy wines that are often enjoyed for their fruity and earthy complexity."
                ],
                foodPairing: [
                    "Ideal with hearty dishes such as pasta with meat sauces, lamb, and aged cheeses."
                ],
                notableProducers: [
                    "Cantina Zaccagnini",
                    "Masciarelli"
                ],
                otherNames: "None",
                grapeSummary: "Montepulciano is known for its deep color, robust tannins, and ability to produce rich, flavorful wines that pair excellently with a wide range of foods."
            ),
            imageName: "montepulciano",
            iconNames: ["leaf", "drop"]
        ),
        // Mourvèdre Details
        Grape(
            name: "Mourvèdre",
            details: GrapeDetails(
                origin: "Mourvèdre, originally from Spain where it's known as Monastrell, is extensively used in the Rhône and Provence regions of France. It's valued for its deep color, rich tannins, and dark fruit flavors.",
                countries: Countries(
                    primary: [
                        "France: Widely planted in the Rhône Valley and Provence, particularly famous in Bandol.",
                        "Spain: Known as Monastrell, especially prevalent in regions like Jumilla and Alicante.",
                        "USA: Grown in California and Washington."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep purple to blackish.",
                    aroma: "Complex aromas of blackberry, plum, and red meat, with notes of black pepper, thyme, and sometimes floral hints of violet.",
                    palate: "Full-bodied with high tannins and medium acidity, delivering flavors of dark fruit, game, leather, and earth.",
                    finish: "Long and persistent, often with spicy and chocolatey undertones."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Thrives in warm, dry climates that allow for full ripening.",
                    soil: "Performs best in stony, well-drained soils.",
                    growingConditions: "Drought-resistant but requires a long growing season to reach full maturity."
                ),
                wineStyles: [
                    "Red Wines: Often used in GSM (Grenache-Syrah-Mourvèdre) blends, as well as varietal wines and rosés in Bandol."
                ],
                foodPairing: [
                    "Excellent with game, dark meats, and hearty, spicy dishes."
                ],
                notableProducers: [
                    "Domaine Tempier",
                    "Château de Pibarnon"
                ],
                otherNames: "Known as Monastrell in Spain and Mataro in Australia and parts of the USA.",
                grapeSummary: "Mourvèdre is celebrated for its contribution to complex, age-worthy wines, offering a robust structure and rich flavors that are ideal for blending or as standalone varietal wines."
            ),
            imageName: "mourvedre",
            iconNames: ["leaf", "drop"]
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers cool climates with a long growing season to develop its complex flavors while retaining acidity.",
                    soil: "Best in calcareous marl soils which provide adequate drainage and retain warmth.",
                    growingConditions: "Challenging to cultivate due to its late ripening and susceptibility to diseases; requires meticulous vineyard management."
                ),
                wineStyles: [
                    "Red Wines: Primarily used to produce Barolo and Barbaresco, among the world’s most revered wines."
                ],
                foodPairing: [
                    "Ideal with rich, meaty dishes such as braised beef, truffles, and hearty stews. Also pairs well with aged cheeses."
                ],
                notableProducers: [
                    "Giacomo Conterno",
                    "Gaja"
                ],
                otherNames: "None",
                grapeSummary: "Nebbiolo is famed for its profound aromatic complexity, formidable structure, and exceptional longevity, making it a cornerstone of Italian viticulture."
            ),
            imageName: "nebbiolo",
            iconNames: ["leaf", "drop"]
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Thrives in hot, arid climates.",
                    soil: "Performs best in calcareous, well-drained soils.",
                    growingConditions: "Drought-resistant and generally hardy, though it can produce high yields which need to be controlled for quality."
                ),
                wineStyles: [
                    "Red Wines: Typically produces robust, dark wines that can age well. Also used in blends and rosé wines."
                ],
                foodPairing: [
                    "Pairs well with hearty dishes, such as roasted meats, rich pasta dishes, and strong cheeses."
                ],
                notableProducers: [
                    "Cantina Due Palme",
                    "Leone de Castris"
                ],
                otherNames: "Occasionally referred to as Negro amaro.",
                grapeSummary: "Negroamaro is celebrated for its bold flavors and is a staple in the winemaking tradition of southern Italy, especially in Puglia."
            ),
            imageName: "negroamaro",
            iconNames: ["leaf", "drop"]
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers the cooler, high-altitude climates of Mount Etna, which help preserve its acidity and aromatic profile.",
                    soil: "Volcanic soils contribute significantly to its mineral and complex flavor profile.",
                    growingConditions: "Adaptable but best at higher elevations where the diurnal temperature variation can be leveraged to enhance its aromatic complexity."
                ),
                wineStyles: [
                    "Red Wines: Often made into varietal wines or blended with Nerello Cappuccio, showcasing elegance and aging potential."
                ],
                foodPairing: [
                    "Ideal with grilled meats, mushroom dishes, and hearty fish courses like tuna or swordfish."
                ],
                notableProducers: [
                    "Tenuta delle Terre Nere",
                    "Benanti"
                ],
                otherNames: "None",
                grapeSummary: "Nerello Mascalese is highly regarded for its ability to balance power and elegance, producing wines that are both approachable in their youth and capable of long aging."
            ),
            imageName: "nerello_mascalese",
            iconNames: ["leaf", "drop"]
        ),
        // Nero d’Avola Details
        Grape(
            name: "Nero d’Avola",
            details: GrapeDetails(
                origin: "Nero d'Avola is the most important and widely planted red wine grape in Sicily, Italy, known for its bold flavors and adaptability.",
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Thrives in hot, arid climates.",
                    soil: "Performs well in sandy soils but can adapt to various soil types.",
                    growingConditions: "Drought-resistant and generally robust, producing high yields without significant loss of quality."
                ),
                wineStyles: [
                    "Red Wines: Typically made as a varietal wine, sometimes aged in oak to enhance complexity."
                ],
                foodPairing: [
                    "Pairs excellently with grilled meats, game, and hearty pasta dishes."
                ],
                notableProducers: [
                    "Planeta",
                    "Donnafugata"
                ],
                otherNames: "Also known locally as Calabrese.",
                grapeSummary: "Nero d'Avola is celebrated for its rich, full-bodied wines that embody the warmth and intensity of Sicily’s sun-drenched vineyards."
            ),
            imageName: "nero_davola",
            iconNames: ["leaf", "drop"]
        ),

        // Petit Verdot Details
        Grape(
            name: "Petit Verdot",
            details: GrapeDetails(
                origin: "Petit Verdot is a red wine grape that originated in the Bordeaux region of France, traditionally used as a blending grape in Bordeaux blends.",
                countries: Countries(
                    primary: [
                        "France: Historically part of the Bordeaux blend.",
                        "USA: Increasingly popular in California and Virginia.",
                        "Australia: Grown in regions like Margaret River and Barossa Valley."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Dark, inky purple.",
                    aroma: "Intense aromas of blueberry, violet, and leather, often complemented by spicy and woody notes.",
                    palate: "Full-bodied with high tannins and acidity, delivering flavors of dark fruits, vanilla, and spices.",
                    finish: "Long and robust, with a lingering spicy and floral note."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers warmer climates to fully ripen.",
                    soil: "Best in deep, well-drained soils.",
                    growingConditions: "Late-ripening variety that can be challenging to grow, but yields concentrated flavors when fully matured."
                ),
                wineStyles: [
                    "Red Wines: Often used in small amounts to add color, tannin, and flavor complexity to blends."
                ],
                foodPairing: [
                    "Ideal with rich, fatty meats like lamb and beef, as well as aged cheeses."
                ],
                notableProducers: [
                    "Château Palmer",
                    "Pride Mountain Vineyards"
                ],
                otherNames: "None",
                grapeSummary: "Petit Verdot is known for its power and concentration, offering depth and complexity to wines, especially in blends where it can shine even in small proportions."
            ),
            imageName: "petit_verdot",
            iconNames: ["leaf", "drop"]
        ),
        // Petite Sirah Details
        Grape(
            name: "Petite Sirah",
            details: GrapeDetails(
                origin: "Petite Sirah, also known as Durif, is a variety that originated from a cross between Syrah and Peloursin grapes in France. It has found a particularly hospitable home in California.",
                countries: Countries(
                    primary: [
                        "USA: Extensively planted in California, especially in regions like Napa Valley and Paso Robles.",
                        "Australia: Known as Durif, where it's also popular."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep, inky purple to black.",
                    aroma: "Intense aromas of blackberry, blueberry, and dark chocolate, often accompanied by spicy and smoky notes.",
                    palate: "Full-bodied with firm tannins and low to moderate acidity, featuring robust flavors of dark fruit, pepper, and licorice.",
                    finish: "Long and powerful, with persistent dark fruit and spicy notes."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers warm, dry climates to fully develop its rich flavors.",
                    soil: "Performs best in well-drained soils.",
                    growingConditions: "Vigorous grower with high resistance to downy mildew; can produce high yields but often requires careful management to ensure quality."
                ),
                wineStyles: [
                    "Red Wines: Typically bold and intense, often benefiting from aging in oak to enhance complexity."
                ],
                foodPairing: [
                    "Pairs well with rich, flavorful dishes such as grilled meats, barbecue, and strong cheeses."
                ],
                notableProducers: [
                    "Ridge Vineyards",
                    "Michael David Winery"
                ],
                otherNames: "Known as Durif in Australia and other regions.",
                grapeSummary: "Petite Sirah is known for its powerful, tannic wines with deep color and longevity, making it a favorite for bold red wine enthusiasts."
            ),
            imageName: "petite_sirah",
            iconNames: ["leaf", "drop"]
        ),

        // Pinot Noir Details
        Grape(
            name: "Pinot Noir",
            details: GrapeDetails(
                origin: "Pinot Noir is a red wine grape of the species Vitis vinifera. Originating from the Burgundy region of France, it is now grown under a variety of climate conditions and is known for producing some of the finest wines in the world.",
                countries: Countries(
                    primary: [
                        "France: Primarily in Burgundy, also in Champagne and Alsace.",
                        "USA: Widely grown in California, Oregon, and New York.",
                        "New Zealand, Australia, Chile, and Germany: Also significant producers."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Light to medium ruby red, often paler compared to other red wines.",
                    aroma: "Complex aromas of cherries, raspberries, and strawberries, with earthy undertones of mushroom and forest floor, and floral hints of violet.",
                    palate: "Medium-bodied with soft to moderate tannins and high acidity, offering flavors of red fruit, spice, and earthy notes.",
                    finish: "Elegant and smooth, with a nuanced, lingering finish that can develop greater complexity with age."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers cooler climates which help maintain its acidity and delicate flavors.",
                    soil: "Best in calcareous clay and limestone-based soils, which provide drainage and retain adequate moisture.",
                    growingConditions: "Challenging to grow due to its thin skin and susceptibility to various vine diseases."
                ),
                wineStyles: [
                    "Red Wines: Renowned for its versatility, ranging from light and fruity to rich and full-bodied, depending on the region and winemaking techniques used."
                ],
                foodPairing: [
                    "Exceptionally versatile with food, pairs well with poultry, red meat, fish, and vegetarian dishes."
                ],
                notableProducers: [
                    "Domaine de la Romanée-Conti",
                    "Williams Selyem"
                ],
                otherNames: "None",
                grapeSummary: "Pinot Noir is highly prized for its depth, complexity, and versatility, producing some of the most sought-after wines in the world."
            ),
            imageName: "pinot_noir",
            iconNames: ["leaf", "drop"]
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Thrives in warm climates, with a preference for dry conditions to enhance fruit concentration.",
                    soil: "Adapts to a variety of soil types but favors well-drained, sandy soils.",
                    growingConditions: "Vigorous grower, resistant to wind and drought, but can be prone to overcropping without careful vineyard management."
                ),
                wineStyles: [
                    "Red Wines: Typically made into varietal wines that showcase its unique flavor profile, also used in blends."
                ],
                foodPairing: [
                    "Pairs well with bold, flavorful dishes such as barbecued meats, game, and spicy stews."
                ],
                notableProducers: [
                    "Kanonkop",
                    "Beyerskloof"
                ],
                otherNames: "None",
                grapeSummary: "Pinotage is celebrated for its distinctive and bold profile, embodying the terroir and winemaking heritage of South Africa."
            ),
            imageName: "pinotage",
            iconNames: ["leaf", "drop"]
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers cooler climates which help retain its natural freshness and acidity.",
                    soil: "Not particularly demanding, but performs well in loamy and clay soils.",
                    growingConditions: "Generally easy to cultivate, with a tendency towards high yields which require control for quality production."
                ),
                wineStyles: [
                    "Red Wines: Typically made as light, quaffable wines meant for early consumption."
                ],
                foodPairing: [
                    "Ideal with light dishes, cold cuts, and mild cheeses, or as a refreshing summer red."
                ],
                notableProducers: [
                    "Weingut Becker",
                    "Weingut Wittmann"
                ],
                otherNames: "Also known as Blauer Portugieser.",
                grapeSummary: "Portugieser is appreciated for its light, fruity wines that are best enjoyed young, often serving as a pleasant everyday wine."
            ),
            imageName: "portugieser",
            iconNames: ["leaf", "drop"]
        ),
        // Primitivo Details
        Grape(
            name: "Primitivo",
            details: GrapeDetails(
                origin: "Primitivo, also known internationally as Zinfandel, is a red wine grape that has become synonymous with the Puglia region of southern Italy. It is known for its robust wines and early ripening.",
                countries: Countries(
                    primary: [
                        "Italy: Predominantly grown in Puglia, especially in the Manduria area.",
                        "USA: Known as Zinfandel, especially in California."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep crimson to dark red.",
                    aroma: "Aromas of dark fruits like blackberry and plum, with spicy notes of clove and black pepper.",
                    palate: "Full-bodied with high alcohol content, offering flavors of jammy fruits, spice, and sometimes tobacco and leather, with a sweet edge if made in a late harvest style.",
                    finish: "Rich and intense with a lingering sweetness and spice."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers warm to hot climates, which are essential for achieving full phenolic ripeness.",
                    soil: "Thrives in well-drained, fertile soil but can adapt to various soil types.",
                    growingConditions: "Robust and vigorous, with high sugar content that can lead to high alcohol wines."
                ),
                wineStyles: [
                    "Red Wines: Often made in a bold, rich style; also popular as a semi-sweet rosé known as White Zinfandel in the US."
                ],
                foodPairing: [
                    "Pairs well with hearty dishes such as barbecued meats, spicy dishes, and robust pasta sauces."
                ],
                notableProducers: [
                    "Antinori",
                    "Fatalone"
                ],
                otherNames: "Zinfandel in the United States.",
                grapeSummary: "Primitivo is celebrated for its capacity to produce powerful, fruity wines that showcase the intensity of Southern Italian viticulture."
            ),
            imageName: "primitivo",
            iconNames: ["leaf", "drop"]
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Best suited to cooler, maritime climates where it can ripen slowly.",
                    soil: "Prefers well-drained, rich marl and sandstone soils.",
                    growingConditions: "Somewhat vigorous and can produce high yields, but best quality comes from controlled yield management."
                ),
                wineStyles: [
                    "Red Wines: Typically produced as a varietal wine, showcasing its unique flavor profile and structure."
                ],
                foodPairing: [
                    "Excellent with game, grilled meats, and richly flavored cheeses."
                ],
                notableProducers: [
                    "Livio Felluga",
                    "Villa Rubini"
                ],
                otherNames: "Several varietals exist, including Refosco dal Peduncolo Rosso.",
                grapeSummary: "Refosco is known for its deep color, vibrant acidity, and ability to produce complex wines that reflect the terroir of northeastern Italy."
            ),
            imageName: "refosco",
            iconNames: ["leaf", "drop"]
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Adapts well to the moderate and humid climate of the Veneto region.",
                    soil: "Prefers well-drained, calcareous and alluvial soils.",
                    growingConditions: "Resistant to many common vine diseases and adapts well to different training systems, though it is less vigorous than Corvina."
                ),
                wineStyles: [
                    "Red Wines: Commonly used in blends to add color and aroma.",
                    "Rosé Wines: Sometimes used to produce light rosés."
                ],
                foodPairing: [
                    "Pairs well with light pasta dishes, pizza, and young cheeses."
                ],
                notableProducers: [
                    "Zenato",
                    "Masi Agricola"
                ],
                otherNames: "None",
                grapeSummary: "Rondinella is valued for its contribution to the floral and fruity components in traditional Venetian blends, enhancing the overall elegance and drinkability of the wines."
            ),
            imageName: "rondinella",
            iconNames: ["leaf", "drop"]
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Thrives in warm, dry climates that enhance its flavor concentration and tannin maturity.",
                    soil: "Performs best in well-drained, rocky soils.",
                    growingConditions: "Low-yielding, which helps concentrate the flavors and tannins in the grapes."
                ),
                wineStyles: [
                    "Red Wines: Predominantly produced as a dry red wine that benefits greatly from aging. Also made into a sweet passito style wine."
                ],
                foodPairing: [
                    "Ideal with rich, hearty dishes such as roasted meats, game, and strong cheeses."
                ],
                notableProducers: [
                    "Arnaldo Caprai",
                    "Antonelli San Marco"
                ],
                otherNames: "None",
                grapeSummary: "Sagrantino is celebrated for its depth, complexity, and aging potential, making it one of the most prestigious and sought-after wines of Umbria."
            ),
            imageName: "sagrantino",
            iconNames: ["leaf", "drop"]
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers a warm and dry climate but is adaptable, with different clones better suited to varying conditions.",
                    soil: "Best in calcareous clay soils which contribute to its flavor complexity and structure.",
                    growingConditions: "Vigorous vine that can be prone to overcropping, hence careful vineyard management is essential for quality."
                ),
                wineStyles: [
                    "Red Wines: Often used in blends but also shines as a varietal wine. Notable for its role in Chianti, Chianti Classico, and Brunello di Montalcino."
                ],
                foodPairing: [
                    "Versatile with food, pairs well with everything from pasta and pizza to complex meat dishes and aged cheeses."
                ],
                notableProducers: [
                    "Antinori",
                    "Biondi-Santi"
                ],
                otherNames: "None",
                grapeSummary: "Sangiovese is celebrated for its versatility, depth, and ability to express terroir, making it a cornerstone of Italian winemaking."
            ),
            imageName: "sangiovese",
            iconNames: ["leaf", "drop"]
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Thrives in cooler climates, which help maintain its delicate aromas and acidity.",
                    soil: "Performs well in sandy and stony soils typical of its native region.",
                    growingConditions: "Generally hardy and resistant to major diseases, though it is susceptible to frost."
                ),
                wineStyles: [
                    "Red Wines: Primarily made as a varietal wine, often consumed young to appreciate its fresh, fruity qualities."
                ],
                foodPairing: [
                    "Pairs well with light appetizers, fish dishes, and can be a delightful companion to pizza and light pasta dishes."
                ],
                notableProducers: [
                    "Cantina Terlano",
                    "Nals Margreid"
                ],
                otherNames: "Also known as Vernatsch or Trollinger.",
                grapeSummary: "Schiava is valued for its approachability and charm, offering a refreshing take on red wine that is best enjoyed in its youth."
            ),
            imageName: "schiava",
            iconNames: ["leaf", "drop"]
        ),
        // St. Laurent Details
        Grape(
            name: "St. Laurent",
            details: GrapeDetails(
                origin: "St. Laurent is a dark-skinned wine grape variety believed to have originated in Austria. It is closely related to Pinot Noir and offers wines with a similar, though distinctly spicier, profile.",
                countries: Countries(
                    primary: [
                        "Austria: Widely grown, particularly in Lower Austria and Burgenland.",
                        "Czech Republic: Also found in regions like Moravia."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep, dark red.",
                    aroma: "Aromas of dark cherries, blackberries, and a distinctive spicy note, often accompanied by earthy undertones.",
                    palate: "Medium-bodied with moderate tannins and high acidity, featuring flavors of ripe dark fruits and a hint of herbal spice.",
                    finish: "Elegant and somewhat tart, with a lingering spicy finish."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers cooler climates, similar to Pinot Noir, which helps in maintaining its acidity and aromatic complexity.",
                    soil: "Performs best in limestone and chalky soils, which contribute to its mineral complexity.",
                    growingConditions: "Relatively hardy but can be prone to diseases such as rot if the conditions are too damp."
                ),
                wineStyles: [
                    "Red Wines: Primarily produced as a varietal wine, often aged in oak to enhance its spicy character."
                ],
                foodPairing: [
                    "Pairs well with game meats, roasted pork, and dishes with earthy or smoky flavors."
                ],
                notableProducers: [
                    "Weingut Heinrich",
                    "Weingut Juris"
                ],
                otherNames: "Also known in some regions as Sankt Laurent.",
                grapeSummary: "St. Laurent is valued for its ability to produce deeply colored, aromatic wines that balance fruitiness with spice, making it popular among enthusiasts of unique varietal wines."
            ),
            imageName: "st_laurent",
            iconNames: ["leaf", "drop"]
        ),

        // Syrah Details
        Grape(
            name: "Syrah",
            details: GrapeDetails(
                origin: "Syrah, also known as Shiraz, is a robust red wine grape that originated in the Rhône Valley of France. It's known for its powerful flavor profile and is a key component in both varietal and blended wines.",
                countries: Countries(
                    primary: [
                        "France: Dominantly in the Rhône Valley.",
                        "Australia: Known as Shiraz, particularly prevalent in Barossa Valley and McLaren Vale.",
                        "USA: Widely planted in California and Washington."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep purple to almost black.",
                    aroma: "Rich aromas of blackberry, blueberry, and plums, with spice notes like black pepper, and often hints of smoked meat and chocolate.",
                    palate: "Full-bodied with firm tannins and moderate to high acidity, offering flavors of dark fruits, pepper, and dark chocolate, with a smoky, meaty character in some wines.",
                    finish: "Long and persistent, with a peppery and spicy aftertaste that complements its robust structure."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Thrives in both hot and temperate climates, adaptable but best expresses its characteristics in warm, dry conditions.",
                    soil: "Prefers well-drained, rocky soils which contribute to its concentration and depth.",
                    growingConditions: "Vigorous vine that can produce high yields, but quality is enhanced by controlling yield and focusing on intense flavor development."
                ),
                wineStyles: [
                    "Red Wines: Made as a full-bodied varietal wine, commonly aged in oak to add complexity. Also crucial in blends like Côtes du Rhône and GSM (Grenache, Syrah, Mourvèdre)."
                ],
                foodPairing: [
                    "Ideal with grilled meats, game, hearty stews, and a variety of cheeses."
                ],
                notableProducers: [
                    "Penfolds",
                    "E. Guigal"
                ],
                otherNames: "Known as Shiraz in Australia and South Africa.",
                grapeSummary: "Syrah is celebrated for its intense flavors and ability to produce deeply colored, complex wines that are highly valued across the world."
            ),
            imageName: "syrah",
            iconNames: ["leaf", "drop"]
        ),
        // Tannat Details
        Grape(
            name: "Tannat",
            details: GrapeDetails(
                origin: "Tannat is originally from the Madiran region in South West France. It's also incredibly popular in Uruguay, where it has become the national grape, known for its robust tannins and dark fruit flavors.",
                countries: Countries(
                    primary: [
                        "France: Predominantly in Madiran and surrounding areas.",
                        "Uruguay: Widely considered the national grape, extensively cultivated across the country.",
                        "USA: Planted in smaller amounts, particularly in California."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Deep, dark red, almost black.",
                    aroma: "Powerful aromas of black plum, blackberry, and raspberry, with earthy and spicy undertones, often accompanied by a smoky, dark chocolate character.",
                    palate: "Full-bodied with pronounced tannins and acidity, delivering flavors of dark fruits, tobacco, and dark chocolate.",
                    finish: "Long and tannic, with a persistent dark fruit and spicy aftertaste."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Thrives in both cool and warm climates, adaptable but benefits from the heat to fully mature its tannins.",
                    soil: "Performs best in well-drained, poor soils which help in moderating vigor.",
                    growingConditions: "Vigorous vine that can be prone to overproduction; yield control is crucial for quality."
                ),
                wineStyles: [
                    "Red Wines: Often vinified to soften its tannins, typically through extended aging in oak."
                ],
                foodPairing: [
                    "Pairs excellently with rich, fatty meats like lamb and beef, which help soften the wine's tannins."
                ],
                notableProducers: [
                    "Château Montus",
                    "Bodega Garzón"
                ],
                otherNames: "None",
                grapeSummary: "Tannat is renowned for its bold structure and high tannin content, making it suitable for aging and blending, offering significant health benefits due to its high levels of antioxidants."
            ),
            imageName: "tannat",
            iconNames: ["leaf", "drop"]
        ),

        // Tempranillo Details
        Grape(
            name: "Tempranillo",
            details: GrapeDetails(
                origin: "Tempranillo is the quintessential Spanish grape, central to the profiles of wines from Rioja and Ribera del Duero. Its name derives from 'temprano', meaning 'early', referring to its tendency to ripen earlier than other Spanish red grapes.",
                countries: Countries(
                    primary: [
                        "Spain: Dominant in Rioja and Ribera del Duero, also widely planted across the Iberian Peninsula.",
                        "Portugal: Known as Tinta Roriz in the Douro and Dão regions, used in Port wine production."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Medium ruby red, tending to garnet with aging.",
                    aroma: "Complex aromas of red fruits like strawberries and cherries, with notes of tobacco, leather, and vanilla, gaining more earthy and herbal qualities as it matures.",
                    palate: "Medium-bodied with moderate to high acidity and tannins, offering a balanced profile of fruit, oak, and earthy elements.",
                    finish: "Smooth and lingering, often with a spicy and leathery complexity."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers a cooler climate to maintain its acidity and structure but adaptable to various conditions.",
                    soil: "Varies, but limestone-based soils are considered ideal for its growth.",
                    growingConditions: "Moderately vigorous, requiring careful management to prevent over-ripening and maintain balance."
                ),
                wineStyles: [
                    "Red Wines: Typically aged in oak, contributing to its characteristic flavor profile; prominent in blends and varietal wines."
                ],
                foodPairing: [
                    "Versatile with food pairings, excellent with tapas, grilled meats, and traditional Spanish dishes."
                ],
                notableProducers: [
                    "Bodegas Vega Sicilia",
                    "Bodegas Muga"
                ],
                otherNames: "Tinta Roriz in Portugal, Aragonêz in some regions.",
                grapeSummary: "Tempranillo is celebrated for its versatility and complexity, capable of producing a wide range of wine styles from fresh and fruity to deeply nuanced and age-worthy."
            ),
            imageName: "tempranillo",
            iconNames: ["leaf", "drop"]
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers cooler climates which enhance its acidity and aromatic profile.",
                    soil: "Thrives in alluvial soils rich in gravel and sand, typical of its native growing areas.",
                    growingConditions: "Vigorous vine that requires careful canopy management to ensure adequate sun exposure for optimal ripening."
                ),
                wineStyles: [
                    "Red Wines: Typically made as varietal wines, showcasing the grape’s characteristic flavors and aging potential."
                ],
                foodPairing: [
                    "Pairs well with rich, savory dishes such as grilled meats, game, and aged cheeses."
                ],
                notableProducers: [
                    "Foradori",
                    "Mezzacorona"
                ],
                otherNames: "None",
                grapeSummary: "Teroldego is celebrated for its profound color and complex flavor profile, making it one of the gems of northern Italian viticulture."
            ),
            imageName: "teroldego",
            iconNames: ["leaf", "drop"]
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Adapts well to a variety of climates, from cooler maritime to hotter inland areas.",
                    soil: "Prefers schist and granite-based soils, which help stress the vine and concentrate its flavors.",
                    growingConditions: "Low-yielding, which contributes to the concentration and intensity of its wines."
                ),
                wineStyles: [
                    "Red Wines: Primarily used in the production of complex, structured wines and fortified Port wines."
                ],
                foodPairing: [
                    "Excellent with robust meat dishes, such as beef stews and game, as well as strong, mature cheeses."
                ],
                notableProducers: [
                    "Quinta do Noval",
                    "Symington Family Estates"
                ],
                otherNames: "None",
                grapeSummary: "Touriga Nacional is renowned for its depth and complexity, serving as the backbone of Portugal’s most prestigious red and fortified wines."
            ),
            imageName: "touriga_nacional",
            iconNames: ["leaf", "drop"]
        ),
        // Trousseau Details
        Grape(
            name: "Trousseau",
            details: GrapeDetails(
                origin: "Trousseau is a red wine grape from the Jura region in France, known for its light-bodied wines. It's also grown in Portugal, where it's known as Bastardo, and has found a niche in California.",
                countries: Countries(
                    primary: [
                        "France: Predominantly in the Jura region.",
                        "Portugal: Known as Bastardo, particularly in the Douro and Dão regions for Port production.",
                        "USA: Limited plantings in California, especially in cooler, coastal areas."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Light ruby to garnet.",
                    aroma: "Aromatic with notes of red berries, cherries, and floral hints, often complemented by earthy and herbal qualities.",
                    palate: "Light to medium-bodied with moderate acidity and tannins, presenting flavors of strawberry, raspberry, and spice with a rustic edge.",
                    finish: "Elegant and moderately long with a spicy and slightly earthy aftertaste."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers cooler climates which help preserve its delicate aromas and acidity.",
                    soil: "Adapts well to a variety of soils but thrives in limestone-rich soils typical of its native Jura.",
                    growingConditions: "Moderately vigorous, with a susceptibility to fungal diseases, requiring careful vineyard management."
                ),
                wineStyles: [
                    "Red Wines: Primarily made as varietal wines, often light and expressive, suitable for early consumption."
                ],
                foodPairing: [
                    "Pairs well with charcuterie, light poultry dishes, and creamy cheeses."
                ],
                notableProducers: [
                    "Domaine André et Mireille Tissot",
                    "Domaine de la Tournelle"
                ],
                otherNames: "Known as Bastardo in Portugal.",
                grapeSummary: "Trousseau is valued for its aromatic complexity and versatility, producing distinctive wines that express a strong sense of place."
            ),
            imageName: "trousseau",
            iconNames: ["leaf", "drop"]
        ),

        // Trollinger Details
        Grape(
            name: "Trollinger",
            details: GrapeDetails(
                origin: "Trollinger, also known as Schiava in Italy, is a red wine grape variety primarily associated with the wine regions of South Tyrol, Italy, and Württemberg, Germany. It produces light, fruity red wines.",
                countries: Countries(
                    primary: [
                        "Germany: Mainly in Württemberg.",
                        "Italy: Known as Schiava in South Tyrol."
                    ]
                ),
                tastingNotes: TastingNotes(
                    color: "Light red to pale ruby.",
                    aroma: "Fruity and floral with notes of red berries, cherries, and almonds, with a hint of violet.",
                    palate: "Light-bodied with low tannins and high acidity, featuring juicy and fresh flavors of red fruit with a slight nuttiness.",
                    finish: "Refreshing and straightforward, often enjoyed young."
                ),
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Thrives in cooler, alpine climates which enhance its freshness and acidity.",
                    soil: "Performs well in sandy and loamy soils.",
                    growingConditions: "Hardy and resistant to cold, but prone to high yields which can dilute quality if not managed properly."
                ),
                wineStyles: [
                    "Red Wines: Typically light and easy-drinking, popular as a casual, everyday wine."
                ],
                foodPairing: [
                    "Perfect with traditional German dishes, light pasta dishes, and cold cuts."
                ],
                notableProducers: [
                    "Cantina Tramin",
                    "Heinrich"
                ],
                otherNames: "Known as Schiava in Italy.",
                grapeSummary: "Trollinger is appreciated for its light, approachable wines that offer a pleasant, fruity experience, making it a popular choice in its native regions."
            ),
            imageName: "trollinger",
            iconNames: ["leaf", "drop"]
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers cooler climates which help maintain its acidity and develop its aromatic complexity.",
                    soil: "Thrives in sandy, clay, and limestone soils, which contribute to its flavor profile.",
                    growingConditions: "Moderately vigorous, requiring careful management to balance yield and fruit quality."
                ),
                wineStyles: [
                    "Red Wines: Often made as a varietal wine, celebrated for its aging potential and complex flavor development."
                ],
                foodPairing: [
                    "Pairs excellently with game, lamb, and rich sauces, as well as aged cheeses."
                ],
                notableProducers: [
                    "Alpha Estate",
                    "Kir-Yianni"
                ],
                otherNames: "None",
                grapeSummary: "Xinomavro is acclaimed for its complexity and aging potential, often compared to Nebbiolo for its ability to produce profound and long-lived wines."
            ),
            imageName: "xinomavro",
            iconNames: ["leaf", "drop"]
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Prefers warm to hot climates which allow the grapes to fully ripen and develop rich flavors.",
                    soil: "Adaptable to various soil types but best in well-drained sandy or loamy soils.",
                    growingConditions: "Vigorous vine that can produce high yields; careful vineyard management is needed to maintain quality."
                ),
                wineStyles: [
                    "Red Wines: Ranges from medium-bodied to rich and intense. Also famous for the sweet, light rosé style known as White Zinfandel.",
                    "Rosé Wines: White Zinfandel, which is a sweeter and lighter rosé wine style."
                ],
                foodPairing: [
                    "Robust reds pair well with grilled meats and barbecue, while the sweeter styles can complement spicy foods or serve as a refreshing aperitif."
                ],
                notableProducers: [
                    "Ridge Vineyards",
                    "Turley Wine Cellars"
                ],
                otherNames: "Primitivo in Italy.",
                grapeSummary: "Zinfandel is versatile and capable of producing a wide array of wine styles, each expressing a distinct character that ranges from rich and spicy to sweet and light."
            ),
            imageName: "zinfandel",
            iconNames: ["leaf", "drop"]
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
                viticulturalCharacteristics: ViticulturalCharacteristics(
                    climate: "Thrives in a variety of climates, from cooler regions which enhance its acidity to warmer areas that intensify its fruit flavors.",
                    soil: "Versatile in soil adaptability, but best results are often from loamy and chalky soils.",
                    growingConditions: "Zweigelt is relatively easy to cultivate, with good resistance to cold and diseases, making it a reliable crop for consistent quality."
                ),
                wineStyles: [
                    "Red Wines: Often produced as varietal wines but also used in blends. It is capable of producing wines that range from light and fresh to more complex and oak-aged versions."
                ],
                foodPairing: [
                    "Pairs well with a wide range of dishes, from grilled chicken and pork to pasta dishes and flavorful cheese."
                ],
                notableProducers: [
                    "Weingut Pittnauer",
                    "Weingut Heinrich"
                ],
                otherNames: "None",
                grapeSummary: "Zweigelt is cherished for its versatility and approachability, producing vibrant and fruit-forward wines that appeal to a wide array of wine enthusiasts."
            ),
            imageName: "zweigelt",
            iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in hot, dry climates with plenty of sunshine.",
                soil: "Prefers well-drained soils, particularly sandy and clay loams.",
                growingConditions: "Resistant to drought and can produce high yields. Known for its ability to thrive in harsh growing conditions."
            ),
            wineStyles: [
                "White Wines: Often produced as a light, easy-drinking wine with refreshing acidity.",
                "Blended Wines: Commonly used in blends to add body and neutral flavors."
            ],
            foodPairing: [
                "White Wines: Pairs well with light salads, seafood, and poultry dishes.",
                "Blended Wines: Complements a variety of dishes due to its neutral profile."
            ],
            notableProducers: [
                "Bodegas Verum",
                "Bodegas Cristo de la Vega"
            ],
            otherNames: "Known as Lairén in some regions.",
            grapeSummary: "Airen is notable for its high yield and adaptability to harsh growing conditions, making it a significant grape variety in Spain's wine production."
        ),
        imageName: "airen",
        iconNames: ["leaf", "drop"]
    ),

    // Albariño (Alvarinho) Details
    Grape(
        name: "Albariño (Alvarinho)",
        details: GrapeDetails(
            origin: "Albariño, known as Alvarinho in Portugal, is a white grape variety from the Iberian Peninsula. It is especially prominent in the Rías Baixas DO in Spain and Vinho Verde in Portugal.",
            countries: Countries(
                primary: [
                    "Spain: Particularly in Rías Baixas, Galicia.",
                    "Portugal: Known as Alvarinho, especially in the Vinho Verde region."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold with greenish hues.",
                aroma: "Aromatic with notes of citrus, peach, and floral elements like jasmine.",
                palate: "Light to medium-bodied with high acidity, offering flavors of lime, apricot, and a distinct saline minerality.",
                finish: "Crisp and refreshing with a lingering citrus and mineral finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in cooler, maritime climates which help maintain its high acidity and aromatic profile.",
                soil: "Prefers well-drained, sandy, and granitic soils.",
                growingConditions: "Vigorous vine that can be prone to mildew; careful canopy management is necessary."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style, often showcasing its fresh acidity and aromatic complexity."
            ],
            foodPairing: [
                "Pairs well with seafood, particularly shellfish, as well as light salads and fresh cheeses."
            ],
            notableProducers: [
                "Pazo de Señorans",
                "Quinta de Soalheiro"
            ],
            otherNames: "Alvarinho in Portugal.",
            grapeSummary: "Albariño is celebrated for its bright acidity and aromatic intensity, making it a favorite for refreshing, seafood-friendly wines."
        ),
        imageName: "albarino",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers cool climates to maintain its acidity and fresh flavor profile.",
                soil: "Thrives in limestone-rich soils typical of Burgundy.",
                growingConditions: "Vigorous vine that produces high yields; quality is best maintained with controlled yields."
            ),
            wineStyles: [
                "White Wines: Often used in blends or on its own to produce crisp, refreshing wines."
            ],
            foodPairing: [
                "Pairs well with seafood, salads, and light poultry dishes. Also a classic choice for the cocktail Kir."
            ],
            notableProducers: [
                "Domaine A. & P. de Villaine",
                "Maison Louis Jadot"
            ],
            otherNames: "None",
            grapeSummary: "Aligoté is known for its high acidity and fresh, citrus-driven profile, making it a versatile white wine option, particularly in Burgundy."
        ),
        imageName: "aligote",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Adapts well to a variety of climates, from cool coastal areas to warmer inland regions.",
                soil: "Performs well in sandy and clay-limestone soils.",
                growingConditions: "Vigorous and productive vine, known for maintaining its acidity even in warm climates."
            ),
            wineStyles: [
                "White Wines: Often made into varietal wines or used in blends, showcasing its acidity and fresh citrus flavors."
            ],
            foodPairing: [
                "Pairs well with seafood, salads, and light dishes, enhancing their freshness."
            ],
            notableProducers: [
                "Quinta da Romeira",
                "Herdade do Esporão"
            ],
            otherNames: "None",
            grapeSummary: "Arinto is appreciated for its vibrant acidity and citrus flavors, making it a key component in many refreshing Portuguese white wines."
        ),
        imageName: "arinto",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers a moderate climate with sufficient sunshine to fully ripen.",
                soil: "Thrives in sandy, calcareous soils typical of the Roero region.",
                growingConditions: "Vigorous vine that can be prone to overproduction; requires careful yield management for quality."
            ),
            wineStyles: [
                "White Wines: Typically produced as a varietal wine, showcasing its aromatic and fruity profile."
            ],
            foodPairing: [
                "Pairs well with seafood, poultry, and creamy pasta dishes."
            ],
            notableProducers: [
                "Bruno Giacosa",
                "Vietti"
            ],
            otherNames: "None",
            grapeSummary: "Arneis is celebrated for its aromatic complexity and elegant fruit flavors, making it a standout white wine from Piedmont."
        ),
        imageName: "arneis",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in hot, dry climates, especially those with volcanic soils.",
                soil: "Best in well-drained, volcanic soils rich in pumice and ash.",
                growingConditions: "Resistant to drought and heat, with a capacity to retain acidity even in warm climates."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry style, emphasizing its high acidity and mineral notes."
            ],
            foodPairing: [
                "Perfect with seafood, grilled fish, and Mediterranean dishes."
            ],
            notableProducers: [
                "Gaia Wines",
                "Domaine Sigalas"
            ],
            otherNames: "None",
            grapeSummary: "Assyrtiko is renowned for its vibrant acidity and mineral complexity, making it one of Greece's most esteemed white grape varieties."
        ),
        imageName: "assyrtiko",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in the warm, humid climate of Madeira.",
                soil: "Grows well in volcanic, well-drained soils.",
                growingConditions: "Vigorous vine that is well-suited to the terraced vineyards of Madeira."
            ),
            wineStyles: [
                "Fortified Wines: Used primarily for medium-sweet Madeira wines."
            ],
            foodPairing: [
                "Pairs well with desserts, particularly those with dried fruits and nuts, as well as strong cheeses."
            ],
            notableProducers: [
                "Blandy’s",
                "Henriques & Henriques"
            ],
            otherNames: "Bual in Madeira.",
            grapeSummary: "Boal is esteemed for its role in producing medium-sweet Madeira wines, offering a rich, balanced profile with notable aging potential."
        ),
        imageName: "boal",
        iconNames: ["leaf", "drop"]
    ),
    // Chardonnay Details
    Grape(
        name: "Chardonnay",
        details: GrapeDetails(
            origin: "Chardonnay is a versatile white grape variety that originated in the Burgundy region of France. It is now one of the most widely planted and well-known white wine grapes globally.",
            countries: Countries(
                primary: [
                    "France: Especially in Burgundy and Champagne.",
                    "USA: Notably in California.",
                    "Australia: Particularly in the regions of Adelaide Hills and Yarra Valley."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold to deep yellow.",
                aroma: "Varies greatly depending on the climate and winemaking techniques, but often includes notes of green apple, pear, citrus, tropical fruits, and sometimes vanilla and butter from oak aging.",
                palate: "Medium to full-bodied with flavors ranging from green apple and lemon in cooler climates to peach and pineapple in warmer regions, often with a creamy texture if malolactic fermentation is used.",
                finish: "Can be crisp and refreshing or rich and buttery, depending on the style."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Grows well in a variety of climates, from cool to warm.",
                soil: "Prefers limestone, clay, and marl soils but is highly adaptable.",
                growingConditions: "Versatile and hardy, though prone to early bud break which can make it susceptible to frost."
            ),
            wineStyles: [
                "White Wines: Can range from lean, crisp, and unoaked to rich, buttery, and oak-aged.",
                "Sparkling Wines: Key grape in Champagne and other sparkling wines."
            ],
            foodPairing: [
                "Pairs well with a wide range of foods, including seafood, poultry, salads, and creamy sauces."
            ],
            notableProducers: [
                "Domaine Leflaive",
                "Kistler Vineyards"
            ],
            otherNames: "None",
            grapeSummary: "Chardonnay is celebrated for its versatility and adaptability, capable of producing a wide range of wine styles that are enjoyed worldwide."
        ),
        imageName: "chardonnay",
        iconNames: ["leaf", "drop"]
    ),

    // Chenin Blanc Details
    Grape(
        name: "Chenin Blanc",
        details: GrapeDetails(
            origin: "Chenin Blanc is a white grape variety originating from the Loire Valley in France. It is known for its high acidity and versatility in producing a wide range of wine styles.",
            countries: Countries(
                primary: [
                    "France: Especially in the Loire Valley (Vouvray, Anjou).",
                    "South Africa: Known locally as Steen."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow to deep gold.",
                aroma: "Aromas of green apple, quince, honey, and floral notes, with potential for tropical fruit aromas in warmer climates.",
                palate: "High acidity with flavors of apple, pear, and citrus in dry styles, and honey, apricot, and marmalade in sweeter styles.",
                finish: "Can be crisp and clean or rich and sweet, depending on the style."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Adaptable to various climates but excels in cooler climates which help retain its acidity.",
                soil: "Thrives in clay, limestone, and schist soils.",
                growingConditions: "Vigorous and productive, with a tendency to maintain high acidity even in warm climates."
            ),
            wineStyles: [
                "White Wines: Ranges from dry to sweet, including sparkling and dessert wines."
            ],
            foodPairing: [
                "Versatile with food, pairing well with seafood, poultry, pork, and a variety of cheeses."
            ],
            notableProducers: [
                "Domaine Huet",
                "Ken Forrester Vineyards"
            ],
            otherNames: "Steen in South Africa.",
            grapeSummary: "Chenin Blanc is valued for its high acidity and versatility, capable of producing a wide range of wine styles from bone-dry to lusciously sweet."
        ),
        imageName: "chenin_blanc",
        iconNames: ["leaf", "drop"]
    ),

    // Colombard Details
    Grape(
        name: "Colombard",
        details: GrapeDetails(
            origin: "Colombard is a white grape variety originating from the Charentes region in France, traditionally used in Cognac production but also appreciated for its fresh, fruity wines.",
            countries: Countries(
                primary: [
                    "France: Mainly in the Charentes and Gascony regions.",
                    "USA: Particularly in California.",
                    "South Africa: Increasingly popular for its fresh, easy-drinking wines."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of citrus, green apple, and tropical fruits with floral hints.",
                palate: "Light-bodied with high acidity, featuring flavors of lemon, green apple, and occasionally tropical fruit.",
                finish: "Crisp and refreshing with a clean, zesty finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers warm climates but retains acidity well.",
                soil: "Adaptable to various soil types, though often found in sandy and clay soils.",
                growingConditions: "Vigorous and high-yielding, making it a reliable producer."
            ),
            wineStyles: [
                "White Wines: Often used in blends to add freshness and acidity, also made into varietal wines."
            ],
            foodPairing: [
                "Pairs well with light seafood dishes, salads, and light cheeses."
            ],
            notableProducers: [
                "Domaine Duffour",
                "KWV"
            ],
            otherNames: "French Colombard in the USA.",
            grapeSummary: "Colombard is appreciated for its bright acidity and fresh, fruity profile, making it a popular choice for refreshing white wines and blends."
        ),
        imageName: "colombard",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers a moderate climate with sufficient sunlight to develop its aromatic profile.",
                soil: "Thrives in calcareous and clay soils which help retain acidity.",
                growingConditions: "Vigorous vine that can produce high yields; quality is best maintained with controlled yields."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style, often showcasing its fresh acidity and aromatic complexity."
            ],
            foodPairing: [
                "Pairs well with seafood, light pasta dishes, and salads."
            ],
            notableProducers: [
                "La Scolca",
                "Villa Sparina"
            ],
            otherNames: "None",
            grapeSummary: "Cortese is celebrated for its high acidity and fresh, citrus-driven profile, making it a key component in the production of Gavi wines."
        ),
        imageName: "cortese",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in warm, sunny climates which help develop its aromatic profile.",
                soil: "Performs well in volcanic soils rich in minerals.",
                growingConditions: "Moderately vigorous vine that requires careful canopy management to prevent over-ripening."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its vibrant acidity and fresh fruit flavors."
            ],
            foodPairing: [
                "Pairs well with seafood, shellfish, and light vegetarian dishes."
            ],
            notableProducers: [
                "Feudi di San Gregorio",
                "Mastroberardino"
            ],
            otherNames: "None",
            grapeSummary: "Falanghina is prized for its bright acidity and aromatic complexity, making it a standout white wine from Campania."
        ),
        imageName: "falanghina",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Adapts well to a variety of climates, thriving in both cool and warm regions.",
                soil: "Performs best in sandy and well-drained soils.",
                growingConditions: "Vigorous and high-yielding vine, requiring careful management to maintain quality."
            ),
            wineStyles: [
                "White Wines: Often made as a varietal wine but also used in blends, showcasing its aromatic and fresh qualities."
            ],
            foodPairing: [
                "Pairs well with seafood, poultry, and spicy dishes."
            ],
            notableProducers: [
                "Luis Pato",
                "Quinta da Alorna"
            ],
            otherNames: "Known as Maria Gomes in Bairrada.",
            grapeSummary: "Fernão Pires is appreciated for its aromatic intensity and versatility, making it a key component in many refreshing Portuguese white wines."
        ),
        imageName: "fernao_pires",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers warm, sunny climates which help develop its rich, aromatic profile.",
                soil: "Thrives in volcanic and calcareous soils.",
                growingConditions: "Moderately vigorous vine with good resistance to disease."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its aromatic complexity and rich flavors."
            ],
            foodPairing: [
                "Pairs well with seafood, poultry, and creamy pasta dishes."
            ],
            notableProducers: [
                "Feudi di San Gregorio",
                "Mastroberardino"
            ],
            otherNames: "None",
            grapeSummary: "Fiano is prized for its rich, aromatic profile and nutty flavors, making it a standout white wine from Campania."
        ),
        imageName: "fiano",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers cool climates to maintain its high acidity and fresh flavor profile.",
                soil: "Performs best in sandy and clay-limestone soils.",
                growingConditions: "Vigorous vine that can be prone to disease; careful vineyard management is essential."
            ),
            wineStyles: [
                "White Wines: Often made into light, crisp wines, and also used in the production of spirits."
            ],
            foodPairing: [
                "Pairs well with seafood, light salads, and goat cheese."
            ],
            notableProducers: [
                "Domaine de la Foliette",
                "Château de Laubade (for Armagnac)"
            ],
            otherNames: "Picpoule in some regions.",
            grapeSummary: "Folle Blanche is known for its high acidity and crisp, clean profile, making it a versatile grape for both wine and spirit production."
        ),
        imageName: "folle_blanche",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in cool to moderate climates which help retain its acidity and fresh flavors.",
                soil: "Performs well in marl and limestone soils.",
                growingConditions: "Vigorous vine that requires careful management to maintain quality."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its fresh fruit flavors and distinctive almond finish."
            ],
            foodPairing: [
                "Pairs well with prosciutto, light pasta dishes, and seafood."
            ],
            notableProducers: [
                "Livio Felluga",
                "Jermann"
            ],
            otherNames: "None",
            grapeSummary: "Friulano is appreciated for its fresh, aromatic profile and distinctive almond finish, making it a key white wine from Friuli-Venezia Giulia."
        ),
        imageName: "friulano",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers cooler climates which help retain its acidity and aromatic profile.",
                soil: "Thrives in volcanic and clay soils typical of the Tokaj region.",
                growingConditions: "Moderately vigorous vine, susceptible to botrytis which is beneficial for sweet wine production."
            ),
            wineStyles: [
                "White Wines: Ranges from dry to sweet, including the renowned Tokaji Aszú."
            ],
            foodPairing: [
                "Pairs well with spicy Asian dishes, foie gras, and blue cheeses."
            ],
            notableProducers: [
                "Royal Tokaji",
                "Disznókő"
            ],
            otherNames: "None",
            grapeSummary: "Furmint is celebrated for its versatility and ability to produce both crisp dry wines and complex sweet wines, particularly the renowned Tokaji."
        ),
        imageName: "furmint",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers a moderate climate with sufficient sunlight to develop its aromatic profile.",
                soil: "Thrives in volcanic and limestone-rich soils.",
                growingConditions: "Vigorous vine that can produce high yields; careful management is necessary to maintain quality."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style, showcasing its fresh acidity and aromatic complexity."
            ],
            foodPairing: [
                "Pairs well with seafood, light pasta dishes, and salads."
            ],
            notableProducers: [
                "Pieropan",
                "Inama"
            ],
            otherNames: "None",
            grapeSummary: "Garganega is known for its fresh, aromatic profile and is a key component in the production of Soave wines, making it one of Veneto's most important white grape varieties."
        ),
        imageName: "garganega",
        iconNames: ["leaf", "drop"]
    ),

    // Gewürztraminer Details
    Grape(
        name: "Gewürztraminer",
        details: GrapeDetails(
            origin: "Gewürztraminer is a highly aromatic white grape variety believed to have originated in the Alsace region of France. It is known for its distinctively spicy and floral character.",
            countries: Countries(
                primary: [
                    "France: Especially in Alsace.",
                    "Germany: Known as Traminer or Roter Traminer in some regions.",
                    "USA: Particularly in California and Oregon."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Deep golden yellow.",
                aroma: "Intense aromas of lychee, rose petals, and tropical fruits, with hints of ginger and spice.",
                palate: "Full-bodied with moderate acidity, featuring flavors of lychee, mango, and pineapple, complemented by a spicy and floral character.",
                finish: "Rich and long-lasting with a slightly bitter, spicy finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers cool to moderate climates which help develop its aromatic intensity.",
                soil: "Thrives in limestone, clay, and marl soils.",
                growingConditions: "Moderately vigorous vine, susceptible to fungal diseases; requires careful vineyard management."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry to off-dry style, showcasing its aromatic and spicy profile."
            ],
            foodPairing: [
                "Pairs well with spicy Asian cuisine, strong cheeses, and smoked fish."
            ],
            notableProducers: [
                "Hugel & Fils",
                "Trimbach"
            ],
            otherNames: "Traminer, Roter Traminer.",
            grapeSummary: "Gewürztraminer is renowned for its aromatic intensity and distinctively spicy and floral character, making it one of the most recognizable white grape varieties."
        ),
        imageName: "gewurztraminer",
        iconNames: ["leaf", "drop"]
    ),
    // Glera Details
    Grape(
        name: "Glera",
        details: GrapeDetails(
            origin: "Glera, formerly known as Prosecco, is a white grape variety from the Veneto region of Italy. It is the primary grape used in the production of Prosecco sparkling wine.",
            countries: Countries(
                primary: [
                    "Italy: Predominantly in the Veneto and Friuli-Venezia Giulia regions."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale straw yellow.",
                aroma: "Aromas of green apple, pear, and white flowers with hints of citrus and almond.",
                palate: "Light-bodied with high acidity, featuring flavors of apple, peach, and a touch of honey.",
                finish: "Crisp and refreshing with a clean, slightly sweet finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers a moderate climate with cool nights and warm days to retain its acidity and fresh flavors.",
                soil: "Thrives in well-drained, calcareous soils.",
                growingConditions: "Vigorous and productive vine, requiring careful management to maintain quality."
            ),
            wineStyles: [
                "Sparkling Wines: Primarily used for Prosecco, which can range from dry (Brut) to slightly sweet (Extra Dry)."
            ],
            foodPairing: [
                "Pairs well with light appetizers, seafood, and salads. Also enjoyed as an aperitif."
            ],
            notableProducers: [
                "Nino Franco",
                "Santa Margherita"
            ],
            otherNames: "Formerly known as Prosecco.",
            grapeSummary: "Glera is celebrated for its role in producing Prosecco, offering bright, fruity flavors and a refreshing effervescence."
        ),
        imageName: "glera",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers cooler climates which help retain its acidity and aromatic profile.",
                soil: "Thrives in slate and granite soils typical of its native regions.",
                growingConditions: "Moderately vigorous vine, capable of producing high-quality wines with careful management."
            ),
            wineStyles: [
                "White Wines: Often made in a dry style, showcasing its fresh acidity and mineral complexity."
            ],
            foodPairing: [
                "Pairs well with seafood, light poultry dishes, and salads."
            ],
            notableProducers: [
                "Valdesil",
                "Bodegas Godeval"
            ],
            otherNames: "None",
            grapeSummary: "Godello is appreciated for its fresh acidity and mineral complexity, making it a key white grape in the Valdeorras region of Spain."
        ),
        imageName: "godello",
        iconNames: ["leaf", "drop"]
    ),

    // Grauburgunder (Pinot Gris) Details
    Grape(
        name: "Grauburgunder",
        details: GrapeDetails(
            origin: "Grauburgunder, known internationally as Pinot Gris, is a white grape variety believed to have originated in Burgundy, France. It is widely grown in Germany where it produces aromatic white wines.",
            countries: Countries(
                primary: [
                    "Germany: Particularly in Baden, Pfalz, and Rheinhessen."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold to coppery pink.",
                aroma: "Aromas of ripe pear, apple, and citrus with hints of honey and nuts.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of pear, melon, and a touch of spice.",
                finish: "Smooth and slightly creamy with a long, fruit-driven finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in cool to moderate climates which help develop its aromatic profile.",
                soil: "Performs well in loam and limestone soils.",
                growingConditions: "Moderately vigorous vine, requiring careful management to avoid over-ripening."
            ),
            wineStyles: [
                "White Wines: Ranges from dry to off-dry, showcasing its rich fruit flavors and aromatic complexity."
            ],
            foodPairing: [
                "Pairs well with rich seafood dishes, poultry, and creamy pastas."
            ],
            notableProducers: [
                "Dr. Loosen",
                "Weingut Markus Molitor"
            ],
            otherNames: "Pinot Gris, Pinot Grigio in Italy.",
            grapeSummary: "Grauburgunder, or Pinot Gris, is known for its aromatic complexity and rich fruit flavors, making it a versatile and popular white wine variety."
        ),
        imageName: "grauburgunder",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers a warm, sunny climate to fully develop its flavors.",
                soil: "Thrives in well-drained, calcareous soils.",
                growingConditions: "Vigorous vine with good resistance to disease; requires careful management to maintain quality."
            ),
            wineStyles: [
                "White Wines: Often made as a varietal wine or blended, showcasing its fresh acidity and nutty complexity."
            ],
            foodPairing: [
                "Pairs well with seafood, white meats, and light pasta dishes."
            ],
            notableProducers: [
                "Lungarotti",
                "Antinori"
            ],
            otherNames: "None",
            grapeSummary: "Grechetto is appreciated for its fresh acidity and subtle nutty flavors, making it a versatile white grape from central Italy."
        ),
        imageName: "grechetto",
        iconNames: ["leaf", "drop"]
    ),

    // Greco Details
    Grape(
        name: "Greco",
        details: GrapeDetails(
            origin: "Greco is a white grape variety that originated in Greece but is now primarily grown in southern Italy, particularly in Campania. It is the key grape in the production of Greco di Tufo DOCG wines.",
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in warm, sunny climates which help develop its aromatic profile.",
                soil: "Performs best in volcanic and calcareous soils.",
                growingConditions: "Moderately vigorous vine with good resistance to disease."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its high acidity and mineral complexity."
            ],
            foodPairing: [
                "Pairs well with seafood, shellfish, and light vegetarian dishes."
            ],
            notableProducers: [
                "Feudi di San Gregorio",
                "Mastroberardino"
            ],
            otherNames: "Greco Bianco.",
            grapeSummary: "Greco is renowned for its high acidity and mineral complexity, making it one of southern Italy's most esteemed white grape varieties."
        ),
        imageName: "greco",
        iconNames: ["leaf", "drop"]
    ),

    // Grenache Blanc Details
    Grape(
        name: "Grenache Blanc",
        details: GrapeDetails(
            origin: "Grenache Blanc is a white grape variety that is a mutation of the red Grenache grape. It originated in Spain and is widely planted in the Rhône Valley of France.",
            countries: Countries(
                primary: [
                    "France: Particularly in the Rhône Valley and Languedoc-Roussillon.",
                    "Spain: Known as Garnacha Blanca, especially in Catalonia and Navarra."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Aromas of green apple, pear, and citrus, with floral and herbal notes.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of apple, peach, and a touch of spice.",
                finish: "Smooth and slightly creamy with a lingering fruit and floral finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers a warm climate with plenty of sunlight to fully ripen.",
                soil: "Adaptable to various soil types but performs best in well-drained, sandy soils.",
                growingConditions: "Vigorous vine that can produce high yields; quality is best maintained with controlled yields."
            ),
            wineStyles: [
                "White Wines: Often used in blends to add richness and body, but also made as a varietal wine."
            ],
            foodPairing: [
                "Pairs well with seafood, poultry, and Mediterranean dishes."
            ],
            notableProducers: [
                "Domaine du Vieux Télégraphe",
                "Clos Mogador"
            ],
            otherNames: "Garnacha Blanca in Spain.",
            grapeSummary: "Grenache Blanc is valued for its versatility and ability to add body and complexity to white wines, making it a key component in many Rhône and Spanish blends."
        ),
        imageName: "grenache_blanc",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers a warm, sunny climate with cool nights to maintain acidity.",
                soil: "Thrives in well-drained, gravelly soils.",
                growingConditions: "Vigorous vine that requires careful management to control yields and ensure quality."
            ),
            wineStyles: [
                "White Wines: Used for both dry and sweet wines, showcasing its high acidity and aromatic complexity."
            ],
            foodPairing: [
                "Pairs well with seafood, white meats, and spicy dishes."
            ],
            notableProducers: [
                "Domaine Cauhapé",
                "Domaine Nigri"
            ],
            otherNames: "None",
            grapeSummary: "Gros Manseng is known for its high acidity and aromatic complexity, making it a versatile grape for both dry and sweet wines in southwest France."
        ),
        imageName: "gros_manseng",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in cool to moderate climates which help retain its acidity and develop its aromatic profile.",
                soil: "Performs well in loess, gravel, and primary rock soils.",
                growingConditions: "Vigorous vine with good disease resistance, requiring careful management to avoid overcropping."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its fresh acidity and characteristic peppery notes."
            ],
            foodPairing: [
                "Pairs well with Austrian cuisine, seafood, and spicy dishes."
            ],
            notableProducers: [
                "Weingut Bründlmayer",
                "F.X. Pichler"
            ],
            otherNames: "None",
            grapeSummary: "Grüner Veltliner is celebrated for its fresh acidity and distinctive peppery spice, making it Austria's most important and versatile white grape variety."
        ),
        imageName: "gruner_veltliner",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers a warm, sunny climate to fully develop its aromatic profile.",
                soil: "Thrives in volcanic and clay soils.",
                growingConditions: "Vigorous vine that requires careful management to maintain quality."
            ),
            wineStyles: [
                "White Wines: Used for both dry and sweet wines, often blended with Furmint."
            ],
            foodPairing: [
                "Pairs well with spicy Asian cuisine, rich poultry dishes, and creamy cheeses."
            ],
            notableProducers: [
                "Disznókő",
                "Oremus"
            ],
            otherNames: "None",
            grapeSummary: "Hárslevelű is known for its aromatic intensity and versatility, playing a crucial role in the production of both dry and sweet Tokaji wines."
        ),
        imageName: "harslevelu",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers a warm climate to develop its aromatic profile.",
                soil: "Adaptable to various soil types but prefers well-drained soils.",
                growingConditions: "Vigorous vine with good resistance to disease."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry, aromatic style, showcasing its fresh fruit and floral notes."
            ],
            foodPairing: [
                "Pairs well with light appetizers, salads, and seafood."
            ],
            notableProducers: [
                "Hilltop Neszmély",
                "Garamvári Vineyards"
            ],
            otherNames: "None",
            grapeSummary: "Irsai Olivér is celebrated for its aromatic intensity and fresh fruit flavors, making it a popular choice for aromatic white wines in Hungary."
        ),
        imageName: "irsai_oliver",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in cool to moderate climates which help retain its high acidity.",
                soil: "Performs best in volcanic soils, particularly those of the Somló region.",
                growingConditions: "Vigorous vine that requires careful management to maintain quality."
            ),
            wineStyles: [
                "White Wines: Often made in a dry style, showcasing its high acidity and mineral complexity."
            ],
            foodPairing: [
                "Pairs well with seafood, poultry, and rich, creamy dishes."
            ],
            notableProducers: [
                "Kreinbacher Birtok",
                "Tornai Pincészet"
            ],
            otherNames: "None",
            grapeSummary: "Juhfark is known for its high acidity and distinct mineral character, making it a unique and sought-after white grape from Hungary."
        ),
        imageName: "juhfark",
        iconNames: ["leaf", "drop"]
    ),

    // Kerner Details
    Grape(
        name: "Kerner",
        details: GrapeDetails(
            origin: "Kerner is a white grape variety developed in Germany by crossing Riesling with Trollinger. It is known for its aromatic intensity and crisp acidity.",
            countries: Countries(
                primary: [
                    "Germany: Particularly in the regions of Pfalz, Rheinhessen, and Mosel.",
                    "Italy: Also grown in South Tyrol."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of green apple, peach, and citrus, with floral and spicy notes.",
                palate: "Light to medium-bodied with high acidity, featuring flavors of apple, pear, and a hint of spice.",
                finish: "Crisp and refreshing with a lingering fruity and spicy finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in cool climates which help retain its high acidity and aromatic profile.",
                soil: "Performs best in well-drained, sandy, and loamy soils.",
                growingConditions: "Vigorous vine with good resistance to cold, making it suitable for cooler growing regions."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its fresh acidity and aromatic complexity."
            ],
            foodPairing: [
                "Pairs well with seafood, light poultry dishes, and spicy cuisine."
            ],
            notableProducers: [
                "Weingut Kallfelz",
                "Cantina Tramin"
            ],
            otherNames: "None",
            grapeSummary: "Kerner is appreciated for its crisp acidity and aromatic intensity, making it a versatile and popular white grape variety in Germany and beyond."
        ),
        imageName: "kerner",
        iconNames: ["leaf", "drop"]
    ),
    // Macabeo (Viura) Details
    Grape(
        name: "Macabeo (Viura)",
        details: GrapeDetails(
            origin: "Macabeo, also known as Viura in Rioja, is a white grape variety native to Spain. It is widely used in both still white wines and as a key component in Cava sparkling wines.",
            countries: Countries(
                primary: [
                    "Spain: Particularly in Rioja, Catalonia (for Cava), and other regions.",
                    "France: Known as Maccabeu, especially in the Languedoc-Roussillon."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of citrus, green apple, and floral notes with a hint of almond.",
                palate: "Light to medium-bodied with moderate acidity, featuring flavors of lemon, apple, and a slight nuttiness.",
                finish: "Crisp and clean with a refreshing citrus finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in warm, dry climates but retains acidity well.",
                soil: "Adaptable to various soil types but prefers well-drained, calcareous soils.",
                growingConditions: "Vigorous vine with good resistance to disease."
            ),
            wineStyles: [
                "White Wines: Often used in both young and aged white wines.",
                "Sparkling Wines: Key component in Cava."
            ],
            foodPairing: [
                "Pairs well with seafood, light tapas, and salads."
            ],
            notableProducers: [
                "R. López de Heredia",
                "Freixenet (for Cava)"
            ],
            otherNames: "Viura in Rioja, Maccabeu in France.",
            grapeSummary: "Macabeo (Viura) is a versatile grape known for its crisp acidity and ability to produce both fresh and aged white wines, as well as being a key component in Cava sparkling wines."
        ),
        imageName: "macabeo",
        iconNames: ["leaf", "drop"]
    ),

    // Malmsey Details
    Grape(
        name: "Malmsey",
        details: GrapeDetails(
            origin: "Malmsey, also known as Malvasia, is a white grape variety traditionally used in the production of rich, sweet Madeira wines. It has a long history of cultivation in the Mediterranean region.",
            countries: Countries(
                primary: [
                    "Portugal: Particularly in Madeira.",
                    "Italy: Known as Malvasia in various regions, including Tuscany and Lazio."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Deep gold to amber.",
                aroma: "Aromas of dried fruits, caramel, and honey, with hints of spice and nuts.",
                palate: "Full-bodied with moderate acidity, featuring flavors of raisins, figs, and a rich, honeyed sweetness.",
                finish: "Long and luscious with a lingering sweet and nutty finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers warm, sunny climates which help develop its rich flavors.",
                soil: "Thrives in volcanic soils of Madeira.",
                growingConditions: "Vigorous vine with high yield potential, requiring careful management for quality."
            ),
            wineStyles: [
                "Fortified Wines: Primarily used in sweet Madeira wines."
            ],
            foodPairing: [
                "Pairs well with desserts, particularly those with dried fruits and nuts, as well as strong cheeses."
            ],
            notableProducers: [
                "Blandy’s",
                "Henriques & Henriques"
            ],
            otherNames: "Malvasia in Italy.",
            grapeSummary: "Malmsey is renowned for its role in producing rich, sweet Madeira wines, offering complex flavors and a luxurious finish."
        ),
        imageName: "malmsey",
        iconNames: ["leaf", "drop"]
    ),

    // Marsanne Details
    Grape(
        name: "Marsanne",
        details: GrapeDetails(
            origin: "Marsanne is a white grape variety originating from the Rhône Valley in France. It is often blended with Roussanne and is known for producing rich, full-bodied white wines.",
            countries: Countries(
                primary: [
                    "France: Particularly in the northern Rhône Valley (Hermitage, Crozes-Hermitage, Saint-Joseph).",
                    "Australia: Grown in regions like Victoria."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Aromas of pear, peach, and honeysuckle, with hints of nuts and spice.",
                palate: "Full-bodied with moderate acidity, featuring flavors of stone fruits, melon, and a touch of almond.",
                finish: "Rich and lingering with a slightly oily texture and a nutty finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers warm climates which help develop its rich flavors.",
                soil: "Thrives in granite and clay-limestone soils.",
                growingConditions: "Moderately vigorous vine with a tendency to produce low yields, enhancing quality."
            ),
            wineStyles: [
                "White Wines: Often blended with Roussanne, showcasing its rich, full-bodied character."
            ],
            foodPairing: [
                "Pairs well with poultry, seafood, and creamy sauces."
            ],
            notableProducers: [
                "M. Chapoutier",
                "Yalumba"
            ],
            otherNames: "None",
            grapeSummary: "Marsanne is celebrated for its rich, full-bodied character and is often blended with Roussanne to produce complex, aromatic white wines."
        ),
        imageName: "marsanne",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in cool maritime climates which help retain its high acidity.",
                soil: "Prefers well-drained, sandy, and gravelly soils.",
                growingConditions: "Vigorous vine that produces high yields; quality is maintained with controlled yields and extended lees aging."
            ),
            wineStyles: [
                "White Wines: Often made in a dry style, with extended lees aging to add complexity."
            ],
            foodPairing: [
                "Pairs well with seafood, especially oysters, and light salads."
            ],
            notableProducers: [
                "Domaine de la Pépière",
                "Château de Cléry"
            ],
            otherNames: "Muscadet (when used for wines from the Muscadet appellations).",
            grapeSummary: "Melon de Bourgogne is valued for its high acidity and fresh, mineral-driven profile, making it the ideal grape for the crisp wines of Muscadet."
        ),
        imageName: "melon_de_bourgogne",
        iconNames: ["leaf", "drop"]
    ),

    // Moscatel Details
    Grape(
        name: "Moscatel",
        details: GrapeDetails(
            origin: "Moscatel, also known as Muscat, is one of the oldest grape varieties in the world, with a rich history of cultivation across the Mediterranean. It is known for its intensely aromatic wines.",
            countries: Countries(
                primary: [
                    "Spain: Particularly in regions like Valencia and Andalucía.",
                    "Portugal: Known as Moscatel in Setúbal."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Intense aromas of orange blossom, apricot, and honey, with floral and spicy notes.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of ripe peach, orange, and a touch of honey.",
                finish: "Sweet and luscious with a long, aromatic finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers warm, sunny climates which enhance its aromatic profile.",
                soil: "Adaptable to various soil types but prefers well-drained soils.",
                growingConditions: "Vigorous vine with good resistance to drought."
            ),
            wineStyles: [
                "White Wines: Often made in sweet and fortified styles, showcasing its aromatic intensity."
            ],
            foodPairing: [
                "Pairs well with desserts, particularly those with fruit and nuts, as well as strong cheeses."
            ],
            notableProducers: [
                "Bodegas Jorge Ordóñez",
                "José Maria da Fonseca (for Moscatel de Setúbal)"
            ],
            otherNames: "Muscat, Moscato.",
            grapeSummary: "Moscatel is celebrated for its intensely aromatic and sweet wines, making it one of the most versatile and widely cultivated grape varieties in the world."
        ),
        imageName: "moscatel",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in cool to moderate climates which help retain its acidity and aromatic profile.",
                soil: "Prefers well-drained, sandy, and limestone soils.",
                growingConditions: "Moderately vigorous vine with good resistance to disease."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry, aromatic style, showcasing its floral and citrus notes."
            ],
            foodPairing: [
                "Pairs well with Mediterranean cuisine, seafood, and light poultry dishes."
            ],
            notableProducers: [
                "Boutari",
                "Skouras"
            ],
            otherNames: "None",
            grapeSummary: "Moschofilero is known for its aromatic and floral character, making it a unique and distinctive white grape from Greece."
        ),
        imageName: "moschofilero",
        iconNames: ["leaf", "drop"]
    ),
    // Müller-Thurgau Details
    Grape(
        name: "Müller-Thurgau",
        details: GrapeDetails(
            origin: "Müller-Thurgau is a white grape variety developed in Germany in the late 19th century by crossing Riesling with Madeleine Royale. It is known for its early ripening and ability to grow in a variety of climates.",
            countries: Countries(
                primary: [
                    "Germany: Widely grown in regions like Rheinhessen and Mosel.",
                    "Switzerland: Known as Riesling-Silvaner."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of green apple, peach, and floral notes with a hint of spice.",
                palate: "Light-bodied with moderate acidity, featuring flavors of apple, pear, and a touch of citrus.",
                finish: "Crisp and refreshing with a clean, fruity finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers cool to moderate climates to retain its acidity and fresh flavors.",
                soil: "Adaptable to various soil types but performs best in well-drained, loamy soils.",
                growingConditions: "Vigorous vine with high yield potential; quality is maintained with controlled yields."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry to off-dry style, showcasing its fresh fruit and floral notes."
            ],
            foodPairing: [
                "Pairs well with light appetizers, seafood, and salads."
            ],
            notableProducers: [
                "Weingut Schloss Reinhartshausen",
                "Weingut Bründlmayer"
            ],
            otherNames: "Riesling-Silvaner in Switzerland.",
            grapeSummary: "Müller-Thurgau is valued for its early ripening and fresh, fruity profile, making it a versatile and widely planted grape variety in Germany and beyond."
        ),
        imageName: "muller_thurgau",
        iconNames: ["leaf", "drop"]
    ),

    // Muscadelle Details
    Grape(
        name: "Muscadelle",
        details: GrapeDetails(
            origin: "Muscadelle is a white grape variety native to France, often used in the production of Bordeaux and Australian sweet wines. It is known for its aromatic intensity and floral character.",
            countries: Countries(
                primary: [
                    "France: Particularly in Bordeaux and Bergerac.",
                    "Australia: Especially in Rutherglen for sweet wines."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Aromas of honey, orange blossom, and tropical fruits with hints of spice.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of apricot, peach, and a touch of honey.",
                finish: "Sweet and aromatic with a long, fruity finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers warm climates to develop its aromatic profile.",
                soil: "Thrives in well-drained, sandy, and gravelly soils.",
                growingConditions: "Vigorous vine that requires careful management to maintain quality."
            ),
            wineStyles: [
                "White Wines: Often used in blends for sweet and fortified wines."
            ],
            foodPairing: [
                "Pairs well with desserts, particularly those with fruit and nuts, as well as strong cheeses."
            ],
            notableProducers: [
                "Château Coutet",
                "Campbells of Rutherglen"
            ],
            otherNames: "None",
            grapeSummary: "Muscadelle is celebrated for its aromatic intensity and floral character, making it a key component in many sweet and fortified wines from Bordeaux and Australia."
        ),
        imageName: "muscadelle",
        iconNames: ["leaf", "drop"]
    ),

    // Muscat Details
    Grape(
        name: "Muscat",
        details: GrapeDetails(
            origin: "Muscat is one of the oldest and most widespread grape varieties, known for its intensely aromatic wines. It has numerous sub-varieties and is cultivated in many wine-producing regions worldwide.",
            countries: Countries(
                primary: [
                    "Italy: Particularly in Piedmont and Sicily.",
                    "France: Especially in Alsace and the Rhône Valley.",
                    "Spain: Widely grown in various regions including Valencia and Andalucía."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Intense aromas of orange blossom, apricot, and honey, with floral and spicy notes.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of ripe peach, orange, and a touch of honey.",
                finish: "Sweet and luscious with a long, aromatic finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers warm, sunny climates which enhance its aromatic profile.",
                soil: "Adaptable to various soil types but prefers well-drained soils.",
                growingConditions: "Vigorous vine with good resistance to drought."
            ),
            wineStyles: [
                "White Wines: Often made in sweet and fortified styles, showcasing its aromatic intensity."
            ],
            foodPairing: [
                "Pairs well with desserts, particularly those with fruit and nuts, as well as strong cheeses."
            ],
            notableProducers: [
                "Domaine Weinbach",
                "G.D. Vajra"
            ],
            otherNames: "Moscato, Muscatel.",
            grapeSummary: "Muscat is celebrated for its intensely aromatic and sweet wines, making it one of the most versatile and widely cultivated grape varieties in the world."
        ),
        imageName: "muscat",
        iconNames: ["leaf", "drop"]
    ),
    // Muscat of Alexandria Details
    Grape(
        name: "Muscat of Alexandria",
        details: GrapeDetails(
            origin: "Muscat of Alexandria is one of the oldest known grape varieties, believed to have originated in Egypt. It is part of the Muscat family and is used for both table grapes and wine production.",
            countries: Countries(
                primary: [
                    "Spain: Particularly in regions like Valencia and Málaga.",
                    "Italy: Known as Zibibbo, especially in Sicily.",
                    "Australia: Grown in various regions including Rutherglen for fortified wines."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Aromas of orange blossom, apricot, and honey, with floral and spicy notes.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of ripe peach, orange, and a touch of honey.",
                finish: "Sweet and luscious with a long, aromatic finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers warm, sunny climates which enhance its aromatic profile.",
                soil: "Adaptable to various soil types but prefers well-drained soils.",
                growingConditions: "Vigorous vine with good resistance to drought."
            ),
            wineStyles: [
                "White Wines: Often made in sweet and fortified styles, showcasing its aromatic intensity."
            ],
            foodPairing: [
                "Pairs well with desserts, particularly those with fruit and nuts, as well as strong cheeses."
            ],
            notableProducers: [
                "Bodegas Jorge Ordóñez",
                "Donnafugata"
            ],
            otherNames: "Zibibbo in Italy.",
            grapeSummary: "Muscat of Alexandria is celebrated for its intensely aromatic and sweet wines, making it one of the most versatile and widely cultivated grape varieties."
        ),
        imageName: "muscat_of_alexandria",
        iconNames: ["leaf", "drop"]
    ),

    // Muscat Ottonel Details
    Grape(
        name: "Muscat Ottonel",
        details: GrapeDetails(
            origin: "Muscat Ottonel is a white grape variety developed in France in the mid-19th century. It is known for its aromatic wines and is widely grown in Eastern Europe and Alsace.",
            countries: Countries(
                primary: [
                    "France: Particularly in Alsace.",
                    "Hungary: Widely grown for its aromatic qualities.",
                    "Romania: Known for its sweet and aromatic wines."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of rose petals, lychee, and muscat, with hints of citrus and spice.",
                palate: "Light-bodied with moderate acidity, featuring flavors of peach, apricot, and a touch of honey.",
                finish: "Aromatic and refreshing with a lingering floral finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers cool to moderate climates which help retain its aromatic profile.",
                soil: "Performs well in loamy and sandy soils.",
                growingConditions: "Vigorous vine with good disease resistance, requiring careful management to avoid over-ripening."
            ),
            wineStyles: [
                "White Wines: Often made in off-dry to sweet styles, showcasing its aromatic intensity."
            ],
            foodPairing: [
                "Pairs well with spicy Asian cuisine, light desserts, and fresh fruit."
            ],
            notableProducers: [
                "Domaine Weinbach",
                "Crama Girboiu"
            ],
            otherNames: "None",
            grapeSummary: "Muscat Ottonel is valued for its aromatic intensity and fresh, floral character, making it a popular choice for aromatic white wines in Eastern Europe and Alsace."
        ),
        imageName: "muscat_ottonel",
        iconNames: ["leaf", "drop"]
    ),

    // Olaszrizling (Welschriesling) Details
    Grape(
        name: "Olaszrizling (Welschriesling)",
        details: GrapeDetails(
            origin: "Olaszrizling, also known as Welschriesling, is a white grape variety widely grown in Central Europe. Despite its name, it is not related to Riesling.",
            countries: Countries(
                primary: [
                    "Hungary: Known as Olaszrizling.",
                    "Austria: Known as Welschriesling.",
                    "Croatia: Known as Graševina."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of green apple, citrus, and white flowers, with hints of almonds.",
                palate: "Light-bodied with high acidity, featuring flavors of lemon, green apple, and a touch of bitterness.",
                finish: "Crisp and refreshing with a clean, slightly bitter finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in cool to moderate climates which help retain its acidity.",
                soil: "Performs best in limestone and clay soils.",
                growingConditions: "Vigorous vine with good disease resistance, capable of producing high yields."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its fresh acidity and light, crisp flavors."
            ],
            foodPairing: [
                "Pairs well with seafood, salads, and light appetizers."
            ],
            notableProducers: [
                "Figula Pincészet",
                "Weingut Bründlmayer"
            ],
            otherNames: "Graševina in Croatia.",
            grapeSummary: "Olaszrizling (Welschriesling) is appreciated for its fresh acidity and light, crisp profile, making it a versatile and widely planted grape variety in Central Europe."
        ),
        imageName: "olaszrizling",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in warm, sunny climates which help develop its full flavor profile.",
                soil: "Performs best in chalky, albariza soils which retain moisture.",
                growingConditions: "Vigorous vine that produces high yields; quality is maintained with controlled yields."
            ),
            wineStyles: [
                "Fortified Wines: Primarily used in the production of Sherry, including Fino, Manzanilla, and Amontillado styles."
            ],
            foodPairing: [
                "Pairs well with tapas, seafood, and light appetizers."
            ],
            notableProducers: [
                "Bodegas Tío Pepe",
                "Lustau"
            ],
            otherNames: "Palomino Fino.",
            grapeSummary: "Palomino is the backbone of Sherry production, known for its light, crisp wines with a distinctive saline and nutty character."
        ),
        imageName: "palomino",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers moderate climates to retain its fresh acidity and delicate flavors.",
                soil: "Performs well in well-drained, calcareous soils.",
                growingConditions: "Vigorous vine with good disease resistance, requiring careful management to avoid over-ripening."
            ),
            wineStyles: [
                "Sparkling Wines: Primarily used in blends for Cava, contributing freshness and elegance."
            ],
            foodPairing: [
                "Pairs well with light seafood dishes, salads, and as an aperitif."
            ],
            notableProducers: [
                "Codorníu",
                "Freixenet"
            ],
            otherNames: "None",
            grapeSummary: "Parellada is a key grape in the production of Cava, valued for its fresh acidity and delicate flavors, making it an essential component in Spain's sparkling wine industry."
        ),
        imageName: "parellada",
        iconNames: ["leaf", "drop"]
    ),

    // Pedro Ximénez Details
    Grape(
        name: "Pedro Ximénez",
        details: GrapeDetails(
            origin: "Pedro Ximénez is a white grape variety from Spain, renowned for producing intensely sweet, dark dessert wines.",
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in hot, sunny climates which help concentrate its sugars.",
                soil: "Prefers chalky, albariza soils which retain moisture.",
                growingConditions: "Vigorous vine that produces high yields; grapes are often dried in the sun to concentrate sugars."
            ),
            wineStyles: [
                "Fortified Wines: Used to produce rich, sweet dessert wines known as Pedro Ximénez Sherry."
            ],
            foodPairing: [
                "Pairs well with desserts, particularly those with dried fruits and nuts, as well as blue cheeses."
            ],
            notableProducers: [
                "Bodegas Toro Albalá",
                "González Byass"
            ],
            otherNames: "PX.",
            grapeSummary: "Pedro Ximénez is celebrated for its intensely sweet and rich dessert wines, offering complex flavors and a luxurious finish, making it a staple in Spanish winemaking."
        ),
        imageName: "pedro_ximenez",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers warm, sunny climates to develop its full aromatic potential.",
                soil: "Thrives in well-drained, gravelly soils.",
                growingConditions: "Vigorous vine with good resistance to disease; requires careful management to maintain quality."
            ),
            wineStyles: [
                "White Wines: Used for both dry and sweet wines, showcasing its high acidity and aromatic complexity."
            ],
            foodPairing: [
                "Pairs well with foie gras, spicy dishes, and rich cheeses."
            ],
            notableProducers: [
                "Domaine Cauhapé",
                "Domaine Nigri"
            ],
            otherNames: "None",
            grapeSummary: "Petit Manseng is celebrated for its high acidity and aromatic intensity, making it a versatile grape for both dry and sweet wines in southwest France."
        ),
        imageName: "petit_manseng",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in warm, Mediterranean climates which help retain its high acidity.",
                soil: "Performs best in well-drained, limestone and sandy soils.",
                growingConditions: "Moderately vigorous vine with good disease resistance, producing high yields."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style, showcasing its fresh acidity and citrus flavors."
            ],
            foodPairing: [
                "Pairs well with seafood, particularly oysters, and light salads."
            ],
            notableProducers: [
                "Domaine Félines Jourdan",
                "Château Petit Roubié"
            ],
            otherNames: "Piquepoul.",
            grapeSummary: "Picpoul is appreciated for its high acidity and fresh citrus flavors, making it a key grape in the production of crisp, refreshing white wines in the Languedoc."
        ),
        imageName: "picpoul",
        iconNames: ["leaf", "drop"]
    ),

    // Pinot Blanc Details
    Grape(
        name: "Pinot Blanc",
        details: GrapeDetails(
            origin: "Pinot Blanc is a white grape variety believed to have originated in Burgundy, France. It is known for producing elegant, medium-bodied wines.",
            countries: Countries(
                primary: [
                    "France: Particularly in Alsace and Burgundy.",
                    "Germany: Known as Weissburgunder.",
                    "Italy: Known as Pinot Bianco, especially in Alto Adige."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Aromas of apple, pear, and white flowers with hints of citrus and almond.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of green apple, lemon, and a touch of minerality.",
                finish: "Smooth and elegant with a lingering fruity finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in cool to moderate climates which help retain its acidity and fresh flavors.",
                soil: "Performs best in well-drained, limestone and clay soils.",
                growingConditions: "Vigorous vine with good disease resistance, requiring careful management to avoid over-ripening."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its fresh fruit and elegant profile."
            ],
            foodPairing: [
                "Pairs well with seafood, poultry, and light pasta dishes."
            ],
            notableProducers: [
                "Domaine Zind-Humbrecht",
                "Alois Lageder"
            ],
            otherNames: "Weissburgunder in Germany, Pinot Bianco in Italy.",
            grapeSummary: "Pinot Blanc is valued for its fresh acidity and elegant fruit flavors, making it a versatile and widely planted grape variety in many cool-climate wine regions."
        ),
        imageName: "pinot_blanc",
        iconNames: ["leaf", "drop"]
    ),
    // Pinot Gris Details
    Grape(
        name: "Pinot Gris",
        details: GrapeDetails(
            origin: "Pinot Gris is a white grape variety believed to have originated in Burgundy, France. It is known for producing a wide range of wine styles, from dry to sweet, and is closely related to Pinot Noir.",
            countries: Countries(
                primary: [
                    "France: Particularly in Alsace.",
                    "Italy: Known as Pinot Grigio, especially in Veneto and Friuli-Venezia Giulia.",
                    "USA: Particularly in Oregon."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold to coppery pink.",
                aroma: "Aromas of ripe pear, apple, and citrus with hints of honey and spice.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of pear, peach, and melon with a touch of spice.",
                finish: "Smooth and slightly creamy with a long, fruit-driven finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in cool to moderate climates which help develop its aromatic profile.",
                soil: "Performs well in loamy and limestone soils.",
                growingConditions: "Moderately vigorous vine with good resistance to disease, requiring careful management to avoid over-ripening."
            ),
            wineStyles: [
                "White Wines: Ranges from dry to off-dry, showcasing its rich fruit flavors and aromatic complexity."
            ],
            foodPairing: [
                "Pairs well with rich seafood dishes, poultry, and creamy pastas."
            ],
            notableProducers: [
                "Domaine Zind-Humbrecht",
                "Alois Lageder"
            ],
            otherNames: "Pinot Grigio in Italy.",
            grapeSummary: "Pinot Gris is valued for its aromatic complexity and rich fruit flavors, making it a versatile and popular white wine variety."
        ),
        imageName: "pinot_gris",
        iconNames: ["leaf", "drop"]
    ),

    // Ribolla Gialla Details
    Grape(
        name: "Ribolla Gialla",
        details: GrapeDetails(
            origin: "Ribolla Gialla is a white grape variety native to the Friuli-Venezia Giulia region in northeastern Italy. It is known for producing crisp, aromatic wines with good acidity.",
            countries: Countries(
                primary: [
                    "Italy: Particularly in Friuli-Venezia Giulia.",
                    "Slovenia: Known as Rebula."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of citrus, green apple, and white flowers with hints of herbs.",
                palate: "Light-bodied with high acidity, featuring flavors of lemon, apple, and a distinct minerality.",
                finish: "Crisp and refreshing with a clean, zesty finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in cool to moderate climates which help retain its acidity and fresh flavors.",
                soil: "Performs best in well-drained, marl and limestone soils.",
                growingConditions: "Moderately vigorous vine with good disease resistance, requiring careful management to avoid over-ripening."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style, showcasing its fresh acidity and citrus flavors."
            ],
            foodPairing: [
                "Pairs well with seafood, light salads, and fresh cheeses."
            ],
            notableProducers: [
                "Josko Gravner",
                "Venica & Venica"
            ],
            otherNames: "Rebula in Slovenia.",
            grapeSummary: "Ribolla Gialla is appreciated for its high acidity and fresh citrus flavors, making it a key grape in the production of crisp, aromatic white wines in Friuli-Venezia Giulia."
        ),
        imageName: "ribolla_gialla",
        iconNames: ["leaf", "drop"]
    ),

    // Riesling Details
    Grape(
        name: "Riesling",
        details: GrapeDetails(
            origin: "Riesling is a white grape variety originating from the Rhine region of Germany. It is known for its aromatic intensity, high acidity, and versatility in producing wines ranging from dry to sweet.",
            countries: Countries(
                primary: [
                    "Germany: Particularly in the Mosel, Rheingau, and Pfalz regions.",
                    "France: Especially in Alsace.",
                    "Australia: Particularly in the Clare and Eden Valleys."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow to deep gold.",
                aroma: "Aromas of green apple, lime, and peach with floral notes and hints of petrol (especially in aged wines).",
                palate: "Light to medium-bodied with high acidity, featuring flavors of citrus, green apple, and stone fruits with a distinct minerality.",
                finish: "Crisp and refreshing with a long, zesty finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in cool climates which help retain its high acidity and aromatic profile.",
                soil: "Performs best in slate, granite, and limestone soils.",
                growingConditions: "Vigorous vine with good resistance to cold, making it suitable for cooler growing regions."
            ),
            wineStyles: [
                "White Wines: Ranges from bone-dry to lusciously sweet, showcasing its aromatic complexity and high acidity."
            ],
            foodPairing: [
                "Pairs well with spicy Asian cuisine, seafood, and light poultry dishes."
            ],
            notableProducers: [
                "Dr. Loosen",
                "Trimbach"
            ],
            otherNames: "None",
            grapeSummary: "Riesling is celebrated for its aromatic intensity, high acidity, and versatility, making it one of the most esteemed and widely planted white grape varieties in the world."
        ),
        imageName: "riesling",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in warm, sunny climates with cooling maritime influences that help retain its acidity.",
                soil: "Performs best in well-drained, limestone and rocky soils.",
                growingConditions: "Moderately vigorous vine with good disease resistance, requiring careful management to avoid over-ripening."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style, showcasing its fresh acidity and mineral complexity."
            ],
            foodPairing: [
                "Pairs well with seafood, light salads, and Mediterranean cuisine."
            ],
            notableProducers: [
                "Gentilini Winery",
                "Sclavos Wines"
            ],
            otherNames: "None",
            grapeSummary: "Robola is appreciated for its high acidity and fresh citrus flavors, making it a key grape in the production of crisp, mineral-driven white wines from the Ionian Islands."
        ),
        imageName: "robola",
        iconNames: ["leaf", "drop"]
    ),

    // Roussanne Details
    Grape(
        name: "Roussanne",
        details: GrapeDetails(
            origin: "Roussanne is a white grape variety originating from the Rhône Valley in France. It is often blended with Marsanne and is known for producing rich, aromatic wines with good aging potential.",
            countries: Countries(
                primary: [
                    "France: Particularly in the northern and southern Rhône Valley (Hermitage, Crozes-Hermitage, Châteauneuf-du-Pape).",
                    "USA: Particularly in California."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Aromas of pear, apricot, and herbal tea with floral and honeyed notes.",
                palate: "Medium to full-bodied with moderate acidity, featuring flavors of stone fruits, melon, and a touch of spice.",
                finish: "Rich and long-lasting with a slightly oily texture and a honeyed finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers warm climates which help develop its rich flavors.",
                soil: "Thrives in granite, clay, and limestone soils.",
                growingConditions: "Moderately vigorous vine with a tendency to produce low yields, enhancing quality."
            ),
            wineStyles: [
                "White Wines: Often blended with Marsanne, showcasing its rich, aromatic character."
            ],
            foodPairing: [
                "Pairs well with poultry, seafood, and creamy sauces."
            ],
            notableProducers: [
                "M. Chapoutier",
                "Tablas Creek Vineyard"
            ],
            otherNames: "None",
            grapeSummary: "Roussanne is celebrated for its rich, aromatic character and is often blended with Marsanne to produce complex, full-bodied white wines with good aging potential."
        ),
        imageName: "roussanne",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in both cool and warm climates, retaining its acidity and aromatic profile.",
                soil: "Adaptable to various soil types but performs best in well-drained, loamy soils.",
                growingConditions: "Vigorous vine with good disease resistance, capable of producing high yields."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its fresh acidity and aromatic complexity."
            ],
            foodPairing: [
                "Pairs well with spicy Asian cuisine, seafood, and light poultry dishes."
            ],
            notableProducers: [
                "Teliani Valley",
                "Pheasant's Tears"
            ],
            otherNames: "None",
            grapeSummary: "Rkatsiteli is valued for its high acidity and aromatic intensity, making it one of the most important and widely planted white grape varieties in Georgia."
        ),
        imageName: "rkatsiteli",
        iconNames: ["leaf", "drop"]
    ),
    // Sárga Muskotály (Muscat Blanc) Details
    Grape(
        name: "Sárga Muskotály (Muscat Blanc)",
        details: GrapeDetails(
            origin: "Sárga Muskotály, also known as Muscat Blanc à Petits Grains, is a white grape variety that is part of the extensive Muscat family. It is known for its intensely aromatic and sweet wines.",
            countries: Countries(
                primary: [
                    "Hungary: Widely grown in Tokaj and other regions.",
                    "France: Particularly in Alsace and the Rhône Valley.",
                    "Italy: Known as Moscato Bianco, especially in Piedmont."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Intense aromas of orange blossom, apricot, and honey, with floral and spicy notes.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of ripe peach, orange, and a touch of honey.",
                finish: "Sweet and luscious with a long, aromatic finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers warm, sunny climates which enhance its aromatic profile.",
                soil: "Adaptable to various soil types but prefers well-drained soils.",
                growingConditions: "Vigorous vine with good resistance to drought."
            ),
            wineStyles: [
                "White Wines: Often made in sweet and fortified styles, showcasing its aromatic intensity."
            ],
            foodPairing: [
                "Pairs well with desserts, particularly those with fruit and nuts, as well as strong cheeses."
            ],
            notableProducers: [
                "Domaine Weinbach",
                "Vega Sicilia"
            ],
            otherNames: "Muscat Blanc à Petits Grains, Moscato Bianco.",
            grapeSummary: "Sárga Muskotály (Muscat Blanc) is celebrated for its intensely aromatic and sweet wines, making it one of the most versatile and widely cultivated grape varieties in the world."
        ),
        imageName: "sarga_muskotaly",
        iconNames: ["leaf", "drop"]
    ),

    // Sauvignon Blanc Details
    Grape(
        name: "Sauvignon Blanc",
        details: GrapeDetails(
            origin: "Sauvignon Blanc is a white grape variety originating from the Loire Valley in France. It is known for its high acidity, aromatic intensity, and versatility in producing both dry and sweet wines.",
            countries: Countries(
                primary: [
                    "France: Particularly in the Loire Valley (Sancerre, Pouilly-Fumé) and Bordeaux.",
                    "New Zealand: Especially in Marlborough.",
                    "USA: Particularly in California."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow to light gold.",
                aroma: "Aromas of green apple, lime, and passion fruit with herbal notes and hints of bell pepper.",
                palate: "Light to medium-bodied with high acidity, featuring flavors of citrus, green apple, and tropical fruits with a distinct minerality.",
                finish: "Crisp and refreshing with a long, zesty finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in cool to moderate climates which help retain its high acidity and aromatic profile.",
                soil: "Performs best in well-drained, gravelly and limestone soils.",
                growingConditions: "Moderately vigorous vine with good disease resistance, requiring careful management to avoid over-ripening."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its fresh acidity and aromatic complexity."
            ],
            foodPairing: [
                "Pairs well with seafood, salads, and goat cheese."
            ],
            notableProducers: [
                "Domaine Vacheron",
                "Cloudy Bay"
            ],
            otherNames: "None",
            grapeSummary: "Sauvignon Blanc is celebrated for its high acidity, aromatic intensity, and versatility, making it one of the most popular and widely planted white grape varieties in the world."
        ),
        imageName: "sauvignon_blanc",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers cool to moderate climates which help retain its acidity and develop its unique flavor profile.",
                soil: "Thrives in marl and limestone soils.",
                growingConditions: "Moderately vigorous vine with good disease resistance, requiring careful management to avoid over-ripening."
            ),
            wineStyles: [
                "White Wines: Often made in an oxidative style, showcasing its complex and unique flavors."
            ],
            foodPairing: [
                "Pairs well with Comté cheese, poultry dishes, and creamy sauces."
            ],
            notableProducers: [
                "Domaine Jean Macle",
                "Domaine Tissot"
            ],
            otherNames: "None",
            grapeSummary: "Savagnin is celebrated for its unique and complex flavor profile, making it a key grape in the production of the distinctive Vin Jaune wines from the Jura region."
        ),
        imageName: "savagnin",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in warm, sunny climates with good resistance to drought and heat.",
                soil: "Prefers well-drained, sandy, and limestone soils.",
                growingConditions: "Vigorous vine with high yield potential; quality is maintained with controlled yields."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style, showcasing its fresh acidity and mineral character."
            ],
            foodPairing: [
                "Pairs well with seafood, salads, and light Mediterranean dishes."
            ],
            notableProducers: [
                "Papagiannakos Winery",
                "Domaine Vassiliou"
            ],
            otherNames: "None",
            grapeSummary: "Savatiano is appreciated for its resilience to heat and its ability to produce crisp, refreshing wines that are a staple in Greek wine culture."
        ),
        imageName: "savatiano",
        iconNames: ["leaf", "drop"]
    ),

    // Scheurebe Details
    Grape(
        name: "Scheurebe",
        details: GrapeDetails(
            origin: "Scheurebe is a white grape variety developed in Germany in the early 20th century by crossing Riesling with an unknown grape. It is known for its aromatic intensity and versatility in producing both dry and sweet wines.",
            countries: Countries(
                primary: [
                    "Germany: Particularly in the Rheinhessen and Pfalz regions.",
                    "Austria: Grown in regions like Burgenland and Lower Austria."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of blackcurrant, grapefruit, and peach with floral and herbal notes.",
                palate: "Medium-bodied with high acidity, featuring flavors of citrus, peach, and a hint of spice.",
                finish: "Crisp and aromatic with a long, fruity finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in cool to moderate climates which help retain its acidity and aromatic profile.",
                soil: "Performs best in well-drained, sandy, and loamy soils.",
                growingConditions: "Moderately vigorous vine with good disease resistance, requiring careful management to avoid over-ripening."
            ),
            wineStyles: [
                "White Wines: Ranges from dry to sweet, showcasing its aromatic intensity and fresh acidity."
            ],
            foodPairing: [
                "Pairs well with spicy Asian cuisine, seafood, and light poultry dishes."
            ],
            notableProducers: [
                "Weingut Wirsching",
                "Weingut Bründlmayer"
            ],
            otherNames: "None",
            grapeSummary: "Scheurebe is celebrated for its aromatic intensity and versatility, making it a popular choice for both dry and sweet wines in Germany and Austria."
        ),
        imageName: "scheurebe",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in warm, sunny climates with maritime influences that help retain its acidity.",
                soil: "Prefers volcanic and clay-limestone soils.",
                growingConditions: "Vigorous vine with good resistance to disease; quality is enhanced with controlled yields."
            ),
            wineStyles: [
                "Fortified Wines: Primarily used in the production of dry Madeira wines."
            ],
            foodPairing: [
                "Pairs well with savory appetizers, nuts, and cheeses."
            ],
            notableProducers: [
                "Blandy's",
                "Henriques & Henriques"
            ],
            otherNames: "None",
            grapeSummary: "Sercial is valued for its high acidity and ability to produce dry, crisp wines that are a key component in the production of Madeira, offering a distinct mineral and nutty character."
        ),
        imageName: "sercial",
        iconNames: ["leaf", "drop"]
    ),
    // Semillon Details
    Grape(
        name: "Semillon",
        details: GrapeDetails(
            origin: "Semillon is a white grape variety originating from the Bordeaux region of France. It is known for its role in producing both dry and sweet wines, including the famous Sauternes.",
            countries: Countries(
                primary: [
                    "France: Particularly in Bordeaux.",
                    "Australia: Especially in the Hunter Valley.",
                    "South Africa: Widely grown in various regions."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow to deep gold.",
                aroma: "Aromas of citrus, peach, and fig with hints of honey and beeswax in aged wines.",
                palate: "Medium to full-bodied with moderate acidity, featuring flavors of lemon, apple, and a touch of honey.",
                finish: "Rich and long-lasting with a smooth, slightly oily texture."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in moderate to warm climates which help develop its rich flavors.",
                soil: "Performs best in well-drained, gravelly and clay-limestone soils.",
                growingConditions: "Vigorous vine with good disease resistance; quality is enhanced with controlled yields."
            ),
            wineStyles: [
                "White Wines: Ranges from dry to sweet, including botrytized dessert wines like Sauternes."
            ],
            foodPairing: [
                "Pairs well with seafood, poultry, and rich, creamy dishes."
            ],
            notableProducers: [
                "Château d'Yquem",
                "Tyrrell's Wines"
            ],
            otherNames: "None",
            grapeSummary: "Semillon is celebrated for its versatility and ability to produce both dry and sweet wines, with a rich, complex profile that develops beautifully with age."
        ),
        imageName: "semillon",
        iconNames: ["leaf", "drop"]
    ),

    // Silvaner Details
    Grape(
        name: "Silvaner",
        details: GrapeDetails(
            origin: "Silvaner is a white grape variety believed to have originated in Austria or Germany. It is widely grown in Franconia and Rheinhessen regions of Germany.",
            countries: Countries(
                primary: [
                    "Germany: Particularly in Franconia (Franken) and Rheinhessen.",
                    "Austria: Grown in various regions."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of green apple, pear, and herbs with hints of citrus and mineral notes.",
                palate: "Light to medium-bodied with moderate acidity, featuring flavors of apple, melon, and a touch of spice.",
                finish: "Crisp and clean with a refreshing, mineral-driven finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in cool to moderate climates which help retain its acidity and fresh flavors.",
                soil: "Performs best in well-drained, limestone and clay soils.",
                growingConditions: "Moderately vigorous vine with good disease resistance, requiring careful management to avoid over-ripening."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its fresh acidity and mineral complexity."
            ],
            foodPairing: [
                "Pairs well with seafood, light poultry dishes, and salads."
            ],
            notableProducers: [
                "Weingut Hans Wirsching",
                "Weingut Juliusspital"
            ],
            otherNames: "Sylvaner.",
            grapeSummary: "Silvaner is valued for its fresh acidity and crisp, clean profile, making it a versatile and widely planted grape variety in Germany and Austria."
        ),
        imageName: "silvaner",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in high-altitude regions with warm days and cool nights which help retain its aromatic intensity.",
                soil: "Performs best in well-drained, sandy and loamy soils.",
                growingConditions: "Vigorous vine with good disease resistance, requiring careful management to maintain quality."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry, aromatic style, showcasing its intense floral and fruit aromas."
            ],
            foodPairing: [
                "Pairs well with spicy Asian cuisine, seafood, and light salads."
            ],
            notableProducers: [
                "Bodega Colomé",
                "El Porvenir de Cafayate"
            ],
            otherNames: "None",
            grapeSummary: "Torrontés is celebrated for its highly aromatic and floral character, making it Argentina's most distinctive and important white grape variety."
        ),
        imageName: "torrontes",
        iconNames: ["leaf", "drop"]
    ),
    // Trebbiano (Ugni Blanc) Details
    Grape(
        name: "Trebbiano (Ugni Blanc)",
        details: GrapeDetails(
            origin: "Trebbiano, known as Ugni Blanc in France, is a white grape variety believed to have originated in Italy. It is one of the most widely planted grape varieties in the world.",
            countries: Countries(
                primary: [
                    "Italy: Widely grown in many regions.",
                    "France: Known as Ugni Blanc, particularly in Cognac and Armagnac."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of green apple, lemon, and herbs with hints of floral and almond.",
                palate: "Light-bodied with high acidity, featuring flavors of citrus, green apple, and a touch of minerality.",
                finish: "Crisp and refreshing with a clean, dry finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in warm, sunny climates with good resistance to drought and disease.",
                soil: "Adaptable to various soil types but performs best in well-drained, calcareous soils.",
                growingConditions: "Vigorous vine with high yield potential; quality is maintained with controlled yields."
            ),
            wineStyles: [
                "White Wines: Often made in a dry, crisp style, showcasing its fresh acidity and subtle fruit flavors.",
                "Spirits: Used in the production of Cognac and Armagnac."
            ],
            foodPairing: [
                "Pairs well with seafood, salads, and light appetizers."
            ],
            notableProducers: [
                "Gianni Masciarelli",
                "Martell (for Cognac)"
            ],
            otherNames: "Ugni Blanc in France.",
            grapeSummary: "Trebbiano (Ugni Blanc) is valued for its high acidity and fresh, crisp profile, making it a versatile grape used in both wine and spirit production."
        ),
        imageName: "trebbiano",
        iconNames: ["leaf", "drop"]
    ),

    // Treixadura Details
    Grape(
        name: "Treixadura",
        details: GrapeDetails(
            origin: "Treixadura is a white grape variety native to the Ribeiro region in Galicia, Spain. It is known for producing aromatic and well-structured wines.",
            countries: Countries(
                primary: [
                    "Spain: Particularly in Galicia, especially in the Ribeiro and Rías Baixas regions."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of apple, pear, and citrus with floral and herbal notes.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of green apple, lemon, and a touch of minerality.",
                finish: "Crisp and refreshing with a clean, mineral-driven finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in cool to moderate climates which help retain its acidity and aromatic profile.",
                soil: "Performs best in well-drained, granite and sandy soils.",
                growingConditions: "Moderately vigorous vine with good disease resistance, requiring careful management to maintain quality."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its fresh acidity and aromatic complexity."
            ],
            foodPairing: [
                "Pairs well with seafood, light poultry dishes, and fresh salads."
            ],
            notableProducers: [
                "Viña Mein",
                "Casal de Armán"
            ],
            otherNames: "None",
            grapeSummary: "Treixadura is appreciated for its aromatic intensity and fresh acidity, making it a key grape in the production of crisp, well-structured white wines from Galicia."
        ),
        imageName: "treixadura",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in warm, sunny climates with cool nights which help retain its acidity.",
                soil: "Performs best in well-drained, sandy and gravelly soils.",
                growingConditions: "Moderately vigorous vine with good disease resistance, requiring careful management to avoid over-ripening."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style, showcasing its fresh acidity and aromatic complexity."
            ],
            foodPairing: [
                "Pairs well with seafood, salads, and light appetizers."
            ],
            notableProducers: [
                "Marqués de Riscal",
                "Bodegas Naia"
            ],
            otherNames: "None",
            grapeSummary: "Verdejo is celebrated for its fresh acidity and aromatic intensity, making it the most important white grape variety in the Rueda region of Spain."
        ),
        imageName: "verdejo",
        iconNames: ["leaf", "drop"]
    ),
    // Verdelho Details
    Grape(
        name: "Verdelho",
        details: GrapeDetails(
            origin: "Verdelho is a white grape variety originally from Portugal, particularly the island of Madeira. It is known for its versatility and is used in both dry table wines and fortified wines.",
            countries: Countries(
                primary: [
                    "Portugal: Especially in Madeira.",
                    "Australia: Particularly in the Hunter Valley."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Aromas of tropical fruits, citrus, and herbs with hints of spice.",
                palate: "Medium-bodied with high acidity, featuring flavors of lemon, pineapple, and a touch of almond.",
                finish: "Crisp and refreshing with a long, zesty finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in warm, sunny climates with good maritime influences that help retain acidity.",
                soil: "Performs best in volcanic and sandy soils.",
                growingConditions: "Vigorous vine with good disease resistance, requiring careful management to maintain quality."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style.",
                "Fortified Wines: Used in the production of Madeira."
            ],
            foodPairing: [
                "Pairs well with seafood, poultry, and light Mediterranean dishes."
            ],
            notableProducers: [
                "Blandy's",
                "Tyrrell's Wines"
            ],
            otherNames: "None",
            grapeSummary: "Verdelho is appreciated for its high acidity and versatility, making it a key grape in both table wines and fortified wines like Madeira."
        ),
        imageName: "verdelho",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in moderate climates with good diurnal temperature variation to retain its acidity.",
                soil: "Performs best in well-drained, limestone and clay soils.",
                growingConditions: "Vigorous vine with good disease resistance, requiring careful management to maintain quality."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style, showcasing its fresh acidity and mineral complexity."
            ],
            foodPairing: [
                "Pairs well with seafood, light pasta dishes, and fresh salads."
            ],
            notableProducers: [
                "Villa Bucci",
                "Garofoli"
            ],
            otherNames: "None",
            grapeSummary: "Verdicchio is celebrated for its high acidity and fresh, mineral-driven profile, making it one of Italy's most esteemed white grape varieties."
        ),
        imageName: "verdicchio",
        iconNames: ["leaf", "drop"]
    ),

    // Vernaccia Details
    Grape(
        name: "Vernaccia",
        details: GrapeDetails(
            origin: "Vernaccia is a white grape variety native to Italy, most famously grown in the San Gimignano region of Tuscany. It is known for producing crisp, aromatic wines with good acidity.",
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in moderate climates with good diurnal temperature variation to retain its acidity.",
                soil: "Performs best in well-drained, sandy and clay soils.",
                growingConditions: "Vigorous vine with good disease resistance, requiring careful management to maintain quality."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style, showcasing its fresh acidity and aromatic complexity."
            ],
            foodPairing: [
                "Pairs well with seafood, poultry, and light pasta dishes."
            ],
            notableProducers: [
                "Panizzi",
                "Teruzzi & Puthod"
            ],
            otherNames: "None",
            grapeSummary: "Vernaccia is appreciated for its high acidity and fresh, aromatic profile, making it a key grape in the production of crisp, elegant white wines from Tuscany."
        ),
        imageName: "vernaccia",
        iconNames: ["leaf", "drop"]
    ),
    // Vermentino Details
    Grape(
        name: "Vermentino",
        details: GrapeDetails(
            origin: "Vermentino is a white grape variety that is believed to have originated in Italy. It is widely planted in the coastal regions of Liguria, Tuscany, and Sardinia.",
            countries: Countries(
                primary: [
                    "Italy: Particularly in Liguria, Tuscany, and Sardinia.",
                    "France: Known as Rolle, especially in Provence and Corsica."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of citrus, green apple, and white flowers with hints of herbs and almond.",
                palate: "Light to medium-bodied with high acidity, featuring flavors of lemon, lime, and a touch of saline minerality.",
                finish: "Crisp and refreshing with a clean, zesty finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in warm, coastal climates with good exposure to sunlight.",
                soil: "Performs best in well-drained, sandy and limestone soils.",
                growingConditions: "Moderately vigorous vine with good disease resistance, requiring careful management to avoid over-ripening."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry, crisp style, showcasing its fresh acidity and aromatic complexity."
            ],
            foodPairing: [
                "Pairs well with seafood, light pasta dishes, and fresh salads."
            ],
            notableProducers: [
                "Cantina di Gallura",
                "Michele Satta"
            ],
            otherNames: "Rolle in France.",
            grapeSummary: "Vermentino is celebrated for its fresh acidity and aromatic complexity, making it a popular choice for crisp, refreshing white wines in coastal regions."
        ),
        imageName: "vermentino",
        iconNames: ["leaf", "drop"]
    ),

    // Viognier Details
    Grape(
        name: "Viognier",
        details: GrapeDetails(
            origin: "Viognier is a white grape variety originating from the Rhône Valley in France. It is known for its rich, aromatic wines with floral and fruit-driven characteristics.",
            countries: Countries(
                primary: [
                    "France: Particularly in the northern Rhône Valley (Condrieu, Château-Grillet).",
                    "USA: Particularly in California and Virginia.",
                    "Australia: Widely grown in various regions."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Intense aromas of apricot, peach, and honeysuckle with floral and spice notes.",
                palate: "Medium to full-bodied with moderate acidity, featuring flavors of stone fruits, citrus, and a touch of spice.",
                finish: "Rich and long-lasting with a slightly oily texture and a floral finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Prefers warm climates which help develop its rich flavors and aromatic intensity.",
                soil: "Thrives in granite and clay-limestone soils.",
                growingConditions: "Moderately vigorous vine with a tendency to produce low yields, enhancing quality."
            ),
            wineStyles: [
                "White Wines: Typically made in a rich, aromatic style, showcasing its intense floral and fruit flavors."
            ],
            foodPairing: [
                "Pairs well with seafood, poultry, and dishes with creamy sauces."
            ],
            notableProducers: [
                "Yves Cuilleron",
                "Château-Grillet"
            ],
            otherNames: "None",
            grapeSummary: "Viognier is celebrated for its rich, aromatic character and is often used to produce complex, full-bodied white wines with a distinctive floral and fruit-driven profile."
        ),
        imageName: "viognier",
        iconNames: ["leaf", "drop"]
    ),

    // Weißburgunder (Pinot Blanc) Details
    Grape(
        name: "Weißburgunder",
        details: GrapeDetails(
            origin: "Weißburgunder, known as Pinot Blanc in France, is a white grape variety that is believed to have originated in Burgundy. It is known for producing elegant, medium-bodied wines.",
            countries: Countries(
                primary: [
                    "Germany: Widely grown in regions like Baden and Pfalz.",
                    "France: Particularly in Alsace and Burgundy.",
                    "Italy: Known as Pinot Bianco, especially in Alto Adige."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale gold.",
                aroma: "Aromas of apple, pear, and white flowers with hints of citrus and almond.",
                palate: "Medium-bodied with moderate acidity, featuring flavors of green apple, lemon, and a touch of minerality.",
                finish: "Smooth and elegant with a lingering fruity finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in cool to moderate climates which help retain its acidity and fresh flavors.",
                soil: "Performs best in well-drained, limestone and clay soils.",
                growingConditions: "Vigorous vine with good disease resistance, requiring careful management to avoid over-ripening."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its fresh fruit and elegant profile."
            ],
            foodPairing: [
                "Pairs well with seafood, poultry, and light pasta dishes."
            ],
            notableProducers: [
                "Weingut Dr. Heger",
                "Domaine Zind-Humbrecht"
            ],
            otherNames: "Pinot Blanc in France, Pinot Bianco in Italy.",
            grapeSummary: "Weißburgunder (Pinot Blanc) is valued for its fresh acidity and elegant fruit flavors, making it a versatile and widely planted grape variety in many cool-climate wine regions."
        ),
        imageName: "weissburgunder",
        iconNames: ["leaf", "drop"]
    ),
    // Welschriesling Details
    Grape(
        name: "Welschriesling",
        details: GrapeDetails(
            origin: "Welschriesling is a white grape variety that is not related to the Riesling grape. It is widely grown in Central and Eastern Europe.",
            countries: Countries(
                primary: [
                    "Austria: Particularly in the regions of Burgenland and Styria.",
                    "Hungary: Known as Olaszrizling, especially in the Lake Balaton area.",
                    "Croatia: Known as Graševina, widely planted in Slavonia and other regions."
                ]
            ),
            tastingNotes: TastingNotes(
                color: "Pale yellow.",
                aroma: "Aromas of green apple, citrus, and white flowers with hints of herbs.",
                palate: "Light to medium-bodied with high acidity, featuring flavors of lemon, green apple, and a touch of minerality.",
                finish: "Crisp and refreshing with a clean, zesty finish."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in cool to moderate climates which help retain its acidity and fresh flavors.",
                soil: "Performs best in well-drained, limestone and clay soils.",
                growingConditions: "Vigorous vine with good disease resistance, requiring careful management to avoid over-ripening."
            ),
            wineStyles: [
                "White Wines: Typically made in a dry style, showcasing its fresh acidity and crisp, clean profile."
            ],
            foodPairing: [
                "Pairs well with seafood, light salads, and fresh cheeses."
            ],
            notableProducers: [
                "Weingut Tement",
                "Josić Winery"
            ],
            otherNames: "Olaszrizling in Hungary, Graševina in Croatia.",
            grapeSummary: "Welschriesling is valued for its fresh acidity and crisp, clean profile, making it a versatile and widely planted grape variety in Central and Eastern Europe."
        ),
        imageName: "welschriesling",
        iconNames: ["leaf", "drop"]
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
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in warm, Mediterranean climates with good exposure to sunlight.",
                soil: "Performs best in well-drained, limestone and sandy soils.",
                growingConditions: "Moderately vigorous vine with good disease resistance, requiring careful management to maintain quality."
            ),
            wineStyles: [
                "Sparkling Wines: Primarily used in blends for Cava, contributing freshness and structure.",
                "White Wines: Also used to produce still wines, showcasing its fresh acidity and mineral character."
            ],
            foodPairing: [
                "Pairs well with seafood, light appetizers, and as an aperitif."
            ],
            notableProducers: [
                "Codorníu",
                "Freixenet"
            ],
            otherNames: "None",
            grapeSummary: "Xarel·lo is celebrated for its high acidity and fresh, mineral-driven profile, making it a key grape in the production of Cava and a popular choice for crisp, refreshing white wines in Catalonia."
        ),
        imageName: "xarello",
        iconNames: ["leaf", "drop"]
    )
  ]


}


