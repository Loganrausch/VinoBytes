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
)
//
//Grape(name: "Bobal",
//      details: "Enter details here.",
//      imageName: "bobal",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Bonarda",
//      details: "Enter details here.",
//      imageName: "bonarda",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Brachetto",
//      details: "Enter details here.",
//      imageName: "brachetto",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Cabernet Franc",
//      details: "Enter details here.",
//      imageName: "cabernet_franc",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Cabernet Sauvignon",
//      details: "Enter details here.",
//      imageName: "cabernet_sauvignon",
//      iconNames: ["leaf", "drop"]),
//Grape(name: "Cannonau",
//      details: "Enter details here.",
//      imageName: "cannonau",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Carignan",
//      details: "Enter details here.",
//      imageName: "carignan",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Cariñena",
//      details: "Enter details here.",
//      imageName: "carinena",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Carmenere",
//      details: "Enter details here.",
//      imageName: "carmenere",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Castelao",
//      details: "Enter details here.",
//      imageName: "castelao",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Cinsault",
//      details: "Enter details here.",
//      imageName: "cinsault",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Corvina",
//      details: "Enter details here.",
//      imageName: "corvina",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Corvinone",
//      details: "Enter details here.",
//      imageName: "corvinone",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Counoise",
//      details: "Enter details here.",
//      imageName: "counoise",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Dolcetto",
//      details: "Enter details here.",
//      imageName: "dolcetto",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Dornfelder",
//      details: "Enter details here.",
//      imageName: "dornfelder",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Frappato",
//      details: "Enter details here.",
//      imageName: "frappato",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Gamay",
//      details: "Enter details here.",
//      imageName: "gamay",
//      iconNames: ["leaf", "drop"]),
//Grape(name: "Graciano",
//      details: "Enter details here.",
//      imageName: "graciano",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Grenache",
//      details: "Enter details here.",
//      imageName: "grenache",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Kadarka",
//      details: "Enter details here.",
//      imageName: "kadarka",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Kotsifali",
//      details: "Enter details here.",
//      imageName: "kotsifali",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Lambrusco",
//      details: "Enter details here.",
//      imageName: "lambrusco",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Lemberger",
//      details: "Enter details here.",
//      imageName: "lemberger",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Limnio",
//      details: "Enter details here.",
//      imageName: "limnio",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Malbec",
//      details: "Enter details here.",
//      imageName: "malbec",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Mavrodaphne",
//      details: "Enter details here.",
//      imageName: "mavrodaphne",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Mencía",
//      details: "Enter details here.",
//      imageName: "mencia",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Merlot",
//      details: "Enter details here.",
//      imageName: "merlot",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Molinara",
//      details: "Enter details here.",
//      imageName: "molinara",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Monastrell",
//      details: "Enter details here.",
//      imageName: "monastrell",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Mondeuse",
//      details: "Enter details here.",
//      imageName: "mondeuse",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Montepulciano",
//      details: "Enter details here.",
//      imageName: "montepulciano",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Mourvèdre",
//      details: "Enter details here.",
//      imageName: "mourvedre",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Nebbiolo",
//      details: "Enter details here.",
//      imageName: "nebbiolo",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Negroamaro",
//      details: "Enter details here.",
//      imageName: "negroamaro",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Nerello Mascalese",
//      details: "Enter details here.",
//      imageName: "nerello_mascalese",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Nero d’Avola",
//      details: "Enter details here.",
//      imageName: "nero_davola",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Petit Verdot",
//      details: "Enter details here.",
//      imageName: "petit_verdot",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Petite Sirah",
//      details: "Enter details here.",
//      imageName: "petite_sirah",
//      iconNames: ["leaf", "drop"]),
//Grape(name: "Pinot Noir",
//      details: "Enter details here.",
//      imageName: "pinot_noir",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Pinotage",
//      details: "Enter details here.",
//      imageName: "pinotage",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Portugieser",
//      details: "Enter details here.",
//      imageName: "portugieser",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Primitivo",
//      details: "Enter details here.",
//      imageName: "primitivo",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Refosco",
//      details: "Enter details here.",
//      imageName: "refosco",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Rondinella",
//      details: "Enter details here.",
//      imageName: "rondinella",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Sagrantino",
//      details: "Enter details here.",
//      imageName: "sagrantino",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Sangiovese",
//      details: "Enter details here.",
//      imageName: "sangiovese",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Schiava",
//      details: "Enter details here.",
//      imageName: "schiava",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "St. Laurent",
//      details: "Enter details here.",
//      imageName: "st_laurent",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Syrah",
//      details: "Enter details here.",
//      imageName: "syrah",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Tannat",
//      details: "Enter details here.",
//      imageName: "tannat",
//      iconNames: ["leaf", "drop"]),
//Grape(name: "Tempranillo",
//      details: "Enter details here.",
//      imageName: "tempranillo",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Teroldego",
//      details: "Enter details here.",
//      imageName: "teroldego",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Touriga Nacional",
//      details: "Enter details here.",
//      imageName: "touriga_nacional",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Trousseau",
//      details: "Enter details here.",
//      imageName: "trousseau",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Trollinger",
//      details: "Enter details here.",
//      imageName: "trollinger",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Xinomavro",
//      details: "Enter details here.",
//      imageName: "xinomavro",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Zinfandel",
//      details: "Enter details here.",
//      imageName: "zinfandel",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Zweigelt",
//      details: "Enter details here.",
//      imageName: "zweigelt",
//      iconNames: ["leaf", "drop"]),
//
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

//Grape(name: "Albariño (Alvarinho)",
//      details: "Enter details here.",
//      imageName: "albarino",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Aligoté",
//      details: "Enter details here.",
//      imageName: "aligote",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Arinto",
//      details: "Enter details here.",
//      imageName: "arinto",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Arneis",
//      details: "Enter details here.",
//      imageName: "arneis",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Assyrtiko",
//      details: "Enter details here.",
//      imageName: "assyrtiko",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Boal",
//      details: "Enter details here.",
//      imageName: "boal",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Chardonnay",
//      details: "Enter details here.",
//      imageName: "chardonnay",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Chenin Blanc",
//      details: "Enter details here.",
//      imageName: "chenin_blanc",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Colombard",
//      details: "Enter details here.",
//      imageName: "colombard",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Cortese",
//      details: "Enter details here.",
//      imageName: "cortese",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Falanghina",
//      details: "Enter details here.",
//      imageName: "falanghina",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Fernão Pires",
//      details: "Enter details here.",
//      imageName: "fernao_pires",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Fiano",
//      details: "Enter details here.",
//      imageName: "fiano",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Folle Blanche",
//      details: "Enter details here.",
//      imageName: "folle_blanche",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Friulano",
//      details: "Enter details here.",
//      imageName: "friulano",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Furmint",
//      details: "Enter details here.",
//      imageName: "furmint",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Garganega",
//      details: "Enter details here.",
//      imageName: "garganega",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Gewürztraminer",
//      details: "Enter details here.",
//      imageName: "gewurztraminer",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Glera",
//      details: "Enter details here.",
//      imageName: "glera",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Godello",
//      details: "Enter details here.",
//      imageName: "godello",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Grauburgunder",
//      details: "Enter details here.",
//      imageName: "grauburgunder",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Grechetto",
//      details: "Enter details here.",
//      imageName: "grechetto",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Greco",
//      details: "Enter details here.",
//      imageName: "greco",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Grenache Blanc",
//      details: "Enter details here.",
//      imageName: "grenache_blanc",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Gros Manseng",
//      details: "Enter details here.",
//      imageName: "gros_manseng",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Grüner Veltliner",
//      details: "Enter details here.",
//      imageName: "gruner_veltliner",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Hárslevelű",
//      details: "Enter details here.",
//      imageName: "harslevelu",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Irsai Olivér",
//      details: "Enter details here.",
//      imageName: "irsai_oliver",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Juhfark",
//      details: "Enter details here.",
//      imageName: "juhfark",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Kerner",
//      details: "Enter details here.",
//      imageName: "kerner",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Macabeo (Viura)",
//      details: "Enter details here.",
//      imageName: "macabeo",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Malmsey",
//      details: "Enter details here.",
//      imageName: "malmsey",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Marsanne",
//      details: "Enter details here.",
//      imageName: "marsanne",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Melon de Bourgogne",
//      details: "Enter details here.",
//      imageName: "melon_de_bourgogne",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Moscatel",
//      details: "Enter details here.",
//      imageName: "moscatel",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Moschofilero",
//      details: "Enter details here.",
//      imageName: "moschofilero",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Müller-Thurgau",
//      details: "Enter details here.",
//      imageName: "muller_thurgau",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Muscadelle",
//      details: "Enter details here.",
//      imageName: "muscadelle",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Muscat",
//      details: "Enter details here.",
//      imageName: "muscat",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Muscat of Alexandria",
//      details: "Enter details here.",
//      imageName: "muscat_of_alexandria",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Muscat Ottonel",
//      details: "Enter details here.",
//      imageName: "muscat_ottonel",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Olaszrizling (Welschriesling)",
//      details: "Enter details here.",
//      imageName: "olaszrizling",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Palomino",
//      details: "Enter details here.",
//      imageName: "palomino",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Parellada",
//      details: "Enter details here.",
//      imageName: "parellada",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Pedro Ximénez",
//      details: "Enter details here.",
//      imageName: "pedro_ximenez",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Petit Manseng",
//      details: "Enter details here.",
//      imageName: "petit_manseng",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Picpoul",
//      details: "Enter details here.",
//      imageName: "picpoul",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Pinot Blanc",
//      details: "Enter details here.",
//      imageName: "pinot_blanc",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Pinot Gris",
//      details: "Enter details here.",
//      imageName: "pinot_gris",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Ribolla Gialla",
//      details: "Enter details here.",
//      imageName: "ribolla_gialla",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Riesling",
//      details: "Enter details here.",
//      imageName: "riesling",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Robola",
//      details: "Enter details here.",
//      imageName: "robola",
//      iconNames: ["leaf", "drop"]),
//Grape(name: "Roussanne",
//      details: "Enter details here.",
//      imageName: "roussanne",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Rkatsiteli",
//      details: "Enter details here.",
//      imageName: "rkatsiteli",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Sárga Muskotály (Muscat Blanc)",
//      details: "Enter details here.",
//      imageName: "sarga_muskotaly",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Sauvignon Blanc",
//      details: "Enter details here.",
//      imageName: "sauvignon_blanc",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Savagnin",
//      details: "Enter details here.",
//      imageName: "savagnin",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Savatiano",
//      details: "Enter details here.",
//      imageName: "savatiano",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Scheurebe",
//      details: "Enter details here.",
//      imageName: "scheurebe",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Sercial",
//      details: "Enter details here.",
//      imageName: "sercial",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Semillon",
//      details: "Enter details here.",
//      imageName: "semillon",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Silvaner",
//      details: "Enter details here.",
//      imageName: "silvaner",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Torrontés",
//      details: "Enter details here.",
//      imageName: "torrontes",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Trebbiano (Ugni Blanc)",
//      details: "Enter details here.",
//      imageName: "trebbiano",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Treixadura",
//      details: "Enter details here.",
//      imageName: "treixadura",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Verdejo",
//      details: "Enter details here.",
//      imageName: "verdejo",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Verdelho",
//      details: "Enter details here.",
//      imageName: "verdelho",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Verdicchio",
//      details: "Enter details here.",
//      imageName: "verdicchio",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Vernaccia",
//      details: "Enter details here.",
//      imageName: "vernaccia",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Vermentino",
//      details: "Enter details here.",
//      imageName: "vermentino",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Viognier",
//      details: "Enter details here.",
//      imageName: "viognier",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Weißburgunder",
//      details: "Enter details here.",
//      imageName: "weissburgunder",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Welschriesling",
//      details: "Enter details here.",
//      imageName: "welschriesling",
//      iconNames: ["leaf", "drop"]),
//
//Grape(name: "Xarel·lo",
//      details: "Enter details here.",
//      imageName: "xarello",
//      iconNames: ["leaf", "drop"]),
//
  ]


}


