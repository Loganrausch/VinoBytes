//
//  RegionData.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/3/24.
//

import Foundation

struct Region {
    let name: String
    let details: String
    let subregions: [String]
    let climate: String
    let soil: [String]
    let keyWineStyles: String
    let topProducers: [String]
    let imageName: String // New property
    let iconNames: [String] // New property
}

struct Country {
    let name: String
    let regions: [Region]
}

struct RegionData {
    static let countries: [Country] = [
        
        //FRANCE
        
        Country(name: "France", regions: [
                    
            Region(
                        name: "Bordeaux",
                        details: "Bordeaux is renowned for its storied winemaking history and pivotal role in the global wine market, with a heritage that traces back to Roman times. The region is geographically divided by the Gironde Estuary into the Left Bank and Right Bank, cultivating diverse wine styles influenced by their distinct terroirs. The Left Bank is noted for structured, tannic wines from Cabernet Sauvignon, whereas the Right Bank offers softer, Merlot-based wines that are often more approachable at a younger age.",
                        subregions: [
                            "Left Bank: Famous for Cabernet Sauvignon-dominant wines with notable appellations including Médoc, Margaux, Pauillac, Saint-Julien, and Saint-Estèphe.\n",
                            "Right Bank: Dominated by Merlot, this area features celebrated regions like Saint-Émilion and Pomerol.\n",
                            "Graves (Left Bank): Distinct for both its sophisticated red wines and premium dry white wines predominantly from Sauvignon Blanc and Sémillon. Sauternes, a subregion within Graves, is globally acclaimed for its exceptional sweet wines, crafted from grapes affected by Botrytis cinerea, or noble rot, which concentrates their sugars and flavors."
                        ],
                        climate: "Bordeaux's maritime climate, moderated by the Atlantic Ocean and the Gironde Estuary, ensures a temperate environment ideal for viticulture, with a long growing season critical for the complex maturation of grapes.",
                        soil: [
                            "Deep gravel of the Left Bank, conducive to Cabernet Sauvignon.\n",
                            "Clay and limestone of the Right Bank, which supports Merlot cultivation.\n",
                            "Unique mix in Graves, contributing to the diverse wine styles it produces."
                        ],
                        keyWineStyles: "The region is celebrated for its red blends based on Cabernet Sauvignon and Merlot, known for their depth and complexity. Bordeaux also boasts of the dry white wines of Graves and the sublime sweet wines of Sauternes, each expressing a distinct palate profile reflective of their terroir.",
                        topProducers: [
                            "Château Margaux (Margaux)",
                            "Château Latour (Pauillac)",
                            "Château Haut-Brion (Graves)",
                            "Château Cheval Blanc (Saint-Émilion)",
                            "Château Pétrus (Pomerol)",
                            "Château d'Yquem (Sauternes)"
                        ],
                        imageName: "bordeaux_image",
                        iconNames: ["leaf", "drop"]
                    ),
                    Region(
                        name: "Burgundy",
                        details: "Burgundy, or Bourgogne, is celebrated for its complex terroir and the climats system, a UNESCO World Heritage site that precisely delineates its vineyards. This historical wine region is renowned for its exceptional Chardonnay and Pinot Noir wines, produced from a tapestry of closely spaced vineyards that express subtle variations in flavor and character.",
                        subregions: [
                            "Chablis: Known for its crisp, mineral-driven Chardonnay.\n",
                            "Côte de Nuits: The northern part of the Côte d'Or, famous for producing some of the world's finest Pinot Noir wines with appellations like Gevrey-Chambertin and Vosne-Romanée.\n",
                            "Côte de Beaune: The southern part of the Côte d'Or, revered for both its exquisite Chardonnay from areas like Puligny-Montrachet and Meursault, and also fine Pinot Noir.\n",
                            "Côte Chalonnaise: Producing both red and white wines, with a growing reputation for value and quality.\n",
                            "Mâconnais: Located in the southern part of Burgundy, known for its robust Chardonnay wines.\n",
                            "Beaujolais: Geographically part of Burgundy but distinct in its wine style, predominantly producing light, fruit-forward red wines from the Gamay grape."
                        ],
                        climate: "Continental, with cold winters and warm summers, promoting a range of wine styles from the various subregions.",
                        soil: [
                            "Chablis: Kimmeridgian limestone rich in marine fossils, lending a distinct minerality to the wines.\n",
                            "Côte de Nuits: Limestone and marl, with variations in clay content that add complexity and richness to the wines.\n",
                            "Côte de Beaune: Limestone with higher proportions of marl, producing elegant Chardonnay and structured Pinot Noir.\n",
                            "Côte Chalonnaise: A mixture of clay and limestone that supports both Chardonnay and Pinot Noir.\n",
                            "Mâconnais: Predominantly limestone with some areas having a higher clay content, ideal for Chardonnay.\n",
                            "Beaujolais: Granitic and sandy soils that are perfect for the Gamay grape, contributing to the fresh, fruity character of the wines."
                        ],
                        keyWineStyles: "Famed for its Chardonnay and Pinot Noir, Burgundy also offers unique expressions of Gamay in Beaujolais. The region is known for both its red and white wines that can range from robust and complex to elegant and mineral.",
                        topProducers: [
                            "Domaine de la Romanée-Conti (Côte de Nuits)",
                            "Domaine Leflaive (Puligny-Montrachet)",
                            "Louis Jadot (across Burgundy)",
                            "Domaine Faiveley (Côte Chalonnaise)",
                            "Maison Louis Latour (Côte de Beaune)",
                            "Georges Duboeuf (Beaujolais)"
                        ],
                        imageName: "burgundy_image",
                        iconNames: ["leaf", "drop"]),
    


            Region(
                name: "Champagne",
                details: "Champagne is renowned for its sparkling wines made using the traditional method, which involves secondary fermentation in the bottle. This prestigious wine region is synonymous with celebration and luxury, producing some of the world's most sought-after sparkling wines. The unique chalky soils and cool climate contribute to the distinctive style and high acidity of Champagne wines.",
                subregions: [
                    "Montagne de Reims: Known for its Pinot Noir vineyards, contributing to the structure and body of Champagne wines.\n",
                    "Vallée de la Marne: Predominantly planted with Pinot Meunier, adding fruitiness and approachability to the blends.\n",
                    "Côte des Blancs: Famous for its Chardonnay vineyards, which lend elegance and finesse to the wines.\n",
                    "Côte de Sézanne: Similar to Côte des Blancs with a focus on Chardonnay, producing fresh and floral Champagnes.\n",
                    "Aube (Côte des Bar): Located further south, known for its Pinot Noir vineyards, contributing richness and depth to the wines."
                ],
                climate: "Cool continental climate, characterized by cold winters, warm summers, and a high risk of frost, which influences the high acidity and freshness of the wines.",
                soil: [
                    "Montagne de Reims: Predominantly chalky soils that provide excellent drainage and contribute to the minerality of the wines.\n",
                    "Vallée de la Marne: A mix of chalk, clay, and sand, with Pinot Meunier thriving in these diverse conditions.\n",
                    "Côte des Blancs: Pure chalk soils that are ideal for Chardonnay, enhancing the crispness and finesse of the wines.\n",
                    "Côte de Sézanne: Similar to Côte des Blancs with chalky soils, supporting the production of elegant Chardonnay-based Champagnes.\n",
                    "Aube (Côte des Bar): Limestone and clay soils that favor the cultivation of Pinot Noir, adding complexity and structure to the wines."
                ],
                keyWineStyles: "Champagne is exclusively known for its sparkling wines, which range from non-vintage blends to prestigious vintage and prestige cuvées. The wines are characterized by high acidity, fine bubbles, and flavors that can include citrus, green apple, brioche, and nuts.",
                topProducers: [
                    "Moët & Chandon",
                    "Veuve Clicquot",
                    "Louis Roederer",
                    "Bollinger",
                    "Taittinger",
                    "Krug"
                ],
                imageName: "champagne_image",
                iconNames: ["bubbles", "glass"]
            ),
            
            Region(
                name: "Rhône Valley",
                details: "The Rhône Valley is one of the oldest wine-producing regions in the world, renowned for its diverse range of high-quality wines. It is divided into two distinct subregions: the Northern Rhône, known for its Syrah-based wines, and the Southern Rhône, famous for its blends, particularly those from Châteauneuf-du-Pape.",
                subregions: [
                    "Northern Rhône: Notable for single-varietal Syrah wines and prestigious appellations like Hermitage and Côte-Rôtie.\n",
                    "Southern Rhône: Known for its complex blends, particularly of Grenache, Syrah, and Mourvèdre, with key appellations such as Châteauneuf-du-Pape, Gigondas, and Vacqueyras."
                ],
                climate: "Varied climate with a continental climate in the north and a Mediterranean climate in the south. The Mistral wind plays a significant role in both regions, helping to cool the vineyards and prevent disease.",
                soil: [
                    "Northern Rhône: Predominantly granite and schist soils, which are ideal for Syrah, lending structure and complexity to the wines.\n",
                    "Southern Rhône: A mix of soils including limestone, clay, and the distinctive galets (large round stones) that retain heat and contribute to the ripeness and richness of the wines."
                ],
                keyWineStyles: "The Rhône Valley is famous for its robust and flavorful red wines. Northern Rhône is known for Syrah with aromas of black fruits, pepper, and floral notes. Southern Rhône produces rich, full-bodied blends with flavors of red and black fruits, spices, and herbs. The region also produces notable white wines from varieties like Viognier, Marsanne, and Roussanne.",
                topProducers: [
                    "E. Guigal (Northern Rhône)",
                    "M. Chapoutier (across Rhône Valley)",
                    "Château de Beaucastel (Châteauneuf-du-Pape)",
                    "Domaine du Vieux Télégraphe (Châteauneuf-du-Pape)",
                    "Paul Jaboulet Aîné (Northern Rhône)",
                    "Domaine de la Janasse (Southern Rhône)"
                ],
                imageName: "rhone_valley_image",
                iconNames: ["grape", "sun"]
            ),
            
            Region(
                name: "Loire Valley",
                details: "The Loire Valley, often referred to as the 'Garden of France,' is known for its diverse range of wine styles, from crisp whites and elegant reds to sparkling wines and sweet dessert wines. Stretching from the Atlantic coast to central France, the region is divided into several distinct subregions, each with its own unique terroir and grape varieties.",
                subregions: [
                    "Pays Nantais: Located near the Atlantic coast, famous for its Muscadet wines made from the Melon de Bourgogne grape.\n",
                    "Anjou-Saumur: Known for its dry and sweet Chenin Blanc wines, as well as its red wines from Cabernet Franc.\n",
                    "Touraine: Produces a variety of wines, including Sauvignon Blanc, Chenin Blanc, and Cabernet Franc, with notable appellations like Vouvray and Chinon.\n",
                    "Upper Loire: Renowned for its Sauvignon Blanc wines from Sancerre and Pouilly-Fumé."
                ],
                climate: "The Loire Valley has a diverse climate influenced by the Atlantic Ocean in the west and a more continental climate in the east. The region experiences mild temperatures and ample rainfall, contributing to the freshness and acidity of its wines.",
                soil: [
                    "Pays Nantais: Predominantly composed of schist, granite, and gneiss, ideal for the crisp and mineral-driven Muscadet wines.\n",
                    "Anjou-Saumur: A mix of slate, schist, and limestone, supporting both white and red grape varieties.\n",
                    "Touraine: Diverse soils including tuffeau (limestone), clay, and flint, contributing to the complexity of the wines.\n",
                    "Upper Loire: Silex (flint), limestone, and Kimmeridgian marl, perfect for producing the distinctive Sauvignon Blanc wines of Sancerre and Pouilly-Fumé."
                ],
                keyWineStyles: "The Loire Valley is celebrated for its vibrant and aromatic white wines, particularly from Sauvignon Blanc and Chenin Blanc. The region also produces elegant red wines from Cabernet Franc, refreshing rosés, and renowned sparkling wines made using the traditional method.",
                topProducers: [
                    "Domaine de la Romanée (Sancerre)",
                    "Domaine Huet (Vouvray)",
                    "Château de Fesles (Anjou)",
                    "Clos Rougeard (Saumur-Champigny)",
                    "Domaine des Baumard (Coteaux du Layon)",
                    "Domaine de la Pépière (Muscadet)"
                ],
                imageName: "loire_valley_image",
                iconNames: ["castle", "river"]
            ),
            
            Region(
                name: "Alsace",
                details: "Alsace, located in northeastern France along the Rhine River, is renowned for its aromatic white wines and picturesque vineyards nestled at the foothills of the Vosges Mountains. The region is distinguished by its unique cultural blend of French and German influences, which is reflected in its winemaking traditions.",
                subregions: [
                    "Bas-Rhin: The northern part of Alsace, producing lighter and more delicate wines, with notable appellations such as Marlenheim and Barr.\n",
                    "Haut-Rhin: The southern part of Alsace, known for its richer and more full-bodied wines, with prestigious appellations like Colmar, Riquewihr, and Guebwiller."
                ],
                climate: "Alsace has a semi-continental climate with warm summers and cold winters. The Vosges Mountains provide a rain shadow effect, resulting in one of the driest climates in France, which is ideal for viticulture.",
                soil: [
                    "Bas-Rhin: Varied soils including sandstone, clay, and marl, contributing to the diversity and complexity of the wines.\n",
                    "Haut-Rhin: A mix of granite, limestone, and schist, providing excellent drainage and influencing the richness and minerality of the wines."
                ],
                keyWineStyles: "Alsace is famous for its aromatic white wines, particularly from Riesling, Gewürztraminer, Pinot Gris, and Muscat. The region also produces excellent Crémant d'Alsace (sparkling wine) and some red wines from Pinot Noir. Alsatian wines are known for their purity, expressive fruit, and mineral-driven character.",
                topProducers: [
                    "Domaine Zind-Humbrecht",
                    "Trimbach",
                    "Hugel & Fils",
                    "Domaine Weinbach",
                    "Domaine Ostertag",
                    "Josmeyer"
                ],
                imageName: "alsace_image",
                iconNames: ["grape", "mountain"]
            ),
            
            Region(
                name: "Languedoc-Roussillon",
                details: "Languedoc-Roussillon, located in the southern part of France along the Mediterranean coast, is known for its diverse range of wines and its vast vineyard area. The region is celebrated for its innovative winemaking and a variety of wine styles, from robust reds to crisp whites and rosés.",
                subregions: [
                    "Languedoc: The larger part of the region, known for its versatile wine production including appellations like Corbières, Minervois, and Pic Saint-Loup.\n",
                    "Roussillon: Located to the south, near the Spanish border, famous for its powerful red wines and sweet fortified wines from appellations such as Maury and Banyuls."
                ],
                climate: "Mediterranean climate with hot, dry summers and mild, wet winters. The region benefits from ample sunshine and the cooling influence of the Mediterranean Sea, which helps to maintain acidity in the wines.",
                soil: [
                    "Languedoc: A mix of soils including limestone, clay, schist, and gravel, contributing to the complexity and variety of the wines.\n",
                    "Roussillon: Predominantly schist and granite, with some areas of clay and limestone, supporting the production of rich and concentrated wines."
                ],
                keyWineStyles: "Languedoc-Roussillon is known for its robust red wines made from Grenache, Syrah, Mourvèdre, and Carignan. The region also produces crisp and aromatic white wines from varieties like Picpoul and Marsanne, as well as refreshing rosés. In addition, Roussillon is renowned for its sweet fortified wines, known as Vins Doux Naturels.",
                topProducers: [
                    "Domaine de la Grange des Pères (Languedoc)",
                    "Mas de Daumas Gassac (Languedoc)",
                    "Château Puech-Haut (Languedoc)",
                    "Domaine Gauby (Roussillon)",
                    "Domaine Cazes (Roussillon)",
                    "Clos des Fées (Roussillon)"
                ],
                imageName: "languedoc_roussillon_image",
                iconNames: ["sun", "vineyard"]
            ),
            
            Region(
                name: "Provence",
                details: "Provence, located in the southeastern corner of France along the Mediterranean coast, is renowned for its picturesque landscapes and its production of world-class rosé wines. This historic wine region is also known for its vibrant and aromatic red and white wines, reflecting the sunny and warm climate of the area.",
                subregions: [
                    "Côtes de Provence: The largest appellation, known for its high-quality rosé wines, as well as red and white wines.\n",
                    "Bandol: Famous for its robust and age-worthy red wines made primarily from Mourvèdre, and also producing excellent rosé wines.\n",
                    "Cassis: Renowned for its white wines made from Marsanne, Clairette, and other local varieties, offering freshness and minerality.\n",
                    "Bellet: A small appellation near Nice, producing distinctive red, white, and rosé wines from indigenous and international grape varieties.\n",
                    "Coteaux d'Aix-en-Provence: Known for its aromatic and fruity rosé wines, as well as structured red wines."
                ],
                climate: "Mediterranean climate characterized by hot, dry summers and mild, wet winters. The region benefits from abundant sunshine and the cooling influence of the Mistral wind, which helps to keep the vineyards healthy and free from disease.",
                soil: [
                    "Côtes de Provence: A diverse range of soils including limestone, clay, and schist, contributing to the complexity of the wines.\n",
                    "Bandol: Predominantly limestone and marl, providing excellent drainage and ideal conditions for Mourvèdre.\n",
                    "Cassis: Limestone and clay soils, enhancing the freshness and minerality of the white wines.\n",
                    "Bellet: A mix of limestone, sand, and pebbles, supporting the production of unique and expressive wines.\n",
                    "Coteaux d'Aix-en-Provence: Limestone and clay soils, ideal for the cultivation of both red and white grape varieties."
                ],
                keyWineStyles: "Provence is best known for its rosé wines, which are typically dry, crisp, and aromatic, with flavors of red berries, citrus, and herbs. The region also produces elegant red wines with notes of dark fruit and spices, as well as fresh and mineral-driven white wines.",
                topProducers: [
                    "Château d'Esclans (Côtes de Provence)",
                    "Domaine Tempier (Bandol)",
                    "Clos Sainte Magdeleine (Cassis)",
                    "Château de Bellet (Bellet)",
                    "Domaine de la Brillane (Coteaux d'Aix-en-Provence)",
                    "Domaine Ott (Côtes de Provence)"
                ],
                imageName: "provence_image",
                iconNames: ["sun", "bottle"]
            ),
            
            Region(
                name: "Jura",
                details: "The Jura region, located in eastern France between Burgundy and Switzerland, is known for its unique and diverse range of wines, including the famous Vin Jaune and Vin de Paille. This small but distinctive wine region is celebrated for its traditional winemaking techniques and its focus on indigenous grape varieties.",
                subregions: [
                    "Arbois: The most renowned appellation, producing a wide variety of wines including red, white, rosé, and sparkling, as well as the famous Vin Jaune.\n",
                    "Château-Chalon: Exclusively dedicated to the production of Vin Jaune, made from the Savagnin grape and aged under a veil of yeast.\n",
                    "L'Étoile: Known for its white wines made from Chardonnay and Savagnin, as well as Vin Jaune and Vin de Paille.\n",
                    "Côtes du Jura: The largest appellation, producing all styles of Jura wines, including red, white, rosé, sparkling, Vin Jaune, and Vin de Paille."
                ],
                climate: "Continental climate with cold winters and warm summers. The region's elevation and proximity to the Jura Mountains provide a unique microclimate that influences the acidity and freshness of the wines.",
                soil: [
                    "Arbois: Predominantly limestone and marl soils, contributing to the minerality and structure of the wines.\n",
                    "Château-Chalon: Limestone and marl, ideal for the production of the oxidative Vin Jaune.\n",
                    "L'Étoile: Limestone and marl, providing excellent drainage and enhancing the freshness and minerality of the wines.\n",
                    "Côtes du Jura: A mix of limestone, marl, and clay, supporting the cultivation of a variety of grape varieties and wine styles."
                ],
                keyWineStyles: "Jura is famous for its unique wines, including the oxidative Vin Jaune made from Savagnin and aged under a layer of yeast, and the sweet Vin de Paille made from dried grapes. The region also produces fresh and aromatic white wines from Chardonnay and Savagnin, elegant red wines from Poulsard, Trousseau, and Pinot Noir, as well as sparkling Crémant du Jura.",
                topProducers: [
                    "Domaine Tissot (Arbois)",
                    "Domaine Berthet-Bondet (Château-Chalon)",
                    "Domaine de Montbourgeau (L'Étoile)",
                    "Domaine Rolet (Côtes du Jura)",
                    "Jean Bourdy (Arbois)",
                    "Domaine Pignier (Côtes du Jura)"
                ],
                imageName: "jura_image",
                iconNames: ["mountain", "barrel"]
            ),
            
            Region(
                name: "Savoie",
                details: "Savoie, located in the French Alps near the Swiss border, is known for its crisp and refreshing white wines. The region's high-altitude vineyards and cool climate contribute to the distinctive character of its wines, often made from unique grape varieties not found elsewhere.",
                subregions: [
                    "Chignin: Known for its white wines made from the Jacquère grape, offering light and floral characteristics.\n",
                    "Apremont: Famous for its Jacquère wines, which are fresh and mineral-driven.\n",
                    "Abymes: Similar to Apremont, producing crisp and lively Jacquère wines.\n",
                    "Roussette de Savoie: Producing white wines from the Altesse grape, known for their aromatic intensity and aging potential.\n",
                    "Arbin: Known for its red wines made from the Mondeuse grape, offering spicy and dark fruit flavors."
                ],
                climate: "Cool alpine climate with significant diurnal temperature variation, contributing to the high acidity and freshness of the wines. The region experiences cold winters and warm summers.",
                soil: [
                    "Chignin: Limestone and clay soils, ideal for growing Jacquère and producing fresh, aromatic wines.\n",
                    "Apremont: Limestone and marl soils, contributing to the minerality of the wines.\n",
                    "Abymes: Similar to Apremont, with limestone and marl soils enhancing the crispness of the wines.\n",
                    "Roussette de Savoie: Limestone and clay soils, supporting the aromatic complexity of Altesse wines.\n",
                    "Arbin: Predominantly limestone and clay, perfect for cultivating the Mondeuse grape."
                ],
                keyWineStyles: "Savoie is renowned for its white wines, particularly those made from Jacquère, which are light, crisp, and floral. The region also produces notable wines from Altesse and Mondeuse, as well as sparkling wines and a small amount of rosé.",
                topProducers: [
                    "Domaine Belluard",
                    "Domaine Dupasquier",
                    "Domaine Jean Perrier et Fils",
                    "Domaine Adrien Berlioz",
                    "Domaine des Ardoisières",
                    "Domaine A. & M. Quenard"
                ],
                imageName: "savoie_image",
                iconNames: ["mountain", "snowflake"]
            ),
            
            Region(
                name: "Corsica",
                details: "Corsica, the Mediterranean island known as the 'Île de Beauté,' offers a diverse range of wines that reflect its unique terroir and cultural heritage. The island's mountainous terrain and coastal influence create ideal conditions for viticulture, with wines that are both distinctive and expressive.",
                subregions: [
                    "Patrimonio: Known for its robust red wines made from Nielluccio, as well as fresh whites from Vermentino.\n",
                    "Ajaccio: Producing aromatic red wines from Sciaccarellu and white wines from Vermentino.\n",
                    "Calvi: Offers a variety of wines, including reds from Nielluccio and Sciaccarellu, and whites from Vermentino.\n",
                    "Sartène: Known for its full-bodied red wines and crisp white wines, with a focus on indigenous grape varieties.\n",
                    "Vin de Corse: The island-wide appellation producing a diverse range of red, white, and rosé wines."
                ],
                climate: "Mediterranean climate with hot, dry summers and mild, wet winters. The island's diverse topography, including coastal and mountainous areas, contributes to the wide range of microclimates.",
                soil: [
                    "Patrimonio: Limestone and clay soils, ideal for the cultivation of Nielluccio and Vermentino.\n",
                    "Ajaccio: Granite and schist soils, supporting the aromatic and structured wines from Sciaccarellu and Vermentino.\n",
                    "Calvi: A mix of granite and limestone soils, contributing to the complexity of the wines.\n",
                    "Sartène: Predominantly granite soils, enhancing the richness and depth of the wines.\n",
                    "Vin de Corse: Varied soils including granite, limestone, and schist, reflecting the diverse terroirs of the island."
                ],
                keyWineStyles: "Corsica is known for its robust and aromatic red wines made from Nielluccio and Sciaccarellu, as well as its fresh and lively white wines from Vermentino. The island also produces excellent rosé wines, which are a key part of its wine culture.",
                topProducers: [
                    "Domaine Comte Abbatucci",
                    "Domaine Arena",
                    "Clos Canarelli",
                    "Domaine de Torraccia",
                    "Yves Leccia",
                    "Domaine Vico"
                ],
                imageName: "corsica_image",
                iconNames: ["island", "grape"]
            ),
            
]),

            
            //ITALY
            
Country(name: "Italy", regions: [
    Region(
    name: "Tuscany",
    details: "Tuscany, located in central Italy, is one of the country's most famous and picturesque wine regions. It is renowned for its rolling hills, historical vineyards, and the production of some of Italy's most prestigious wines, including Chianti, Brunello di Montalcino, and Vino Nobile di Montepulciano.",
    subregions: [
        "Chianti: The largest and most famous subregion, known for its Sangiovese-based wines with bright acidity and cherry flavors.\n",
        "Brunello di Montalcino: Renowned for its powerful and age-worthy red wines made from 100% Sangiovese (locally known as Brunello).\n",
        "Vino Nobile di Montepulciano: Produces elegant and well-structured wines from the Prugnolo Gentile clone of Sangiovese.\n",
        "Bolgheri: Famous for its Super Tuscan wines, often made from international grape varieties like Cabernet Sauvignon and Merlot.\n",
        "Maremma: A coastal area known for its diverse wine production, including both red and white wines from various grape varieties."
    ],
    climate: "Mediterranean climate with hot summers and mild winters. The region's varied topography, including coastal areas and inland hills, creates a range of microclimates that are ideal for viticulture.",
    soil: [
        "Chianti: A mix of galestro (schist-based) and alberese (limestone-based) soils, providing ideal conditions for Sangiovese.\n",
        "Brunello di Montalcino: Predominantly clay and limestone soils, contributing to the structure and longevity of the wines.\n",
        "Vino Nobile di Montepulciano: Similar to Brunello with clay and limestone soils, supporting the production of well-structured wines.\n",
        "Bolgheri: Gravelly and sandy soils, ideal for Bordeaux varieties like Cabernet Sauvignon and Merlot.\n",
        "Maremma: A diverse range of soils including clay, sand, and limestone, supporting the production of various wine styles."
    ],
    keyWineStyles: "Tuscany is celebrated for its Sangiovese-based wines, which range from the bright and fruity Chianti to the powerful and age-worthy Brunello di Montalcino. The region also produces Super Tuscans, which are often blends of Sangiovese with international varieties, as well as fresh and aromatic white wines.",
    topProducers: [
        "Antinori (Chianti, Bolgheri)",
        "Biondi-Santi (Brunello di Montalcino)",
        "Avignonesi (Vino Nobile di Montepulciano)",
        "Tenuta San Guido (Bolgheri)",
        "Castello Banfi (Brunello di Montalcino)",
        "Frescobaldi (Chianti, Maremma)"
    ],
    imageName: "tuscany_image",
    iconNames: ["vineyard", "wine_glass"]
),
          Region(
    name: "Piedmont",
    details: "Piedmont, located in northwestern Italy, is renowned for its prestigious red wines, particularly those made from the Nebbiolo grape. The region is characterized by its rolling hills, rich culinary traditions, and historical vineyards. Piedmont is home to some of Italy's most iconic wines, including Barolo and Barbaresco.",
    subregions: [
        "Barolo: Known as the 'King of Wines,' Barolo is made from 100% Nebbiolo and is celebrated for its power, complexity, and aging potential. Located in the Langhe.\n",
        "Barbaresco: Often referred to as the 'Queen of Wines,' Barbaresco is also made from 100% Nebbiolo and is known for its elegance and approachability. Located in the Langhe.\n",
        "Langhe: Encompasses a variety of areas within Piedmont, producing Nebbiolo, Barbera, Dolcetto, and white wines like Arneis and Moscato.\n",
        "Roero: Produces elegant Nebbiolo wines as well as aromatic white wines from the Arneis grape.\n",
        "Monferrato: Famous for its Barbera wines, which are known for their bright acidity and cherry flavors.\n",
        "Gattinara: Produces robust and complex Nebbiolo wines that are slightly lighter than those from Langhe."
    ],
    climate: "Continental climate with hot summers and cold winters. The region benefits from significant diurnal temperature variation, which helps to maintain acidity in the wines.",
    soil: [
        "Barolo: Predominantly calcareous marl, which provides excellent drainage and contributes to the complexity of Nebbiolo.\n",
        "Barbaresco: Similar to Barolo with calcareous marl, enhancing the structure and elegance of the wines.\n",
        "Langhe: A mix of calcareous marl and clay, supporting a diverse range of grape varieties.\n",
        "Roero: Sandy soils, which enhance the aromatic qualities of both Nebbiolo and Arneis.\n",
        "Monferrato: A mix of limestone, clay, and sand, ideal for the cultivation of Barbera.\n",
        "Gattinara: Volcanic and alluvial soils, contributing to the robustness and complexity of the wines."
    ],
    keyWineStyles: "Piedmont is celebrated for its Nebbiolo-based wines, particularly Barolo and Barbaresco, which are known for their power, complexity, and aging potential. The region also produces excellent Barbera and Dolcetto wines, as well as aromatic whites from Arneis and Moscato.",
    topProducers: [
        "Gaja (Barbaresco)",
        "Giuseppe Rinaldi (Barolo)",
        "Vietti (Barolo, Barbera)",
        "Pio Cesare (Barolo, Barbaresco)",
        "Bruno Giacosa (Barbaresco)",
        "Marchesi di Barolo (Barolo)"
    ],
    imageName: "piedmont_image",
    iconNames: ["grape", "wine_bottle"]
),
    Region(
        name: "Veneto",
        details: "Veneto, located in northeastern Italy, is one of the country's most productive wine regions. It is known for its diverse range of wine styles, from the sparkling Prosecco to the rich and complex Amarone. The region's varied geography, from the Alpine foothills to the Adriatic coast, contributes to its diverse viticultural landscape.",
        subregions: [
            "Valpolicella: Famous for its robust red wines, including Amarone and Ripasso, made primarily from Corvina, Rondinella, and Molinara grapes.\n",
            "Soave: Known for its crisp and refreshing white wines made from the Garganega grape.\n",
            "Prosecco: Renowned for its sparkling wines made from the Glera grape, produced primarily in the Conegliano-Valdobbiadene area.\n",
            "Bardolino: Produces light and fruity red wines from Corvina, Rondinella, and Molinara, similar to Valpolicella but lighter in style."
        ],
        climate: "Veneto has a diverse climate influenced by its varied geography. The region experiences a mix of continental and maritime climates, with cooler temperatures in the Alpine foothills and milder, more humid conditions near the coast.",
        soil: [
            "Valpolicella: Predominantly limestone and clay, which contribute to the richness and complexity of the wines.\n",
            "Soave: Volcanic and limestone soils, enhancing the minerality and freshness of the Garganega wines.\n",
            "Prosecco: A mix of clay, sandstone, and marl, providing ideal conditions for the Glera grape.\n",
            "Bardolino: Glacial and alluvial soils, contributing to the light and fruity character of the wines."
        ],
        keyWineStyles: "Veneto is known for its diverse range of wines. Amarone della Valpolicella is a rich, dry red wine made using dried grapes, known for its intensity and complexity. Prosecco is a light, sparkling wine with fresh, fruity flavors. Soave produces crisp, mineral-driven white wines, while Valpolicella offers both light, fruity reds and more complex, robust wines.",
        topProducers: [
            "Masi (Amarone)",
            "Bertani (Amarone, Valpolicella)",
            "Pieropan (Soave)",
            "Nino Franco (Prosecco)",
            "Allegrini (Valpolicella, Amarone)",
            "Tommasi (Amarone, Valpolicella)"
        ],
        imageName: "veneto_image",
        iconNames: ["sparkle", "wine_glass"]
    ),
    Region(
        name: "Sicily",
        details: "Sicily, the largest island in the Mediterranean, is known for its rich winemaking history and diverse range of wines. The region's varied climate and volcanic soils, particularly around Mount Etna, contribute to the unique character of its wines, which include bold reds, fresh whites, and sweet dessert wines.",
        subregions: [
            "Etna: Located on the slopes of Mount Etna, known for its mineral-driven wines made from Nerello Mascalese and Carricante.\n",
            "Marsala: Famous for its fortified wines made from Grillo, Inzolia, and Catarratto grapes.\n",
            "Vittoria: Known for its Cerasuolo di Vittoria, a blend of Nero d'Avola and Frappato, offering bright fruit flavors and elegance.\n",
            "Menfi: Producing a range of wines, with a focus on indigenous grape varieties such as Nero d'Avola and Grillo."
        ],
        climate: "Mediterranean climate with hot, dry summers and mild, wet winters. The coastal areas benefit from cooling sea breezes, while the mountainous regions experience greater temperature variation.",
        soil: [
            "Etna: Volcanic soils rich in minerals, providing excellent drainage and contributing to the distinct minerality of the wines.\n",
            "Marsala: Limestone and sandy soils, ideal for the cultivation of grapes for fortified wine production.\n",
            "Vittoria: A mix of clay and sandy soils, supporting the production of both red and white wines.\n",
            "Menfi: Predominantly limestone and clay soils, conducive to the cultivation of various grape varieties."
        ],
        keyWineStyles: "Sicily is known for its bold red wines made from Nero d'Avola, elegant and mineral-driven wines from Etna, and fortified Marsala wines. The region also produces fresh and aromatic white wines from varieties like Grillo and Carricante, as well as sweet dessert wines such as Passito di Pantelleria.",
        topProducers: [
            "Planeta (various subregions)",
            "Donnafugata (various subregions)",
            "Benanti (Etna)",
            "Tasca d'Almerita (various subregions)",
            "Cos (Vittoria)",
            "Marco De Bartoli (Marsala)"
        ],
        imageName: "sicily_image",
        iconNames: ["volcano", "grape"]
    ),
    Region(
        name: "Abruzzo",
        details: "Abruzzo, located in central Italy along the Adriatic coast, is known for its robust red wines made from Montepulciano and its fresh white wines from Trebbiano. The region's mountainous terrain and proximity to the sea create ideal conditions for viticulture, resulting in wines with distinct character and quality.",
        subregions: [
            "Montepulciano d'Abruzzo: Renowned for its deeply colored and flavorful red wines made from the Montepulciano grape.\n",
            "Trebbiano d'Abruzzo: Known for its crisp and refreshing white wines made from the Trebbiano grape.\n",
            "Controguerra: Produces a variety of wines, including reds, whites, and sparkling wines, with a focus on quality and diversity.\n",
            "Cerasuolo d'Abruzzo: A unique rosé style made from Montepulciano grapes, known for its vibrant color and fruity flavors."
        ],
        climate: "Mediterranean climate with hot, dry summers and mild, wet winters. The region benefits from the cooling influence of the Adriatic Sea and the moderating effect of the Apennine Mountains.",
        soil: [
            "Montepulciano d'Abruzzo: Clay and limestone soils, ideal for producing rich and structured red wines.\n",
            "Trebbiano d'Abruzzo: A mix of clay, sand, and limestone, providing excellent conditions for the cultivation of Trebbiano.\n",
            "Controguerra: Varied soils including clay, limestone, and sand, supporting a diverse range of wine styles.\n",
            "Cerasuolo d'Abruzzo: Similar to Montepulciano d'Abruzzo with clay and limestone soils, enhancing the fruity and vibrant character of the rosé wines."
        ],
        keyWineStyles: "Abruzzo is best known for its Montepulciano d'Abruzzo, a robust red wine with dark fruit flavors and a rich, full-bodied character. The region also produces fresh and crisp white wines from Trebbiano, as well as vibrant and fruity Cerasuolo d'Abruzzo rosé wines.",
        topProducers: [
            "Emidio Pepe (Montepulciano d'Abruzzo, Trebbiano d'Abruzzo)",
            "Valentini (Trebbiano d'Abruzzo, Montepulciano d'Abruzzo)",
            "Masciarelli (Montepulciano d'Abruzzo)",
            "Zaccagnini (Montepulciano d'Abruzzo)",
            "Illuminati (Controguerra)",
            "Tiberio (Trebbiano d'Abruzzo, Montepulciano d'Abruzzo)"
        ],
        imageName: "abruzzo_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Emilia-Romagna",
        details: "Emilia-Romagna, located in northern Italy, is known for its rich culinary traditions and diverse wine production. The region spans from the Apennine Mountains to the Adriatic Sea, producing a wide range of wines, including sparkling, red, white, and sweet varieties.",
        subregions: [
            "Lambrusco: Known for its sparkling red wines made from the Lambrusco grape, which range from dry to sweet.\n",
            "Colli Piacentini: Produces a variety of wines, including Gutturnio, a red blend of Barbera and Croatina, and Ortrugo, a fresh and aromatic white wine.\n",
            "Colli Bolognesi: Famous for its Pignoletto wines, both sparkling and still, which are fresh and aromatic.\n",
            "Romagna: Known for its Sangiovese di Romagna, offering a lighter and more approachable style of Sangiovese, and Albana di Romagna, a rich and sometimes sweet white wine."
        ],
        climate: "Varied climate with Mediterranean influences near the coast and more continental conditions inland. The region experiences hot summers and cold winters, with significant diurnal temperature variation in the hilly areas.",
        soil: [
            "Lambrusco: Predominantly clay and sandy soils, which contribute to the bright and fruity character of the wines.\n",
            "Colli Piacentini: A mix of clay, limestone, and sandy soils, ideal for the diverse range of grape varieties grown in the area.\n",
            "Colli Bolognesi: Clay and limestone soils, enhancing the freshness and aromatic qualities of Pignoletto.\n",
            "Romagna: Varied soils including clay, limestone, and sand, supporting the cultivation of both red and white grape varieties.\n"
        ],
        keyWineStyles: "Emilia-Romagna is best known for its sparkling Lambrusco wines, which are fruity and effervescent. The region also produces robust reds like Gutturnio, fresh and aromatic whites like Ortrugo and Pignoletto, and unique wines like Sangiovese di Romagna and Albana di Romagna.",
        topProducers: [
            "Cleto Chiarli (Lambrusco)",
            "Medici Ermete (Lambrusco)",
            "Azienda Agricola La Stoppa (Colli Piacentini)",
            "Zanasi (Colli Bolognesi)",
            "Fattoria Zerbina (Romagna)",
            "Umberto Cesari (Romagna)"
        ],
        imageName: "emilia_romagna_image",
        iconNames: ["grape", "sparkling"]
    ),
    Region(
        name: "Lombardy",
        details: "Lombardy, located in northern Italy, is known for its high-quality sparkling wines, particularly those from Franciacorta, as well as its robust red wines and fresh whites. The region's diverse geography, from the Alpine foothills to the plains of the Po Valley, contributes to its varied wine styles.",
        subregions: [
            "Franciacorta: Renowned for its traditional method sparkling wines made from Chardonnay, Pinot Nero, and Pinot Bianco.\n",
            "Valtellina: Known for its Nebbiolo-based red wines, locally called Chiavennasca, which are elegant and age-worthy.\n",
            "Oltrepò Pavese: Produces a wide range of wines, including sparkling wines from Pinot Nero, as well as reds and whites from various grape varieties.\n",
            "Lugana: Located near Lake Garda, famous for its white wines made from the Turbiana grape, offering fresh and mineral-driven characteristics."
        ],
        climate: "Lombardy experiences a continental climate with significant variation between its subregions. The Alpine areas have cooler temperatures and more rainfall, while the plains experience hot summers and cold winters.",
        soil: [
            "Franciacorta: Predominantly calcareous and morainic soils, which provide excellent drainage and contribute to the elegance of the sparkling wines.\n",
            "Valtellina: Rocky and sandy soils, which are well-drained and ideal for cultivating Nebbiolo.\n",
            "Oltrepò Pavese: A mix of clay, limestone, and marl, supporting a diverse range of grape varieties and wine styles.\n",
            "Lugana: Clay and limestone soils, enhancing the freshness and minerality of the Turbiana wines."
        ],
        keyWineStyles: "Lombardy is best known for its Franciacorta sparkling wines, which are made using the traditional method and are often compared to Champagne. The region also produces elegant Nebbiolo wines from Valtellina, versatile wines from Oltrepò Pavese, and fresh, mineral-driven whites from Lugana.",
        topProducers: [
            "Ca' del Bosco (Franciacorta)",
            "Bellavista (Franciacorta)",
            "Nino Negri (Valtellina)",
            "Arpepe (Valtellina)",
            "Monsupello (Oltrepò Pavese)",
            "Cà dei Frati (Lugana)"
        ],
        imageName: "lombardy_image",
        iconNames: ["bubbles", "mountain"]
    ),
    Region(
        name: "Umbria",
        details: "Umbria, often called the 'Green Heart of Italy,' is a landlocked region known for its picturesque landscapes and historical towns. The region is celebrated for its robust red wines, particularly Sagrantino, as well as its crisp and aromatic white wines.",
        subregions: [
            "Montefalco: Famous for its powerful and tannic red wines made from the Sagrantino grape, and also producing Montefalco Rosso, a blend of Sangiovese, Sagrantino, and other varieties.\n",
            "Orvieto: Known for its white wines made from a blend of Grechetto, Trebbiano, and other local varieties, offering freshness and minerality.\n",
            "Torgiano: Produces both red and white wines, with Torgiano Rosso Riserva made from Sangiovese being particularly notable."
        ],
        climate: "Continental climate with hot summers and cold winters. The region's elevation and proximity to the Apennine Mountains provide a unique microclimate that influences the acidity and freshness of the wines.",
        soil: [
            "Montefalco: Predominantly clay and limestone soils, contributing to the structure and complexity of Sagrantino.\n",
            "Orvieto: Volcanic and limestone soils, enhancing the minerality and freshness of the white wines.\n",
            "Torgiano: A mix of clay, limestone, and sand, supporting the cultivation of both red and white grape varieties."
        ],
        keyWineStyles: "Umbria is best known for its robust and tannic Sagrantino di Montefalco, a powerful red wine with great aging potential. The region also produces Montefalco Rosso, a more approachable blend, and fresh, mineral-driven white wines from Orvieto.",
        topProducers: [
            "Arnaldo Caprai (Montefalco)",
            "Paolo Bea (Montefalco)",
            "Lungarotti (Torgiano)",
            "Decugnano dei Barbi (Orvieto)",
            "Castello della Sala (Orvieto)",
            "Scacciadiavoli (Montefalco)"
        ],
        imageName: "umbria_image",
        iconNames: ["vineyard", "wine_glass"]
    ),
    Region(
        name: "Friuli Venezia Giulia",
        details: "Friuli Venezia Giulia, located in northeastern Italy, is renowned for its high-quality white wines and innovative winemaking techniques. The region's diverse terroir and cultural influences from Austria and Slovenia contribute to its unique and expressive wines.",
        subregions: [
            "Collio: Known for its exceptional white wines made from Friulano, Sauvignon Blanc, and Pinot Grigio, offering richness and complexity.\n",
            "Colli Orientali del Friuli: Produces a wide range of wines, including red wines from Refosco and Schioppettino, and white wines from Friulano and Ribolla Gialla.\n",
            "Grave del Friuli: Known for its versatile wines, including crisp whites and structured reds, grown in the gravelly soils of the region.\n",
            "Carso: A small and unique area near the Slovenian border, producing distinctive wines from Vitovska and Terrano."
        ],
        climate: "Friuli Venezia Giulia experiences a diverse climate with Alpine influences in the north and Mediterranean influences near the coast. The region benefits from significant diurnal temperature variation, which helps to maintain acidity in the wines.",
        soil: [
            "Collio: Predominantly marl and sandstone soils, known locally as 'ponca,' contributing to the richness and complexity of the wines.\n",
            "Colli Orientali del Friuli: A mix of marl, sandstone, and clay soils, supporting the cultivation of both red and white grape varieties.\n",
            "Grave del Friuli: Gravelly and alluvial soils, ideal for producing fresh and aromatic wines.\n",
            "Carso: Limestone and red clay soils, enhancing the minerality and distinctiveness of the local grape varieties."
        ],
        keyWineStyles: "Friuli Venezia Giulia is best known for its white wines, particularly those from Collio and Colli Orientali del Friuli, which are rich, complex, and aromatic. The region also produces notable red wines from indigenous varieties like Refosco and Schioppettino, as well as unique wines from Carso.",
        topProducers: [
            "Jermann (Collio)",
            "Livio Felluga (Colli Orientali del Friuli)",
            "Radikon (Collio)",
            "Vie di Romans (Grave del Friuli)",
            "Miani (Colli Orientali del Friuli)",
            "Skerk (Carso)"
        ],
        imageName: "friuli_venezia_giulia_image",
        iconNames: ["hills", "wine_bottle"]
    ),
    Region(
        name: "Campania",
        details: "Campania, located in southern Italy, is known for its ancient winemaking traditions and diverse range of wines. The region's volcanic soils, particularly around Mount Vesuvius, contribute to the unique character of its wines, which include robust reds, fresh whites, and notable sparkling wines.",
        subregions: [
            "Taurasi: Known for its powerful and age-worthy red wines made from the Aglianico grape.\n",
            "Greco di Tufo: Famous for its aromatic and mineral-driven white wines made from the Greco grape.\n",
            "Fiano di Avellino: Renowned for its complex and aromatic white wines made from the Fiano grape.\n",
            "Vesuvio: Produces a variety of wines, including Lacryma Christi del Vesuvio, made from a blend of indigenous grape varieties."
        ],
        climate: "Mediterranean climate with hot, dry summers and mild, wet winters. The coastal areas benefit from cooling sea breezes, while the inland areas experience greater temperature variation.",
        soil: [
            "Taurasi: Predominantly volcanic soils rich in minerals, providing excellent drainage and contributing to the structure and complexity of Aglianico.\n",
            "Greco di Tufo: Volcanic and limestone soils, enhancing the minerality and freshness of the Greco wines.\n",
            "Fiano di Avellino: Volcanic and clay soils, contributing to the aromatic intensity and complexity of Fiano wines.\n",
            "Vesuvio: Volcanic soils, ideal for cultivating a variety of grape varieties and producing distinctive wines."
        ],
        keyWineStyles: "Campania is known for its robust red wines made from Aglianico, particularly Taurasi, which is often called the 'Barolo of the South.' The region also produces aromatic and mineral-driven white wines from Greco and Fiano, as well as unique wines from the Vesuvio area.",
        topProducers: [
            "Mastroberardino (Taurasi, Greco di Tufo, Fiano di Avellino)",
            "Feudi di San Gregorio (Taurasi, Greco di Tufo, Fiano di Avellino)",
            "Terredora di Paolo (Taurasi, Greco di Tufo, Fiano di Avellino)",
            "Villa Matilde (Falerno del Massico)",
            "Cantine Antonio Caggiano (Taurasi)",
            "Marisa Cuomo (Costa d'Amalfi)"
        ],
        imageName: "campania_image",
        iconNames: ["volcano", "wine_glass"]
    ),
    Region(
        name: "Trentino-Alto Adige",
        details: "Trentino-Alto Adige, located in northern Italy, is known for its high-quality wines and stunning alpine scenery. The region is divided into two distinct areas: Trentino, which produces a variety of wines including sparkling wines, and Alto Adige (South Tyrol), which is renowned for its aromatic white wines and elegant red wines.",
        subregions: [
            "Trentino: Known for its sparkling wines made using the traditional method, as well as red and white wines from a variety of grape varieties.\n",
            "Alto Adige (South Tyrol): Renowned for its aromatic white wines from grapes like Gewürztraminer, Sauvignon Blanc, and Pinot Grigio, as well as elegant red wines from Lagrein and Schiava."
        ],
        climate: "Trentino-Alto Adige experiences a diverse climate with Alpine influences in the north and Mediterranean influences in the lower valleys. The region benefits from significant diurnal temperature variation, which helps to maintain acidity and aromatic intensity in the wines.",
        soil: [
            "Trentino: Predominantly alluvial soils with a mix of clay, sand, and gravel, ideal for producing a variety of wine styles.\n",
            "Alto Adige: A mix of volcanic, limestone, and porphyry soils, contributing to the complexity and minerality of the wines."
        ],
        keyWineStyles: "Trentino-Alto Adige is best known for its aromatic white wines, particularly those from Alto Adige, which are fresh, crisp, and intensely aromatic. The region also produces notable red wines from indigenous varieties like Lagrein and Schiava, as well as high-quality sparkling wines from Trentino.",
        topProducers: [
            "Ferrari (Trentino, sparkling wines)",
            "Elena Walch (Alto Adige)",
            "Alois Lageder (Alto Adige)",
            "Cantina Terlano (Alto Adige)",
            "Foradori (Trentino)",
            "J. Hofstätter (Alto Adige)"
        ],
        imageName: "trentino_alto_adige_image",
        iconNames: ["mountain", "wine_bottle"]
    ),
    Region(
        name: "Puglia",
        details: "Puglia, located in the southeastern part of Italy, is known for its warm climate and fertile soils, which produce robust and fruit-forward wines. The region is one of Italy's largest wine producers and is particularly renowned for its red wines made from indigenous grape varieties.",
        subregions: [
            "Salice Salentino: Known for its full-bodied red wines made from the Negroamaro grape.\n",
            "Primitivo di Manduria: Famous for its powerful and jammy red wines made from the Primitivo grape, known as Zinfandel in the US.\n",
            "Castel del Monte: Produces a range of wines, including robust reds from the Nero di Troia grape and fresh whites from Bombino Bianco.\n",
            "Gioia del Colle: Another notable area for Primitivo, producing wines with great intensity and complexity."
        ],
        climate: "Mediterranean climate with hot, dry summers and mild winters. The region benefits from cooling sea breezes from both the Adriatic and Ionian Seas, which help to moderate the temperatures and maintain acidity in the wines.",
        soil: [
            "Salice Salentino: Predominantly clay and limestone soils, which contribute to the structure and complexity of Negroamaro wines.\n",
            "Primitivo di Manduria: Sandy and clay soils, ideal for producing rich and intense Primitivo wines.\n",
            "Castel del Monte: A mix of limestone and clay soils, supporting the cultivation of both red and white grape varieties.\n",
            "Gioia del Colle: Limestone and clay soils, enhancing the richness and depth of Primitivo wines."
        ],
        keyWineStyles: "Puglia is best known for its robust and fruit-forward red wines made from indigenous grape varieties like Primitivo and Negroamaro. The region also produces fresh and aromatic white wines, as well as rosé wines with vibrant fruit flavors.",
        topProducers: [
            "Tormaresca (various subregions)",
            "Feudi di San Marzano (Primitivo di Manduria)",
            "Leone de Castris (Salice Salentino)",
            "Rivera (Castel del Monte)",
            "Cantine Due Palme (Salice Salentino)",
            "Masseria Li Veli (Salice Salentino)"
        ],
        imageName: "puglia_image",
        iconNames: ["sun", "grape"]
    ),
    Region(
        name: "Sardinia",
        details: "Sardinia, an island in the Mediterranean Sea, is known for its unique and diverse wines that reflect the island's distinct terroir and cultural influences. The region produces a wide range of wines, from robust reds and fresh whites to distinctive dessert wines.",
        subregions: [
            "Cannonau di Sardegna: Known for its robust and spicy red wines made from the Cannonau grape, which is believed to be the same as Grenache.\n",
            "Vermentino di Gallura: Famous for its crisp and aromatic white wines made from the Vermentino grape, particularly from the Gallura area.\n",
            "Carignano del Sulcis: Produces rich and full-bodied red wines made from the Carignano grape, known as Carignan in France.\n",
            "Vernaccia di Oristano: Known for its unique and oxidative dessert wines made from the Vernaccia grape."
        ],
        climate: "Mediterranean climate with hot, dry summers and mild, wet winters. The island benefits from cooling sea breezes, which help to moderate the temperatures and maintain acidity in the wines.",
        soil: [
            "Cannonau di Sardegna: Predominantly granite and sandy soils, contributing to the richness and spiciness of Cannonau wines.\n",
            "Vermentino di Gallura: Granite and limestone soils, enhancing the freshness and minerality of Vermentino wines.\n",
            "Carignano del Sulcis: Sandy and clay soils, ideal for producing rich and concentrated Carignano wines.\n",
            "Vernaccia di Oristano: Limestone and clay soils, supporting the production of unique and oxidative dessert wines."
        ],
        keyWineStyles: "Sardinia is best known for its robust red wines made from Cannonau and Carignano, as well as its crisp and aromatic white wines from Vermentino. The region also produces distinctive dessert wines, such as Vernaccia di Oristano, which are known for their oxidative character.",
        topProducers: [
            "Argiolas (Cannonau di Sardegna, Vermentino di Gallura)",
            "Sella & Mosca (various subregions)",
            "Cantina Santadi (Carignano del Sulcis)",
            "Contini (Vernaccia di Oristano)",
            "Capichera (Vermentino di Gallura)",
            "Pala (various subregions)"
        ],
        imageName: "sardinia_image",
        iconNames: ["island", "wine_bottle"]
    ),
    Region(
        name: "Liguria",
        details: "Liguria, a narrow coastal region in northwestern Italy, is known for its steep terraced vineyards and stunning Mediterranean views. The region produces a variety of wines, including crisp and aromatic whites, as well as light and fresh reds, reflecting its unique maritime climate and terroir.",
        subregions: [
            "Cinque Terre: Famous for its crisp and mineral-driven white wines made from Bosco, Albarola, and Vermentino grapes.\n",
            "Riviera Ligure di Ponente: Known for its Pigato, Vermentino, and Rossese wines, offering a range of white and red wines with distinct regional character.\n",
            "Colli di Luni: Produces aromatic white wines primarily from Vermentino, often blended with other local varieties."
        ],
        climate: "Mediterranean climate with mild, wet winters and hot, dry summers. The region benefits from cooling sea breezes, which help to maintain acidity and freshness in the wines.",
        soil: [
            "Cinque Terre: Predominantly sandy and stony soils, contributing to the minerality and freshness of the wines.\n",
            "Riviera Ligure di Ponente: A mix of sandy, clay, and limestone soils, supporting a diverse range of grape varieties.\n",
            "Colli di Luni: A combination of sandy and clay soils, enhancing the aromatic qualities of Vermentino wines."
        ],
        keyWineStyles: "Liguria is best known for its crisp and aromatic white wines, particularly those from Vermentino, Pigato, and Bosco. The region also produces light and fresh red wines from Rossese, as well as distinctive sweet wines like Sciacchetrà.",
        topProducers: [
            "Bisson (Riviera Ligure di Ponente)",
            "Cantina Cinque Terre (Cinque Terre)",
            "Lunae Bosoni (Colli di Luni)",
            "Durin (Riviera Ligure di Ponente)",
            "Punta Crena (Riviera Ligure di Ponente)",
            "Possa (Cinque Terre)"
        ],
        imageName: "liguria_image",
        iconNames: ["waves", "vineyard"]
    ),
    Region(
        name: "Molise",
        details: "Molise, a small and often overlooked region in southern Italy, is known for its rugged terrain and traditional winemaking. The region produces a variety of wines, with a focus on indigenous grape varieties and a growing reputation for quality and value.",
        subregions: [
            "Biferno: Known for its robust red and rosé wines made from Montepulciano and Aglianico grapes, as well as fresh white wines from Trebbiano and other local varieties.\n",
            "Pentro di Isernia: Produces a range of wines, including red, white, and rosé, with a focus on indigenous grape varieties and traditional winemaking methods.\n",
            "Tintilia del Molise: Celebrated for its red wines made from the Tintilia grape, an indigenous variety that produces wines with rich fruit flavors and spicy notes."
        ],
        climate: "Continental climate with hot, dry summers and cold winters. The region's elevation and proximity to the Apennine Mountains provide a unique microclimate that influences the acidity and freshness of the wines.",
        soil: [
            "Biferno: Predominantly clay and limestone soils, contributing to the structure and complexity of the wines.\n",
            "Pentro di Isernia: A mix of clay, limestone, and sandy soils, supporting the cultivation of both red and white grape varieties.\n",
            "Tintilia del Molise: Limestone and clay soils, ideal for producing rich and flavorful Tintilia wines."
        ],
        keyWineStyles: "Molise is known for its robust red wines made from Montepulciano, Aglianico, and Tintilia, as well as fresh and aromatic white wines from Trebbiano and other local varieties. The region also produces distinctive rosé wines and has a growing reputation for quality and value.",
        topProducers: [
            "Di Majo Norante (Biferno, Tintilia del Molise)",
            "Cantine Cipressi (Tintilia del Molise)",
            "Claudio Cipressi (Tintilia del Molise)",
            "Borgo di Colloredo (Biferno)",
            "Cianfagna (Tintilia del Molise)",
            "Vinica (Pentro di Isernia)"
        ],
        imageName: "molise_image",
        iconNames: ["mountains", "wine_bottle"]
    ),
    Region(
        name: "Valle d'Aosta",
        details: "Valle d'Aosta, located in the northwest corner of Italy, is the country's smallest wine region. It is known for its high-altitude vineyards and the cultivation of both indigenous and international grape varieties. The region's wines are characterized by their freshness, elegance, and distinct alpine influence.",
        subregions: [
            "Torrette: Known for its red wines made primarily from the Petit Rouge grape, offering bright fruit flavors and floral notes.\n",
            "Blanc de Morgex et de La Salle: Famous for its unique white wines made from the Prié Blanc grape, grown at some of the highest vineyard elevations in Europe.\n",
            "Arnad-Montjovet: Produces red wines made from Nebbiolo (locally called Picotendro), known for their elegance and complexity.\n",
            "Donnas: Another area producing Nebbiolo-based wines, offering a lighter and more alpine style compared to those from Piedmont."
        ],
        climate: "Continental climate with significant alpine influence, characterized by cold winters and warm summers. The high altitude and mountainous terrain result in large diurnal temperature variations, which help to maintain acidity and freshness in the wines.",
        soil: [
            "Torrette: Predominantly sandy and stony soils, contributing to the brightness and minerality of the wines.\n",
            "Blanc de Morgex et de La Salle: Rocky and sandy soils, ideal for the cultivation of Prié Blanc at high elevations.\n",
            "Arnad-Montjovet: A mix of sandy, clay, and limestone soils, enhancing the complexity and structure of Nebbiolo wines.\n",
            "Donnas: Similar to Arnad-Montjovet with a mix of sandy, clay, and limestone soils, supporting the production of elegant Nebbiolo wines."
        ],
        keyWineStyles: "Valle d'Aosta is known for its fresh and elegant wines, including red wines from Petit Rouge and Nebbiolo, and unique white wines from Prié Blanc. The region's wines are often characterized by their alpine freshness, bright acidity, and mineral notes.",
        topProducers: [
            "Cave des Onze Communes (various subregions)",
            "Les Crêtes (Blanc de Morgex et de La Salle)",
            "Grosjean (Torrette, Arnad-Montjovet)",
            "La Crotta di Vegneron (various subregions)",
            "Maison Anselmet (various subregions)",
            "Cave du Vin Blanc de Morgex et de La Salle (Blanc de Morgex et de La Salle)"
        ],
        imageName: "valle_d_aosta_image",
        iconNames: ["mountain", "grape"]
    ),
    Region(
        name: "Basilicata",
        details: "Basilicata, located in southern Italy, is a mountainous region known for its robust and age-worthy red wines, particularly those made from the Aglianico grape. The region's vineyards are often situated on volcanic soils, especially around Mount Vulture, contributing to the unique character of its wines.",
        subregions: [
            "Aglianico del Vulture: The most famous subregion, known for its powerful and structured red wines made from the Aglianico grape, often referred to as the 'Barolo of the South.\n",
            "Matera: Produces a range of wines, including reds, whites, and rosés, with a focus on indigenous grape varieties.\n",
            "Terre dell'Alta Val d'Agri: Known for its red wines made from a blend of Merlot, Cabernet Sauvignon, and other local varieties, offering a more international style."
        ],
        climate: "Continental climate with significant temperature variations between day and night, particularly in the mountainous and high-altitude areas. The region experiences hot, dry summers and cold winters.",
        soil: [
            "Aglianico del Vulture: Volcanic soils rich in minerals, providing excellent drainage and contributing to the structure and complexity of Aglianico wines.\n",
            "Matera: A mix of clay, limestone, and sandy soils, supporting the cultivation of various grape varieties.\n",
            "Terre dell'Alta Val d'Agri: Predominantly clay and limestone soils, ideal for producing structured and aromatic red wines."
        ],
        keyWineStyles: "Basilicata is best known for its Aglianico del Vulture, a robust and tannic red wine with great aging potential. The region also produces a variety of other wines, including fresh and aromatic whites and structured reds from international varieties.",
        topProducers: [
            "Elena Fucci (Aglianico del Vulture)",
            "Cantine del Notaio (Aglianico del Vulture)",
            "Paternoster (Aglianico del Vulture)",
            "D'Angelo (Aglianico del Vulture)",
            "Terre degli Svevi (Aglianico del Vulture)",
            "Bisceglia (Aglianico del Vulture, Terre dell'Alta Val d'Agri)"
        ],
        imageName: "basilicata_image",
        iconNames: ["volcano", "wine_bottle"]
    ),
    Region(
        name: "Calabria",
        details: "Calabria, located at the 'toe' of Italy's boot, is a region with ancient winemaking traditions and a diverse range of wines. The region is known for its indigenous grape varieties and the production of robust red wines, as well as fresh and aromatic whites. The mountainous terrain and coastal influence create a unique terroir that contributes to the distinctive character of Calabrian wines.",
        subregions: [
            "Ciro: The most famous subregion, known for its robust red wines made from the Gaglioppo grape, as well as fresh white wines from Greco Bianco.\n",
            "Greco di Bianco: Renowned for its sweet dessert wines made from the Greco Bianco grape, offering rich and complex flavors.\n",
            "Melissa: Produces a variety of wines, including red, white, and rosé, with a focus on indigenous grape varieties like Gaglioppo and Greco Bianco.\n",
            "Lamezia: Known for its diverse wine production, including reds from Gaglioppo and whites from Greco Bianco and Malvasia."
        ],
        climate: "Mediterranean climate with hot, dry summers and mild, wet winters. The region benefits from the cooling influence of the Tyrrhenian and Ionian Seas, which helps to maintain acidity and freshness in the wines.",
        soil: [
            "Ciro: Predominantly clay and limestone soils, contributing to the structure and complexity of Gaglioppo wines.\n",
            "Greco di Bianco: A mix of clay and sandy soils, ideal for producing rich and aromatic dessert wines.\n",
            "Melissa: Clay and limestone soils, supporting the cultivation of both red and white grape varieties.\n",
            "Lamezia: A combination of clay, limestone, and sand, providing diverse growing conditions for a variety of grape varieties."
        ],
        keyWineStyles: "Calabria is best known for its robust red wines made from the Gaglioppo grape, particularly those from Ciro. The region also produces fresh and aromatic white wines from Greco Bianco, as well as unique sweet wines like Greco di Bianco. Calabrian wines are characterized by their rich flavors, bright acidity, and distinctive regional character.",
        topProducers: [
            "Librandi (Ciro, various subregions)",
            "Ippolito 1845 (Ciro)",
            "Statti (Lamezia)",
            "Cantine Viola (Greco di Bianco)",
            "Odoardi (Lamezia)",
            "Tenuta del Conte (Ciro)"
        ],
        imageName: "calabria_image",
        iconNames: ["sun", "wine_glass"]
    ),
                    
]),

//SPAIN

Country(name: "Spain", regions: [
    Region(
        name: "Rioja",
        details: "Rioja is Spain's most famous wine region, located in the northern part of the country. It is renowned for its high-quality red wines made primarily from the Tempranillo grape, often blended with Garnacha, Mazuelo, and Graciano. Rioja is divided into three subregions: Rioja Alta, Rioja Alavesa, and Rioja Oriental (formerly Rioja Baja), each contributing to the diverse styles of Rioja wines.",
        subregions: [
            "Rioja Alta: Known for producing elegant and age-worthy wines with high acidity and moderate alcohol levels. The higher altitude and cooler climate contribute to the refined character of these wines.\n",
            "Rioja Alavesa: Produces some of the finest wines in the region, characterized by their full-bodied nature and excellent aging potential. The limestone-rich soils and Atlantic influence play a significant role in the quality of the wines.\n",
            "Rioja Oriental: The warmest of the three subregions, producing wines with higher alcohol content and a riper fruit profile. This area is more influenced by Mediterranean climate conditions."
        ],
        climate: "Rioja experiences a combination of Atlantic and Mediterranean climate influences. Rioja Alta and Rioja Alavesa have cooler, wetter climates due to the Atlantic influence, while Rioja Oriental is warmer and drier with more Mediterranean characteristics. This climatic diversity allows for the production of a wide range of wine styles.",
        soil: [
            "Rioja Alta: Predominantly clay and limestone soils, contributing to the structure and aging potential of the wines.\n",
            "Rioja Alavesa: Limestone-rich soils that enhance the minerality and elegance of the wines.\n",
            "Rioja Oriental: A mix of alluvial, clay, and limestone soils, supporting the production of robust and fruit-forward wines."
        ],
        keyWineStyles: "Rioja is best known for its red wines, which range from youthful, fruity styles to complex, aged wines with rich flavors and aromas. Crianza, Reserva, and Gran Reserva are the key classifications, indicating increasing levels of aging and complexity. The region also produces excellent white and rosé wines, though in smaller quantities.",
        topProducers: [
            "Marqués de Riscal (Rioja Alavesa)",
            "Marqués de Murrieta (Rioja Alta)",
            "Bodegas Muga (Rioja Alta)",
            "La Rioja Alta, S.A. (Rioja Alta)",
            "Bodegas Faustino (Rioja Alavesa)",
            "Bodegas Ysios (Rioja Alavesa)"
        ],
        imageName: "rioja_image",
        iconNames: ["grapes", "wine_bottle"]
    ),
    Region(
        name: "Ribera del Duero",
        details: "Ribera del Duero, located along the Duero River in northern Spain, is a prestigious wine region known for its powerful and complex red wines. The region's high altitude, continental climate, and unique terroir contribute to the distinctive character of its wines. Tempranillo, locally known as Tinto Fino or Tinta del País, is the dominant grape variety, often producing wines with deep color, robust structure, and rich flavors.",
        subregions: [
            "Burgos: The heart of Ribera del Duero, known for producing some of the region's finest wines. The vineyards are situated at high altitudes, contributing to the wines' freshness and complexity.\n",
            "Valladolid: Produces a diverse range of wines, with a mix of traditional and modern winemaking techniques. The soils here vary, adding to the complexity of the wines.\n",
            "Soria: A lesser-known subregion with a growing reputation for high-quality wines. The cooler climate and varied soils provide unique characteristics to the wines."
        ],
        climate: "Ribera del Duero has a continental climate with hot summers and cold winters. The high altitude of the vineyards (ranging from 700 to 850 meters) results in significant diurnal temperature variations, which help to maintain acidity and develop complex flavors in the grapes.",
        soil: [
            "Burgos: A mix of limestone, clay, and sandy soils, contributing to the complexity and structure of the wines.\n",
            "Valladolid: Diverse soils, including clay, limestone, and gravel, supporting a wide range of wine styles.\n",
            "Soria: Predominantly clay and limestone soils, ideal for producing fresh and aromatic wines."
        ],
        keyWineStyles: "Ribera del Duero is renowned for its rich and powerful red wines, predominantly made from Tempranillo. These wines are known for their deep color, firm tannins, and complex flavors of dark fruit, spice, and earth. Crianza, Reserva, and Gran Reserva classifications indicate the aging and complexity of the wines. The region also produces some rosé and white wines, though in smaller quantities.",
        topProducers: [
            "Vega Sicilia (Burgos)",
            "Dominio de Pingus (Burgos)",
            "Bodegas Emilio Moro (Valladolid)",
            "Aalto (Burgos)",
            "Pago de Carraovejas (Burgos)",
            "Bodegas Arzuaga Navarro (Valladolid)"
        ],
        imageName: "ribera_del_duero_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    
    Region(
    name: "Priorat",
    details: "Priorat is a prestigious wine region located in the Catalonia region of northeastern Spain. Known for its dramatic, steep vineyards and unique slate soils, Priorat produces some of Spain's most powerful and complex red wines. The region's wines are primarily made from Garnacha (Grenache) and Cariñena (Carignan), often blended with international varieties such as Cabernet Sauvignon, Syrah, and Merlot.",
    subregions: [
        "Gratallops: The heart of Priorat, known for producing some of the region's most iconic wines. The steep, terraced vineyards and slate soils contribute to the intense and structured wines.\n",
        "Porrera: Renowned for its old-vine Garnacha and Cariñena, producing rich and concentrated wines with great aging potential.\n",
        "Scala Dei: One of the oldest winemaking areas in Priorat, with a history dating back to the 12th century. The wines here are known for their elegance and minerality."
    ],
    climate: "Priorat has a Mediterranean climate with hot, dry summers and mild, wet winters. The region's high elevation and rugged terrain create significant diurnal temperature variations, which help to maintain acidity and develop complex flavors in the grapes.",
    soil: [
        "Gratallops: The famous 'llicorella' slate soils, which are rich in minerals and contribute to the intense flavors and structure of the wines.\n",
        "Porrera: Predominantly slate soils, ideal for producing concentrated and age-worthy wines.\n",
        "Scala Dei: A mix of slate and limestone soils, adding to the elegance and minerality of the wines."
    ],
    keyWineStyles: "Priorat is best known for its robust and full-bodied red wines, characterized by their deep color, firm tannins, and complex flavors of dark fruit, spice, and mineral notes. The region also produces some white and rosé wines, though in smaller quantities.",
    topProducers: [
        "Alvaro Palacios (Gratallops)",
        "Clos Mogador (Gratallops)",
        "Scala Dei (Scala Dei)",
        "Vall Llach (Porrera)",
        "Clos Erasmus (Gratallops)",
        "Clos de l'Obac (Gratallops)"
    ],
    imageName: "priorat_image",
    iconNames: ["mountain", "wine_glass"]
),
    
    Region(
        name: "Jerez",
        details: "Jerez, also known as Sherry, is a renowned wine region located in the Andalusia region of southern Spain. Famous for its unique fortified wines, Jerez has a long history of winemaking dating back to ancient times. The region's wines are made primarily from the Palomino grape, with Pedro Ximénez and Moscatel used for sweeter styles. The solera aging system and unique albariza soils contribute to the distinctive character of Jerez wines.",
        subregions: [
            "Jerez de la Frontera: The heart of Sherry production, known for producing a wide range of styles, from dry Fino and Manzanilla to rich Oloroso and sweet Pedro Ximénez.\n",
            "Sanlúcar de Barrameda: Renowned for its coastal influence and the production of Manzanilla Sherry, known for its light, saline character.\n",
            "El Puerto de Santa María: Produces a variety of Sherry styles, benefiting from the maritime influence that enhances the freshness and complexity of the wines."
        ],
        climate: "Jerez has a Mediterranean climate with hot, dry summers and mild, wet winters. The region's proximity to the Atlantic Ocean provides a cooling influence, which helps to maintain acidity and freshness in the wines.",
        soil: [
            "Jerez de la Frontera: Predominantly albariza soils, which are chalky and high in calcium carbonate, ideal for the Palomino grape and essential for Sherry production.\n",
            "Sanlúcar de Barrameda: Albariza soils, with some areas having sandy and clay soils, contributing to the unique character of Manzanilla Sherry.\n",
            "El Puerto de Santa María: Albariza soils, with additional influences from sandy coastal soils, enhancing the complexity of the wines."
        ],
        keyWineStyles: "Jerez is famous for its fortified wines, including dry styles like Fino and Manzanilla, aged under a layer of flor yeast, and richer styles like Amontillado, Oloroso, and Palo Cortado, which develop through oxidative aging. Sweet Sherries like Pedro Ximénez and Moscatel are made from sun-dried grapes and offer intense sweetness and rich flavors.",
        topProducers: [
            "González Byass (Jerez de la Frontera)",
            "Bodegas Lustau (Jerez de la Frontera)",
            "Hidalgo La Gitana (Sanlúcar de Barrameda)",
            "Bodegas Tradición (Jerez de la Frontera)",
            "Barbadillo (Sanlúcar de Barrameda)",
            "Fernando de Castilla (Jerez de la Frontera)"
        ],
        imageName: "jerez_image",
        iconNames: ["sun", "wine_glass"]
    ),
    Region(
        name: "Rías Baixas",
        details: "Rías Baixas is a prominent wine region located in the Galicia region of northwestern Spain. Renowned for its high-quality white wines, Rías Baixas is best known for the Albariño grape, which thrives in the region's cool, maritime climate. The wines from Rías Baixas are celebrated for their crisp acidity, aromatic intensity, and vibrant fruit flavors.",
        subregions: [
            "Val do Salnés: The largest and most important subregion, known for producing the most classic and pure expressions of Albariño. The proximity to the Atlantic Ocean provides a strong maritime influence.\n",
            "Condado do Tea: Located further inland, this subregion produces slightly fuller and riper styles of Albariño due to the warmer climate and diverse soil types.\n",
            "O Rosal: Situated along the Miño River, O Rosal is known for producing elegant and aromatic Albariño, often blended with other indigenous varieties such as Loureira and Treixadura."
        ],
        climate: "Rías Baixas has a cool, maritime climate with high rainfall and moderate temperatures throughout the year. The proximity to the Atlantic Ocean provides a cooling effect, which helps to maintain acidity and freshness in the wines.",
        soil: [
            "Val do Salnés: Predominantly granite-based soils with good drainage, ideal for producing crisp and mineral-driven Albariño wines.\n",
            "Condado do Tea: A mix of granite, slate, and alluvial soils, contributing to the fuller and riper styles of Albariño.\n",
            "O Rosal: Granite and alluvial soils, supporting the production of elegant and aromatic white wines."
        ],
        keyWineStyles: "Rías Baixas is best known for its fresh and aromatic white wines made from the Albariño grape. These wines are characterized by their bright acidity, vibrant fruit flavors (such as citrus, green apple, and peach), and mineral notes. The region also produces smaller quantities of other white varieties and some light red wines.",
        topProducers: [
            "Bodegas Martin Codax (Val do Salnés)",
            "Pazo de Señorans (Val do Salnés)",
            "Terras Gauda (O Rosal)",
            "Albariño de Fefiñanes (Val do Salnés)",
            "Mar de Frades (Val do Salnés)",
            "Adegas Valmiñor (O Rosal)"
        ],
        imageName: "rias_baixas_image",
        iconNames: ["ocean", "wine_glass"]
    ),
    Region(
        name: "Penedès",
        details: "Penedès is a diverse and dynamic wine region located in Catalonia, northeastern Spain. Known for its production of both still and sparkling wines, Penedès is the heart of Cava production, Spain's renowned sparkling wine. The region benefits from a varied climate and a range of grape varieties, producing wines with a broad spectrum of styles and flavors.",
        subregions: [
            "Alt Penedès: The highest and coolest part of the region, known for producing high-quality white wines and Cava. The vineyards are situated at higher elevations, which helps to maintain acidity and freshness.\n",
            "Medio Penedès: The central part of the region, producing a wide range of wines, including robust reds from indigenous and international grape varieties.\n",
            "Baix Penedès: The warmest subregion, closer to the Mediterranean Sea, known for producing fuller-bodied red wines and some unique white wines."
        ],
        climate: "Penedès has a Mediterranean climate with warm, dry summers and mild, wet winters. The region's diverse topography, ranging from coastal plains to mountainous areas, creates microclimates that are ideal for a variety of grape varieties and wine styles.",
        soil: [
            "Alt Penedès: Predominantly limestone and clay soils, contributing to the acidity and minerality of the wines.\n",
            "Medio Penedès: A mix of limestone, clay, and sandy soils, supporting the production of diverse wine styles.\n",
            "Baix Penedès: Alluvial and clay soils, ideal for producing fuller-bodied and rich red wines."
        ],
        keyWineStyles: "Penedès is renowned for its sparkling wines (Cava), made primarily from indigenous grape varieties such as Macabeo, Xarel-lo, and Parellada. The region also produces a wide range of still wines, including crisp whites, aromatic rosés, and robust reds from both indigenous and international grape varieties. Penedès wines are known for their versatility and quality.",
        topProducers: [
            "Codorníu (Alt Penedès)",
            "Freixenet (Alt Penedès)",
            "Gramona (Alt Penedès)",
            "Raventós i Blanc (Alt Penedès)",
            "Albet i Noya (Medio Penedès)",
            "Torres (Medio Penedès)"
        ],
        imageName: "penedes_image",
        iconNames: ["sparkling_wine", "grapes"]
    ),
    Region(
        name: "Valdepeñas",
        details: "Valdepeñas is a significant wine region located in the heart of Spain's Castilla-La Mancha region. Known for its historical winemaking tradition, Valdepeñas produces a variety of wines with a focus on red wines from the Tempranillo grape, locally known as Cencibel. The region's extreme continental climate and diverse soils contribute to the distinctive character of its wines.",
        subregions: [
            "Los Llanos: A subregion with extensive flatlands that produce robust and fruity red wines, primarily from Tempranillo.\n",
            "Aberturas: Known for its higher elevation vineyards that contribute to the freshness and balance of the wines."
        ],
        climate: "Valdepeñas has an extreme continental climate with hot, dry summers and cold winters. The significant temperature variations between day and night help to maintain acidity and develop complex flavors in the grapes.",
        soil: [
            "Los Llanos: Predominantly clay and limestone soils, providing good drainage and contributing to the structure of the wines.\n",
            "Aberturas: A mix of clay, limestone, and sandy soils, enhancing the freshness and complexity of the wines."
        ],
        keyWineStyles: "Valdepeñas is best known for its red wines made from Tempranillo, which range from young, fruity styles to more complex and aged wines. The region also produces white wines from varieties such as Airén and Macabeo, as well as rosé wines.",
        topProducers: [
            "Bodegas Navarro López (Los Llanos)",
            "Bodegas Arúspide (Los Llanos)",
            "Vinícola de Castilla (Los Llanos)",
            "Bodegas Fernando Castro (Aberturas)"
        ],
        imageName: "valdepenas_image",
        iconNames: ["sun", "wine_glass"]
    ),
    Region(
        name: "Navarra",
        details: "Navarra is a diverse wine region located in northern Spain, just east of the famous Rioja region. Known for its innovative winemaking and a wide range of wine styles, Navarra produces excellent reds, whites, and rosés. The region is historically associated with Garnacha for rosé wines, but Tempranillo, Cabernet Sauvignon, and Merlot are now prominent for red wines.",
        subregions: [
            "Baja Montaña: Known for its fresh and fruity rosés made from Garnacha, benefiting from the cooler climate and higher elevation.\n",
            "Tierra Estella: Produces a variety of wine styles, with a focus on high-quality reds from Tempranillo and international varieties.\n",
            "Ribera Alta: The largest subregion, known for its diverse wine production, including robust reds and aromatic whites.\n",
            "Ribera Baja: The warmest subregion, producing fuller-bodied and ripe reds, as well as rich and complex rosés.\n",
            "Valdizarbe: A small but important subregion known for its balanced and elegant wines, often blends of local and international varieties."
        ],
        climate: "Navarra has a diverse climate influenced by the Atlantic Ocean in the north and the Mediterranean Sea in the south. This creates a range of microclimates that allow for the cultivation of various grape varieties and the production of diverse wine styles.",
        soil: [
            "Baja Montaña: Predominantly clay and limestone soils, ideal for producing fresh and fruity wines.\n",
            "Tierra Estella: A mix of clay, limestone, and gravel soils, supporting the production of complex and balanced wines.\n",
            "Ribera Alta: Diverse soils, including clay, limestone, and alluvial deposits, contributing to the region's versatility in wine styles.\n",
            "Ribera Baja: Alluvial and clay soils, enhancing the richness and body of the wines.\n",
            "Valdizarbe: A combination of clay, limestone, and sandy soils, providing optimal conditions for producing balanced and elegant wines."
        ],
        keyWineStyles: "Navarra is known for its diverse wine styles, including fresh and fruity rosés from Garnacha, robust and complex reds from Tempranillo, Cabernet Sauvignon, and Merlot, as well as aromatic and crisp whites from Chardonnay and Viura. The region's innovation and versatility make it a dynamic and exciting wine region.",
        topProducers: [
            "Bodegas Ochoa (Ribera Alta)",
            "Bodegas Julián Chivite (Ribera Baja)",
            "Bodegas Inurrieta (Ribera Alta)",
            "Bodegas Nekeas (Valdizarbe)",
            "Bodegas Artazu (Baja Montaña)",
            "Bodegas Señorio de Sarria (Tierra Estella)"
        ],
        imageName: "navarra_image",
        iconNames: ["grapes", "wine_bottle"]
    ),
    Region(
        name: "La Mancha",
        details: "La Mancha is the largest wine region in Spain and one of the largest in the world, located in the central part of the country. Known for its vast, flat vineyards and extreme continental climate, La Mancha produces a wide variety of wines, from traditional Spanish varieties to international ones. The region is historically associated with the Airén grape, but Tempranillo, also known as Cencibel, has become increasingly important for red wines.",
        subregions: [
            "Alcázar de San Juan: Known for its diverse wine production, including whites from Airén and reds from Tempranillo.\n",
            "Tomelloso: Produces a wide range of wines, with a focus on red varieties like Tempranillo and international grapes like Cabernet Sauvignon.\n",
            "Valdepeñas: Although technically its own DO, it is surrounded by La Mancha and shares similar climatic and soil conditions, producing robust reds from Tempranillo.\n",
            "Manzanares: Known for its quality wines from both local and international varieties, offering a diverse wine portfolio."
        ],
        climate: "La Mancha has an extreme continental climate with hot, dry summers and cold winters. The large diurnal temperature variation helps maintain acidity and develop complex flavors in the grapes.",
        soil: [
            "Alcázar de San Juan: Predominantly limestone and clay soils, contributing to the structure and complexity of the wines.\n",
            "Tomelloso: A mix of clay, limestone, and sandy soils, supporting the production of diverse wine styles.\n",
            "Valdepeñas: Clay and limestone soils, enhancing the richness and body of the wines.\n",
            "Manzanares: Alluvial and clay soils, ideal for producing balanced and aromatic wines."
        ],
        keyWineStyles: "La Mancha is known for its wide variety of wine styles, including fresh and fruity whites from Airén, robust and complex reds from Tempranillo, and innovative wines from international varieties such as Cabernet Sauvignon, Syrah, and Chardonnay. The region also produces some excellent rosés and sparkling wines.",
        topProducers: [
            "Bodegas Altovela (Tomelloso)",
            "Finca Antigua (Manzanares)",
            "Bodegas Ayuso (Alcázar de San Juan)",
            "Bodegas Verum (Tomelloso)",
            "Bodegas y Viñedos Fontana (Manzanares)",
            "Bodegas López Mercier (Alcázar de San Juan)"
        ],
        imageName: "la_mancha_image",
        iconNames: ["sun", "wine_glass"]
    ),
    Region(
        name: "Toro",
        details: "Toro is a renowned wine region located in the Castilla y León region of northwestern Spain. Known for its powerful and robust red wines, Toro primarily focuses on the Tinta de Toro grape, a local variant of Tempranillo. The region's harsh continental climate and diverse soils contribute to the intense character and high quality of its wines.",
        subregions: [
            "Toro: The main subregion, producing the most recognized wines with bold flavors and high aging potential.\n",
            "Valdefinjas: Known for producing wines with a slightly softer profile compared to those from Toro, yet still maintaining the region's characteristic power.\n",
            "Morales de Toro: Produces high-quality wines with excellent balance and complexity, often from old vine Tinta de Toro."
        ],
        climate: "Toro has an extreme continental climate with hot summers and cold winters. The region experiences significant temperature variations between day and night, which helps to develop complex flavors and maintain acidity in the grapes.",
        soil: [
            "Toro: Predominantly sandy and clay soils with a mix of gravel, providing good drainage and contributing to the structure and concentration of the wines.\n",
            "Valdefinjas: A mix of clay, limestone, and sandy soils, enhancing the complexity and balance of the wines.\n",
            "Morales de Toro: Clay and limestone soils, ideal for producing robust and age-worthy wines."
        ],
        keyWineStyles: "Toro is best known for its powerful and full-bodied red wines made from Tinta de Toro. These wines are characterized by their deep color, firm tannins, and intense flavors of dark fruit, spice, and earth. The region also produces some rosé and white wines, though in smaller quantities.",
        topProducers: [
            "Bodegas Vega Sauco (Toro)",
            "Numanthia (Toro)",
            "Bodegas Rejadorada (Toro)",
            "Matsu (Toro)",
            "Finca Sobreño (Toro)",
            "Bodegas Pintia (Toro)"
        ],
        imageName: "toro_image",
        iconNames: ["grapes", "wine_bottle"]
    ),
    Region(
        name: "Bierzo",
        details: "Bierzo is a notable wine region located in the northwest of Spain, in the province of León within the Castilla y León autonomous community. The region is known for its unique microclimate, which combines Atlantic and Mediterranean influences, and its focus on the Mencía grape, producing elegant and aromatic red wines. Bierzo's diverse terroir and ancient vineyards contribute to the distinct character of its wines.",
        subregions: [
            "Valtuille de Abajo: Known for its old vine Mencía, producing wines with great depth, complexity, and aging potential.\n",
            "Cacabelos: A key area within Bierzo, producing a variety of high-quality wines from both Mencía and Godello grapes.\n",
            "Villafranca del Bierzo: Renowned for its balanced and aromatic wines, benefiting from the region's diverse soils and favorable climate."
        ],
        climate: "Bierzo has a unique microclimate that combines both Atlantic and Mediterranean influences. The region experiences moderate temperatures with sufficient rainfall, creating ideal conditions for viticulture. The presence of mountains provides protection from harsh weather, contributing to the region's balanced climate.",
        soil: [
            "Valtuille de Abajo: Predominantly slate and quartz soils, contributing to the minerality and structure of the wines.\n",
            "Cacabelos: A mix of clay, slate, and alluvial soils, supporting the production of both red and white wines with complexity and balance.\n",
            "Villafranca del Bierzo: A combination of clay, limestone, and sandy soils, enhancing the aromatic profile and elegance of the wines."
        ],
        keyWineStyles: "Bierzo is best known for its red wines made from the Mencía grape, which are characterized by their bright acidity, floral aromas, and flavors of red berries and minerals. The region also produces excellent white wines from the Godello grape, as well as some rosé wines.",
        topProducers: [
            "Descendientes de J. Palacios (Valtuille de Abajo)",
            "Bodegas Estefanía (Cacabelos)",
            "Bodegas Pittacum (Villafranca del Bierzo)",
            "Bodega del Abad (Villafranca del Bierzo)",
            "Dominio de Tares (Cacabelos)",
            "Losada Vinos de Finca (Cacabelos)"
        ],
        imageName: "bierzo_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Rueda",
        details: "Rueda is a prestigious wine region located in the Castilla y León region of Spain. It is renowned for its high-quality white wines, primarily made from the Verdejo grape. The region's continental climate, combined with its unique soils, creates ideal conditions for producing fresh and aromatic white wines with vibrant acidity.",
        subregions: [
            "La Seca: The heart of Rueda, known for producing some of the finest Verdejo wines, characterized by their crisp acidity and intense aromatics.\n",
            "Rueda: The central area of the region, producing a wide range of styles from Verdejo, Sauvignon Blanc, and Viura.\n",
            "Serrada: Known for its high-quality white wines with excellent balance and complexity, benefiting from the diverse soil types and favorable climate."
        ],
        climate: "Rueda has a continental climate with hot summers and cold winters. The large diurnal temperature variation helps to maintain acidity and develop aromatic intensity in the grapes. The region also benefits from cool nights and dry conditions, which reduce the risk of disease and contribute to the quality of the wines.",
        soil: [
            "La Seca: Predominantly gravel and limestone soils, which contribute to the minerality and structure of the wines.\n",
            "Rueda: A mix of gravel, clay, and sandy soils, supporting the production of diverse wine styles.\n",
            "Serrada: Limestone and clay soils, enhancing the balance and complexity of the wines."
        ],
        keyWineStyles: "Rueda is best known for its fresh and aromatic white wines made from the Verdejo grape, which are characterized by their vibrant acidity, citrus and tropical fruit flavors, and subtle herbaceous notes. The region also produces excellent Sauvignon Blanc and Viura wines, as well as some red and rosé wines.",
        topProducers: [
            "Marqués de Riscal (Rueda)",
            "Bodegas Naia (La Seca)",
            "Bodegas Protos (Rueda)",
            "Bodegas José Pariente (La Seca)",
            "Bodegas Ossian (Serrada)",
            "Bodegas Palacio de Bornos (Rueda)"
        ],
        imageName: "rueda_image",
        iconNames: ["sun", "wine_bottle"]
    ),
    Region(
        name: "Catalonia",
        details: "Catalonia, located in the northeastern corner of Spain, is one of the country's most diverse and dynamic wine regions. It encompasses several Denominations of Origin (DO), each producing a wide variety of wine styles, from sparkling Cava to robust reds and crisp whites. The region is known for its innovative winemaking techniques and the use of both indigenous and international grape varieties.",
        subregions: [
            "Penedès: Renowned for its production of Cava, as well as a wide range of still wines from indigenous and international varieties.\n",
            "Priorat: Known for its powerful and complex red wines made primarily from Garnacha and Cariñena.\n",
            "Montsant: Produces high-quality red wines similar to those of neighboring Priorat, but often at more accessible prices.\n",
            "Empordà: Located near the French border, known for its aromatic whites and robust reds.\n",
            "Terra Alta: Produces a variety of wines, with a focus on Garnacha Blanca for white wines and Garnacha Tinta for reds."
        ],
        climate: "Catalonia has a Mediterranean climate with hot, dry summers and mild, wet winters. The region's diverse topography, which includes coastal plains and mountainous areas, creates a range of microclimates that are ideal for different grape varieties and wine styles.",
        soil: [
            "Penedès: Limestone and clay soils, ideal for sparkling wine production.\n",
            "Priorat: Slate and quartz soils, known locally as 'llicorella', which contribute to the minerality and structure of the wines.\n",
            "Montsant: A mix of clay, limestone, and granite soils, supporting the production of diverse wine styles.\n",
            "Empordà: Sandy and granitic soils, enhancing the aromatic profile of the wines.\n",
            "Terra Alta: Clay and limestone soils, ideal for producing rich and structured wines."
        ],
        keyWineStyles: "Catalonia is known for its diverse wine styles, including sparkling Cava, robust reds from Garnacha and Cariñena, aromatic whites from Macabeo and Xarel-lo, and innovative blends using international varieties such as Cabernet Sauvignon and Chardonnay.",
        topProducers: [
            "Freixenet (Penedès)",
            "Codorníu (Penedès)",
            "Alvaro Palacios (Priorat)",
            "Clos Mogador (Priorat)",
            "Celler Capçanes (Montsant)",
            "Perelada (Empordà)",
            "Altavins (Terra Alta)"
        ],
        imageName: "catalonia_image",
        iconNames: ["sparkling_wine", "wine_bottle"]
    ),
    Region(
        name: "Galicia",
        details: "Galicia, located in the northwestern corner of Spain, is known for its lush, green landscapes and cool, maritime climate. The region is celebrated for its high-quality white wines, particularly those made from the Albariño grape. Galicia is divided into five main Denominations of Origin (DO), each with its own unique terroir and wine styles.",
        subregions: [
            "Rías Baixas: The most famous DO, known for its fresh and aromatic Albariño wines.\n",
            "Ribeiro: Produces both white and red wines, with a focus on indigenous varieties such as Treixadura and Godello for whites, and Caiño and Brancellao for reds.\n",
            "Ribeira Sacra: Known for its steep, terraced vineyards along the rivers Sil and Miño, producing elegant red wines from Mencía and white wines from Godello.\n",
            "Valdeorras: Specializes in high-quality white wines from Godello and red wines from Mencía.\n",
            "Monterrei: Produces a variety of wine styles, with a focus on white wines from Godello and Treixadura, and red wines from Mencía and Bastardo."
        ],
        climate: "Galicia has a cool, maritime climate with high rainfall and moderate temperatures throughout the year. The proximity to the Atlantic Ocean provides a cooling effect, which helps to maintain acidity and freshness in the wines.",
        soil: [
            "Rías Baixas: Predominantly granite-based soils with good drainage, ideal for producing crisp and mineral-driven Albariño wines.\n",
            "Ribeiro: A mix of granite, slate, and alluvial soils, supporting the production of both white and red wines.\n",
            "Ribeira Sacra: Slate and granite soils, contributing to the minerality and structure of the wines.\n",
            "Valdeorras: Slate and schist soils, enhancing the complexity and balance of the wines.\n",
            "Monterrei: A combination of granite, slate, and clay soils, providing optimal conditions for a variety of grape varieties."
        ],
        keyWineStyles: "Galicia is best known for its fresh and aromatic white wines made from Albariño, Godello, and Treixadura. The region also produces elegant and balanced red wines from Mencía, as well as a variety of other styles from indigenous grape varieties.",
        topProducers: [
            "Bodegas Martin Codax (Rías Baixas)",
            "Pazo de Señorans (Rías Baixas)",
            "Bodegas Viña Mein (Ribeiro)",
            "Dominio do Bibei (Ribeira Sacra)",
            "Bodegas Godeval (Valdeorras)",
            "Bodegas Quinta da Muradella (Monterrei)"
        ],
        imageName: "galicia_image",
        iconNames: ["ocean", "wine_glass"]
    ),
    Region(
        name: "Somontano",
        details: "Somontano is a dynamic wine region located in the foothills of the Pyrenees in northeastern Spain. The name 'Somontano' means 'beneath the mountain,' reflecting the region's unique terroir. Known for its innovative approach to winemaking, Somontano produces a wide range of wine styles, from traditional Spanish varieties to international ones.",
        subregions: [
            "Barbastro: The heart of Somontano, known for producing high-quality wines from both indigenous and international grape varieties.\n",
            "Alquézar: A subregion with vineyards at higher elevations, contributing to the freshness and complexity of the wines.\n",
            "Salas Bajas: Known for its diverse soil types and microclimates, producing a variety of wine styles."
        ],
        climate: "Somontano has a continental climate with Mediterranean influences. The region experiences hot, dry summers and cold winters, with significant diurnal temperature variations that help to maintain acidity and develop complex flavors in the grapes.",
        soil: [
            "Barbastro: Predominantly limestone and clay soils, providing good drainage and contributing to the structure and complexity of the wines.\n",
            "Alquézar: A mix of limestone, clay, and sandy soils, supporting the production of fresh and aromatic wines.\n",
            "Salas Bajas: Diverse soils, including clay, limestone, and gravel, enhancing the versatility and quality of the wines."
        ],
        keyWineStyles: "Somontano is known for its wide range of wine styles, including crisp whites from Chardonnay and Gewürztraminer, robust reds from Tempranillo and Cabernet Sauvignon, and elegant rosés. The region's innovative approach allows for the production of both traditional and modern wine styles.",
        topProducers: [
            "Bodegas Enate (Barbastro)",
            "Bodegas Pirineos (Barbastro)",
            "Viñas del Vero (Barbastro)",
            "Bodegas Sommos (Barbastro)",
            "Bodegas Laus (Salas Bajas)",
            "Bodega El Grillo y La Luna (Alquézar)"
        ],
        imageName: "somontano_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Canary Islands",
        details: "The Canary Islands, an archipelago off the northwest coast of Africa, are known for their unique volcanic terroir and diverse wine styles. The islands have a long history of winemaking, dating back to the 15th century. The region's volcanic soils, combined with its subtropical climate and high altitude vineyards, produce wines with distinctive mineral characteristics and vibrant acidity.",
        subregions: [
            "Tenerife: The largest and most important wine-producing island, known for its diverse microclimates and high-quality wines from varieties such as Listán Negro and Listán Blanco.\n",
            "Lanzarote: Famous for its unique vine training method called 'enarenado', where vines are planted in pits dug into volcanic ash to protect them from the wind and retain moisture.\n",
            "La Palma: Known for its high-altitude vineyards and traditional winemaking techniques, producing distinctive wines from indigenous varieties."
        ],
        climate: "The Canary Islands have a subtropical climate with mild temperatures year-round. The influence of the Atlantic Ocean and the region's high altitude vineyards create significant microclimates, which help to maintain acidity and develop complex flavors in the grapes.",
        soil: [
            "Tenerife: Predominantly volcanic soils, contributing to the mineral complexity and vibrant acidity of the wines.\n",
            "Lanzarote: Volcanic ash and lava soils, providing unique growing conditions and enhancing the distinct character of the wines.\n",
            "La Palma: Volcanic and sandy soils, ideal for producing fresh and aromatic wines."
        ],
        keyWineStyles: "The Canary Islands are known for their distinctive wine styles, including fresh and aromatic whites from varieties such as Listán Blanco and Malvasía, and robust reds from Listán Negro and Tintilla. The region also produces unique dessert wines and rosés, characterized by their vibrant acidity and mineral notes.",
        topProducers: [
            "Bodegas Monje (Tenerife)",
            "Bodegas Viñátigo (Tenerife)",
            "Bodega Los Bermejos (Lanzarote)",
            "Bodega El Grifo (Lanzarote)",
            "Bodegas Teneguía (La Palma)",
            "Bodegas Vega Norte (La Palma)"
        ],
        imageName: "canary_islands_image",
        iconNames: ["volcano", "wine_glass"]
    ),
                    ]),

//AUSTRALIA

Country(name: "Australia", regions: [
    Region(
        name: "Barossa Valley",
        details: "The Barossa Valley is one of Australia's most renowned wine regions, located in South Australia. It is particularly famous for its robust red wines, especially Shiraz. The region has a rich winemaking history dating back to the 19th century and is home to some of the oldest vineyards in the world. The Barossa Valley's warm climate and diverse soils contribute to the rich, concentrated flavors of its wines.",
        subregions: [
            "Lyndoch: Known for producing rich, full-bodied Shiraz and other red varieties.\n",
            "Tanunda: Home to many historic vineyards and wineries, producing a range of high-quality wines.\n",
            "Seppeltsfield: Famous for its fortified wines and old vine Shiraz."
        ],
        climate: "The Barossa Valley has a warm Mediterranean climate with hot, dry summers and cool, wet winters. The region benefits from the cooling gully winds that help to moderate temperatures during the growing season.",
        soil: [
            "Lyndoch: Predominantly sandy loam soils, contributing to the structure and concentration of the wines.\n",
            "Tanunda: A mix of red clay and sandy loam soils, supporting the production of robust and complex wines.\n",
            "Seppeltsfield: Deep alluvial soils, ideal for producing rich and full-bodied wines."
        ],
        keyWineStyles: "The Barossa Valley is best known for its powerful and full-bodied Shiraz, characterized by rich fruit flavors, velvety tannins, and spice notes. The region also produces excellent Cabernet Sauvignon, Grenache, and fortified wines.",
        topProducers: [
            "Penfolds (Tanunda)",
            "Yalumba (Barossa Valley)",
            "Torbreck (Lyndoch)",
            "Seppeltsfield (Seppeltsfield)",
            "Jacob's Creek (Tanunda)"
        ],
        imageName: "barossa_valley_image",
        iconNames: ["sun", "wine_glass"]
    ),
    Region(
        name: "Clare Valley",
        details: "Clare Valley is a prominent wine region in South Australia, celebrated for its high-quality Rieslings and robust red wines. The region's cool climate and diverse topography provide ideal conditions for viticulture. Clare Valley's winemaking history dates back to the mid-19th century, and it is known for its boutique wineries and innovative winemaking techniques.",
        subregions: [
            "Watervale: Renowned for its exceptional Rieslings, characterized by their vibrant acidity and citrus flavors.\n",
            "Polish Hill River: Known for producing some of Australia's finest Rieslings with intense minerality and complexity.\n",
            "Sevenhill: Home to some of the oldest vineyards in Clare Valley, producing a range of high-quality wines, including Shiraz and Cabernet Sauvignon.\n",
            "Auburn: A subregion known for its diverse wine styles, from crisp whites to robust reds."
        ],
        climate: "Clare Valley has a cool to moderate climate with significant diurnal temperature variations. The warm days and cool nights during the growing season help to preserve acidity and develop complex flavors in the grapes.",
        soil: [
            "Watervale: Predominantly red clay and limestone soils, ideal for producing structured and vibrant Rieslings.\n",
            "Polish Hill River: Slate and clay soils, contributing to the minerality and depth of the wines.\n",
            "Sevenhill: A mix of red clay, limestone, and gravel soils, supporting the production of diverse wine styles.\n",
            "Auburn: Varied soils, including sandy loam and clay, enhancing the versatility of the wines."
        ],
        keyWineStyles: "Clare Valley is best known for its Rieslings, which are characterized by their bright acidity, citrus and floral aromas, and mineral notes. The region also produces excellent Shiraz, Cabernet Sauvignon, and other red varieties, known for their rich flavors and balanced structures.",
        topProducers: [
            "Jim Barry Wines (Watervale)",
            "Grosset Wines (Polish Hill River)",
            "Sevenhill Cellars (Sevenhill)",
            "Kilikanoon Wines (Watervale)",
            "Taylors Wines (Auburn)",
            "Pikes Wines (Polish Hill River)"
        ],
        imageName: "clare_valley_image",
        iconNames: ["sun", "wine_glass"]
    ),
    Region(
        name: "Coonawarra",
        details: "Coonawarra is a renowned wine region located in South Australia, famous for its premium red wines, particularly Cabernet Sauvignon. The region's unique 'terra rossa' soil and cool maritime climate provide ideal conditions for viticulture, contributing to the distinctive character and high quality of its wines.",
        subregions: [
            "Penola: Known for its rich, full-bodied Cabernet Sauvignon with excellent aging potential.\n",
            "Kalangadoo: Produces a range of high-quality wines, including Shiraz and Merlot, with rich flavors and balanced structures."
        ],
        climate: "Coonawarra has a cool maritime climate with moderate temperatures and a long growing season. The cooling influence of the nearby Southern Ocean helps to maintain acidity and develop complex flavors in the grapes.",
        soil: [
            "Penola: Predominantly 'terra rossa' soil, a red clay over limestone, which is ideal for producing structured and complex red wines.\n",
            "Kalangadoo: A mix of 'terra rossa' and black clay soils, enhancing the richness and body of the wines."
        ],
        keyWineStyles: "Coonawarra is best known for its Cabernet Sauvignon, which is characterized by its deep color, firm tannins, and complex flavors of blackcurrant, mint, and cedar. The region also produces excellent Shiraz, Merlot, and Chardonnay, known for their balance and elegance.",
        topProducers: [
            "Wynns Coonawarra Estate (Penola)",
            "Parker Coonawarra Estate (Penola)",
            "Katnook Estate (Penola)",
            "Majella Wines (Penola)",
            "Rymill Coonawarra (Penola)",
            "Balnaves of Coonawarra (Penola)"
        ],
        imageName: "coonawarra_image",
        iconNames: ["grapes", "wine_glass"]
    ),
    
    Region(
        name: "Eden Valley",
        details: "Eden Valley is a cool-climate wine region located within the Barossa zone in South Australia. Known for its high-altitude vineyards and diverse terroir, Eden Valley produces some of Australia's finest Rieslings and Shiraz. The region's unique climate and soil conditions contribute to the elegance and complexity of its wines.",
        subregions: [
            "High Eden: The highest part of the Eden Valley, known for its exceptional Riesling and Shiraz, with vineyards located at elevations of up to 600 meters.\n",
            "Flaxman Valley: Produces a variety of high-quality wines, including Riesling, Shiraz, and Cabernet Sauvignon.\n",
            "Keyneton: Famous for its historic vineyards and premium Shiraz and Riesling."
        ],
        climate: "Eden Valley has a cool to moderate climate with significant diurnal temperature variations. The region experiences warm days and cool nights during the growing season, which helps to preserve acidity and develop complex flavors in the grapes.",
        soil: [
            "High Eden: Predominantly rocky and acidic soils, contributing to the minerality and finesse of the wines.\n",
            "Flaxman Valley: A mix of sandy loam and clay soils, supporting the production of structured and balanced wines.\n",
            "Keyneton: Loamy and sandy soils, ideal for producing elegant and refined wines."
        ],
        keyWineStyles: "Eden Valley is best known for its Riesling, which is characterized by its bright acidity, citrus and floral aromas, and mineral notes. The region also produces outstanding Shiraz, known for its elegance, complexity, and fine tannins. Other notable varieties include Cabernet Sauvignon, Chardonnay, and Viognier.",
        topProducers: [
            "Henschke (Keyneton)",
            "Pewsey Vale (High Eden)",
            "Yalumba (Flaxman Valley)",
            "Eden Road Wines (High Eden)",
            "Mountadam Vineyards (High Eden)",
            "Irvine Wines (Keyneton)"
        ],
        imageName: "eden_valley_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    
    Region(
        name: "Margaret River",
        details: "Margaret River is a prestigious wine region located in Western Australia, known for its high-quality wines and stunning coastal scenery. The region's maritime climate and diverse soils provide ideal conditions for viticulture, allowing for the production of a wide range of wine styles. Margaret River is particularly renowned for its Cabernet Sauvignon, Chardonnay, and Sauvignon Blanc-Semillon blends.",
        subregions: [
            "Wilyabrup: The heart of Margaret River, known for producing some of the region's finest wines, particularly Cabernet Sauvignon and Chardonnay.\n",
            "Yallingup: Famous for its boutique wineries and high-quality wines, including elegant whites and robust reds.\n",
            "Karridale: Known for its cool climate and diverse wine styles, from crisp whites to full-bodied reds.\n",
            "Wallcliffe: Produces a variety of premium wines, with a focus on Cabernet Sauvignon and Sauvignon Blanc-Semillon blends."
        ],
        climate: "Margaret River has a maritime climate with moderate temperatures and a long growing season. The cooling influence of the Indian Ocean helps to maintain acidity and develop complex flavors in the grapes.",
        soil: [
            "Wilyabrup: Gravelly loam soils over clay, contributing to the structure and complexity of the wines.\n",
            "Yallingup: Sandy loam soils, supporting the production of fresh and vibrant wines.\n",
            "Karridale: A mix of gravelly loam and sandy soils, enhancing the versatility of the wines.\n",
            "Wallcliffe: Predominantly gravelly loam soils, ideal for producing balanced and elegant wines."
        ],
        keyWineStyles: "Margaret River is best known for its Cabernet Sauvignon, which is characterized by its elegance, complexity, and fine tannins. The region also produces outstanding Chardonnay, known for its balance and richness, and Sauvignon Blanc-Semillon blends, which are crisp, aromatic, and vibrant. Other notable varieties include Shiraz, Merlot, and Riesling.",
        topProducers: [
            "Vasse Felix (Wilyabrup)",
            "Cullen Wines (Wilyabrup)",
            "Leeuwin Estate (Wallcliffe)",
            "Cape Mentelle (Wallcliffe)",
            "Moss Wood (Wilyabrup)",
            "Xanadu Wines (Yallingup)"
        ],
        imageName: "margaret_river_image",
        iconNames: ["ocean", "wine_glass"]
    ),
    Region(
        name: "McLaren Vale",
        details: "McLaren Vale is a prominent wine region located in South Australia, known for its diverse range of high-quality wines. The region's Mediterranean climate and varied soil types contribute to the distinctive character of its wines. McLaren Vale is particularly renowned for its robust red wines, especially Shiraz and Grenache.",
        subregions: [
            "Blewitt Springs: Known for its old vine Grenache and elegant Shiraz, with a focus on producing wines with bright fruit flavors and fine tannins.\n",
            "Willunga: Produces a variety of wine styles, including rich and full-bodied Shiraz and Cabernet Sauvignon.\n",
            "Seaview: Famous for its premium Shiraz and Cabernet Sauvignon, with a reputation for producing complex and age-worthy wines.\n",
            "Clarendon: Known for its high-altitude vineyards, producing wines with great intensity and structure."
        ],
        climate: "McLaren Vale has a Mediterranean climate with hot, dry summers and mild, wet winters. The cooling influence of the nearby Gulf St Vincent helps to moderate temperatures, maintaining acidity and freshness in the wines.",
        soil: [
            "Blewitt Springs: Predominantly sandy soils, contributing to the finesse and elegance of the wines.\n",
            "Willunga: A mix of red clay and sandy loam soils, supporting the production of robust and complex wines.\n",
            "Seaview: Limestone and clay soils, enhancing the structure and concentration of the wines.\n",
            "Clarendon: Shallow, rocky soils, ideal for producing wines with intensity and depth."
        ],
        keyWineStyles: "McLaren Vale is best known for its Shiraz, which is characterized by its rich fruit flavors, velvety tannins, and spice notes. The region also produces excellent Grenache, Cabernet Sauvignon, and Mediterranean varieties such as Sangiovese and Tempranillo. Additionally, McLaren Vale is known for its vibrant white wines, including Chardonnay and Vermentino.",
        topProducers: [
            "d'Arenberg (McLaren Vale)",
            "Wirra Wirra (McLaren Vale)",
            "Hardys (McLaren Vale)",
            "Coriole Vineyards (McLaren Vale)",
            "Chapel Hill (McLaren Vale)",
            "Yangarra Estate Vineyard (McLaren Vale)"
        ],
        imageName: "mclaren_vale_image",
        iconNames: ["sun", "wine_glass"]
    ),
    Region(
        name: "Yarra Valley",
        details: "The Yarra Valley is a renowned wine region located in Victoria, Australia. Known for its cool climate and picturesque landscapes, the region produces a wide range of high-quality wines. The Yarra Valley is particularly famous for its Pinot Noir and Chardonnay, as well as its innovative winemaking techniques.",
        subregions: [
            "Healesville: Known for its premium Pinot Noir and Chardonnay, with a focus on producing elegant and complex wines.\n",
            "Coldstream: Produces a variety of high-quality wines, including Shiraz, Cabernet Sauvignon, and sparkling wines.\n",
            "Yarra Glen: Famous for its boutique wineries and diverse wine styles, from crisp whites to robust reds.\n",
            "Dixon's Creek: Known for its cool climate and high-altitude vineyards, producing wines with great acidity and finesse."
        ],
        climate: "The Yarra Valley has a cool to moderate climate with significant diurnal temperature variations. The region experiences mild summers and cool winters, which are ideal for growing a variety of grape varieties, particularly those that thrive in cooler conditions.",
        soil: [
            "Healesville: Predominantly grey-brown loam soils, contributing to the structure and complexity of the wines.\n",
            "Coldstream: A mix of sandy loam and clay soils, supporting the production of diverse wine styles.\n",
            "Yarra Glen: Varied soils, including volcanic and alluvial soils, enhancing the versatility of the wines.\n",
            "Dixon's Creek: Shallow, rocky soils, ideal for producing wines with intensity and minerality."
        ],
        keyWineStyles: "The Yarra Valley is best known for its Pinot Noir, characterized by its bright acidity, red fruit flavors, and silky tannins. The region also produces outstanding Chardonnay, known for its balance and elegance. Other notable varieties include Shiraz, Cabernet Sauvignon, and sparkling wines, which are known for their finesse and complexity.",
        topProducers: [
            "Yarra Yering (Yarra Glen)",
            "De Bortoli (Dixon's Creek)",
            "Giant Steps (Healesville)",
            "Coldstream Hills (Coldstream)",
            "Oakridge Wines (Coldstream)",
            "Dominique Portet (Yarra Glen)"
        ],
        imageName: "yarra_valley_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Hunter Valley",
        details: "The Hunter Valley, located in New South Wales, is one of Australia's oldest and most celebrated wine regions. Known for its rich history and pioneering winemaking techniques, the region is particularly famous for its Semillon and Shiraz. The Hunter Valley's warm climate and unique soils contribute to the distinctive character of its wines.",
        subregions: [
            "Pokolbin: The heart of the Hunter Valley, known for producing some of the region's finest Semillon and Shiraz.\n",
            "Broke Fordwich: Produces a variety of high-quality wines, including Verdelho, Chardonnay, and Shiraz.\n",
            "Upper Hunter Valley: Known for its expansive vineyards and diverse wine styles, including rich reds and crisp whites.\n",
            "Lovedale: Famous for its boutique wineries and premium wines, particularly Semillon and Chardonnay."
        ],
        climate: "The Hunter Valley has a warm, humid climate with hot summers and mild winters. The region experiences significant rainfall during the growing season, which can pose challenges for viticulture. However, the region's unique microclimates and careful vineyard management help to produce high-quality wines.",
        soil: [
            "Pokolbin: Predominantly volcanic loam soils, contributing to the structure and minerality of the wines.\n",
            "Broke Fordwich: Sandy loam and alluvial soils, supporting the production of fresh and aromatic wines.\n",
            "Upper Hunter Valley: A mix of sandy and clay loam soils, enhancing the versatility and quality of the wines.\n",
            "Lovedale: Loamy and sandy soils, ideal for producing elegant and refined wines."
        ],
        keyWineStyles: "The Hunter Valley is best known for its Semillon, which is characterized by its bright acidity, citrus flavors, and ability to age gracefully. The region also produces excellent Shiraz, known for its medium body, soft tannins, and red fruit flavors. Other notable varieties include Chardonnay, Verdelho, and Cabernet Sauvignon.",
        topProducers: [
            "Tyrrell's Wines (Pokolbin)",
            "Brokenwood Wines (Pokolbin)",
            "McWilliam's Mount Pleasant (Pokolbin)",
            "Audrey Wilkinson (Pokolbin)",
            "De Iuliis Wines (Lovedale)",
            "Pepper Tree Wines (Broke Fordwich)"
        ],
        imageName: "hunter_valley_image",
        iconNames: ["sun", "wine_glass"]
    ),
    Region(
        name: "Tasmania",
        details: "Tasmania, an island state off the southern coast of Australia, is known for its cool climate and pristine natural environment. The region produces some of Australia's finest cool-climate wines, with a focus on Pinot Noir and Chardonnay. Tasmania's diverse terroir and innovative winemaking techniques contribute to the high quality and distinct character of its wines.",
        subregions: [
            "Tamar Valley: Known for its premium sparkling wines, Pinot Noir, and Chardonnay, benefiting from the cool maritime climate.\n",
            "Coal River Valley: Produces a variety of high-quality wines, including Pinot Noir, Riesling, and Chardonnay.\n",
            "Derwent Valley: Famous for its elegant Pinot Noir and aromatic whites, with vineyards located along the Derwent River.\n",
            "East Coast: Known for its picturesque vineyards and diverse wine styles, from crisp whites to full-bodied reds."
        ],
        climate: "Tasmania has a cool maritime climate with mild summers and cold winters. The region's climate is moderated by the surrounding oceans, which helps to maintain acidity and develop complex flavors in the grapes.",
        soil: [
            "Tamar Valley: Predominantly alluvial and volcanic soils, ideal for producing structured and mineral-driven wines.\n",
            "Coal River Valley: A mix of sandy loam and clay soils, supporting the production of vibrant and balanced wines.\n",
            "Derwent Valley: Loamy and sandy soils, enhancing the elegance and finesse of the wines.\n",
            "East Coast: Varied soils, including granite and dolerite, contributing to the diversity and complexity of the wines."
        ],
        keyWineStyles: "Tasmania is best known for its Pinot Noir, characterized by its bright acidity, red fruit flavors, and silky tannins. The region also produces outstanding Chardonnay, known for its balance and richness, as well as exceptional sparkling wines. Other notable varieties include Riesling, Sauvignon Blanc, and Pinot Gris.",
        topProducers: [
            "Jansz Tasmania (Tamar Valley)",
            "Pipers Brook Vineyard (Tamar Valley)",
            "Moorilla Estate (Derwent Valley)",
            "Pooley Wines (Coal River Valley)",
            "Freycinet Vineyard (East Coast)",
            "Josef Chromy Wines (Tamar Valley)"
        ],
        imageName: "tasmania_image",
        iconNames: ["ocean", "wine_glass"]
    ),
    Region(
        name: "Adelaide Hills",
        details: "Adelaide Hills is a premium wine region located in South Australia, known for its cool climate and diverse wine styles. The region's high altitude and varied topography create ideal conditions for producing elegant and aromatic wines. Adelaide Hills is particularly renowned for its Sauvignon Blanc, Chardonnay, and Pinot Noir.",
        subregions: [
            "Lenswood: Known for its high-altitude vineyards and premium Chardonnay and Pinot Noir.\n",
            "Piccadilly Valley: Produces some of the region's finest sparkling wines, as well as elegant Chardonnay and Pinot Noir.\n",
            "Mount Lofty Ranges: A diverse subregion producing a wide range of wine styles, including Sauvignon Blanc, Shiraz, and Merlot.\n",
            "Kuitpo: Known for its cool climate and high-quality Sauvignon Blanc and Chardonnay."
        ],
        climate: "Adelaide Hills has a cool to moderate climate with significant temperature variations between day and night. The region experiences mild summers and cool winters, which are ideal for growing a variety of grape varieties, particularly those that thrive in cooler conditions.",
        soil: [
            "Lenswood: Predominantly sandy loam and clay soils, contributing to the structure and complexity of the wines.\n",
            "Piccadilly Valley: A mix of loam and clay soils, supporting the production of elegant and refined wines.\n",
            "Mount Lofty Ranges: Varied soils, including sandy loam and clay, enhancing the versatility and quality of the wines.\n",
            "Kuitpo: Loamy and sandy soils, ideal for producing vibrant and aromatic wines."
        ],
        keyWineStyles: "Adelaide Hills is best known for its Sauvignon Blanc, characterized by its bright acidity, tropical fruit flavors, and herbaceous notes. The region also produces outstanding Chardonnay, known for its balance and elegance, and Pinot Noir, which is known for its bright fruit flavors and silky tannins. Other notable varieties include Shiraz, Merlot, and sparkling wines.",
        topProducers: [
            "Shaw + Smith (Lenswood)",
            "Ashton Hills (Piccadilly Valley)",
            "Bird in Hand (Mount Lofty Ranges)",
            "Nepenthe (Kuitpo)",
            "BK Wines (Lenswood)",
            "Deviation Road (Piccadilly Valley)"
        ],
        imageName: "adelaide_hills_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Eden Valley",
        details: "Eden Valley is a cool-climate wine region located within the Barossa zone in South Australia. Known for its high-altitude vineyards and diverse terroir, Eden Valley produces some of Australia's finest Rieslings and Shiraz. The region's unique climate and soil conditions contribute to the elegance and complexity of its wines.",
        subregions: [
            "High Eden: The highest part of the Eden Valley, known for its exceptional Riesling and Shiraz, with vineyards located at elevations of up to 600 meters.\n",
            "Flaxman Valley: Produces a variety of high-quality wines, including Riesling, Shiraz, and Cabernet Sauvignon.\n",
            "Keyneton: Famous for its historic vineyards and premium Shiraz and Riesling."
        ],
        climate: "Eden Valley has a cool to moderate climate with significant diurnal temperature variations. The region experiences warm days and cool nights during the growing season, which helps to preserve acidity and develop complex flavors in the grapes.",
        soil: [
            "High Eden: Predominantly rocky and acidic soils, contributing to the minerality and finesse of the wines.\n",
            "Flaxman Valley: A mix of sandy loam and clay soils, supporting the production of structured and balanced wines.\n",
            "Keyneton: Loamy and sandy soils, ideal for producing elegant and refined wines."
        ],
        keyWineStyles: "Eden Valley is best known for its Riesling, which is characterized by its bright acidity, citrus and floral aromas, and mineral notes. The region also produces outstanding Shiraz, known for its elegance, complexity, and fine tannins. Other notable varieties include Cabernet Sauvignon, Chardonnay, and Viognier.",
        topProducers: [
            "Henschke (Keyneton)",
            "Pewsey Vale (High Eden)",
            "Yalumba (Flaxman Valley)",
            "Eden Road Wines (High Eden)",
            "Mountadam Vineyards (High Eden)",
            "Irvine Wines (Keyneton)"
        ],
        imageName: "eden_valley_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Riverina",
        details: "Riverina is one of Australia's largest wine regions, located in New South Wales. Known for its high-volume production, the region produces a wide range of wine styles, from affordable, everyday wines to premium, botrytized dessert wines. The fertile soils and warm climate make Riverina a vital part of Australia's wine industry.",
        subregions: [
            "Griffith: The heart of Riverina, known for its large-scale production and premium botrytized Semillon wines.\n",
            "Leeton: Produces a variety of wine styles, including Chardonnay, Shiraz, and Merlot.\n",
            "Yenda: Known for its high-quality Shiraz and innovative winemaking techniques."
        ],
        climate: "Riverina has a warm, continental climate with hot summers and mild winters. The region benefits from a reliable irrigation system sourced from the Murrumbidgee River, which supports the extensive viticulture in the area.",
        soil: [
            "Griffith: Predominantly alluvial soils with good drainage, ideal for producing a range of wine styles.\n",
            "Leeton: A mix of sandy loam and clay soils, supporting the production of diverse wines.\n",
            "Yenda: Loamy and sandy soils, enhancing the quality and consistency of the wines."
        ],
        keyWineStyles: "Riverina is best known for its botrytized Semillon, characterized by its rich, luscious sweetness, and complex flavors of apricot, honey, and citrus. The region also produces a wide variety of other styles, including affordable Chardonnay, Shiraz, Merlot, and Cabernet Sauvignon, which are known for their ripe fruit flavors and easy-drinking appeal.",
        topProducers: [
            "De Bortoli Wines (Griffith)",
            "Casella Family Brands (Griffith)",
            "McWilliam's Wines (Griffith)",
            "Warburn Estate (Griffith)",
            "Yellow Tail (Yenda)",
            "Toorak Winery (Leeton)"
        ],
        imageName: "riverina_image",
        iconNames: ["sun", "wine_glass"]
    ),
    Region(
        name: "Heathcote",
        details: "Heathcote is a prominent wine region located in Victoria, Australia. Known for its distinctive red soils and cool climate, the region produces high-quality wines, particularly Shiraz. Heathcote's unique terroir and careful vineyard management contribute to the rich, concentrated flavors and excellent aging potential of its wines.",
        subregions: [
            "Colbinabbin: Known for its premium Shiraz and Cabernet Sauvignon, with a focus on producing wines with depth and complexity.\n",
            "Tooborac: Produces a variety of high-quality wines, including Shiraz, Merlot, and Viognier.\n",
            "Mia Mia: Famous for its boutique wineries and innovative winemaking techniques, producing elegant and refined wines."
        ],
        climate: "Heathcote has a cool to moderate climate with significant diurnal temperature variations. The region experiences warm days and cool nights during the growing season, which helps to preserve acidity and develop complex flavors in the grapes.",
        soil: [
            "Colbinabbin: Predominantly red Cambrian soils, which are rich in minerals and contribute to the structure and complexity of the wines.\n",
            "Tooborac: A mix of red and brown loam soils, supporting the production of robust and balanced wines.\n",
            "Mia Mia: Varied soils, including clay and sandy loam, enhancing the versatility and quality of the wines."
        ],
        keyWineStyles: "Heathcote is best known for its Shiraz, characterized by its deep color, rich fruit flavors, and fine tannins. The region also produces excellent Cabernet Sauvignon, Merlot, and Viognier, known for their balance and elegance. Other notable varieties include Sangiovese, Tempranillo, and Chardonnay.",
        topProducers: [
            "Heathcote Estate (Colbinabbin)",
            "Jasper Hill (Colbinabbin)",
            "Mount Ida Estate (Tooborac)",
            "Sanguine Estate (Heathcote)",
            "McIvor Estate (Tooborac)",
            "Idavue Estate (Mia Mia)"
        ],
        imageName: "heathcote_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Rutherglen",
        details: "Rutherglen is a historic wine region located in Victoria, Australia. It is famous for its fortified wines, particularly Muscat and Topaque (formerly known as Tokay). The region's warm climate and unique soil composition provide ideal conditions for producing rich, luscious wines with incredible depth and complexity.",
        subregions: [
            "Wahgunyah: Known for its premium Muscat and Topaque, as well as robust red wines such as Shiraz and Durif.\n",
            "Rutherglen: The heart of the region, producing a wide range of wine styles, including fortified wines, Shiraz, and Cabernet Sauvignon."
        ],
        climate: "Rutherglen has a warm, continental climate with hot summers and cool winters. The long, dry growing season allows for extended ripening, which is essential for producing the region's famous fortified wines.",
        soil: [
            "Wahgunyah: Predominantly sandy loam soils, contributing to the finesse and complexity of the wines.\n",
            "Rutherglen: A mix of alluvial and clay soils, ideal for producing rich and full-bodied wines."
        ],
        keyWineStyles: "Rutherglen is best known for its fortified wines, particularly Muscat and Topaque, which are characterized by their intense sweetness, rich flavors of dried fruit, caramel, and nuts, and incredible aging potential. The region also produces robust red wines from Shiraz, Durif, and Cabernet Sauvignon, known for their deep color, rich fruit flavors, and firm tannins.",
        topProducers: [
            "Campbells Wines (Rutherglen)",
            "All Saints Estate (Wahgunyah)",
            "Rutherglen Estates (Rutherglen)",
            "Morris Wines (Rutherglen)",
            "Pfeiffer Wines (Wahgunyah)",
            "Stanton & Killeen Wines (Rutherglen)"
        ],
        imageName: "rutherglen_image",
        iconNames: ["sun", "wine_glass"]
    ),
    Region(
        name: "Great Southern",
        details: "Great Southern is a large and diverse wine region located in Western Australia. Known for its cool climate and varied terroir, the region produces a wide range of high-quality wines, from elegant Rieslings and Chardonnays to robust Shiraz and Cabernet Sauvignon. Great Southern's subregions each offer unique characteristics, contributing to the region's reputation for excellence.",
        subregions: [
            "Mount Barker: Known for its exceptional Riesling, Shiraz, and Cabernet Sauvignon, with a focus on producing wines with great balance and complexity.\n",
            "Frankland River: Produces some of the region's finest Shiraz and Riesling, known for their intensity and aging potential.\n",
            "Denmark: Famous for its cool climate and high-quality Chardonnay and Pinot Noir.\n",
            "Porongurup: Known for its elegant Riesling and aromatic whites, with vineyards located on the slopes of the Porongurup Range.\n",
            "Albany: Produces a variety of wine styles, including Sauvignon Blanc, Chardonnay, and Pinot Noir, benefiting from the maritime influence of the Southern Ocean."
        ],
        climate: "Great Southern has a cool to moderate climate with significant diurnal temperature variations. The region benefits from the cooling influence of the Southern Ocean, which helps to maintain acidity and develop complex flavors in the grapes.",
        soil: [
            "Mount Barker: Predominantly gravelly loam soils, contributing to the structure and minerality of the wines.\n",
            "Frankland River: A mix of gravel, sandy loam, and clay soils, supporting the production of intense and balanced wines.\n",
            "Denmark: Sandy loam and granite soils, ideal for producing vibrant and elegant wines.\n",
            "Porongurup: Granite-based soils, enhancing the finesse and minerality of the wines.\n",
            "Albany: A combination of sandy loam and clay soils, providing diverse conditions for a range of wine styles."
        ],
        keyWineStyles: "Great Southern is best known for its Riesling, characterized by its bright acidity, citrus and floral aromas, and mineral notes. The region also produces outstanding Shiraz, known for its elegance, complexity, and fine tannins, and Chardonnay, which is noted for its balance and richness. Other notable varieties include Cabernet Sauvignon, Pinot Noir, and Sauvignon Blanc.",
        topProducers: [
            "Plantagenet Wines (Mount Barker)",
            "Frankland Estate (Frankland River)",
            "Singlefile Wines (Denmark)",
            "Castle Rock Estate (Porongurup)",
            "Howard Park Wines (Mount Barker)",
            "Alkoomi Wines (Frankland River)"
        ],
        imageName: "great_southern_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Pemberton",
        details: "Pemberton is a picturesque wine region located in Western Australia, known for its cool climate and pristine natural environment. The region's diverse soils and moderate climate create ideal conditions for producing high-quality wines, particularly Chardonnay and Pinot Noir. Pemberton's lush forests and coastal influences contribute to the unique character of its wines.",
        subregions: [
            "Karri Valley: Known for its premium Chardonnay and Pinot Noir, benefiting from the cool climate and high-altitude vineyards.\n",
            "Manjimup: Produces a variety of high-quality wines, including Shiraz, Merlot, and Sauvignon Blanc.\n",
            "Warren River: Famous for its boutique wineries and diverse wine styles, from crisp whites to robust reds."
        ],
        climate: "Pemberton has a cool to moderate climate with significant maritime influences. The region experiences mild summers and cool, wet winters, which are ideal for growing a variety of grape varieties, particularly those that thrive in cooler conditions.",
        soil: [
            "Karri Valley: Predominantly gravelly loam and sandy soils, contributing to the structure and minerality of the wines.\n",
            "Manjimup: A mix of sandy loam and clay soils, supporting the production of balanced and complex wines.\n",
            "Warren River: Varied soils, including loam and gravel, enhancing the versatility and quality of the wines."
        ],
        keyWineStyles: "Pemberton is best known for its Chardonnay, characterized by its bright acidity, tropical fruit flavors, and subtle oak influence. The region also produces outstanding Pinot Noir, known for its elegance, red fruit flavors, and fine tannins. Other notable varieties include Shiraz, Merlot, Sauvignon Blanc, and Cabernet Sauvignon, which are known for their balance and complexity.",
        topProducers: [
            "Picardy (Karri Valley)",
            "Salitage Wines (Karri Valley)",
            "Bellarmine Wines (Manjimup)",
            "Peos Estate (Manjimup)",
            "Silkwood Estate (Warren River)",
            "Mountford Wines (Warren River)"
        ],
        imageName: "pemberton_image",
        iconNames: ["forest", "wine_glass"]
    )
       ]),

// UNITED STATES
//
Country(name: "United States", regions: [
        Region(
            name: "Napa Valley",
            details: "Napa Valley is one of the most prestigious wine regions in the United States, located in California. It is renowned for its world-class Cabernet Sauvignon and a wide variety of other wines. The region's diverse microclimates and soils contribute to the complexity and quality of its wines. Napa Valley has a rich winemaking history dating back to the 19th century and is home to numerous famous wineries.",
            subregions: [
                "Stags Leap District: Known for its elegant and powerful Cabernet Sauvignon with silky tannins and rich fruit flavors.\n",
                "Rutherford: Famous for its 'Rutherford dust,' producing Cabernet Sauvignon with earthy and dusty tannins.\n",
                "Oakville: Produces some of Napa's most sought-after Cabernet Sauvignon, characterized by its balance and complexity.\n",
                "Howell Mountain: A high-elevation subregion known for its structured and intense Cabernet Sauvignon and Zinfandel.\n",
                "Carneros: Located at the southern end of Napa Valley, known for its cool climate and high-quality Chardonnay and Pinot Noir."
            ],
            climate: "Napa Valley has a Mediterranean climate with warm, dry summers and mild, wet winters. The region experiences significant diurnal temperature variations, which help to preserve acidity and develop complex flavors in the grapes.",
            soil: [
                "Stags Leap District: Predominantly volcanic and loam soils, contributing to the structure and complexity of the wines.\n",
                "Rutherford: A mix of alluvial and sandy loam soils, enhancing the earthy and dusty tannins in the wines.\n",
                "Oakville: Gravelly and sandy loam soils, ideal for producing balanced and complex wines.\n",
                "Howell Mountain: Volcanic and rocky soils, supporting the production of intense and structured wines.\n",
                "Carneros: Clay and loam soils, perfect for growing cool-climate varieties like Chardonnay and Pinot Noir."
            ],
            keyWineStyles: "Napa Valley is best known for its Cabernet Sauvignon, which is characterized by its rich fruit flavors, firm tannins, and aging potential. The region also produces excellent Chardonnay, Merlot, Zinfandel, and Sauvignon Blanc. Napa's wines are known for their balance, complexity, and high quality.",
            topProducers: [
                "Robert Mondavi Winery (Oakville)",
                "Stag's Leap Wine Cellars (Stags Leap District)",
                "Caymus Vineyards (Rutherford)",
                "Harlan Estate (Oakville)",
                "Duckhorn Vineyards (Howell Mountain)",
                "Domaine Carneros (Carneros)"
            ],
            imageName: "napa_valley_image",
            iconNames: ["sun", "wine_glass"]
        ),
        Region(
            name: "Sonoma County",
            details: "Sonoma County is a diverse and expansive wine region located in Northern California. It is known for its varied microclimates and a wide range of high-quality wines. Sonoma County includes several subregions, each with its own unique terroir and wine styles. The region is famous for its Chardonnay, Pinot Noir, and Cabernet Sauvignon, among other varieties.",
            subregions: [
                "Russian River Valley: Renowned for its cool climate and exceptional Chardonnay and Pinot Noir.\n",
                "Alexander Valley: Known for its warm climate and rich, full-bodied Cabernet Sauvignon and Merlot.\n",
                "Dry Creek Valley: Famous for its old-vine Zinfandel and Sauvignon Blanc.\n",
                "Sonoma Coast: Produces high-quality Chardonnay and Pinot Noir, benefiting from the cool maritime influence.\n",
                "Sonoma Valley: Home to some of Sonoma's oldest vineyards, producing a wide range of wines, including Zinfandel, Chardonnay, and Cabernet Sauvignon."
            ],
            climate: "Sonoma County has a diverse climate influenced by its proximity to the Pacific Ocean. The region experiences cool, foggy mornings and warm afternoons, with significant temperature variations between the subregions. This climatic diversity allows for the cultivation of a wide range of grape varieties.",
            soil: [
                "Russian River Valley: Predominantly sandy loam soils, contributing to the elegance and finesse of the wines.\n",
                "Alexander Valley: A mix of gravel, clay, and loam soils, ideal for producing rich and full-bodied wines.\n",
                "Dry Creek Valley: Gravelly loam soils, supporting the production of robust and flavorful wines.\n",
                "Sonoma Coast: A mix of sandy and loam soils, enhancing the freshness and minerality of the wines.\n",
                "Sonoma Valley: Varied soils, including volcanic and alluvial soils, providing diverse conditions for a range of wine styles."
            ],
            keyWineStyles: "Sonoma County is best known for its Chardonnay, characterized by its bright acidity and rich fruit flavors. The region also produces outstanding Pinot Noir, known for its elegance and complexity, as well as Cabernet Sauvignon, Zinfandel, and Sauvignon Blanc. Sonoma's wines are celebrated for their diversity and high quality.",
            topProducers: [
                "Kendall-Jackson (Sonoma County)",
                "Rodney Strong Vineyards (Alexander Valley)",
                "Ridge Vineyards (Dry Creek Valley)",
                "Flowers Vineyards & Winery (Sonoma Coast)",
                "Gundlach Bundschu Winery (Sonoma Valley)",
                "Williams Selyem (Russian River Valley)"
            ],
            imageName: "sonoma_county_image",
            iconNames: ["sun", "wine_glass"]
        ),
        Region(
            name: "Willamette Valley",
            details: "Willamette Valley is Oregon's most renowned wine region, celebrated for its world-class Pinot Noir. Located in the northwestern part of the state, the valley's cool climate and diverse soils provide ideal conditions for viticulture. Willamette Valley's winemaking history dates back to the 1960s and has since become a hub for boutique wineries and sustainable practices.",
            subregions: [
                "Dundee Hills: Known for its volcanic Jory soils and exceptional Pinot Noir with bright red fruit and earthy notes.\n",
                "Eola-Amity Hills: Characterized by its marine sedimentary soils and producing Pinot Noir with strong acidity and dark fruit flavors.\n",
                "McMinnville: Produces robust and complex Pinot Noir, often with notes of black fruit and spice, thanks to its cooler climate and basalt soils.\n",
                "Yamhill-Carlton: Known for its ancient marine sedimentary soils, resulting in Pinot Noir with a rich, silky texture and dark fruit flavors.\n",
                "Chehalem Mountains: A diverse subregion producing a range of styles, known for its Pinot Noir, Chardonnay, and Riesling."
            ],
            climate: "Willamette Valley has a cool, maritime climate with mild summers and wet winters. The region experiences significant diurnal temperature variations, which help to preserve acidity and develop complex flavors in the grapes.",
            soil: [
                "Dundee Hills: Predominantly volcanic Jory soils, contributing to the structure and bright fruit flavors of the wines.\n",
                "Eola-Amity Hills: Marine sedimentary soils, enhancing the acidity and dark fruit characteristics of the wines.\n",
                "McMinnville: Basalt and marine sedimentary soils, supporting the production of robust and complex wines.\n",
                "Yamhill-Carlton: Ancient marine sedimentary soils, providing a rich and silky texture to the wines.\n",
                "Chehalem Mountains: Varied soils, including volcanic, marine sedimentary, and loess, enhancing the diversity of wine styles."
            ],
            keyWineStyles: "Willamette Valley is best known for its Pinot Noir, characterized by its bright acidity, red fruit flavors, and earthy notes. The region also produces excellent Chardonnay, Riesling, and Pinot Gris, known for their balance, complexity, and high quality.",
            topProducers: [
                "Domaine Serene (Dundee Hills)",
                "Cristom Vineyards (Eola-Amity Hills)",
                "The Eyrie Vineyards (Dundee Hills)",
                "Soter Vineyards (Yamhill-Carlton)",
                "Bergström Wines (Chehalem Mountains)",
                "Ken Wright Cellars (Yamhill-Carlton)"
            ],
            imageName: "willamette_valley_image",
            iconNames: ["mountain", "wine_glass"]
        ),
        Region(
            name: "Columbia Valley",
            details: "Columbia Valley is the largest wine region in the Pacific Northwest, spanning across Washington State and parts of Oregon. Known for its diverse climates and soils, the valley produces a wide range of high-quality wines, including Cabernet Sauvignon, Merlot, Chardonnay, and Riesling. Columbia Valley's winemaking history dates back to the 1960s, and it has since become a major player in the American wine industry.",
            subregions: [
                "Walla Walla Valley: Known for its powerful and complex red wines, particularly Cabernet Sauvignon and Syrah.\n",
                "Yakima Valley: Produces a wide variety of wines, including Merlot, Chardonnay, and Riesling, known for their balance and elegance.\n",
                "Red Mountain: Famous for its robust and age-worthy Cabernet Sauvignon and Merlot, with a unique combination of heat and wind exposure.\n",
                "Horse Heaven Hills: Produces high-quality Cabernet Sauvignon, Merlot, and Sauvignon Blanc, benefiting from the Columbia River's moderating influence.\n",
                "Wahluke Slope: Known for its warm climate and well-drained soils, producing concentrated and fruit-forward wines, particularly Cabernet Sauvignon and Merlot."
            ],
            climate: "Columbia Valley has a continental climate with hot, dry summers and cold winters. The region benefits from a large diurnal temperature variation, which helps to preserve acidity and develop complex flavors in the grapes.",
            soil: [
                "Walla Walla Valley: A mix of loess and basalt soils, contributing to the structure and depth of the wines.\n",
                "Yakima Valley: Predominantly sandy and loam soils, ideal for producing balanced and elegant wines.\n",
                "Red Mountain: Gravelly and sandy loam soils, enhancing the concentration and aging potential of the wines.\n",
                "Horse Heaven Hills: Loamy sand and gravel soils, supporting the production of high-quality wines with good drainage.\n",
                "Wahluke Slope: Sandy and rocky soils, contributing to the intensity and fruit-forward nature of the wines."
            ],
            keyWineStyles: "Columbia Valley is best known for its Cabernet Sauvignon, which is characterized by its rich fruit flavors, firm tannins, and aging potential. The region also produces excellent Merlot, Chardonnay, and Riesling, known for their balance, complexity, and high quality. Other notable varieties include Syrah, Sauvignon Blanc, and Pinot Gris.",
            topProducers: [
                "Chateau Ste. Michelle (Columbia Valley)",
                "Leonetti Cellar (Walla Walla Valley)",
                "Quilceda Creek (Columbia Valley)",
                "Woodward Canyon (Walla Walla Valley)",
                "K Vintners (Walla Walla Valley)",
                "Hedges Family Estate (Red Mountain)"
            ],
            imageName: "columbia_valley_image",
            iconNames: ["sun", "wine_glass"]
        ),
        Region(
            name: "Finger Lakes",
            details: "The Finger Lakes region in New York is renowned for its cool-climate wines, particularly Riesling. This picturesque area is characterized by its deep glacial lakes, which moderate the climate and provide ideal conditions for viticulture. The winemaking history of the Finger Lakes dates back to the 19th century, and the region is now home to numerous boutique wineries producing high-quality wines.",
            subregions: [
                "Seneca Lake: The largest and deepest of the Finger Lakes, known for producing outstanding Riesling, as well as Gewürztraminer and Cabernet Franc.\n",
                "Cayuga Lake: Produces a diverse range of wines, including Riesling, Chardonnay, and Pinot Noir, benefiting from the lake's moderating influence.\n",
                "Keuka Lake: Famous for its steep vineyards and high-quality Riesling, as well as sparkling wines and other cool-climate varieties."
            ],
            climate: "The Finger Lakes region has a cool continental climate with cold winters and warm summers. The deep glacial lakes moderate temperatures, reducing the risk of frost and extending the growing season, which helps to maintain acidity and develop complex flavors in the grapes.",
            soil: [
                "Seneca Lake: Predominantly shale and clay soils, contributing to the structure and minerality of the wines.\n",
                "Cayuga Lake: A mix of gravel, loam, and clay soils, supporting the production of diverse wine styles.\n",
                "Keuka Lake: Shale and gravelly loam soils, ideal for producing elegant and aromatic wines."
            ],
            keyWineStyles: "The Finger Lakes region is best known for its Riesling, characterized by its bright acidity, citrus and stone fruit flavors, and mineral notes. The region also produces excellent Gewürztraminer, Chardonnay, and Cabernet Franc, known for their balance and complexity. Other notable varieties include Pinot Noir, Merlot, and sparkling wines.",
            topProducers: [
                "Dr. Konstantin Frank (Keuka Lake)",
                "Hermann J. Wiemer (Seneca Lake)",
                "Ravines Wine Cellars (Seneca Lake)",
                "Fox Run Vineyards (Seneca Lake)",
                "Boundary Breaks Vineyard (Seneca Lake)",
                "Red Newt Cellars (Seneca Lake)"
            ],
            imageName: "finger_lakes_image",
            iconNames: ["lake", "wine_glass"]
        ),
        Region(
            name: "Paso Robles",
            details: "Paso Robles is a prominent wine region located in California's Central Coast. Known for its diverse microclimates and varied soils, the region produces a wide range of high-quality wines, particularly bold red wines such as Cabernet Sauvignon, Zinfandel, and Syrah. Paso Robles has a rich winemaking history and is home to many innovative wineries pushing the boundaries of viticulture and winemaking.",
            subregions: [
                "Adelaida District: Known for its limestone-rich soils and high-quality Cabernet Sauvignon and Rhone varietals.\n",
                "Willow Creek District: Produces some of the region's best Rhone-style wines, with a focus on Syrah and Grenache.\n",
                "Templeton Gap District: Benefits from the cooling influence of the Templeton Gap, producing balanced and complex wines, including Cabernet Sauvignon and Zinfandel.\n",
                "Estrella District: Known for its warm climate and fertile soils, producing fruit-forward wines, particularly Cabernet Sauvignon and Merlot."
            ],
            climate: "Paso Robles has a Mediterranean climate with hot, dry summers and mild winters. The region experiences significant diurnal temperature variations, with hot days and cool nights, which help to preserve acidity and develop complex flavors in the grapes.",
            soil: [
                "Adelaida District: Predominantly limestone-rich soils, contributing to the structure and minerality of the wines.\n",
                "Willow Creek District: A mix of calcareous and shale soils, supporting the production of elegant and complex wines.\n",
                "Templeton Gap District: Sandy loam and clay soils, ideal for producing balanced and fruit-forward wines.\n",
                "Estrella District: Fertile alluvial soils, enhancing the richness and body of the wines."
            ],
            keyWineStyles: "Paso Robles is best known for its bold red wines, particularly Cabernet Sauvignon, Zinfandel, and Syrah, which are characterized by their rich fruit flavors, firm tannins, and spice notes. The region also produces excellent Rhone-style blends, Chardonnay, and Viognier, known for their balance and complexity. Other notable varieties include Merlot, Petite Sirah, and Grenache.",
            topProducers: [
                "Justin Vineyards & Winery (Adelaida District)",
                "Tablas Creek Vineyard (Willow Creek District)",
                "DAOU Vineyards & Winery (Adelaida District)",
                "Eberle Winery (Paso Robles)",
                "Turley Wine Cellars (Templeton Gap District)",
                "L'Aventure Winery (Willow Creek District)"
            ],
            imageName: "paso_robles_image",
            iconNames: ["sun", "wine_glass"]
        ),
        Region(
            name: "Santa Barbara County",
            details: "Santa Barbara County, located on California's Central Coast, is known for its unique east-west transverse mountain ranges that funnel cool ocean breezes into the valleys, creating an ideal climate for growing a variety of grape varieties. The region is celebrated for its Pinot Noir, Chardonnay, and Syrah, and is home to many boutique wineries known for their high-quality wines.",
            subregions: [
                "Santa Maria Valley: Known for its cool climate and exceptional Pinot Noir and Chardonnay, benefiting from the Pacific Ocean's influence.\n",
                "Santa Ynez Valley: Produces a wide range of wine styles, from Syrah and Sauvignon Blanc in the warmer areas to Pinot Noir and Chardonnay in the cooler areas.\n",
                "Sta. Rita Hills: Famous for its cool climate and producing some of the finest Pinot Noir and Chardonnay in California.\n",
                "Happy Canyon of Santa Barbara: Known for its warm climate and high-quality Bordeaux varieties, including Cabernet Sauvignon and Merlot.\n",
                "Ballard Canyon: Specializes in Syrah, producing wines with great depth and complexity."
            ],
            climate: "Santa Barbara County has a diverse climate influenced by the Pacific Ocean. The region experiences cool, foggy mornings and warm, sunny afternoons, with significant temperature variations between the subregions. This climatic diversity allows for the cultivation of a wide range of grape varieties.",
            soil: [
                "Santa Maria Valley: Predominantly sandy and clay loam soils, contributing to the elegance and balance of the wines.\n",
                "Santa Ynez Valley: A mix of sandy loam, clay, and limestone soils, supporting the production of diverse wine styles.\n",
                "Sta. Rita Hills: Sandy and clay loam soils, enhancing the freshness and minerality of the wines.\n",
                "Happy Canyon of Santa Barbara: Gravelly and sandy loam soils, ideal for producing structured and complex wines.\n",
                "Ballard Canyon: Limestone and clay soils, contributing to the depth and richness of the wines."
            ],
            keyWineStyles: "Santa Barbara County is best known for its Pinot Noir and Chardonnay, characterized by their bright acidity, complex flavors, and balance. The region also produces excellent Syrah, Sauvignon Blanc, and Bordeaux varieties such as Cabernet Sauvignon and Merlot. Santa Barbara's wines are celebrated for their elegance, complexity, and high quality.",
            topProducers: [
                "Au Bon Climat (Santa Maria Valley)",
                "Brewer-Clifton (Sta. Rita Hills)",
                "Foxen Vineyard & Winery (Santa Maria Valley)",
                "Melville Winery (Sta. Rita Hills)",
                "Zaca Mesa Winery (Santa Ynez Valley)",
                "Qupe (Santa Maria Valley)"
            ],
            imageName: "santa_barbara_county_image",
            iconNames: ["sun", "wine_glass"]
        ),
        Region(
            name: "Central Coast",
            details: "The Central Coast of California is a vast and diverse wine region that stretches from San Francisco Bay to Santa Barbara County. Known for its varied microclimates and a wide range of grape varieties, the Central Coast produces everything from cool-climate Pinot Noir and Chardonnay to rich and robust Syrah and Cabernet Sauvignon. The region's winemaking history dates back to the 18th century, and it is now home to many innovative and influential wineries.",
            subregions: [
                "Monterey: Known for its cool climate and exceptional Chardonnay and Pinot Noir, benefiting from the Pacific Ocean's influence.\n",
                "Santa Lucia Highlands: Famous for its hillside vineyards and producing some of the finest Pinot Noir and Chardonnay in California.\n",
                "Paso Robles: Known for its warm climate and bold red wines, particularly Cabernet Sauvignon, Zinfandel, and Syrah.\n",
                "Santa Cruz Mountains: Produces a wide range of wine styles, from elegant Pinot Noir and Chardonnay to robust Cabernet Sauvignon.\n",
                "Edna Valley: Known for its cool climate and high-quality Chardonnay and Pinot Noir."
            ],
            climate: "The Central Coast has a diverse climate influenced by the Pacific Ocean. The region experiences cool, foggy mornings and warm, sunny afternoons, with significant temperature variations between the subregions. This climatic diversity allows for the cultivation of a wide range of grape varieties.",
            soil: [
                "Monterey: Predominantly sandy and loam soils, contributing to the elegance and freshness of the wines.\n",
                "Santa Lucia Highlands: A mix of granite and sandy loam soils, supporting the production of structured and complex wines.\n",
                "Paso Robles: Varied soils, including limestone, clay, and sandy loam, enhancing the richness and body of the wines.\n",
                "Santa Cruz Mountains: A mix of sandstone, shale, and loam soils, providing diverse conditions for a range of wine styles.\n",
                "Edna Valley: Predominantly clay and loam soils, ideal for producing balanced and aromatic wines."
            ],
            keyWineStyles: "The Central Coast is best known for its Chardonnay and Pinot Noir, characterized by their bright acidity, complex flavors, and balance. The region also produces excellent Syrah, Cabernet Sauvignon, and Zinfandel, known for their richness and depth. Other notable varieties include Sauvignon Blanc, Merlot, and Grenache. Central Coast wines are celebrated for their diversity, quality, and innovation.",
            topProducers: [
                "Talbott Vineyards (Monterey)",
                "Pisoni Vineyards (Santa Lucia Highlands)",
                "Justin Vineyards & Winery (Paso Robles)",
                "Ridge Vineyards (Santa Cruz Mountains)",
                "Tolosa Winery (Edna Valley)",
                "Calera Wine Company (Central Coast)"
            ],
            imageName: "central_coast_image",
            iconNames: ["sun", "wine_glass"]
        ),
        Region(
            name: "Texas Hill Country",
            details: "Texas Hill Country is one of the most significant and fastest-growing wine regions in the United States. Located in central Texas, this picturesque area is characterized by rolling hills, limestone bedrock, and a warm climate, making it ideal for growing a variety of grape varieties. Texas Hill Country is known for its diverse wine styles, ranging from robust reds to crisp whites, and is home to many boutique wineries.",
            subregions: [
                "Fredericksburg: The heart of Texas Hill Country, known for producing high-quality wines from a variety of grapes, including Tempranillo, Sangiovese, and Viognier.\n",
                "Bell Mountain: The first designated viticultural area in Texas, known for its unique terroir and producing a range of wine styles.\n",
                "Driftwood: A popular area for wine tourism, known for its picturesque vineyards and high-quality wines from grapes like Merlot, Cabernet Sauvignon, and Chardonnay.\n",
                "Stonewall: Produces a diverse range of wines, with a focus on both red and white varieties, benefiting from the region's warm climate and limestone soils."
            ],
            climate: "Texas Hill Country has a warm, continental climate with hot summers and mild winters. The region benefits from significant diurnal temperature variations, which help to maintain acidity and develop complex flavors in the grapes. The area's limestone bedrock and well-draining soils are also conducive to high-quality viticulture.",
            soil: [
                "Fredericksburg: Predominantly limestone and clay soils, contributing to the structure and minerality of the wines.\n",
                "Bell Mountain: Sandy loam and limestone soils, ideal for producing balanced and aromatic wines.\n",
                "Driftwood: A mix of clay, limestone, and sandy soils, supporting the production of diverse wine styles.\n",
                "Stonewall: Limestone and clay soils, enhancing the richness and complexity of the wines."
            ],
            keyWineStyles: "Texas Hill Country is best known for its bold red wines, particularly Tempranillo, Sangiovese, and Cabernet Sauvignon, which are characterized by their rich fruit flavors, firm tannins, and spice notes. The region also produces excellent white wines, including Viognier, Chardonnay, and Roussanne, known for their balance and aromatic intensity. Other notable varieties include Merlot, Malbec, and Mourvèdre.",
            topProducers: [
                "William Chris Vineyards (Hye)",
                "Becker Vineyards (Stonewall)",
                "Grape Creek Vineyards (Fredericksburg)",
                "Pedernales Cellars (Stonewall)",
                "Duchman Family Winery (Driftwood)",
                "Fall Creek Vineyards (Tow)"
            ],
            imageName: "texas_hill_country_image",
            iconNames: ["sun", "wine_glass"]
        ),
        Region(
            name: "Virginia",
            details: "Virginia is one of the oldest wine regions in the United States, with a history of winemaking dating back to the early 17th century. Located along the East Coast, Virginia boasts a diverse climate and varied terroir that allow for the production of a wide range of high-quality wines. The state is particularly known for its Viognier, Cabernet Franc, and Petit Verdot, as well as its innovative approaches to winemaking.",
            subregions: [
                "Monticello: Located in the central part of the state, this region is known for its rich history and high-quality wines, particularly Viognier and Cabernet Franc.\n",
                "Northern Virginia: Includes the Loudoun County area, known for its boutique wineries and diverse range of wines, including Chardonnay, Merlot, and Cabernet Sauvignon.\n",
                "Shenandoah Valley: Offers a cooler climate and is known for its Riesling, Cabernet Franc, and Petit Verdot.\n",
                "Central Virginia: Produces a wide range of wine styles, benefiting from the region's varied climate and terroir."
            ],
            climate: "Virginia has a diverse climate that ranges from humid subtropical in the eastern part of the state to more temperate in the western highlands. The state's varied topography includes coastal plains, rolling hills, and mountainous areas, which contribute to the complexity and diversity of its wines. The growing season is generally long, with hot summers and mild to cool winters.",
            soil: [
                "Monticello: Predominantly clay and loam soils, contributing to the structure and complexity of the wines.\n",
                "Northern Virginia: A mix of loam, clay, and gravel soils, supporting the production of diverse wine styles.\n",
                "Shenandoah Valley: Limestone and shale soils, enhancing the minerality and finesse of the wines.\n",
                "Central Virginia: Varied soils, including clay and sandy loam, providing optimal conditions for a range of grape varieties."
            ],
            keyWineStyles: "Virginia is best known for its Viognier, which is characterized by its aromatic intensity, tropical fruit flavors, and rich texture. The state also produces excellent Cabernet Franc, known for its bright acidity, red fruit flavors, and spice notes. Other notable varieties include Petit Verdot, Merlot, Chardonnay, and Norton. Virginia's wines are celebrated for their elegance, balance, and complexity.",
            topProducers: [
                "Barboursville Vineyards (Monticello)",
                "Jefferson Vineyards (Monticello)",
                "Breaux Vineyards (Northern Virginia)",
                "King Family Vineyards (Monticello)",
                "Stone Tower Winery (Northern Virginia)",
                "Bluestone Vineyard (Shenandoah Valley)"
            ],
            imageName: "virginia_image",
            iconNames: ["mountain", "wine_glass"]
        )
        ]),
//
//
//GERMANY

Country(name: "Germany", regions: [
    Region(
        name: "Mosel",
        details: "The Mosel region, located in southwestern Germany, is renowned for producing some of the finest Rieslings in the world. The region's steep vineyards, which line the Mosel River, are characterized by their slate soils and cool climate. These unique conditions contribute to the distinct minerality, bright acidity, and complex aromatics of Mosel wines.",
        subregions: [
            "Bernkastel: Known for its steep, south-facing vineyards that produce elegant and aromatic Rieslings with excellent aging potential.\n",
            "Saar: A cooler subregion that produces Rieslings with high acidity and pronounced minerality.\n",
            "Ruwer: Similar to the Saar, the Ruwer subregion is known for its cool climate and mineral-driven Rieslings."
        ],
        climate: "Mosel has a cool continental climate with long, mild growing seasons. The steep slopes of the vineyards allow for optimal sun exposure, while the proximity to the Mosel River helps to moderate temperatures and protect the vines from frost.",
        soil: [
            "Bernkastel: Predominantly blue and red slate soils, contributing to the minerality and finesse of the wines.\n",
            "Saar: Grey slate soils, enhancing the bright acidity and aromatic intensity of the Rieslings.\n",
            "Ruwer: Blue slate soils, ideal for producing mineral-driven and elegant wines."
        ],
        keyWineStyles: "Mosel is best known for its Riesling, characterized by its bright acidity, floral and citrus aromatics, and distinct minerality. The wines range from dry to lusciously sweet, with the region's sweet wines often displaying incredible aging potential. Mosel Rieslings are celebrated for their elegance, complexity, and ability to reflect their unique terroir.",
        topProducers: [
            "Weingut Dr. Loosen (Bernkastel)",
            "Weingut Egon Müller (Saar)",
            "Weingut J.J. Prüm (Bernkastel)",
            "Weingut Fritz Haag (Bernkastel)",
            "Weingut Schloss Lieser (Bernkastel)",
            "Weingut Maximin Grünhaus (Ruwer)"
        ],
        imageName: "mosel_image",
        iconNames: ["river", "wine_glass"]
    ),
    Region(
        name: "Rheingau",
        details: "The Rheingau region, located along the Rhine River in southwestern Germany, is one of the country's most prestigious wine regions. Known for its high-quality Riesling and Spätburgunder (Pinot Noir), Rheingau benefits from a favorable climate and diverse soils. The region's wines are celebrated for their balance, complexity, and ability to age gracefully.",
        subregions: [
            "Rüdesheim: Known for its steep vineyards and producing some of the region's most complex and age-worthy Rieslings.\n",
            "Johannisberg: Home to the famous Schloss Johannisberg, this subregion is renowned for its historic vineyards and exceptional Rieslings.\n",
            "Assmannshausen: Famous for its Spätburgunder (Pinot Noir), producing elegant and structured red wines."
        ],
        climate: "Rheingau has a moderate continental climate with warm summers and cool winters. The region benefits from the reflective properties of the Rhine River, which helps to enhance ripening and protect the vines from frost. The diverse microclimates within Rheingau allow for the production of a wide range of wine styles.",
        soil: [
            "Rüdesheim: Predominantly slate and quartzite soils, contributing to the structure and minerality of the wines.\n",
            "Johannisberg: A mix of loess, loam, and quartzite soils, ideal for producing balanced and complex Rieslings.\n",
            "Assmannshausen: Slate and sandstone soils, supporting the production of elegant and structured Spätburgunder."
        ],
        keyWineStyles: "Rheingau is best known for its Riesling, characterized by its bright acidity, floral and citrus aromatics, and mineral notes. The region also produces excellent Spätburgunder, known for its red fruit flavors, silky tannins, and elegance. Rheingau wines range from dry to lusciously sweet, with the region's sweet wines, such as Auslese, Beerenauslese, and Trockenbeerenauslese, displaying incredible aging potential.",
        topProducers: [
            "Schloss Johannisberg (Johannisberg)",
            "Weingut Robert Weil (Kiedrich)",
            "Weingut Georg Breuer (Rüdesheim)",
            "Weingut August Kesseler (Assmannshausen)",
            "Weingut Künstler (Hochheim)",
            "Weingut Kloster Eberbach (Eltville)"
        ],
        imageName: "rheingau_image",
        iconNames: ["river", "wine_glass"]
    ),
    Region(
        name: "Rheinhessen",
        details: "Rheinhessen, located in southwestern Germany, is the largest wine-producing region in the country. Known for its diverse range of wines, Rheinhessen is celebrated for its innovation and variety. The region produces excellent Rieslings, but it is also known for its Silvaner, Müller-Thurgau, and Spätburgunder (Pinot Noir). The rolling hills and varied soils of Rheinhessen contribute to the complexity and quality of its wines.",
        subregions: [
            "Nierstein: Known for its 'Roter Hang' (Red Slope) vineyards, producing some of the region's most prestigious Rieslings with intense minerality.\n",
            "Westhofen: A key area for high-quality dry Rieslings and other white varieties, known for its limestone-rich soils.\n",
            "Ingelheim: Renowned for its Spätburgunder (Pinot Noir) and other red wines, benefiting from the region's warmer climate."
        ],
        climate: "Rheinhessen has a mild continental climate with warm summers and mild winters. The region's varied topography, including rolling hills and river valleys, creates diverse microclimates that are ideal for growing a wide range of grape varieties.",
        soil: [
            "Nierstein: Red slate and sandstone soils, contributing to the minerality and structure of the wines.\n",
            "Westhofen: Predominantly limestone and clay soils, ideal for producing structured and mineral-driven wines.\n",
            "Ingelheim: A mix of loess, clay, and limestone soils, supporting the production of balanced and complex red wines."
        ],
        keyWineStyles: "Rheinhessen is known for its versatile and innovative wine styles, with Riesling being the standout variety, characterized by its bright acidity, citrus and stone fruit flavors, and minerality. The region also produces excellent Silvaner, known for its herbaceous and mineral notes, as well as Müller-Thurgau, which is typically light and aromatic. Rheinhessen's Spätburgunder is celebrated for its red fruit flavors, smooth tannins, and elegance.",
        topProducers: [
            "Weingut Wittmann (Westhofen)",
            "Weingut Keller (Flörsheim-Dalsheim)",
            "Weingut Gunderloch (Nackenheim)",
            "Weingut Wagner-Stempel (Siefersheim)",
            "Weingut Philipp Kuhn (Laumersheim)",
            "Weingut Dreissigacker (Bechtheim)"
        ],
        imageName: "rheinhessen_image",
        iconNames: ["grapes", "wine_glass"]
    ),
    Region(
        name: "Pfalz",
        details: "Pfalz, also known as the Palatinate, is one of Germany's largest and most productive wine regions. Located in southwestern Germany, the region is known for its warm climate and diverse range of wines. Pfalz is particularly famous for its Rieslings, but it also produces excellent Pinot Noir, Dornfelder, and other white varieties such as Grauburgunder (Pinot Gris) and Weissburgunder (Pinot Blanc).",
        subregions: [
            "Mittelhaardt: The heart of the Pfalz region, known for producing some of the finest Rieslings with great aging potential.\n",
            "Südliche Weinstraße: Located to the south, this subregion produces a wide range of wines, including excellent red wines and aromatic whites.\n",
            "Bad Dürkheim: Famous for its wine festivals and producing a variety of high-quality wines, from Riesling to Pinot Noir."
        ],
        climate: "Pfalz has a warm, sunny climate with mild winters, making it one of the warmest wine regions in Germany. The region benefits from the protection of the Haardt Mountains, which create a rain shadow effect, reducing precipitation and providing ideal growing conditions for a variety of grape varieties.",
        soil: [
            "Mittelhaardt: Predominantly limestone, sandstone, and loess soils, contributing to the complexity and minerality of the wines.\n",
            "Südliche Weinstraße: A mix of sandstone, loam, and clay soils, supporting the production of diverse and high-quality wines.\n",
            "Bad Dürkheim: Varied soils, including loess and clay, enhancing the versatility and richness of the wines."
        ],
        keyWineStyles: "Pfalz is best known for its Riesling, which is characterized by its bright acidity, citrus and stone fruit flavors, and mineral notes. The region also excels in producing Pinot Noir, known for its red fruit flavors, smooth tannins, and elegance. Other notable varieties include Grauburgunder (Pinot Gris), Weissburgunder (Pinot Blanc), and Dornfelder, which are celebrated for their aromatic intensity and balance.",
        topProducers: [
            "Weingut Dr. Bürklin-Wolf (Wachenheim)",
            "Weingut Bassermann-Jordan (Deidesheim)",
            "Weingut Reichsrat von Buhl (Deidesheim)",
            "Weingut Müller-Catoir (Haardt)",
            "Weingut Knipser (Laumersheim)",
            "Weingut A. Christmann (Gimmeldingen)"
        ],
        imageName: "pfalz_image",
        iconNames: ["sun", "wine_glass"]
    ),
    Region(
        name: "Nahe",
        details: "The Nahe region, located in southwestern Germany, is renowned for its high-quality Rieslings. The region benefits from a diverse range of soils and microclimates, which contribute to the complexity and variety of its wines. Nahe Rieslings are known for their vibrant acidity, rich fruit flavors, and distinct minerality.",
        subregions: [
            "Bad Kreuznach: Known for producing rich and complex Rieslings with excellent aging potential.\n",
            "Schlossböckelheim: Famous for its steep, terraced vineyards and mineral-driven Rieslings.\n",
            "Oberhausen: Home to some of the region's most prestigious vineyards, producing elegant and refined Rieslings."
        ],
        climate: "Nahe has a moderate continental climate with warm summers and mild winters. The diverse topography and proximity to the Nahe River create unique microclimates that are ideal for viticulture. The region benefits from the cooling influence of the river, which helps to preserve acidity and enhance the aromatic complexity of the wines.",
        soil: [
            "Bad Kreuznach: Predominantly loess and clay soils, contributing to the structure and richness of the wines.\n",
            "Schlossböckelheim: Volcanic soils, enhancing the minerality and intensity of the wines.\n",
            "Oberhausen: Slate and quartzite soils, ideal for producing elegant and mineral-driven wines."
        ],
        keyWineStyles: "Nahe is best known for its Riesling, which is characterized by its bright acidity, citrus and stone fruit flavors, and pronounced minerality. The region also produces excellent Pinot Blanc (Weissburgunder), Pinot Gris (Grauburgunder), and Silvaner, known for their balance and aromatic intensity. Nahe wines range from dry to sweet, with the region's sweet wines displaying incredible aging potential.",
        topProducers: [
            "Weingut Dönnhoff (Oberhausen)",
            "Weingut Schäfer-Fröhlich (Bockenau)",
            "Weingut Emrich-Schönleber (Monzingen)",
            "Weingut Hermann Dönnhoff (Oberhausen)",
            "Weingut Gut Hermannsberg (Niederhausen)",
            "Weingut Hexamer (Meddersheim)"
        ],
        imageName: "nahe_image",
        iconNames: ["river", "wine_glass"]
    ),
    Region(
        name: "Franken",
        details: "Franken, located in northern Bavaria, is a unique wine region known for its distinctive bottle shape (the Bocksbeutel) and its high-quality Silvaner wines. The region's continental climate and diverse soils create ideal conditions for producing a range of wine styles. Franken wines are celebrated for their purity, precision, and ability to reflect their terroir.",
        subregions: [
            "Würzburg: The heart of Franken, known for its historic vineyards and high-quality Silvaner and Riesling.\n",
            "Volkacher Mainschleife: Famous for its scenic vineyards along the Main River and producing elegant and aromatic wines.\n",
            "Steigerwald: A cooler subregion that produces fresh and mineral-driven wines from a variety of grape varieties."
        ],
        climate: "Franken has a cool continental climate with warm summers and cold winters. The region's vineyards are often situated on south-facing slopes, which provide optimal sun exposure and help to ripen the grapes. The diverse microclimates within Franken contribute to the complexity and variety of its wines.",
        soil: [
            "Würzburg: Predominantly Muschelkalk (shell limestone) soils, contributing to the minerality and precision of the wines.\n",
            "Volkacher Mainschleife: A mix of loess, clay, and limestone soils, enhancing the aromatic intensity and balance of the wines.\n",
            "Steigerwald: Predominantly sandstone and limestone soils, ideal for producing fresh and mineral-driven wines."
        ],
        keyWineStyles: "Franken is best known for its Silvaner, which is characterized by its crisp acidity, herbaceous notes, and pronounced minerality. The region also produces excellent Riesling, Pinot Blanc (Weissburgunder), and Müller-Thurgau, known for their aromatic intensity and balance. Franken's red wines, particularly Spätburgunder (Pinot Noir) and Domina, are celebrated for their elegance and structure.",
        topProducers: [
            "Weingut Juliusspital (Würzburg)",
            "Weingut Hans Wirsching (Iphofen)",
            "Weingut Rudolf Fürst (Bürgstadt)",
            "Weingut Horst Sauer (Escherndorf)",
            "Weingut Bürgerspital (Würzburg)",
            "Weingut Castell (Castell)"
        ],
        imageName: "franken_image",
        iconNames: ["river", "wine_glass"]
    ),
    Region(
        name: "Ahr",
        details: "The Ahr region, located in western Germany, is one of the country's smallest wine regions but is renowned for its exceptional red wines, particularly Spätburgunder (Pinot Noir). The region's steep vineyards along the Ahr River and its unique slate soils contribute to the distinctive character and high quality of its wines.",
        subregions: [
            "Walporzheim: Known for producing elegant and complex Spätburgunder with excellent aging potential.\n",
            "Dernau: Famous for its robust and full-bodied red wines, particularly Spätburgunder and Frühburgunder.\n",
            "Altenahr: Produces a range of high-quality wines, including Spätburgunder and Riesling, benefiting from the region's cool climate and slate soils."
        ],
        climate: "Ahr has a cool, continental climate with mild summers and cold winters. The steep vineyards along the Ahr River benefit from the river's moderating influence, which helps to protect the vines from frost and enhances ripening. The unique microclimates within Ahr contribute to the region's ability to produce high-quality red wines.",
        soil: [
            "Walporzheim: Predominantly slate soils, contributing to the minerality and finesse of the wines.\n",
            "Dernau: Slate and greywacke soils, enhancing the structure and complexity of the wines.\n",
            "Altenahr: A mix of slate and loess soils, ideal for producing elegant and mineral-driven wines."
        ],
        keyWineStyles: "Ahr is best known for its Spätburgunder (Pinot Noir), characterized by its bright acidity, red fruit flavors, and silky tannins. The region also produces excellent Frühburgunder, known for its rich fruit flavors and elegance. While red wines dominate, Ahr also produces high-quality Rieslings with bright acidity and mineral notes.",
        topProducers: [
            "Weingut Meyer-Näkel (Dernau)",
            "Weingut Jean Stodden (Rech)",
            "Weingut Kreuzberg (Dernau)",
            "Weingut Deutzerhof (Mayschoss)",
            "Weingut J.J. Adeneuer (Ahrweiler)",
            "Weingut Burggarten (Heppingen)"
        ],
        imageName: "ahr_image",
        iconNames: ["river", "wine_glass"]
    ),
    Region(
        name: "Baden",
        details: "Baden is Germany's southernmost wine region, stretching from the border with Switzerland to the north of Heidelberg. Known for its warm climate and diverse terroirs, Baden produces a wide range of high-quality wines. The region is particularly famous for its Spätburgunder (Pinot Noir), Grauburgunder (Pinot Gris), and Weissburgunder (Pinot Blanc).",
        subregions: [
            "Kaiserstuhl: Known for its volcanic soils and producing rich and full-bodied wines, particularly Spätburgunder and Grauburgunder.\n",
            "Ortenau: Famous for its Rieslings, which are characterized by their bright acidity and citrus flavors.\n",
            "Markgräflerland: Known for its Gutedel (Chasselas) and producing fresh and light white wines."
        ],
        climate: "Baden has a warm, sunny climate with mild winters and long growing seasons. The region benefits from the protective influence of the Black Forest and the Rhine River, which create ideal conditions for viticulture. The diverse microclimates within Baden allow for the production of a wide range of wine styles.",
        soil: [
            "Kaiserstuhl: Predominantly volcanic and loess soils, contributing to the richness and complexity of the wines.\n",
            "Ortenau: Granite and gneiss soils, ideal for producing elegant and mineral-driven Rieslings.\n",
            "Markgräflerland: A mix of loess, clay, and limestone soils, supporting the production of fresh and aromatic white wines."
        ],
        keyWineStyles: "Baden is best known for its Spätburgunder (Pinot Noir), characterized by its red fruit flavors, smooth tannins, and elegance. The region also produces excellent Grauburgunder (Pinot Gris) and Weissburgunder (Pinot Blanc), known for their aromatic intensity and balance. Other notable varieties include Riesling, Gutedel (Chasselas), and Müller-Thurgau, which are celebrated for their freshness and versatility.",
        topProducers: [
            "Weingut Franz Keller (Kaiserstuhl)",
            "Weingut Dr. Heger (Kaiserstuhl)",
            "Weingut Salwey (Kaiserstuhl)",
            "Weingut Schloss Neuweier (Ortenau)",
            "Weingut Markgraf von Baden (Ortenau)",
            "Weingut Zähringer (Markgräflerland)"
        ],
        imageName: "baden_image",
        iconNames: ["sun", "wine_glass"]
    ),
    Region(
        name: "Württemberg",
        details: "Württemberg, located in southwestern Germany, is known for its red wines, particularly from the Trollinger, Lemberger (Blaufränkisch), and Spätburgunder (Pinot Noir) grapes. The region is characterized by its rolling hills and diverse soils, which contribute to the distinctive character of its wines. Württemberg is also famous for its wine cooperatives, which play a significant role in the region's wine production.",
        subregions: [
            "Heilbronn: Known for its robust red wines, particularly Trollinger and Lemberger, with a focus on producing wines with rich fruit flavors and smooth tannins.\n",
            "Stuttgart: Famous for its steep vineyard terraces and high-quality Spätburgunder and Riesling wines.\n",
            "Remstal: Produces a variety of wine styles, including elegant Rieslings and rich red wines from Trollinger and Lemberger."
        ],
        climate: "Württemberg has a moderate continental climate with warm summers and mild winters. The region's varied topography and proximity to the Neckar River create unique microclimates that are ideal for viticulture.",
        soil: [
            "Heilbronn: Predominantly Keuper (marl) and limestone soils, contributing to the structure and complexity of the wines.\n",
            "Stuttgart: A mix of Keuper, marl, and sandstone soils, enhancing the minerality and finesse of the wines.\n",
            "Remstal: Varied soils, including loess and clay, supporting the production of diverse wine styles."
        ],
        keyWineStyles: "Württemberg is best known for its red wines, particularly Trollinger, which is light and fruity with bright acidity, and Lemberger, known for its deep color, rich fruit flavors, and firm tannins. The region also produces excellent Spätburgunder, characterized by its elegance and red fruit flavors. Württemberg's white wines, including Riesling and Kerner, are celebrated for their freshness and aromatic intensity.",
        topProducers: [
            "Weingut Dautel (Bönnigheim)",
            "Weingut Graf Neipperg (Schwaigern)",
            "Weingut Aldinger (Fellbach)",
            "Weingut Drautz-Able (Heilbronn)",
            "Weingut Schnaitmann (Fellbach)",
            "Genossenschaftskellerei Heilbronn (Heilbronn)"
        ],
        imageName: "wurttemberg_image",
        iconNames: ["grapes", "wine_glass"]
    ),
    Region(
        name: "Saale-Unstrut",
        details: "Saale-Unstrut is Germany's northernmost wine region, located in the eastern part of the country. Known for its cool climate and steep terraced vineyards, Saale-Unstrut produces elegant and fresh wines, particularly from white grape varieties such as Müller-Thurgau, Riesling, and Silvaner. The region's unique terroir and long winemaking tradition contribute to the distinctive character of its wines.",
        subregions: [
            "Freyburg: The heart of Saale-Unstrut, known for its high-quality white wines and historic vineyards.\n",
            "Bad Kösen: Famous for its steep vineyard terraces and producing fresh and aromatic wines, particularly from Riesling and Müller-Thurgau.\n",
            "Naumburg: Produces a variety of wine styles, including crisp whites and elegant reds, benefiting from the region's cool climate and diverse soils."
        ],
        climate: "Saale-Unstrut has a cool continental climate with moderate summers and cold winters. The region's vineyards are often situated on steep, south-facing slopes, which provide optimal sun exposure and help to ripen the grapes in this northern climate. The Saale and Unstrut rivers also contribute to the region's unique microclimates.",
        soil: [
            "Freyburg: Predominantly shell limestone and loess soils, contributing to the minerality and structure of the wines.\n",
            "Bad Kösen: A mix of limestone, loess, and clay soils, supporting the production of fresh and aromatic wines.\n",
            "Naumburg: Varied soils, including sandstone and clay, enhancing the versatility and quality of the wines."
        ],
        keyWineStyles: "Saale-Unstrut is best known for its fresh and aromatic white wines, particularly Müller-Thurgau, which is characterized by its light body, floral aromas, and crisp acidity. The region also produces excellent Riesling, known for its bright acidity and citrus flavors, and Silvaner, which is celebrated for its herbaceous and mineral notes. Saale-Unstrut's red wines, including Spätburgunder and Portugieser, are known for their elegance and freshness.",
        topProducers: [
            "Weingut Lützkendorf (Bad Kösen)",
            "Weingut Pawis (Freyburg)",
            "Winzervereinigung Freyburg (Freyburg)",
            "Weingut Hey (Naumburg)",
            "Weingut Born (Freyburg)",
            "Landesweingut Kloster Pforta (Naumburg)"
        ],
        imageName: "saale_unstrut_image",
        iconNames: ["river", "wine_glass"]
    )
        ]),


//AUSTRIA

Country(name: "Austria", regions: [
    Region(
    name: "Wachau",
    details: "The Wachau is a prestigious Austrian wine region along the Danube River. Renowned for its production of Riesling and Grüner Veltliner, the area features steep terraces that overlook the river, enhancing both scenery and the mesoclimate conducive to viticulture. The region is celebrated for its complex, aromatic whites that exhibit both minerality and ripe fruit flavors, thanks to the unique microclimates and varying sun exposures on the terraced vineyards.",
    subregions: [
        "Spitz: Known for robust Grüner Veltliner, Spitz produces wines with depth and complexity.\n",
        "Weissenkirchen: Famed for its expressive Riesling, this area captures the essence of Wachau’s terroir.\n",
        "Dürnstein: Offers a diverse array of vineyard sites, yielding some of the most sought-after wines in the region."
    ],
    climate: "Wachau enjoys a microclimate characterized by dry, warm summers and cold winters, with the Danube River moderating temperatures and aiding in the ripening of grapes.",
    soil: [
        "Spitz: Primary rock and loess contribute to structured and mineral-driven wines.\n",
        "Weissenkirchen: Dominantly primary rock soils that enhance the aromatic profile and longevity of the wines.\n",
        "Dürnstein: A mix of loess and gneiss soils, offering ideal conditions for both Riesling and Grüner Veltliner."
    ],
    keyWineStyles: "Wachau is famed for its dry, full-bodied Grüner Veltliner with peppery and spicy notes, as well as elegant and mineral-rich Riesling. The region also produces some late harvest sweet wines, known for their balance and intensity.",
    topProducers: [
        "Weingut Knoll (Dürnstein)",
        "Weingut Franz Hirtzberger (Spitz)",
        "Weingut Prager (Weissenkirchen)",
        "Domäne Wachau (Dürnstein)",
        "Weingut Alzinger (Dürnstein)",
        "Weingut Rudi Pichler (Wösendorf)"
    ],
    imageName: "wachau_image",
    iconNames: ["river", "wine_glass"]
),
    Region(
        name: "Kamptal",
        details: "Located north of the Wachau, Kamptal is famed for its expansive vineyards that produce some of Austria's most noted Riesling and Grüner Veltliner wines. The region gets its name from the Kamp River, which influences the climate and soil to create ideal conditions for viticulture. Kamptal is known for its wines that exhibit exceptional purity and precision, influenced by the region's mixed soils and cool nights.",
        subregions: [
            "Langenlois: The largest wine town in Austria, known for its innovative wine-making techniques and high-quality Grüner Veltliner.\n",
            "Zöbing: A village that produces distinct Riesling, characterized by sharp minerality and vibrant acidity.\n",
            "Gobelsburg: Home to historic vineyards that produce both Grüner Veltliner and Riesling."
        ],
        climate: "Kamptal features a continental climate with significant diurnal temperature variations, which are crucial for developing acidity and aromatics in the grapes.",
        soil: [
            "Langenlois: Loess and loam soils dominate, offering rich nutrients and water retention for vine health.\n",
            "Zöbing: Primarily consists of rocky and sandy soils, ideal for mineral-driven Riesling.\n",
            "Gobelsburg: Mixed soils including loess, clay, and gravel, allowing for a variety of wine styles."
        ],
        keyWineStyles: "Kamptal is renowned for its crisp and aromatic Grüner Veltliner, showing white pepper and stone fruit flavors, and its minerally Riesling with high acidity and citrus notes. The region also produces complex reds from the Zweigelt grape.",
        topProducers: [
            "Weingut Bründlmayer (Langenlois)",
            "Weingut Hirsch (Kammern)",
            "Weingut Schloss Gobelsburg (Gobelsburg)",
            "Weingut Loimer (Langenlois)",
            "Weingut Jurtschitsch (Langenlois)",
            "Weingut Allram (Strass)"
        ],
        imageName: "kamptal_image",
        iconNames: ["river", "wine_glass"]
    ),
    Region(
        name: "Kremstal",
        details: "Adjacent to Kamptal, Kremstal is noted for its versatile wine production, influenced by the Krems River. The region is split into two distinct areas: the town of Krems and the surrounding countryside, each offering unique terroir and wine styles. Kremstal is particularly celebrated for its Riesling and Grüner Veltliner, which exhibit a fine balance between fruitiness and minerality, reflecting the mixed soil compositions and microclimates.",
        subregions: [
            "Krems: The urban center, known for vibrant and accessible wines, particularly Grüner Veltliner.\n",
            "Senftenberg: Famous for its aged Rieslings that showcase depth and complexity.\n",
            "Rohrendorf: Known for both white and red wines, benefiting from gravelly soils that enhance the grape’s natural flavors."
        ],
        climate: "Kremstal has a transitional climate with influences from both the Danube River and the eastern plains, leading to hot summers and cold winters, ideal for aromatic whites.",
        soil: [
            "Krems: Loess and sandy soils predominate, contributing to the lively acidity in wines.\n",
            "Senftenberg: Predominantly rocky and mineral-rich soils, ideal for structured Riesling.\n",
            "Rohrendorf: Mixed soils, including loam and gravel, provide a good basis for diverse wine production."
        ],
        keyWineStyles: "Kremstal is known for its elegant and spicy Grüner Veltliner and mineral-rich Riesling. The region also produces some notable red wines from Zweigelt and Pinot Noir, characterized by their bright fruit flavors and smooth tannins.",
        topProducers: [
            "Weingut Nigl (Senftenberg)",
            "Weingut Salomon Undhof (Krems)",
            "Weingut Stadt Krems (Krems)",
            "Weingut Sepp Moser (Rohrendorf)",
            "Weingut Martin Nittnaus (Krems)",
            "Weingut Geyerhof (Oberfucha)"
        ],
        imageName: "kremstal_image",
        iconNames: ["river", "wine_glass"]
    ),
    Region(
        name: "Burgenland",
        details: "Located in the eastern part of Austria, bordering Hungary, Burgenland is distinguished by its warm climate and extensive lakes, which provide a tempering effect on the hot summers. This region is renowned for its red wines, particularly from the Blaufränkisch grape, which thrives in the local conditions. Burgenland also produces exquisite sweet wines, such as Beerenauslese and Trockenbeerenauslese, from grapes concentrated by noble rot.",
        subregions: [
            "Neusiedlersee: Known for powerful red wines and rich, sweet whites due to the moderating effect of the lake.\n",
            "Eisenstadt: A smaller area focusing on both red and white wines, known for its sustainable viticulture.\n",
            "Mittelburgenland: Often called ‘Blaufränkischland’, focused on producing structured and spicy Blaufränkisch."
        ],
        climate: "Burgenland features a Pannonian climate with hot summers and mild winters, moderated by the Neusiedlersee which helps in the development of noble rot, crucial for sweet wine production.",
        soil: [
            "Neusiedlersee: Black earth and sandy soils which retain heat, aiding the ripening of red and sweet white grapes.\n",
            "Eisenstadt: Varied soils including loess and limestone, contributing to the complexity of the wines.\n",
            "Mittelburgenland: Primarily clay and iron-rich soils, perfect for cultivating Blaufränkisch."
        ],
        keyWineStyles: "Burgenland is best known for its robust Blaufränkisch, with dark berry flavors and spicy notes. The region also excels in producing sweet wines like Beerenauslese, characterized by their rich honey and apricot flavors.",
        topProducers: [
            "Weingut Heinrich (Gols)",
            "Weingut Gerhard Pittnauer (Gols)",
            "Weingut Paul Achs (Gols)",
            "Weingut Kracher (Illmitz)",
            "Weingut Umathum (Frauenkirchen)",
            "Weingut Moric (Neckenmarkt)"
        ],
        imageName: "burgenland_image",
        iconNames: ["lake", "wine_glass"]
    ),
    Region(
        name: "Styria",
        details: "Styria, located in the southern part of Austria, is divided into three distinct wine-growing areas: Südsteiermark, Weststeiermark, and Südoststeiermark. The region is renowned for its hilly landscapes and a cooler climate that is perfect for white wines. Styria is especially famous for its aromatic whites, such as Sauvignon Blanc, which are often compared to those from New Zealand in terms of their vibrancy and crisp acidity.",
        subregions: [
            "Südsteiermark: Known for its fresh and aromatic Sauvignon Blanc, this area benefits from a cool climate and steep vineyards.\n",
            "Weststeiermark: Famous for Schilcher, a rosé made from the indigenous Blauer Wildbacher grape, characterized by its vibrant acidity and cherry notes.\n",
            "Südoststeiermark: Focuses on a variety of white wines, with volcanic soils enriching the flavors and aromas."
        ],
        climate: "Styria enjoys a temperate climate with ample rainfall and cool temperatures, ideal for the cultivation of white grape varieties that require slower ripening periods.",
        soil: [
            "Südsteiermark: Primarily limestone and shell limestone, contributing to the mineral undertones in the wines.\n",
            "Weststeiermark: Clay and shale soils, which help in producing intensely flavored Schilcher.\n",
            "Südoststeiermark: Volcanic soils that add a unique complexity to the wines."
        ],
        keyWineStyles: "Styria is best known for its Sauvignon Blanc, characterized by crisp acidity and intense aromatics. The region also produces excellent Pinot Blanc, Chardonnay, and the unique Schilcher rosé.",
        topProducers: [
            "Weingut Tement (Südsteiermark)",
            "Weingut Polz (Südsteiermark)",
            "Weingut Manfred Tement (Berghausen)",
            "Weingut Winkler-Hermaden (Südoststeiermark)",
            "Schilcherland Weingut (Weststeiermark)",
            "Weingut Gross (Ratsch an der Weinstraße)"
        ],
        imageName: "styria_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Weinviertel",
        details: "Weinviertel, located in the northeastern part of Austria, is the largest wine region in the country and the first to receive a DAC (Districtus Austriae Controllatus) status. It is predominantly known for its peppery Grüner Veltliner, termed 'Weinviertel DAC'. The region's extensive vineyards are influenced by the cool climate and loess soils, which impart a distinct spiciness and zest to its wines.",
        subregions: [
            "Poysdorf: The heart of Grüner Veltliner production in Weinviertel, known for its vibrant and spicy wines.\n",
            "Retz: Produces a range of white wines, with a focus on complex and textured Grüner Veltliner.\n",
            "Falkenstein: Noted for both its white and red wines, benefiting from higher altitudes and mineral-rich soils."
        ],
        climate: "Weinviertel experiences a cool continental climate with significant seasonal temperature variations, which are beneficial for the slow ripening of Grüner Veltliner.",
        soil: [
            "Poysdorf: Dominantly loess soils, ideal for imparting a typical peppery note to the Grüner Veltliner.\n",
            "Retz: A mix of loess and chalk soils, contributing to the complexity and texture of the wines.\n",
            "Falkenstein: Predominantly stony soils that enhance the minerality in the wines."
        ],
        keyWineStyles: "Weinviertel is famed for its Weinviertel DAC Grüner Veltliner, showcasing distinct peppery, crisp, and vibrant characteristics. The region also produces quality Riesling, Chardonnay, and some red varieties such as Zweigelt.",
        topProducers: [
            "Weingut Bründlmayer (Poysdorf)",
            "Weingut Pfaffl (Stetten)",
            "Weingut Hagn (Mailberg)",
            "Weingut Hermann Moser (Rohrendorf bei Krems)",
            "Weingut Zull (Schrattenthal)",
            "Weingut Norbert Bauer (Jetzelsdorf)"
        ],
        imageName: "weinviertel_image",
        iconNames: ["leaf", "wine_glass"]
    ),
    Region(
        name: "Thermenregion",
        details: "Located south of Vienna, the Thermenregion is named after the ancient thermal springs in the area. This unique region is known for its indigenous grape varieties, notably Zierfandler and Rotgipfler, which are often blended to create complex, aromatic white wines. The area also produces notable reds, such as Pinot Noir and Saint Laurent, benefiting from the warm, dry climate and the thermal influences.",
        subregions: [
            "Gumpoldskirchen: Renowned for its Zierfandler and Rotgipfler wines, this town has a rich winemaking history.\n",
            "Bad Vöslau: Known for quality red wines, particularly Pinot Noir, due to its optimal climatic conditions.\n",
            "Tattendorf: Focuses on red varieties like Zweigelt and Saint Laurent, producing structured and fruity wines."
        ],
        climate: "Thermenregion benefits from a temperate, Pannonian climate with hot summers and cold winters, moderated by the region’s thermal springs, which aid in extending the growing season.",
        soil: [
            "Gumpoldskirchen: Brown earth and limestone soils contribute to the unique flavor profile of the native varietals.\n",
            "Bad Vöslau: Limestone and loamy soils, ideal for cultivating robust red grape varieties.\n",
            "Tattendorf: Sandy and gravel soils, providing excellent drainage and conditions conducive to red wine production."
        ],
        keyWineStyles: "Thermenregion is best known for its white wine blend of Zierfandler and Rotgipfler, offering rich texture and balanced acidity. The region also produces notable single-varietal wines such as Pinot Noir and Saint Laurent.",
        topProducers: [
            "Weingut Johanneshof Reinisch (Tattendorf)",
            "Weingut Alphart (Traiskirchen)",
            "Weingut Stadlmann (Traiskirchen)",
            "Weingut Auer (Tattendorf)",
            "Weingut Freigut Thallern (Gumpoldskirchen)",
            "Weingut Spaetrot-Gebeshuber (Gumpoldskirchen)"
        ],
        imageName: "thermenregion_image",
        iconNames: ["thermal_spring", "wine_glass"]
    ),
    Region(
        name: "Carnuntum",
        details: "Carnuntum, situated east of Vienna and stretching to the borders of Slovakia, is a small but significant wine region in Austria. The region leverages its historical roots dating back to Roman times to produce powerful red wines primarily from Zweigelt, Blaufränkisch, and Merlot. The local climate and fertile soils also support the production of high-quality white wines, making Carnuntum a versatile wine-producing area.",
        subregions: [
            "Göttlesbrunn: Known for its full-bodied reds, particularly from Zweigelt and Blaufränkisch.\n",
            "Petronell-Carnuntum: Features a mix of red and white varieties, reflecting the versatility of the region’s terroir.\n",
            "Prellenkirchen: Celebrated for its structured and spicy reds, making the most of the hilly terrain and climatic conditions."
        ],
        climate: "Carnuntum benefits from a mix of continental and Pannonian climate influences, with warm summers and relatively mild winters, ideal for ripening a variety of grape types.",
        soil: [
            "Göttlesbrunn: Heavy loam and clay soils, perfect for nurturing robust red grape varieties.\n",
            "Petronell-Carnuntum: Varied soils including sandy loam and gravel, suitable for both reds and whites.\n",
            "Prellenkirchen: Limestone and chalky soils, enhancing the minerality and flavor complexity in wines."
        ],
        keyWineStyles: "Carnuntum is renowned for its red wines, particularly Zweigelt, which is often vinified to express deep berry flavors and silky tannins. The region also produces elegant whites like Grüner Veltliner and Chardonnay.",
        topProducers: [
            "Weingut Gerhard Markowitsch (Göttlesbrunn)",
            "Weingut Glatzer (Göttlesbrunn)",
            "Weingut Philipp Grassl (Göttlesbrunn)",
            "Weingut Artner (Höflein)",
            "Weingut Muhr-van der Niepoort (Spitzerberg)",
            "Weingut Netzl (Göttlesbrunn)"
               ],
               imageName: "carnuntum_image",
               iconNames: ["castle", "wine_glass"]
           ),
    Region(
        name: "Wagram",
        details: "Formerly known as Donauland, Wagram is a significant wine region located along the Danube River, west of Vienna. The region is particularly noted for Grüner Veltliner, which is grown on the unique loess terraces that define the landscape. Wagram produces wines that are characterized by their depth and spicy complexity, often showing distinct white pepper and stone fruit notes.",
        subregions: [
            "Kirchberg: Known for its powerful and spicy Grüner Veltliner.\n",
            "Feuersbrunn: Produces both vibrant Grüner Veltliner and complex Roter Veltliner.\n",
            "Grossweikersdorf: Notable for its full-bodied and aromatic white wines."
        ],
        climate: "Wagram benefits from a continental climate with cold winters and hot, dry summers, which helps in developing the rich flavors and balanced acidity in the wines.",
        soil: [
            "Kirchberg: Predominantly loess, which provides excellent water retention and warmth, fostering rich, full-bodied wines.\n",
            "Feuersbrunn: A mix of loess and clay soils, supporting complex flavor development in both white and red varieties.\n",
            "Grossweikersdorf: Mostly sandy soils, contributing to the aromatic intensity of the wines."
        ],
        keyWineStyles: "Wagram is best known for its Grüner Veltliner, noted for its richness and peppery spice. The region also excels in Roter Veltliner and some red wines, including Zweigelt and Pinot Noir.",
        topProducers: [
            "Weingut Bernhard Ott (Feuersbrunn)",
            "Weingut Leth (Fels am Wagram)",
            "Weingut Josef Ehmoser (Großweikersdorf)",
            "Weingut Markus Huber (Reichersdorf)",
            "Weingut Fritz Salomon (Krems)",
            "Weingut Klaus Lang (Kirchberg)"
        ],
        imageName: "wagram_image",
        iconNames: ["vineyard", "wine_glass"]
    ),
    Region(
        name: "Neusiedlersee",
        details: "Neusiedlersee is located in Burgenland and is named after the large steppe lake that influences the region’s climate. The area is famous for its sweet wines, including world-class Botrytis wines like Beerenauslese and Trockenbeerenauslese. The lake provides a unique microclimate that is ideal for noble rot, allowing the production of exceptionally rich and concentrated wines. Neusiedlersee also produces quality reds and vibrant dry whites.",
        subregions: [
            "Podersdorf: Known for outstanding sweet wines, benefiting from the lake’s fog which encourages noble rot.\n",
            "Illmitz: A hub for some of Austria's most prestigious sweet wines, particularly those affected by Botrytis.\n",
            "Gols: Produces high-quality red wines, including Zweigelt and Blaufränkisch, leveraging the warm climate."
        ],
        climate: "Neusiedlersee enjoys a mild Pannonian climate with the lake effect providing humidity and fog, which are crucial for the development of noble rot, especially in the autumn months.",
        soil: [
            "Podersdorf: Sandy soils that retain warmth, aiding in the ripening of grapes.\n",
            "Illmitz: Rich black soils, excellent for sweet wine production.\n",
            "Gols: Loamy soils, beneficial for both red and white varieties."
        ],
        keyWineStyles: "Neusiedlersee is renowned for its sweet wines like Beerenauslese and Trockenbeerenauslese, which exhibit intense flavors of dried fruits and honey. The region also produces full-bodied reds and crisp, fruity whites.",
        topProducers: [
            "Weingut Kracher (Illmitz)",
            "Weingut Nittnaus (Gols)",
            "Weingut Umathum (Frauenkirchen)",
            "Weingut Paul Achs (Gols)",
            "Weingut Sepp Moser (Apetlon)",
            "Weingut Pittnauer (Gols)"
        ],
        imageName: "neusiedlersee_image",
        iconNames: ["lake", "wine_glass"]
    )
       ]),

//CHILE

Country(name: "Chile", regions: [
    Region(
        name: "Maipo Valley",
        details: "Located just south of Santiago, the Maipo Valley is one of Chile’s most prestigious and oldest wine-producing regions. Known primarily for its high-quality Cabernet Sauvignon, the valley benefits from a Mediterranean climate and the moderating effects of the Andes and the coastal range. The wines from this region are often noted for their richness, structure, and depth, with earthy and spicy notes that reflect the valley’s unique terroir.",
        subregions: [
            "Alto Maipo: Situated closer to the Andes, known for producing some of the finest Cabernet Sauvignon with intense flavors and robust tannins.\n",
            "Central Maipo: The heart of the valley, known for versatile wine production including Merlot and Carmenere.\n",
            "Pacific Maipo: Closer to the coast, produces fresher, more mineral-driven styles of wine."
        ],
        climate: "Maipo Valley enjoys a Mediterranean climate with hot, dry summers and cool, wet winters. The significant diurnal temperature variation helps to maintain acidity and enhances the aromatic profile in the grapes.",
        soil: [
            "Alto Maipo: Predominantly rocky and alluvial soils, which provide excellent drainage and help concentrate flavors in the grapes.\n",
            "Central Maipo: More varied soils including loam and clay, suitable for a variety of grape types.\n",
            "Pacific Maipo: Sandy and clay soils, which contribute to the elegance and minerality of the wines."
        ],
        keyWineStyles: "Maipo Valley is best known for its Cabernet Sauvignon, characterized by its body, complexity, and longevity. The region also produces excellent Merlot, Carmenere, and Chardonnay.",
        topProducers: [
            "Concha y Toro (Pirque)",
            "Viña Almaviva (Puente Alto)",
            "Santa Rita (Alto Jahuel)",
            "Cousiño Macul (Peñalolén)",
            "Viña Tarapacá (Isla de Maipo)",
            "Haras de Pirque (Pirque)"
        ],
        imageName: "maipo_valley_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Colchagua Valley",
        details: "Colchagua Valley is a key player in Chile’s wine industry, renowned for its premium red wines. Located in the heart of Chile's Central Valley, this region benefits from a warm climate and a wide range of soil types, allowing for diverse viticulture. Colchagua is particularly famous for its robust and velvety Carménère, as well as other red varieties such as Cabernet Sauvignon, Syrah, and Malbec.",
        subregions: [
            "Santa Cruz: Known for its high-quality Carménère and Cabernet Sauvignon.\n",
            "Lolol: Noted for its unique microclimate that is ideal for Syrah and coastal influenced wines.\n",
            "Peralillo: A rising star in terms of innovative blends and organic viticulture."
        ],
        climate: "The Colchagua Valley has a Mediterranean climate with more extreme temperature variations than coastal regions, which fosters the development of richly flavored and deeply colored grapes.",
        soil: [
            "Santa Cruz: Predominantly clay and decomposed granite, excellent for structured and complex reds.\n",
            "Lolol: Sandy and stony soils, encouraging the production of aromatic and refined wines.\n",
            "Peralillo: Varied soil types including clay, granite, and volcanic soils, suited for diverse grape varieties."
        ],
        keyWineStyles: "Colchagua Valley is acclaimed for its Carménère, showcasing deep cherry and spice flavors with smooth tannins. The valley also produces exceptional Cabernet Sauvignon, Merlot, and increasingly, Syrah and Malbec.",
        topProducers: [
            "Viña Montes (Santa Cruz)",
            "Casa Lapostolle (Cunaco)",
            "Viña Neyen (Apalta)",
            "Los Vascos (Peralillo)",
            "Viña Bisquertt (Santa Cruz)",
            "Ventisquero (Apalta)"
        ],
        imageName: "colchagua_valley_image",
        iconNames: ["valley", "wine_glass"]
    ),
    Region(
        name: "Casablanca Valley",
        details: "Located just west of Santiago and close to the Pacific Ocean, the Casablanca Valley is one of Chile’s premier wine regions for white wines, particularly Chardonnay and Sauvignon Blanc. The valley's proximity to the ocean ensures a cooler climate, which is ideal for these varietals, allowing them to develop vibrant acidity and complex flavors. The region also produces excellent Pinot Noir and Syrah, reflecting the influence of its cool, maritime climate.",
        subregions: [
            "Eastern Casablanca: Closer to the Andes, known for elegant Chardonnay with bright acidity.\n",
            "Central Casablanca: The heart of the valley, where most vineyards are located, famous for its crisp Sauvignon Blanc.\n",
            "Western Casablanca: Influenced by the cool breezes from the Pacific, ideal for Pinot Noir and cool-climate Syrah."
        ],
        climate: "Casablanca Valley enjoys a cool Mediterranean climate with significant influence from the Pacific Ocean, resulting in morning fog and lower temperatures that are key for slow grape ripening.",
        soil: [
            "Eastern Casablanca: Primarily red clay and sandy soils, which help in the development of mineral and fruit notes in the wines.\n",
            "Central Casablanca: Loam and clay dominate, providing the necessary moisture retention for balanced vine growth.\n",
            "Western Casablanca: Stony and sandy soils, excellent for drainage and producing highly concentrated fruit."
        ],
        keyWineStyles: "Casablanca Valley is renowned for its aromatic and zesty Sauvignon Blanc, rich and creamy Chardonnay, and elegant Pinot Noir. The valley also produces some of the country's best cool-climate Syrah.",
        topProducers: [
            "Veramonte (Casablanca)",
            "Viña Casas del Bosque (Casablanca)",
            "Bodegas RE (Casablanca)",
            "Kingston Family Vineyards (Casablanca)",
            "Viña Emiliana (Casablanca)",
            "Viña Mar (Casablanca)"
        ],
        imageName: "casablanca_valley_image",
        iconNames: ["ocean_wave", "wine_glass"]
    ),
    Region(
        name: "Aconcagua Valley",
        details: "Situated north of Santiago, the Aconcagua Valley is named after Mount Aconcagua, the highest peak in the Americas. The valley is famed for its premium red wines, especially Cabernet Sauvignon and Syrah. The hot, dry climate and high elevation create ideal conditions for growing grapes with intense flavors and deep color. The region also experiments with small quantities of white wines, including Viognier and Riesling.",
        subregions: [
            "Eastern Aconcagua: Dominated by high-altitude vineyards, perfect for Cabernet Sauvignon and Merlot.\n",
            "Central Aconcagua: The core area for viticulture, known for robust Syrah and innovative blends.\n",
            "Coastal Aconcagua: Recently explored for its potential in cooler-climate varietals like Pinot Noir and Chardonnay."
        ],
        climate: "Aconcagua Valley features a warm Mediterranean climate that is moderated by the elevation and mountain breezes, contributing to significant diurnal temperature variations.",
        soil: [
            "Eastern Aconcagua: Alluvial and sandy soils, providing good drainage and concentrating flavors in the grapes.\n",
            "Central Aconcagua: A mix of clay and sandy soils, ideal for robust vine growth and intense fruit development.\n",
            "Coastal Aconcagua: Younger soils with higher mineral content, suitable for Pinot Noir and Chardonnay."
        ],
        keyWineStyles: "Aconcagua Valley is best known for its powerful and structured Cabernet Sauvignon and elegant Syrah. The region also produces noteworthy Merlot and experimental plantings of white varieties like Viognier.",
        topProducers: [
            "Viña Errázuriz (Panquehue)",
            "Viña San Esteban (San Esteban)",
            "Viña von Siebenthal (Panquehue)",
            "Flaherty Wines (Aconcagua)",
            "Viña El Escorial (San Felipe)",
            "Viña Sánchez de Loria (Aconcagua)"
        ],
        imageName: "aconcagua_valley_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Cachapoal Valley",
        details: "Part of the larger Rapel Valley, Cachapoal Valley is located just south of Santiago and is recognized for its premium red wines, particularly Merlot and Carmenere. The valley's rich, alluvial soils and warm climate create optimal conditions for producing full-bodied wines with ripe fruit flavors and smooth tannins. Cachapoal also has a growing reputation for its Syrah and Cabernet Sauvignon.",
        subregions: [
            "Rengo: Known for its high-quality Carmenere and Merlot, featuring deep fruit flavors and velvety textures.\n",
            "Peumo: Acclaimed for producing some of Chile's best Carmenere, characterized by its complexity and spice.\n",
            "Requinoa: Focuses on a variety of reds, including intense and structured Cabernet Sauvignon."
        ],
        climate: "Cachapoal Valley benefits from a Mediterranean climate with warm days and cool nights, moderated by the Andes and coastal influences, which help to maintain the balance and acidity in the grapes.",
        soil: [
            "Rengo: Mostly clay and sandy soils, which provide good water retention and contribute to the richness of the wines.\n",
            "Peumo: Deep clay soils, ideal for Carmenere, helping to develop the grape’s signature spice and smooth tannins.\n",
            "Requinoa: Varied soils, including alluvial and gravel, which support the growth of robust Cabernet Sauvignon."
        ],
        keyWineStyles: "Cachapoal Valley is renowned for its rich and velvety Carmenere, full-bodied Merlot, and robust Cabernet Sauvignon. The valley is also noted for its emerging Syrah, which is gaining acclaim for its spice and dark fruit profiles.",
        topProducers: [
            "Altair Vineyards (Requinoa)",
            "Viña Anakena (Alto Cachapoal)",
            "Viña La Rosa (Peumo)",
            "Viña Morandé (Peumo)",
            "Casa Silva (San Fernando)",
            "MontGras (Palmilla)"
        ],
        imageName: "cachapoal_valley_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Curicó Valley",
        details: "Located south of Maule Valley, Curicó Valley is one of Chile’s most productive wine regions, with a history of winemaking that dates back to the 19th century. The region is diverse in its wine production, ranging from robust reds like Cabernet Sauvignon and Merlot to vibrant and fresh whites such as Sauvignon Blanc and Chardonnay. The valley is also known for its volume of wine production and its adoption of modern viticultural techniques.",
        subregions: [
            "Molina: Renowned for its quality Sauvignon Blanc and Chardonnay, which benefit from the cool morning mists.\n",
            "Teno: Produces a variety of red wines, known for their bold flavors and balanced structure.\n",
            "Lontué: Famous for its aromatic and delicate whites, as well as its rich and rounded Merlot."
        ],
        climate: "Curicó Valley has a Mediterranean climate with a wide range of temperature variations between day and night, which is beneficial for achieving optimum grape ripeness and maintaining acidity.",
        soil: [
            "Molina: Primarily sandy loam, which helps in producing aromatic white wines.\n",
            "Teno: Features a mix of volcanic and alluvial soils, ideal for structured and complex reds.\n",
            "Lontué: Clay and stony soils, conducive to growing both robust reds and vibrant whites."
        ],
        keyWineStyles: "Curicó Valley is known for its fruity and vibrant Sauvignon Blanc, rich and creamy Chardonnay, and structured Cabernet Sauvignon. The region also produces high-quality Merlot and diverse other varietals, both red and white.",
        topProducers: [
            "Viña Miguel Torres (Curicó)",
            "Viña Aresti (Molina)",
            "Viña Echeverria (Molina)",
            "Viña San Pedro (Molina)",
            "Viña Montes (Curicó)",
            "Millaman (Curicó)"
        ],
        imageName: "curico_valley_image",
        iconNames: ["valley", "wine_glass"]
    ),
    Region(
        name: "Maule Valley",
        details: "Located in central Chile, Maule Valley is one of the largest and oldest wine regions in the country, known for its diverse microclimates and a focus on traditional winemaking methods. The region predominantly produces red wines, with a significant emphasis on Carignan, Merlot, and Cabernet Sauvignon, but also offers notable white wines like Chardonnay and Sauvignon Blanc. Maule Valley's wines are appreciated for their rustic charm and robust flavors.",
        subregions: [
            "Cauquenes: Known for old vine Carignan, producing rich and tannic wines with great depth.\n",
            "San Clemente: A versatile area that excels in both reds and whites, benefiting from slightly cooler temperatures.\n",
            "Talca: Notable for aromatic and spicy Cabernet Sauvignon, as well as vibrant and fresh Sauvignon Blanc."
        ],
        climate: "Maule Valley has a Mediterranean climate, characterized by hot, dry summers and cold, wet winters, with significant temperature variations that help to enhance the aromatic qualities and acidity in the grapes.",
        soil: [
            "Cauquenes: Predominantly granitic and clay soils, ideal for deep-rooted old vines.\n",
            "San Clemente: A mix of volcanic and alluvial soils, contributing to the complexity and balance of the wines.\n",
            "Talca: Varied soils including sandy, clay, and loam, conducive to versatile viticulture."
        ],
        keyWineStyles: "Maule Valley is best known for its bold Carignan, smooth Merlot, and structured Cabernet Sauvignon. The region also produces exceptional Chardonnay and Sauvignon Blanc, known for their crispness and freshness.",
        topProducers: [
            "Viña Gillmore (Cauquenes)",
            "Viña Balduzzi (San Javier)",
            "Bodegas y Viñedos De Martino (Isla de Maipo)",
            "Viña J. Bouchon (Santa Rosa)",
            "Casa Donoso (Talca)",
            "Viña Calina (Talca)"
        ],
        imageName: "maule_valley_image",
        iconNames: ["vine_leaf", "wine_glass"]
    ),
    Region(
        name: "Itata Valley",
        details: "Situated in the southern part of Chile, Itata Valley is steeped in history, being one of the first wine-growing areas in the country. The valley is celebrated for its artisanal winemaking approach and focus on heritage grape varieties such as Pais, Cinsault, and Muscat. Itata's cool climate and old bush vines contribute to the production of wines with distinctive minerality and bright acidity, offering a counterpoint to the more robust styles from northern regions.",
        subregions: [
            "Coelemu: Famous for its floral and aromatic Muscat, as well as earthy and light Pais.\n",
            "Guarilihue: Known for its elegant Cinsault, which thrives in the local granitic soils.\n",
            "Ñipas: Produces diverse wines, leveraging the cool climate and traditional methods."
        ],
        climate: "Itata Valley has a cool temperate climate with higher rainfall than Chile’s more northern wine regions, which helps maintain natural acidity and promotes slower grape maturation.",
        soil: [
            "Coelemu: Sandy and granitic soils, perfect for aromatic white wines and light-bodied reds.\n",
            "Guarilihue: Primarily granitic soils, which enhance the mineral characteristics in Cinsault.\n",
            "Ñipas: A combination of clay and loam soils, suitable for a variety of wine styles."
        ],
        keyWineStyles: "Itata Valley is renowned for its Pais and Cinsault, offering fresh and fruity profiles with a rustic edge. The region also produces exceptional Muscat, known for its aromatic intensity and crisp acidity.",
        topProducers: [
            "Viña Roja (Coelemu)",
            "De Martino (Isla de Maipo)",
            "Rogue Vine (Guarilihue)",
            "Cacique Maravilla (Ñipas)",
            "Viñedos de Alcohuaz (Ñipas)",
            "Leonardo Erazo (Ñipas)"
        ],
        imageName: "itata_valley_image",
        iconNames: ["leaf", "wine_glass"]
    ),
    Region(
        name: "Bío-Bío Valley",
        details: "Located in the southern reaches of Chile, Bío-Bío is known for its cool climate and high rainfall, making it ideal for producing vibrant and aromatic wines. The region is particularly celebrated for its white wines like Riesling, Chardonnay, and Sauvignon Blanc, which exhibit crisp acidity and fresh flavors. Bío-Bío is also gaining recognition for its delicate and fruity Pinot Noir.",
        subregions: [
            "Mulchén: Known for its exceptional Riesling, producing wines with crisp acidity and floral aromatics.\n",
            "Chillán: A versatile area that excels in both Chardonnay and Sauvignon Blanc, known for their brightness and minerality.\n",
            "Concepción: Emerging as a significant area for Pinot Noir, with wines noted for their elegance and subtlety."
        ],
        climate: "Bío-Bío Valley experiences a cool temperate climate with one of the highest levels of rainfall in Chile’s wine regions, which contributes to a longer growing season and slow grape maturation.",
        soil: [
            "Mulchén: Sandy loam and volcanic ash soils, ideal for aromatic white varieties.\n",
            "Chillán: Granite and clay soils, which help to impart mineral notes and complexity to the wines.\n",
            "Concepción: Mainly clay and sandy soils, excellent for producing finely textured Pinot Noir."
        ],
        keyWineStyles: "Bío-Bío is renowned for its aromatic and crisp white wines such as Riesling and Chardonnay, and for its light, fruit-forward Pinot Noir. The region also produces notable Sauvignon Blanc with vibrant acidity.",
        topProducers: [
            "Viña Cono Sur (Concepción)",
            "Viña Morandé (Chillán)",
            "Viña Terranoble (Concepción)",
            "Viña Mar (Chillán)",
            "Viña Maycas del Limarí (Mulchén)",
            "Viña Chillán (Chillán)"
        ],
        imageName: "bio_bio_valley_image",
        iconNames: ["leaf", "wine_glass"]
    ),
    Region(
        name: "Leyda Valley",
        details: "The Leyda Valley is a small but rapidly growing wine region on Chile’s Pacific coast, just west of Santiago. Known for its cool, maritime climate, Leyda excels in producing high-quality Pinot Noir and Sauvignon Blanc. The cool ocean breezes and morning fogs create ideal conditions for these varieties, leading to wines with pronounced acidity and distinct mineral notes.",
        subregions: [
            "Coastal Leyda: Dominated by Sauvignon Blanc, which benefits from the maritime influence for high acidity and crisp flavors.\n",
            "Interior Leyda: Known for its exceptional Pinot Noir, producing elegant wines with subtle red fruit and earthy undertones.\n",
            "Western Leyda: Emerging area for Chardonnay and other cool-climate whites, noted for their vibrancy and depth."
        ],
        climate: "Leyda Valley enjoys a cool, maritime climate with significant influence from the nearby Pacific Ocean, resulting in cool temperatures and high levels of humidity, which are ideal for slow ripening of grapes.",
        soil: [
            "Coastal Leyda: Predominantly clay and loam, providing moisture retention for balanced growth.\n",
            "Interior Leyda: Sandy and stony soils, enhancing the mineral complexity and finesse in Pinot Noir.\n",
            "Western Leyda: Rich in quartz and limestone, excellent for adding vibrancy and structure to white wines."
        ],
        keyWineStyles: "Leyda Valley is best known for its vibrant and mineral-rich Sauvignon Blanc and its elegant and nuanced Pinot Noir. The region also produces Chardonnay and other white wines that are gaining recognition for their quality and unique characteristics.",
        topProducers: [
            "Viña Leyda (Leyda)",
            "Viña Garces Silva (Leyda)",
            "Viña Ventolera (Leyda)",
            "Viña San Antonio (Leyda)",
            "Matetic Vineyards (Rosario Valley)",
            "Viña Montsecano (Leyda)"
        ],
        imageName: "leyda_valley_image",
        iconNames: ["ocean_wave", "wine_glass"]
    )
        ]),


//ARGENTINA

Country(name: "Argentina", regions: [
    Region(
        name: "Mendoza",
        details: "Mendoza is the heart of Argentina’s wine country, accounting for nearly two-thirds of the country’s entire wine production. Located in the eastern foothills of the Andes, Mendoza is renowned for its Malbec, which is considered among the best in the world. The region also produces excellent Cabernet Sauvignon, Tempranillo, and Chardonnay. Mendoza's high-altitude vineyards and arid climate create ideal conditions for growing robust and intensely flavored grapes.",
        subregions: [
            "Maipú: Known for its rich and concentrated Malbec, Maipú also excels in producing Cabernet Sauvignon.\n",
            "Luján de Cuyo: Often referred to as the ‘land of Malbec’, this area is key to Mendoza’s premium wine production.\n",
            "Uco Valley: A high-altitude area that produces a wide array of aromatic and complex wines, including excellent Chardonnay and Pinot Noir."
        ],
        climate: "Mendoza enjoys a continental climate, characterized by hot summers and cold winters. The region’s high altitude results in significant diurnal temperature variation, crucial for maintaining grape acidity and enhancing aroma.",
        soil: [
            "Maipú: Primarily sandy loam, which provides excellent drainage and helps concentrate grape flavors.\n",
            "Luján de Cuyo: Stony and alluvial soils, which contribute to the complexity and structure of the wines.\n",
            "Uco Valley: A mix of sandy and rocky soils, perfect for high-quality viticulture."
        ],
        keyWineStyles: "Mendoza is best known for its Malbec, which displays deep fruit flavors and smooth tannins. The region also produces excellent Cabernet Sauvignon, Syrah, and a range of expressive white wines like Torrontés and Chardonnay.",
        topProducers: [
            "Bodega Catena Zapata (Luján de Cuyo)",
            "Bodega Norton (Luján de Cuyo)",
            "Bodega Weinert (Mendoza City)",
            "Zuccardi Valle de Uco (Uco Valley)",
            "Achaval-Ferrer (Mendoza City)",
            "Bodega Chacra (Uco Valley)"
        ],
        imageName: "mendoza_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "San Juan",
        details: "San Juan is the second largest wine-producing region in Argentina, located north of Mendoza. The region is known for its hot, dry climate which is ideal for the cultivation of Syrah and other heat-loving grape varieties. San Juan produces robust, full-bodied red wines and is also noted for its fine, aromatic white wines, such as Viognier. The vineyards in San Juan benefit from the high altitude and the cooling effect of the Andes.",
        subregions: [
            "Tulum Valley: The main wine-producing area in San Juan, known for its high-quality Syrah and Malbec.\n",
            "Pedernal Valley: Noted for its high-altitude vineyards and exceptional conditions for premium wine production, especially Syrah.\n",
            "Zonda Valley: Renowned for its unique microclimate and the production of robust and intensely flavored wines."
        ],
        climate: "San Juan has a very hot and arid climate with more sunlight hours than Mendoza, which contributes to the grapes’ full maturation and intensity of flavors.",
        soil: [
            "Tulum Valley: Mostly sandy and alluvial soils, suitable for vigorous vine growth.\n",
            "Pedernal Valley: Rocky and poor in nutrients, these soils stress the vines, resulting in low yields but high-quality grapes.\n",
            "Zonda Valley: Varied soils including clay and sand, providing good drainage and encouraging robust vine growth."
        ],
        keyWineStyles: "San Juan is renowned for its powerful and spicy Syrah, as well as its full-bodied Malbec. The region also produces notable white wines like Viognier, which are praised for their floral aromatics and richness.",
        topProducers: [
            "Bodegas Graffigna (San Juan City)",
            "Bodega Callia (Tulum Valley)",
            "Bodega Merced del Estero (San Juan City)",
            "Bodega Las Marianas (Pedernal Valley)",
            "Bodega San Juan Cooperative (Zonda Valley)",
            "Finca Sierras Azules (Pedernal Valley)"
        ],
        imageName: "san_juan_image",
        iconNames: ["sun", "wine_glass"]
    ),
    Region(
        name: "Salta",
        details: "Located in the northwestern part of Argentina, Salta is famed for its high-altitude vineyards, some of the highest in the world. The region is particularly known for its aromatic and intensely flavored Torrontés, which thrives in the extreme altitude and sunny climate. Salta’s vineyards benefit from the natural barrier created by the surrounding mountains, which helps maintain a dry climate ideal for grape cultivation.",
        subregions: [
            "Cafayate: The most important wine district in Salta, renowned for its exceptional Torrontés and robust Malbec.\n",
            "Molinos: Known for its high-elevation vineyards, producing concentrated and aromatic wines.\n",
            "San Carlos: A smaller area that excels in both red and white varietals, offering unique flavor profiles due to its high altitude."
        ],
        climate: "Salta has a high desert climate with hot days and cool nights, a significant diurnal temperature variation that is essential for developing the aromatic complexity and acidity in the grapes.",
        soil: [
            "Cafayate: Sandy and rocky soils that provide excellent drainage and stress the vines for concentrated flavors.\n",
            "Molinos: Very rocky and mineral-rich soils, which contribute to the distinct minerality in the wines.\n",
            "San Carlos: Varied soils, mostly sandy with some clay, ideal for diverse viticulture."
        ],
        keyWineStyles: "Salta is best known for its floral and crisp Torrontés, which showcases vibrant acidity and pronounced floral aromas. The region also produces high-quality Malbec, Cabernet Sauvignon, and Tannat, known for their depth and intensity.",
        topProducers: [
            "Bodega Colomé (Molinos)",
            "Bodega El Esteco (Cafayate)",
            "Bodega Etchart (Cafayate)",
            "Piattelli Vineyards (Cafayate)",
            "Bodega El Porvenir de Cafayate (Cafayate)",
            "Bodega Altupalka (Molinos)"
        ],
        imageName: "salta_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "La Rioja",
        details: "Not to be confused with the famous Spanish wine region, La Rioja in Argentina is one of the oldest wine-producing areas in the country. Situated in the northwest, the region is characterized by its rugged mountainous terrain and abundant sunshine, making it ideal for growing robust and hearty grape varieties. La Rioja is best known for producing Bonarda and Syrah, which express a unique fruit-driven quality and spice.",
        subregions: [
            "Famatina Valley: The central wine-producing area in La Rioja, known for its high-altitude vineyards and the quality of its Bonarda and Syrah.\n",
            "Chilecito: Smaller than Famatina but equally important for its contribution to the region’s viticultural diversity, particularly for Torrontés.\n",
            "Aminga Valley: A developing wine area that shows promise with varietals such as Malbec and Cabernet Sauvignon."
        ],
        climate: "La Rioja benefits from a continental climate, with hot summers and cold winters, moderated by the altitude which provides a cooling effect essential for slow grape maturation.",
        soil: [
            "Famatina Valley: Alluvial soils with a high content of sand and stones, excellent for drainage and root penetration.\n",
            "Chilecito: Mostly sandy loam, which helps retain warmth and accelerates ripening.\n",
            "Aminga Valley: A mix of sandy and clay soils, offering a good balance of nutrients and drainage."
        ],
        keyWineStyles: "La Rioja is renowned for its rich and fruity Bonarda, spicy Syrah, and aromatic Torrontés. The region also has emerging productions of Malbec and Cabernet Sauvignon, which are gaining recognition for their quality.",
        topProducers: [
            "La Riojana Co-op (Famatina Valley)",
            "Bodega San Huberto (Famatina Valley)",
            "Bodega Valle de la Puerta (Famatina Valley)",
            "Bodega Raza (Chilecito)",
            "Bodega Borde Rio (Chilecito)",
            "Bodega y Cavas de Weinert (Mendoza, with vines in La Rioja)"
        ],
        imageName: "la_rioja_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Patagonia",
        details: "Patagonia, encompassing the provinces of Neuquén and Río Negro, is one of the most southerly wine regions in the world. Known for its cool climate and strong winds, this region produces wines with remarkable freshness and elegance. Patagonia is particularly noted for its Pinot Noir, Merlot, and Malbec, which exhibit a unique balance of ripe fruit flavors and crisp acidity.",
        subregions: [
            "Neuquén: Home to newer, high-tech wineries focusing on Merlot and Malbec.\n",
            "Río Negro: The more established area, known for producing some of Argentina’s best Pinot Noir and Chardonnay.\n",
            "San Patricio del Chañar: A rapidly developing wine area that excels in both reds and whites, known for its innovative viticultural practices."
        ],
        climate: "Patagonia has a dry and cool climate, with wide diurnal temperature variations that help maintain high levels of natural acidity in the grapes and slow, even ripening.",
        soil: [
            "Neuquén: Stony and sandy soils, providing excellent drainage and reflecting sunlight to aid ripening.\n",
            "Río Negro: Rich in organic material with clay and loam soils, supporting a variety of grape types.\n",
            "San Patricio del Chañar: Mainly sandy soils, conducive to high-quality viticulture."
        ],
        keyWineStyles: "Patagonia is renowned for its elegant and complex Pinot Noir, structured Merlot, and fruit-forward Malbec. The region also produces exceptional Chardonnay and Sauvignon Blanc.",
        topProducers: [
            "Bodega del Fin del Mundo (Neuquén)",
            "Bodega Patritti (San Patricio del Chañar)",
            "Bodega Chacra (Río Negro)",
            "Bodega Humberto Canale (Río Negro)",
            "Bodega Schroeder (San Patricio del Chañar)",
            "Bodega Noemia (Río Negro)"
        ],
        imageName: "patagonia_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Catamarca",
        details: "Located in the northwestern part of Argentina, Catamarca is a less explored wine region characterized by its high-altitude vineyards and dramatic mountainous landscapes. The region is known for its intense sunlight and cool nights, ideal for cultivating high-quality Syrah, Malbec, and Cabernet Sauvignon. Catamarca’s wines are gaining recognition for their bold flavors and robust structure.",
        subregions: [
            "Tinogasta: Best known for its Malbec and Cabernet Sauvignon, with vineyards at extreme altitudes.\n",
            "Fiambalá: Notable for its full-bodied and aromatic Syrah, which thrives in the intense daytime heat and cool evenings.\n",
            "Santa María: A growing area for both red and white varieties, producing wines with good acidity and freshness."
        ],
        climate: "Catamarca experiences a high desert climate with very hot days and cool nights, an extreme diurnal temperature variation that contributes to the development of complex aromas and maintaining acidity in the wines.",
        soil: [
            "Tinogasta: Predominantly sandy soils mixed with gravel and stones, providing excellent drainage.\n",
            "Fiambalá: Volcanic soils that help retain heat during the cool nights, enhancing the maturation process.\n",
            "Santa María: Rich in minerals with a mixture of sand and clay, offering good conditions for diverse viticulture."
        ],
        keyWineStyles: "Catamarca is known for its rich and spicy Syrah, robust Malbec, and deeply colored Cabernet Sauvignon. The region also produces some notable Torrontés, which is aromatic and crisp.",
        topProducers: [
            "Bodega Valle de la Puerta (Fiambalá)",
            "Bodega La Riojana Co-op (Tinogasta)",
            "Bodega Las Retamas (Santa María)",
            "Finca Don Diego (Catamarca)",
            "Bodega San Carlos Sud (Fiambalá)",
            "Finca Yocavil (Santa María)"
        ],
        imageName: "catamarca_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Neuquén",
        details: "Neuquén is a dynamic and rapidly growing wine region in the Patagonia area of Argentina. Established relatively recently, its vineyards are concentrated around the towns of San Patricio del Chañar and Añelo. Known for its innovative viticulture and winemaking techniques, Neuquén produces high-quality Merlot, Malbec, and Pinot Noir. The region's extreme climate, with cold nights and warm days, helps produce wines with vivid colors, intense aromas, and robust flavors.",
        subregions: [
            "San Patricio del Chañar: The hub of wine production in Neuquén, known for producing structured and aromatic wines.\n",
            "Añelo: Emerging as a promising area for both red and white varieties, with modern vineyard practices."
        ],
        climate: "Neuquén has a semi-arid climate with low rainfall and significant diurnal temperature variation, which helps in preserving the grapes' acidity and enhancing the concentration of flavors.",
        soil: [
            "San Patricio del Chañar: Mainly sandy soils with good drainage, which stress the vines and concentrate the flavors in the fruit.\n",
            "Añelo: Rocky and sandy soils, contributing to the vigorous growth and quality of the vines."
        ],
        keyWineStyles: "Neuquén is noted for its fruity and velvety Merlot, rich and complex Malbec, and elegant Pinot Noir. The region is also exploring other varietals such as Cabernet Sauvignon and Chardonnay.",
        topProducers: [
            "Bodega del Fin del Mundo (San Patricio del Chañar)",
            "Bodega Patritti (San Patricio del Chañar)",
            "Familia Schroeder (San Patricio del Chañar)",
            "Malma Bodega y Viñedos (San Patricio del Chañar)",
            "Bodega Valle Perdido (Neuquén)",
            "Bodega NQN (San Patricio del Chañar)"
        ],
        imageName: "neuquen_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Río Negro",
        details: "Río Negro, located in the central part of Argentine Patagonia, is one of the oldest wine regions in the area, with a winemaking history dating back over 100 years. This region is renowned for its traditional methods and excellent Pinot Noir and Merlot. The cooler climate of Río Negro compared to other Argentine regions results in more European-style wines, with greater acidity and elegance.",
        subregions: [
            "Alto Valle: Known for its high-quality Pinot Noir and other cool-climate varieties like Chardonnay.\n",
            "Valle Medio: Focuses on fruit-forward Merlot and traditional method sparkling wines.\n",
            "Valle Inferior: Emerging region experimenting with a variety of grape types under unique climatic conditions."
        ],
        climate: "Río Negro has a cool, dry climate, influenced heavily by the Rio Negro river, which helps moderate temperatures and adds humidity to the otherwise arid environment.",
        soil: [
            "Alto Valle: Rich in alluvial deposits, with sandy and stony textures providing excellent drainage.\n",
            "Valle Medio: Loamy soils that are fertile and retain water, supporting diverse viticultural practices.\n",
            "Valle Inferior: Varied soil types, including clay and sand, which are well-suited to experimental viticulture."
        ],
        keyWineStyles: "Río Negro is best known for its elegant and aromatic Pinot Noir, structured Merlot, and crisp, refreshing Chardonnay. The region also produces high-quality Sauvignon Blanc and sparkling wines.",
        topProducers: [
            "Bodega Humberto Canale (General Roca)",
            "Bodega Agrestis (Neuquén)",
            "Bodega Chacra (Cipolletti)",
            "Bodega Noemia (Viedma)",
            "Bodega Patagonia (General Roca)",
            "Bodega Valle de la Puerta (Viedma)"
        ],
        imageName: "rio_negro_image",
        iconNames: ["river", "wine_glass"]
    ),
    Region(
        name: "Tucumán",
        details: "Located in the northern part of Argentina, Tucumán is one of the smaller wine regions, known for its experimental approach to viticulture. The region’s warm climate and high elevation allow for the production of both red and white wines that are vibrant and aromatic. Tucumán is particularly noted for experimenting with lesser-known varietals and creating wines with unique flavor profiles.",
        subregions: [
            "Tafí del Valle: Known for high-altitude vineyards, producing intense and aromatic white wines, particularly Torrontés.\n",
            "Amaicha del Valle: An area gaining reputation for robust red wines and some innovative white wines."
        ],
        climate: "Tucumán has a subtropical highland climate, characterized by a rainy season in summer and a dry winter, with significant temperature variations between day and night, beneficial for aromatic and structured wines.",
        soil: [
            "Tafí del Valle: Sandy and rocky soils, providing excellent drainage and helping to stress the vines for more concentrated flavors.\n",
            "Amaicha del Valle: Rich in minerals and organics, these soils contribute to the complex flavor development in grapes."
        ],
        keyWineStyles: "Tucumán is experimenting with a range of varietals but is particularly known for its fresh and aromatic Torrontés, as well as robust Malbecs and experimental blends.",
        topProducers: [
            "Bodega Las Arcas de Tolombón (Tafí del Valle)",
            "Bodega El Porvenir de los Andes (Amaicha del Valle)",
            "Altos La Ciénaga (Amaicha del Valle)",
            "Bodega Domingo Molina (Tafí del Valle)"
        ],
        imageName: "tucuman_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Jujuy",
        details: "Jujuy, located at the extreme north of Argentina, is one of the highest wine regions in the world. The area is characterized by its rugged terrain and extreme altitudes, which can exceed 3,000 meters above sea level. The vineyards in Jujuy are small and scattered, focusing on high-quality, artisanal wine production. The extreme conditions produce wines with high acidity and unique flavor profiles, particularly from varietals like Malbec and Torrontés.",
        subregions: [
            "Quebrada de Humahuaca: The primary wine area in Jujuy, known for its breathtaking landscapes and small-scale, high-altitude vineyards."
        ],
        climate: "Jujuy experiences a semi-arid climate with intense sunlight and cool temperatures, owing to its high altitude. The significant diurnal temperature range is ideal for preserving the natural acidity and enhancing the aromatic profile of the grapes.",
        soil: [
            "Quebrada de Humahuaca: Primarily rocky and alluvial soils, with good drainage and low fertility, forcing the vines to work harder, which typically results in high-quality grapes."
        ],
        keyWineStyles: "Jujuy is known for its distinctively crisp and aromatic Torrontés, which displays intense floral and citrus characteristics. The region also produces Malbec and other reds, which are notable for their vivid color and fresh fruit flavors.",
        topProducers: [
            "Bodega Fernando Dupont (Quebrada de Humahuaca)",
            "Viñedos y Bodega Perchel (Quebrada de Humahuaca)"
        ],
        imageName: "jujuy_image",
        iconNames: ["mountain", "wine_glass"]
    )
       ]),


//NEW ZEALAND

Country(name: "New Zealand", regions: [
    Region(
        name: "Marlborough",
        details: "Marlborough is New Zealand’s flagship wine region, internationally acclaimed for producing the world's most distinct Sauvignon Blanc. Located at the northeastern tip of the South Island, this region benefits from a sunny yet cool climate, which allows a long, slow ripening period. Marlborough's wines are known for their vibrant aromatics, crisp acidity, and fruit-forward flavors, particularly in white wines.",
        subregions: [
            "Wairau Valley: Known for its fruit-driven and expressive Sauvignon Blanc.\n",
            "Awatere Valley: Produces Sauvignon Blanc with a more mineral and herbaceous character.\n",
            "Southern Valleys: Famed for Pinot Noir, featuring a richer and more structured style."
        ],
        climate: "Marlborough enjoys a maritime climate with cool winters and warm, sunny summers, moderated by the Pacific Ocean. The region receives extended hours of sunshine, contributing to the intense aromatics of the wines.",
        soil: [
            "Wairau Valley: Alluvial soils with high proportions of greywacke river stones, excellent for vibrant Sauvignon Blanc.\n",
            "Awatere Valley: More clay-rich soils, contributing to the wines’ minerality and herbal notes.\n",
            "Southern Valleys: Clay and loam soils, ideal for producing structured Pinot Noir."
        ],
        keyWineStyles: "Marlborough is renowned for its Sauvignon Blanc, characterized by bright citrus and passion fruit flavors with zesty acidity. The region also produces exceptional Chardonnay, Riesling, and Pinot Noir.",
        topProducers: [
            "Cloudy Bay Vineyards (Wairau Valley)",
            "Brancott Estate (Wairau Valley)",
            "Villa Maria Estate (Awatere Valley)",
            "Saint Clair Family Estate (Wairau Valley)",
            "Dog Point Vineyard (Wairau Valley)",
            "Greywacke Vineyards (Wairau Valley)"
        ],
        imageName: "marlborough_image",
        iconNames: ["vine_leaf", "wine_glass"]
    ),
    Region(
        name: "Hawke's Bay",
        details: "Hawke’s Bay is New Zealand’s second largest wine region and is best known for its Bordeaux blend red wines and Chardonnay. Located on the east coast of the North Island, it benefits from a diverse range of soil types and microclimates, making it one of the most versatile wine regions in New Zealand. The area is particularly recognized for its full-bodied and complex red wines as well as rich, textured white wines.",
        subregions: [
            "Gimblett Gravels: Famous for producing powerful and tannic red wines, particularly Merlot and Syrah.\n",
            "Bridge Pa Triangle: Known for both red and white wines, with a focus on complex Chardonnay and aromatic Syrah.\n",
            "Te Mata Peak: A premium area for Bordeaux-style blends, known for their depth and longevity."
        ],
        climate: "Hawke’s Bay enjoys a warm maritime climate, with relatively dry and sunny conditions, ideal for a variety of grapes. The region often experiences a significant diurnal temperature range, which enhances the flavor maturity while retaining natural acidity.",
        soil: [
            "Gimblett Gravels: Deep, gravelly soils that retain heat, promoting the ripening of red varietals.\n",
            "Bridge Pa Triangle: Iron-rich red soils, excellent for robust reds and structured whites.\n",
            "Te Mata Peak: Fertile loamy soils, conducive to producing high-quality grape crops."
        ],
        keyWineStyles: "Hawke’s Bay is known for its Merlot-dominant Bordeaux blends, robust Syrah, and complex Chardonnay. The region also produces notable Sauvignon Blanc, Pinot Noir, and Viognier.",
        topProducers: [
            "Te Mata Estate Winery (Havelock North)",
            "Craggy Range Winery (Gimblett Gravels)",
            "Trinity Hill (Gimblett Gravels)",
            "Mission Estate Winery (Taradale)",
            "Elephant Hill (Te Awanga)",
            "Church Road Winery (Taradale)"
        ],
        imageName: "hawkes_bay_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Central Otago",
        details: "Central Otago, located in the southern part of New Zealand’s South Island, is the world’s southernmost commercial wine region. This region is renowned for its stunning landscapes and its ability to produce world-class Pinot Noir. The extreme climate of Central Otago, with hot summers and cold winters, coupled with long sunlight hours, makes it ideal for producing wines with intense flavors and high aromatic complexity.",
        subregions: [
            "Bannockburn: Known for its concentrated and structured Pinot Noir.\n",
            "Cromwell Basin: Produces a wide variety of wines including Pinot Noir, Chardonnay, and Riesling.\n",
            "Gibbston Valley: Often cooler than other areas, known for its elegant and minerally Pinot Noir."
        ],
        climate: "Central Otago has a continental climate, with some of the largest diurnal temperature variations in New Zealand, contributing to the vivid fruit flavors and firm tannins of its wines.",
        soil: [
            "Bannockburn: Schist and sandy loam soils provide good drainage and contribute to the mineral complexity of the wines.\n",
            "Cromwell Basin: Rich in glacial soils mixed with gravel and loam, supporting diverse viticultural practices.\n",
            "Gibbston Valley: Predominantly schist with a thin layer of topsoil, ideal for high-quality Pinot Noir."
        ],
        keyWineStyles: "Central Otago is best known for its Pinot Noir, which is highly celebrated for its purity, depth, and intensity. The region also produces excellent aromatic whites such as Riesling and Gewürztraminer, and some Chardonnay.",
        topProducers: [
            "Felton Road (Bannockburn)",
            "Rippon (Wanaka)",
            "Mount Difficulty (Bannockburn)",
            "Amisfield (Lake Hayes)",
            "Two Paddocks (Cromwell Basin)",
            "Peregrine Wines (Gibbston Valley)"
        ],
        imageName: "central_otago_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Waipara Valley",
        details: "Waipara Valley, located in the Canterbury region of New Zealand’s South Island, is rapidly emerging as one of the country’s top wine regions for both white and red wines. The valley benefits from a protected microclimate, with hot, dry summers and cool winters, making it particularly suited for growing high-quality Pinot Noir and Riesling. The region is also known for its Chardonnay and Pinot Gris.",
        subregions: [
            "Northern Waipara: Known for its bold Pinot Noir and aromatic whites.\n",
            "Southern Waipara: Excels in Chardonnay and Riesling, produced from vineyards closer to the foothills.\n",
            "Coastal Waipara: Benefits from the cooling sea breeze, ideal for elegant and crisp whites."
        ],
        climate: "Waipara Valley has a cooler maritime climate compared to other regions, with less rainfall due to the shelter provided by the Teviotdale hills. This creates optimal conditions for a long growing season and enhances the aromatic profile of the wines.",
        soil: [
            "Northern Waipara: Rich in limestone and clay, contributing to the structure and minerality of the wines.\n",
            "Southern Waipara: Gravel and alluvial soils, which provide excellent drainage and heat retention.\n",
            "Coastal Waipara: Sandy loam soils, promoting vibrant and lively wine styles."
        ],
        keyWineStyles: "Waipara Valley is particularly noted for its Riesling, which shows great intensity and longevity, and Pinot Noir, known for its richness and complexity. The region also produces top-quality Chardonnay and Pinot Gris.",
        topProducers: [
            "Pegasus Bay (Waipara Valley)",
            "Greystone Wines (Waipara Valley)",
            "Black Estate (Omihi)",
            "Waipara Springs (Waipara Valley)",
            "Muddy Water (Waipara Valley)",
            "The Boneline (Waipara Valley)"
        ],
        imageName: "waipara_valley_image",
        iconNames: ["leaf", "wine_glass"]
    ),
    Region(
        name: "Wairarapa",
        details: "Wairarapa, located at the lower North Island of New Zealand, is a small but significant wine region known for its boutique vineyards and artisanal approach to winemaking. The region is particularly celebrated for its Pinot Noir, which is often compared to those of Burgundy for its complexity and depth. Wairarapa also produces high-quality Chardonnay, Sauvignon Blanc, and Syrah, showcasing the diverse potential of its terroir.",
        subregions: [
            "Martinborough: The heart of Wairarapa, known for its premium Pinot Noir and elegant Chardonnay.\n",
            "Gladstone: Emerging as a notable area for both red and white varieties, with a focus on sustainability and organic practices.\n",
            "Masterton: The northernmost area of Wairarapa, producing vibrant Sauvignon Blanc and robust Pinot Gris."
        ],
        climate: "Wairarapa experiences a cool maritime climate with a relatively dry pattern, which contributes to the slow and even ripening of grapes, essential for developing nuanced flavors and maintaining acidity.",
        soil: [
            "Martinborough: Predominantly alluvial gravels which provide excellent drainage and contribute to the mineral complexity of the wines.\n",
            "Gladstone: Varied soils, including loam and clay, which support diverse viticultural practices.\n",
            "Masterton: Rich, free-draining alluvial soils, ideal for aromatic white wines."
        ],
        keyWineStyles: "Wairarapa is best known for its Pinot Noir, characterized by its elegance and depth. The region also excels in producing aromatic Chardonnay, crisp Sauvignon Blanc, and structured Syrah.",
        topProducers: [
            "Ata Rangi (Martinborough)",
            "Dry River (Martinborough)",
            "Craggy Range (Martinborough)",
            "Escarpment (Martinborough)",
            "Gladstone Vineyard (Gladstone)",
            "Schubert Wines (Martinborough)"
        ],
        imageName: "wairarapa_image",
        iconNames: ["leaf", "wine_glass"]
    ),
    Region(
        name: "Auckland",
        details: "Auckland, located in the North Island of New Zealand, encompasses several wine districts including Waiheke Island, Kumeu, and Matakana. Auckland’s wine regions are known for their diverse microclimates and soils, which are particularly suited for producing Bordeaux-style red blends, Chardonnay, and Syrah. Waiheke Island, in particular, is celebrated for its premium red wines that exhibit both power and elegance.",
        subregions: [
            "Waiheke Island: Known for its rich, complex reds including Merlot, Cabernet Sauvignon, and Syrah.\n",
            "Kumeu: Acclaimed for its world-class Chardonnay and traditional method sparkling wines.\n",
            "Matakana: Recognized for its rustic Syrah and vibrant Bordeaux-style blends."
        ],
        climate: "Auckland enjoys a warm temperate maritime climate, with gentle springs, warm summers, and mild winters, which allows for versatile viticulture and the production of a wide range of wine styles.",
        soil: [
            "Waiheke Island: Stony soils and clay loams that help retain heat, enhancing the ripening process.\n",
            "Kumeu: Clay-rich soils which are great for Chardonnay and Pinot Noir, providing moisture retention and cooler ground temperatures.\n",
            "Matakana: Predominantly clay and loam soils, suitable for vigorous vine growth and high-quality red wine production."
        ],
        keyWineStyles: "Auckland is particularly noted for its Bordeaux-style red blends and elegant Syrah, as well as its premium Chardonnay and aromatic Pinot Gris.",
        topProducers: [
            "Stonyridge Vineyard (Waiheke Island)",
            "Kumeu River Wines (Kumeu)",
            "Mudbrick Vineyard (Waiheke Island)",
            "Te Motu Vineyard (Waiheke Island)",
            "Cable Bay Vineyards (Waiheke Island)",
            "Ascension Wine Estate (Matakana)"
        ],
        imageName: "auckland_image",
        iconNames: ["vineyard", "wine_glass"]
    ),
    Region(
        name: "Gisborne",
        details: "Located on the eastern tip of New Zealand's North Island, Gisborne is often one of the first wine regions in the world to see the sunrise. Known as the 'Chardonnay Capital of New Zealand,' Gisborne specializes in richly flavored Chardonnay, aromatic Gewürztraminer, and vibrant Pinot Gris. The region benefits from fertile soils and a warm climate, which contribute to the lush, fruit-forward style of its wines.",
        subregions: [
            "Inner Gisborne: Predominantly focuses on premium Chardonnay with rich fruit flavors.\n",
            "Ormond: Known for its excellent Gewürztraminer and Pinot Gris, producing wines with intense aromatics.\n",
            "Patutahi: Produces a variety of white wines, including lesser-known varietals like Chenin Blanc and Viognier."
        ],
        climate: "Gisborne features a warm maritime climate, with ample sunshine and protective geographical features that shield the vineyards from harsh weather, allowing for extended ripening periods.",
        soil: [
            "Inner Gisborne: Deep, fertile loamy soils, ideal for vigorous vine growth and high yields.\n",
            "Ormond: Sandy loam over clay subsoils, which enhance the aromatic profile and acidity of the wines.\n",
            "Patutahi: A mix of clay and silt loams, providing excellent water retention and nutrients for diverse varietal cultivation."
        ],
        keyWineStyles: "Gisborne is renowned for its opulent and creamy Chardonnay, highly aromatic Gewürztraminer, and crisp Pinot Gris. The region also experiments with Albariño and Viognier, expanding its aromatic white wine repertoire.",
        topProducers: [
            "Millton Vineyards & Winery (Manutuke)",
            "Villa Maria Estate (Gisborne)",
            "Wrights Vineyard & Winery (Manutuke)",
            "Bushmere Estate (Gisborne)",
            "Hihi Wines (Gisborne)",
            "Vinoptima Estate (Ormond)"
        ],
        imageName: "gisborne_image",
        iconNames: ["sunrise", "wine_glass"]
    ),
    Region(
        name: "Canterbury",
        details: "Located on New Zealand's South Island, Canterbury encompasses a wide range of environments from coastal plains to alpine foothills, ideal for growing an array of wine styles. The region is particularly noted for its elegant and refined Pinot Noir and Chardonnay. Canterbury's winemaking is characterized by its innovation and a focus on sustainability, reflecting the region's commitment to quality and environmental stewardship.",
        subregions: [
            "Waipara Valley: The most significant area within Canterbury, known for its outstanding Pinot Noir and aromatic whites such as Riesling and Pinot Gris.\n",
            "Banks Peninsula: Features small, boutique vineyards that produce distinctively cool-climate wines.\n",
            "Plains: Known for its diverse varietal range including Chardonnay and Sauvignon Blanc."
        ],
        climate: "Canterbury experiences a cool to moderate maritime climate with a relatively dry pattern, long sunshine hours, and cool nights, which help maintain the acidity and freshness of the wines.",
        soil: [
            "Waipara Valley: Limestone and clay soils contribute to the minerality and complexity of the wines.\n",
            "Banks Peninsula: Volcanic soils which provide good drainage and unique mineral traits.\n",
            "Plains: Predominantly free-draining alluvial soils, suitable for a variety of grape types."
        ],
        keyWineStyles: "Canterbury is celebrated for its refined Pinot Noir and expressive Chardonnay. The region also produces crisp Riesling, aromatic Pinot Gris, and vibrant Sauvignon Blanc.",
        topProducers: [
            "Pegasus Bay (Waipara Valley)",
            "Bell Hill Vineyard (Waipara Valley)",
            "Greystone Wines (Waipara Valley)",
            "Mountford Estate (Waipara Valley)",
            "Pyramid Valley (Waipara Valley)",
            "Black Estate (Waipara Valley)"
        ],
        imageName: "canterbury_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Nelson",
        details: "Nelson, situated to the west of Marlborough on the South Island of New Zealand, is known for its artisan wine producers and picturesque landscapes. The region benefits from a moderate maritime climate and a high number of sunshine hours, making it ideal for producing high-quality wines. Nelson is particularly recognized for its vibrant and fresh aromatic white wines like Sauvignon Blanc, Pinot Gris, and Riesling, as well as its elegant Pinot Noir.",
        subregions: [
            "Moutere Hills: Characterized by its clay soils, which impart a richness and complexity to both red and white wines, particularly Chardonnay and Pinot Noir.\n",
            "Waimea Plains: Known for producing crisp and aromatic white wines due to its stony soils that provide excellent drainage."
        ],
        climate: "Nelson enjoys a sunny, maritime climate with relatively even precipitation throughout the year, contributing to consistent fruit quality and expressive varietal character.",
        soil: [
            "Moutere Hills: The soils are predominantly clay, providing moisture retention and a mineral richness that is reflected in the wines.\n",
            "Waimea Plains: Gravelly and sandy soils, allowing for vigorous vine growth and the production of lively and fresh wines."
        ],
        keyWineStyles: "Nelson is celebrated for its aromatic and expressive Sauvignon Blanc, complex Chardonnay, and elegant Pinot Noir. The region also produces high-quality Riesling, Pinot Gris, and in smaller quantities, aromatic Gewürztraminer.",
        topProducers: [
            "Neudorf Vineyards (Upper Moutere)",
            "Seifried Estate (Appleby)",
            "Woollaston Estates (Mahana)",
            "Kahurangi Estate (Upper Moutere)",
            "Greenhough Vineyards (Hope)",
            "Te Mania (Richmond)"
        ],
        imageName: "nelson_image",
        iconNames: ["sun", "wine_glass"]
    ),
    Region(
        name: "Northland",
        details: "Northland, located at the northern tip of New Zealand's North Island, is one of the oldest wine regions in the country, with a winegrowing history dating back to the early 19th century. The region's subtropical climate and rich heritage make it unique, specializing in rich and full-bodied red wines such as Syrah, Merlot, and Cabernet Sauvignon. Northland also produces some distinctive Chardonnay and Pinot Gris.",
        subregions: [
            "Bay of Islands: Produces robust and hearty red wines with a focus on Syrah and Cabernet blends.\n",
            "Kaitaia: Known for its deep, flavorful Chardonnay and vibrant Viognier.\n",
            "Whangarei: Home to boutique wineries that explore a range of varietals, including Merlot and Malbec."
        ],
        climate: "Northland experiences a warm, subtropical climate, which is among the warmest in New Zealand. The high humidity and rainfall can pose challenges, but also contribute to the lush, fruit-forward character of the wines.",
        soil: [
            "Bay of Islands: Volcanic soils that are rich in minerals, enhancing the complexity and structure of the wines.\n",
            "Kaitaia: Mainly clay and loam soils, providing good water retention and richness.\n",
            "Whangarei: A mix of clay and sandy soils, offering a good balance for a variety of grape types."
        ],
        keyWineStyles: "Northland is renowned for its bold and expressive red wines, particularly Syrah, which is noted for its spice and dark fruit flavors. The region also produces rich Chardonnay and aromatic Pinot Gris.",
        topProducers: [
            "The Landing (Bay of Islands)",
            "Kerikeri Estate (Kerikeri)",
            "Marsden Estate (Kerikeri)",
            "Longview Estate (Whangarei)",
            "Okahu Estate (Kaitaia)",
            "Karikari Estate (Kaitaia)"
        ],
        imageName: "northland_image",
        iconNames: ["vine_leaf", "wine_glass"]
    )
       ]),


//PORTUGAL

Country(name: "Portugal", regions: [
    Region(
        name: "Douro",
        details: "Located in northern Portugal, the Douro is one of the oldest demarcated wine regions in the world, renowned for its Port wines as well as high-quality table wines. The region features steep terraced vineyards along the Douro River, creating a dramatic and picturesque landscape. The extreme climate and unique schist soils contribute to the production of intense and robust red wines, primarily from Touriga Nacional, Touriga Franca, and Tinta Roriz (Tempranillo) grapes.",
        subregions: [
            "Cima Corgo: The heart of Port wine production, known for its complex and age-worthy Ports.\n",
            "Baixo Corgo: Produces lighter and less concentrated wines, both Ports and table wines.\n",
            "Douro Superior: The hottest and driest area, increasingly known for robust and high-quality table wines."
        ],
        climate: "The Douro region experiences a hot-continental climate, with hot dry summers and cold winters, which stresses the vines and results in deep, concentrated flavors in the grapes.",
        soil: [
            "Cima Corgo: Predominantly schist with some granite, providing excellent drainage and heat retention.\n",
            "Baixo Corgo: Richer soils with more organic material, yielding more fruit-forward and accessible wines.\n",
            "Douro Superior: Primarily schist, which stresses the vines for highly concentrated grapes."
        ],
        keyWineStyles: "Douro is best known for its rich and complex Port wines and robust, structured red table wines. The region also produces some notable white wines from Rabigato, Viosinho, and Gouveio, which are crisp and minerally.",
        topProducers: [
            "Quinta do Noval (Cima Corgo)",
            "Quinta do Crasto (Cima Corgo)",
            "Quinta de la Rosa (Cima Corgo)",
            "Symington Family Estates (Multiple subregions)",
            "Niepoort (Cima Corgo)",
            "Dow's Port (Baixo Corgo)"
        ],
        imageName: "douro_image",
        iconNames: ["river", "wine_glass"]
    ),
    Region(
        name: "Vinho Verde",
        details: "Vinho Verde, located in the northwestern part of Portugal, is known for its young, fresh, and often slightly effervescent white wines. The region's name translates to 'green wine,' reflecting both the verdant landscape and the youthful style of the wines. Vinho Verde is primarily made from Alvarinho, Loureiro, and Trajadura grape varieties, offering vibrant acidity and light, refreshing flavors that are perfect for warm weather.",
        subregions: [
            "Monção and Melgaço: Famous for the highest quality Alvarinho wines, which are more structured and aromatic.\n",
            "Lima: Known for its floral and aromatic Loureiro wines.\n",
            "Basto: Produces fuller-bodied and slightly less acidic wines."
        ],
        climate: "Vinho Verde has a maritime climate influenced by the Atlantic Ocean, characterized by high rainfall and moderate temperatures, which is ideal for producing its signature light and crisp wines.",
        soil: [
            "Monção and Melgaço: Granite-based soils that contribute to the mineral complexity and structure of Alvarinho.\n",
            "Lima: Sandy and granite soils, promoting the aromatic quality of Loureiro.\n",
            "Basto: Mainly granite and schist, suitable for producing more robust styles of Vinho Verde."
        ],
        keyWineStyles: "Vinho Verde is best known for its light, fresh, and sometimes lightly sparkling white wines. Alvarinho and Loureiro are the flagship varieties, producing distinctively fresh, aromatic, and mineral-driven wines. The region also produces some Rosé and red wines, which are typically consumed locally.",
        topProducers: [
            "Quinta do Ameal (Lima)",
            "Quinta de Soalheiro (Monção and Melgaço)",
            "Adega Cooperativa de Ponte de Lima (Lima)",
            "Anselmo Mendes (Monção and Melgaço)",
            "Casa de Sezim (Basto)",
            "Aveleda (General Vinho Verde)"
        ],
        imageName: "vinho_verde_image",
        iconNames: ["leaf", "wine_glass"]
    ),
    Region(
        name: "Dão",
        details: "Nestled in the heart of Portugal, surrounded by mountains, the Dão region is known for its elegant and structured wines. The area's high altitude and sheltered position result in a temperate climate ideal for growing a variety of grapes. Dão produces primarily red wines, particularly from the Touriga Nacional, Tinta Roriz, and Jaen varietals, which are known for their balance, elegance, and aging potential. The region also crafts fine white wines, predominantly from Encruzado.",
        subregions: [
            "Serra da Estrela: Known for high-altitude vineyards and predominantly granite soils, producing concentrated and mineral-driven wines.\n",
            "Castendo: Features diverse microclimates suitable for both robust reds and aromatic whites.\n",
            "Silgueiros: Renowned for its refined Encruzado white wines, offering complexity and longevity."
        ],
        climate: "Dão enjoys a continental climate, with cold winters and warm summers. The surrounding mountains moderate the temperature, reducing the risk of frost and allowing for extended ripening periods.",
        soil: [
            "Serra da Estrela: Predominantly granite, which imparts a distinct mineral quality to the wines.\n",
            "Castendo: Mixed granitic and sandy soils, providing excellent drainage for vine roots.\n",
            "Silgueiros: Sandy soils rich in decomposed granite, enhancing the aromatic profile of white wines."
        ],
        keyWineStyles: "Dão is celebrated for its red wines made from Touriga Nacional, which exhibit floral aromatics and firm tannins. Encruzado whites are also noteworthy, known for their body, acidity, and potential for aging.",
        topProducers: [
            "Quinta da Falorca (Silgueiros)",
            "Quinta dos Roques (Mangualde)",
            "Casa de Santar (Santar)",
            "Quinta de Lemos (Silgueiros)",
            "Quinta da Pellada (Ázere)",
            "Sogrape Vinhos (Various locations in Dão)"
        ],
        imageName: "dao_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Bairrada",
        details: "Located in the Beira Litoral province of central Portugal, Bairrada is known for its powerful and tannic red wines, mainly made from the Baga grape. The region's Atlantic influence provides a cool, moist climate that is also conducive to the production of high-quality sparkling wines. Bairrada's clay-limestone soils add complexity and depth to the wines, which are known for their structure and longevity.",
        subregions: [
            "Mealhada: Central area for both still and sparkling wine production, known for its rich, full-bodied reds.\n",
            "Anadia: Focuses on elegant Baga-driven red wines and some notable whites from Maria Gomes and Bical.\n",
            "Cantanhede: Produces robust yet refined wines, with a growing reputation for sparkling wine."
        ],
        climate: "Bairrada has a maritime climate with significant oceanic influences, leading to cool temperatures and high annual rainfall. This climate is ideal for slow maturation and the maintenance of acidity in grapes.",
        soil: [
            "Mealhada: Clay-limestone soils, which provide good water retention and contribute to the robust nature of Bairrada wines.\n",
            "Anadia: Sandy clay over limestone, offering a good balance of nutrients and drainage, ideal for structured wines.\n",
            "Cantanhede: Predominantly limestone, aiding in the development of acidity and complexity in the wines."
        ],
        keyWineStyles: "Bairrada is best known for its intense and structured red wines made from Baga, characterized by their deep color, high tannins, and acidity. The region is also noted for its high-quality traditional method sparkling wines and aromatic white wines.",
        topProducers: [
            "Quinta das Bágeiras (Mogofores)",
            "Luís Pato (Amoreira da Gândara)",
            "Quinta do Encontro (São Lourenço do Bairro)",
            "Caves São João (São João de Azenha)",
            "Aliança Vinhos de Portugal (Sangalhos)",
            "Caves Primavera (Águeda)"
        ],
        imageName: "bairrada_image",
        iconNames: ["grape", "wine_glass"]
    ),
    Region(
        name: "Alentejo",
        details: "Alentejo is one of the largest and most diverse wine regions in Portugal, covering a significant portion of the south-central part of the country. Known for its hot, dry climate, Alentejo produces bold, fruit-forward red wines and aromatic whites. The region is particularly famous for its use of indigenous grape varieties such as Aragonez, Alicante Bouschet, and Antão Vaz, producing wines that are both rich in flavor and well-balanced.",
        subregions: [
            "Borba: Known for robust and structured reds, often using blends of Trincadeira and Aragonez.\n",
            "Reguengos: Home to some of Alentejo’s most powerful and intense wines, with a focus on Alicante Bouschet.\n",
            "Vidigueira: Recognized for its refined white wines, particularly from the Antão Vaz grape, showcasing excellent minerality and acidity."
        ],
        climate: "Alentejo experiences a Mediterranean climate, characterized by hot summers and mild winters, with significant temperature variations between day and night which help preserve the acidity and aromatic potential of the grapes.",
        soil: [
            "Borba: Primarily granite and schist, offering excellent drainage and contributing to the concentration of flavors in the grapes.\n",
            "Reguengos: Rich clay soils, which help retain water during hot summers, crucial for maintaining vine health.\n",
            "Vidigueira: Limestone and schist soils, promoting acidity and freshness in the region’s white wines."
        ],
        keyWineStyles: "Alentejo is renowned for its rich and fruity red wines, often with a touch of spice from oak aging. The region’s white wines are typically full-bodied and fruit-driven, with a pleasant acidity. Alentejo also produces some notable rosé wines.",
        topProducers: [
            "Herdade do Esporão (Reguengos)",
            "Adega Cooperativa de Borba (Borba)",
            "Herdade da Malhadinha Nova (Albernôa)",
            "Herdade dos Grous (Beja)",
            "Herdade do Mouchão (Moura)",
            "Cortes de Cima (Vidigueira)"
        ],
        imageName: "alentejo_image",
        iconNames: ["sun", "wine_glass"]
    ),
    Region(
        name: "Lisboa",
        details: "Formerly known as Estremadura, the Lisboa wine region runs along the western coast of Portugal, north of Lisbon. This region is large and diverse, with a range of microclimates influenced by the Atlantic Ocean. Lisboa is known for its volume production but also produces some high-quality wines, especially white and light red wines. The region grows a variety of grapes, but is particularly noted for its aromatic whites from Arinto, Fernão Pires, and the red Castelão.",
        subregions: [
            "Bucelas: Famed for its crisp and aromatic Arinto-based white wines.\n",
            "Colares: Unique for its sandy soils and ungrafted Ramisco vines, producing distinctive light-bodied reds.\n",
            "Óbidos: Known for its sparkling wines and diverse varietal range including both reds and whites."
        ],
        climate: "Lisboa features a temperate maritime climate, with cool and wet winters and warm, dry summers moderated by the Atlantic breezes, providing ideal conditions for balanced and fresh wines.",
        soil: [
            "Bucelas: Limestone and clay soils that enhance the mineral qualities and acidity in white wines.\n",
            "Colares: Sandy soils, phylloxera-free, allowing for the cultivation of old vine Ramisco.\n",
            "Óbidos: Varied, with patches of limestone, clay, and sand, supporting a diverse range of wine styles."
        ],
        keyWineStyles: "Lisboa is celebrated for its vibrant and fresh white wines, particularly those made from Arinto, which exhibit bright acidity and citrus flavors. The region also produces notable reds from Castelão and Touriga Nacional, and quality sparkling wines.",
        topProducers: [
            "Quinta de Chocapalha (Alenquer)",
            "AdegaMãe (Torres Vedras)",
            "Quinta do Monte d'Oiro (Alenquer)",
            "Casa Santos Lima (Alenquer)",
            "Quinta do Gradil (Cadaval)",
            "Manzwine (Cheleiros)"
        ],
        imageName: "lisboa_image",
        iconNames: ["coast", "wine_glass"]
    ),
    Region(
        name: "Tejo",
        details: "Named after the Tagus River (Tejo in Portuguese) that traverses the region, Tejo is known for its fertile vineyards and the diverse styles of wine it produces. Historically recognized for its bulk wine production, today Tejo is gaining a reputation for quality wines that offer great value. The region produces a range of wines from indigenous grapes like Touriga Nacional and Fernão Pires, and international varieties such as Cabernet Sauvignon and Chardonnay.",
        subregions: [
            "Santarém: Central hub for wine production in Tejo, known for robust reds and vibrant whites.\n",
            "Almeirim: Produces a variety of wine styles, with a focus on fruity and balanced reds and whites.\n",
            "Tomar: Noted for its white wines, especially those made from Fernão Pires, characterized by their aromatic intensity and freshness."
        ],
        climate: "Tejo benefits from a temperate climate influenced by the river, with hot, dry summers and mild, rainy winters. The climate varies from maritime along the river to more continental as you move inland, affecting the ripeness and style of the wines.",
        soil: [
            "Santarém: Rich, fertile soils that are ideal for high-yielding vineyards.\n",
            "Almeirim: Varied soils including sandy loam and clay, which contribute to the structure and fruitiness of the wines.\n",
            "Tomar: Mainly limestone and clay, enhancing the aromatic qualities of white grape varieties."
        ],
        keyWineStyles: "Tejo is recognized for its fruit-forward and versatile red wines, and crisp, aromatic whites. The region also produces some excellent rosé wines and sparkling wines, utilizing both traditional and modern winemaking techniques.",
        topProducers: [
            "Quinta da Alorna (Almeirim)",
            "Casal Branco (Santarém)",
            "Quinta do Casal Monteiro (Tomar)",
            "Tejo Wines Cooperative (Santarém)",
            "Falua (Almeirim)",
            "Quinta da Lagoalva de Cima (Alpiarça)"
        ],
        imageName: "tejo_image",
        iconNames: ["river", "wine_glass"]
    ),
    Region(
        name: "Setúbal",
        details: "The Setúbal Peninsula, located to the south of Lisbon, is famous for its sweet Moscatel de Setúbal wines. The region also produces a variety of high-quality red and white wines from both indigenous and international grape varieties. Setúbal’s climate and unique sandy soils contribute to the distinct character of the Moscatel wines, which are known for their aromatic richness and complexity.",
        subregions: [
            "Palmela: Renowned for its robust red wines, particularly those made from Castelão and Alicante Bouschet.\n",
            "Azeitão: Famous for its aromatic and fortified Moscatel de Setúbal, as well as high-quality reds and whites.\n",
            "Sesimbra: Emerging wine area focusing on modern-style reds and whites."
        ],
        climate: "Setúbal experiences a Mediterranean climate with mild, wet winters and hot, dry summers. The proximity to the ocean moderates temperatures and adds a saline quality to the wines.",
        soil: [
            "Palmela: Mainly sandy soils mixed with limestone, ideal for vigorous vine growth.\n",
            "Azeitão: Sandy and rich in lime, contributing to the floral and mineral notes in Moscatel and other wines.\n",
            "Sesimbra: Varied, with patches of clay and sand, supporting a diverse range of wine styles."
        ],
        keyWineStyles: "Setúbal is best known for its Moscatel de Setúbal, a fortified wine with orange blossom, caramel, and nutty flavors. The region also produces full-bodied reds and elegant whites from varieties such as Fernão Pires and Arinto.",
        topProducers: [
            "José Maria da Fonseca (Azeitão)",
            "Bacalhôa Vinhos de Portugal (Azeitão)",
            "Casa Ermelinda Freitas (Palmela)",
            "Quinta do Piloto (Palmela)",
            "Adega de Palmela (Palmela)",
            "Venâncio da Costa Lima (Quinta do Anjo)"
        ],
        imageName: "setubal_image",
        iconNames: ["moscatel_grape", "wine_glass"]
    ),
    Region(
        name: "Madeira",
        details: "The Madeira archipelago, located in the Atlantic Ocean southwest of Portugal, is famed for its namesake Madeira wine, a fortified wine with a rich history. The unique production process involves heating the wine (estufagem), which imparts distinctive flavors of caramel, nuts, and dried fruits. The island's volcanic soils and subtropical climate contribute to the high acidity and longevity of Madeira wines, which can age beautifully for decades.",
        subregions: [
            "Câmara de Lobos: Known for its Malvasia (Malmsey) grapes, producing the richest and sweetest style of Madeira.\n",
            "São Vicente: Mainly grows Tinta Negra, versatile for various sweetness levels of Madeira.\n",
            "Porto Moniz: A cooler area contributing to the vibrant acidity found in Madeira wines."
        ],
        climate: "Madeira enjoys a subtropical climate with moderate temperatures year-round, influenced by the ocean. The island's mountainous terrain creates various microclimates that are ideal for the diverse grape varieties used in Madeira wine.",
        soil: [
            "Volcanic in nature, rich in nutrients, and well-draining, which helps vines resist phylloxera and other diseases, contributing to the distinctive terroir of Madeira wines."
        ],
        keyWineStyles: "Madeira is most famous for its fortified wines, which range from dry to sweet, including Sercial, Verdelho, Bual, and Malmsey. The wines are known for their pronounced acidity and complex flavors, which evolve with oxidative aging.",
        topProducers: [
            "Blandy's (Funchal)",
            "Henriques & Henriques (Câmara de Lobos)",
            "Barbeito (Funchal)",
            "Pereira D’Oliveira (Funchal)",
            "Vinhus, P. Madeira (Funchal)",
            "Justino’s Madeira (Santa Cruz)"
        ],
        imageName: "madeira_image",
        iconNames: ["volcano", "wine_glass"]
    ),
    Region(
        name: "Porto",
        details: "Porto, more accurately associated with the Douro Valley where the vineyards are located, is world-renowned for its Port wine, a fortified wine that is typically sweet and rich. The region's steep terraced vineyards along the Douro River are a UNESCO World Heritage site, reflecting the ancient viticultural traditions. Port wine is produced by adding grape spirit to halt fermentation and preserve sugar, resulting in a high-alcohol, sweet wine, often enjoyed as a dessert wine.",
        subregions: [
            "Cima Corgo: The heart of high-quality Port production, known for its complex, age-worthy Ports.\n",
            "Baixo Corgo: Produces lighter, less concentrated styles of Port.\n",
            "Douro Superior: Known for robust and intense Ports, with a growing reputation for dry table wines."
        ],
        climate: "The Douro Valley experiences a hot-continental climate, with hot dry summers and cold winters, ideal for the cultivation of concentrated and ripe grapes necessary for Port wine production.",
        soil: [
            "Primarily composed of schist, a slate-like metamorphic rock that fractures vertically, allowing vine roots to penetrate deep into the ground to access nutrients and moisture."
        ],
        keyWineStyles: "Porto is famous for its range of Port wines, including Tawny, Ruby, Vintage, and Late Bottled Vintage (LBV). Each style offers different expressions, from vibrant berry flavors to rich, caramelized profiles developed through barrel aging.",
        topProducers: [
            "Taylor's (Vila Nova de Gaia)",
            "Graham's (Vila Nova de Gaia)",
            "Fonseca (Vila Nova de Gaia)",
            "Niepoort (Vila Nova de Gaia)",
            "Quinta do Noval (Pinhão)",
            "Symington Family Estates (Various)"
        ],
        imageName: "porto_image",
        iconNames: ["barrel", "wine_glass"]
    )
        ]),

//SOUTH AFRICA

Country(name: "South Africa", regions: [
    Region(
        name: "Stellenbosch",
        details: "Stellenbosch, located in the Western Cape of South Africa, is perhaps the most renowned wine region in the country. Known for its rich history and prestigious educational institutions, the area boasts a diverse range of microclimates and terroirs, making it ideal for producing high-quality wines. Stellenbosch is particularly famous for its robust Cabernet Sauvignon, complex Bordeaux blends, and elegant Chardonnay.",
        subregions: [
            "Simonsberg-Stellenbosch: Known for premium red wines with significant aging potential.\n",
            "Jonkershoek Valley: Noted for its cooler climate, influencing the production of distinctive and refined Cabernet Sauvignon.\n",
            "Bottelary Hills: Produces both robust reds and vibrant whites, benefiting from moderate temperatures."
        ],
        climate: "Stellenbosch experiences a Mediterranean climate, characterized by wet winters and dry, warm summers. The proximity to both the Atlantic and Indian Oceans moderates the temperatures, which helps in developing complex flavors in the grapes.",
        soil: [
            "Simonsberg-Stellenbosch: Predominantly clay and granite soils, which retain water well during hot summers.\n",
            "Jonkershoek Valley: Rich in decomposed granite, aiding in the production of structured and mineral-driven wines.\n",
            "Bottelary Hills: A mix of sandy and loamy soils, providing good drainage and versatility."
        ],
        keyWineStyles: "Stellenbosch is celebrated for its full-bodied Cabernet Sauvignon, expressive Bordeaux-style blends, and complex Chardonnay. The region also produces high-quality Merlot, Syrah, and Sauvignon Blanc.",
        topProducers: [
            "Kanonkop (Simonsberg-Stellenbosch)",
            "Tokara (Simonsberg-Stellenbosch)",
            "Rust en Vrede (Stellenbosch)",
            "Warwick Wine Estate (Stellenbosch)",
            "Jordan Wine Estate (Stellenbosch)",
            "Vergelegen (Somerset West)"
        ],
        imageName: "stellenbosch_image",
        iconNames: ["vineyard", "wine_glass"]
    ),
    Region(
        name: "Swartland",
        details: "Located north of Cape Town, Swartland is a dynamic and rapidly growing wine region known for its innovative winemaking and focus on sustainable practices. The region's warm, dry climate and minimal intervention approach have led to a distinctive style of wine that is robust and full of character. Swartland primarily produces Syrah, Chenin Blanc, and Rhône blends, which are praised for their earthiness and complexity.",
        subregions: [
            "Riebeek Valley: A hub for creative winemaking, known for its high-quality Syrah and Chenin Blanc.\n",
            "Paardeberg: Distinguished by its granitic soils, producing intense and minerally wines.\n",
            "Piketberg: Emerging as an important area for both red and white varieties, influenced by slightly cooler conditions."
        ],
        climate: "Swartland has a hot and dry climate, which challenges the vines and results in lower yields but highly concentrated fruit. The region benefits from the cooling effect of the Atlantic Ocean in the late afternoon.",
        soil: [
            "Riebeek Valley: Rich, shale soils that are ideal for deep-rooting vines and producing intensely flavored wines.\n",
            "Paardeberg: Dominated by decomposed granite, contributing to the distinct mineral qualities in the wines.\n",
            "Piketberg: Varied soils, including sandstone and shale, which enhance the aromatic profile and structure of the wines."
        ],
        keyWineStyles: "Swartland is renowned for its bold Syrah, textured Chenin Blanc, and complex Rhône-style blends. The wines are typically powerful, with a focus on terroir expression and natural winemaking methods.",
        topProducers: [
            "Sadie Family Wines (Paardeberg)",
            "A.A. Badenhorst Family Wines (Swartland)",
            "Mullineux & Leeu Family Wines (Riebeek Kasteel)",
            "David & Nadia (Swartland)",
            "Porseleinberg (Riebeek Kasteel)",
            "Rall Wines (Swartland)"
        ],
        imageName: "swartland_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Paarl",
        details: "Located in the Western Cape, north of Stellenbosch, Paarl is one of South Africa's most renowned wine-producing areas. Known for its warm climate and diverse soils, Paarl produces a wide range of wine styles, including robust Shiraz, rich Cabernet Sauvignon, and aromatic Chenin Blanc. The region is also famous for its fortified wines and brandies. The scenic landscape is dominated by the large granite rock that overlooks the town, influencing the local microclimate.",
        subregions: [
            "Simondium: Noted for premium red wines and some complex white wines.\n",
            "Northern Paarl: Home to many well-established wineries, producing a diverse portfolio from robust reds to fresh whites.\n",
            "Agter-Paarl: Known for its bulk wine production but also emerging with quality boutique wineries."
        ],
        climate: "Paarl enjoys a hot and dry Mediterranean climate, which can be moderated by the ocean breezes in certain areas. This climate is ideal for growing a variety of grape types, especially those that require more heat.",
        soil: [
            "Simondium: Rich in decomposed granite, providing good drainage and contributing to the concentration of flavors in the grapes.\n",
            "Northern Paarl: Varied, with areas of fertile loam and clay, supporting vigorous vine growth.\n",
            "Agter-Paarl: Mostly sandy soils, which help in producing vibrant and expressive wines."
        ],
        keyWineStyles: "Paarl is particularly known for its full-bodied red wines, like Shiraz and Cabernet Sauvignon, which are often aged in oak to enhance their complexity. The region also produces aromatic white wines such as Chenin Blanc and Viognier.",
        topProducers: [
            "KWV (Paarl)",
            "Nederburg Wines (Paarl)",
            "Fairview (Paarl)",
            "Spice Route Winery (Paarl)",
            "Ridgeback Wines (Northern Paarl)",
            "Vondeling Wines (Paarl)"
        ],
        imageName: "paarl_image",
        iconNames: ["granite_rock", "wine_glass"]
    ),
    Region(
        name: "Walker Bay",
        details: "Walker Bay is a wine region located along the coast in the Western Cape of South Africa, known for its cool maritime climate influenced by the Atlantic Ocean. This region is particularly acclaimed for its Pinot Noir and Chardonnay, which benefit from the cooler temperatures and ocean breezes. Walker Bay is also noted for producing some of the country’s finest Sauvignon Blanc and sparkling wines.",
        subregions: [
            "Hemel-en-Aarde Valley: Renowned for premium Pinot Noir and Chardonnay with distinct mineral and fruit profiles.\n",
            "Bot River: Known for its rustic style wines and innovative winemaking approaches.\n",
            "Stanford: Emerging as an area for excellent Sauvignon Blanc and Méthode Cap Classique."
        ],
        climate: "The climate in Walker Bay is significantly influenced by the nearby ocean, providing cool breezes and fog that help to maintain acidity and slow grape maturation, ideal for developing complex flavors and aromas.",
        soil: [
            "Hemel-en-Aarde Valley: Mainly shale and clay, excellent for Pinot Noir and Chardonnay which thrive in cooler conditions.\n",
            "Bot River: Rich, fertile soils conducive to diverse varietal cultivation, from robust reds to aromatic whites.\n",
            "Stanford: Varied, with significant patches of clay and limestone, perfect for high-quality white wines."
        ],
        keyWineStyles: "Walker Bay is celebrated for its elegant, Old World-style Pinot Noir and richly textured Chardonnay. The region also produces crisp Sauvignon Blanc and complex sparkling wines, known locally as Méthode Cap Classique.",
        topProducers: [
            "Hamilton Russell Vineyards (Hemel-en-Aarde Valley)",
            "Bouchard Finlayson (Hemel-en-Aarde Valley)",
            "Creation Wines (Hemel-en-Aarde Valley)",
            "Luddite Wines (Bot River)",
            "Springfontein Wine Estate (Stanford)",
            "Raka Wines (Stanford)"
        ],
        imageName: "walker_bay_image",
        iconNames: ["whale_tail", "wine_glass"]
    ),
    Region(
        name: "Constantia",
        details: "Located just south of Cape Town, Constantia is South Africa’s oldest wine-producing area, with a winemaking history dating back to 1685. This historic region is famed for its cool-climate wines, particularly its world-renowned dessert wine, Vin de Constance, along with excellent Sauvignon Blanc and Chardonnay. Nestled between the Constantiaberg mountain and the Atlantic Ocean, the area benefits from cool sea breezes and morning mists, ideal for producing wines with fresh acidity and complex flavors.",
        subregions: [
            "Upper Constantia: Known for premium Sauvignon Blanc and elegant Chardonnay with vibrant acidity and mineral complexity.\n",
            "Lower Constantia: Home to the iconic Vin de Constance, as well as superb red wines from Merlot and Cabernet Sauvignon."
        ],
        climate: "Constantia enjoys a moderate maritime climate, with mild temperatures year-round influenced by proximity to the ocean. The cooling sea breezes and frequent mists help maintain acidity levels and slow the ripening process, enhancing flavor development in the grapes.",
        soil: [
            "The soils in Constantia are predominantly decomposed granite, providing excellent drainage and contributing to the mineral quality of the wines."
        ],
        keyWineStyles: "Constantia is renowned for its Vin de Constance, a sweet wine made from Muscat Blanc à Petits Grains. The region also produces crisp and aromatic Sauvignon Blanc, full-bodied Chardonnay, and structured reds including Merlot and Cabernet Sauvignon.",
        topProducers: [
            "Groot Constantia (Constantia)",
            "Klein Constantia (Constantia)",
            "Buitenverwachting (Constantia)",
            "Steenberg Vineyards (Constantia)",
            "Constantia Glen (Constantia)",
            "Eagles' Nest (Constantia)"
        ],
        imageName: "constantia_image",
        iconNames: ["vineyard", "wine_glass"]
    )
        ]),
        
// GREECE

Country(name: "Greece", regions: [
    Region(
        name: "Naoussa",
        details: "Naoussa, located in the northern part of Greece in the region of Macedonia, is renowned for its production of Xinomavro, a red grape variety known for its complex structure and aging potential. The region's vineyards are situated on the southeastern slopes of Mount Vermio, benefiting from a continental climate with significant diurnal temperature variation. Naoussa wines are often compared to Barolo for their tannic structure and ability to age gracefully.",
        subregions: [
            "Trilofos: Known for producing robust and full-bodied Xinomavro wines with excellent aging potential.\n",
            "Ramnista: Features slightly cooler temperatures, resulting in wines with higher acidity and aromatic complexity.\n",
            "Strantza: Characterized by a mix of soils that contribute to diverse wine styles, from structured to more approachable Xinomavro."
        ],
        climate: "Naoussa has a continental climate, with cold winters and hot summers. The significant temperature variations between day and night help in preserving acidity and developing complex flavors in the grapes.",
        soil: [
            "Trilofos: Predominantly sandy and loamy soils, contributing to the robust structure of the wines.\n",
            "Ramnista: Rich in clay and limestone, which enhance the aromatic profile and acidity.\n",
            "Strantza: A mix of sandy, loamy, and clay soils, supporting a variety of wine styles."
        ],
        keyWineStyles: "Naoussa is best known for its Xinomavro wines, which are characterized by high tannins, pronounced acidity, and complex flavors of red fruit, tomato, and olive. These wines have excellent aging potential and can develop greater complexity over time.",
        topProducers: [
            "Kir-Yianni (Ramnista)",
            "Boutari Winery (Naoussa)",
            "Domaine Foundi (Strantza)",
            "Domaine Dalamara (Naoussa)",
            "Thymiopoulos Vineyards (Trilofos)",
            "Alpha Estate (Naoussa)"
        ],
        imageName: "naoussa_image",
        iconNames: ["mountain", "wine_glass"]
    ),
    Region(
        name: "Nemea",
        details: "Nemea, situated in the northeastern part of the Peloponnese peninsula, is one of Greece's most important wine regions, renowned for its Agiorgitiko grape. The region's vineyards are located at varying altitudes, from the low-lying areas near the coast to the higher elevations on the hillsides, offering diverse terroirs that produce a range of wine styles. Nemea's wines are known for their rich fruit flavors, soft tannins, and excellent aging potential.",
        subregions: [
            "Koutsi: Known for producing elegant and well-structured Agiorgitiko wines with excellent balance.\n",
            "Asprokampos: Features higher altitude vineyards, resulting in wines with high acidity and vibrant fruit flavors.\n",
            "Ancient Nemea: Home to some of the oldest vineyards, producing complex and age-worthy wines."
        ],
        climate: "Nemea enjoys a Mediterranean climate, with mild, wet winters and hot, dry summers. The variation in altitude across the region leads to a range of microclimates, which influence the style and character of the wines.",
        soil: [
            "Koutsi: Predominantly limestone and clay, which provide good drainage and contribute to the complexity of the wines.\n",
            "Asprokampos: Mostly sandy soils, enhancing the aromatic intensity and freshness.\n",
            "Ancient Nemea: A mix of clay and rocky soils, ideal for producing structured and long-lived wines."
        ],
        keyWineStyles: "Nemea is celebrated for its Agiorgitiko wines, which range from fresh and fruity to rich and age-worthy. These wines often exhibit flavors of ripe red fruit, black cherry, and spice, with smooth tannins and balanced acidity. The region also produces some notable white wines from indigenous and international varieties.",
        topProducers: [
            "Gaia Wines (Koutsi)",
            "Domaine Skouras (Argos)",
            "Palivou Estate (Ancient Nemea)",
            "Semeli Winery (Koutsi)",
            "Domaine Harlaftis (Nemea)",
            "Lafkiotis Winery (Nemea)"
        ],
        imageName: "nemea_image",
        iconNames: ["vineyard", "wine_glass"]
    ),
    Region(
        name: "Santorini",
        details: "Santorini, located in the Aegean Sea, is one of Greece's most iconic wine regions, renowned for its unique volcanic terroir and ancient winemaking traditions. The island's vineyards are planted on steep, terraced slopes and benefit from the cooling influence of the sea breezes. Santorini is particularly famous for its Assyrtiko grape, which produces crisp, mineral-driven white wines with high acidity and remarkable aging potential.",
        subregions: [
            "Pyrgos: Known for high-altitude vineyards that produce elegant and aromatic wines.\n",
            "Megalochori: Features some of the oldest vineyards on the island, producing complex and concentrated wines.\n",
            "Akrotiri: Coastal vineyards that benefit from the cooling sea breezes, enhancing the freshness and acidity of the wines."
        ],
        climate: "Santorini has a dry, Mediterranean climate with strong winds and limited rainfall, creating challenging conditions for viticulture but also contributing to the concentration and complexity of the wines.",
        soil: [
            "Volcanic soils rich in pumice, ash, and lava, which provide excellent drainage and impart a distinct mineral character to the wines."
        ],
        keyWineStyles: "Santorini is best known for its Assyrtiko wines, which are characterized by their high acidity, pronounced minerality, and citrus flavors. The island also produces sweet Vinsanto, made from sun-dried Assyrtiko and Aidani grapes, offering rich flavors of dried fruits, honey, and spices.",
        topProducers: [
            "Santo Wines (Pyrgos)",
            "Domaine Sigalas (Oia)",
            "Gaia Wines (Exo Gonia)",
            "Hatzidakis Winery (Pyrgos)",
            "Venetsanos Winery (Megalochori)",
            "Estate Argyros (Episkopi Gonia)"
        ],
        imageName: "santorini_image",
        iconNames: ["volcano", "wine_glass"]
    ),
    Region(
        name: "Crete",
        details: "Crete, the largest of the Greek islands, boasts a rich viticultural heritage dating back thousands of years. The island's diverse terroirs, ranging from coastal plains to mountainous regions, allow for the cultivation of a wide variety of grape types. Crete is known for producing both indigenous and international varietals, with a focus on fresh and aromatic white wines from Vilana and Vidiano, and robust red wines from Liatiko and Kotsifali.",
        subregions: [
            "Heraklion: The central wine-producing area, known for its diverse wine styles, including whites from Vilana and Vidiano, and reds from Kotsifali and Mandilari.\n",
            "Chania: Features vineyards at higher altitudes, producing elegant and aromatic white wines.\n",
            "Lasithi: Noted for its traditional winemaking practices and the production of distinctive red wines."
        ],
        climate: "Crete enjoys a Mediterranean climate with hot, dry summers and mild, wet winters. The variation in altitude across the island creates microclimates that influence the style and character of the wines.",
        soil: [
            "Heraklion: Mostly limestone and clay, which provide good drainage and contribute to the complexity of the wines.\n",
            "Chania: Varied soils, including sandy loam and clay, supporting a range of grape types.\n",
            "Lasithi: Rich in clay and volcanic ash, enhancing the structure and minerality of the wines."
        ],
        keyWineStyles: "Crete is celebrated for its aromatic white wines from Vilana and Vidiano, known for their fresh acidity and citrus flavors. The island also produces robust red wines from Liatiko and Kotsifali, which exhibit rich fruit flavors and spicy notes. Additionally, Crete is known for its sweet wines made from sun-dried grapes.",
        topProducers: [
            "Lyrarakis Wines (Heraklion)",
            "Douloufakis Winery (Heraklion)",
            "Boutari Winery (Heraklion)",
            "Idaia Winery (Heraklion)",
            "Manousakis Winery (Chania)",
            "Economou Winery (Lasithi)"
        ],
        imageName: "crete_image",
        iconNames: ["island", "wine_glass"]
    ),
    Region(
        name: "Peloponnese",
        details: "The Peloponnese, a large peninsula in southern Greece, is a diverse and historically significant wine region known for its high-quality wines and ancient grape varieties. The region's varied topography, from coastal plains to mountainous areas, provides a wide range of microclimates suitable for different grape types. The Peloponnese is particularly famous for its Agiorgitiko and Moschofilero wines, which offer distinct flavors and excellent aging potential.",
        subregions: [
            "Nemea: Renowned for its rich and complex Agiorgitiko red wines, often referred to as the 'Bordeaux of Greece.\n",
            "Mantinia: Known for its aromatic and crisp Moschofilero white wines, which are floral and highly aromatic.\n",
            "Patras: Produces a variety of wine styles, including the sweet Mavrodaphne of Patras and refreshing white wines from Roditis."
        ],
        climate: "The Peloponnese enjoys a Mediterranean climate with hot, dry summers and mild, wet winters. The region's diverse terrain creates numerous microclimates, allowing for the cultivation of a wide range of grape varieties.",
        soil: [
            "Nemea: Predominantly clay and limestone soils, which provide good drainage and contribute to the structure and depth of the wines.\n",
            "Mantinia: Sandy and loamy soils, ideal for the aromatic Moschofilero grape.\n",
            "Patras: Varied soils, including limestone, clay, and marl, supporting diverse viticulture."
        ],
        keyWineStyles: "The Peloponnese is celebrated for its Agiorgitiko wines, which range from fresh and fruity to rich and age-worthy. The region also produces excellent Moschofilero wines, known for their floral and citrus notes. Additionally, the Peloponnese is famous for its sweet Mavrodaphne wines and diverse white wines from Roditis and other indigenous grapes.",
        topProducers: [
            "Gaia Wines (Nemea)",
            "Skouras Winery (Nemea)",
            "Semeli Estate (Nemea)",
            "Boutari Winery (Mantinia)",
            "Tselepos Winery (Mantinia)",
            "Parparoussis Winery (Patras)"
        ],
        imageName: "peloponnese_image",
        iconNames: ["vineyard", "wine_glass"]
    )
        ]),
        
// HUNGARY

Country(name: "Hungary", regions: [
    Region(
        name: "Tokaj",
        details: "Tokaj, located in northeastern Hungary, is one of the world's oldest and most famous wine regions, known for its unique and historic Tokaji Aszú wines. The region’s volcanic soils and favorable microclimate contribute to the development of noble rot (Botrytis cinerea), which is essential for producing the sweet, complex wines that have made Tokaj renowned. Tokaji wines are celebrated for their balance of sweetness and acidity, with flavors of dried fruits, honey, and apricots.",
        subregions: [
            "Mád: Known for producing some of the highest quality Tokaji Aszú wines, characterized by their richness and complexity.\n",
            "Tarcal: Produces both sweet and dry Tokaji wines, with a focus on mineral-driven profiles.\n",
            "Tállya: Noted for its well-balanced wines that showcase the unique terroir of the region."
        ],
        climate: "Tokaj has a continental climate with long, warm summers and cold winters. The Bodrog and Tisza rivers contribute to the region's misty autumns, which promote the development of noble rot necessary for Tokaji Aszú production.",
        soil: [
            "Predominantly volcanic soils with a mix of clay and loess, which provide excellent drainage and impart minerality to the wines."
        ],
        keyWineStyles: "Tokaj is best known for its Tokaji Aszú wines, which are sweet and complex, with flavors of apricots, honey, and citrus. The region also produces dry Furmint and Hárslevelű wines, which are crisp, mineral-driven, and age-worthy.",
        topProducers: [
            "Disznókő (Mád)",
            "Royal Tokaji (Mád)",
            "Oremus (Tolcsva)",
            "Szepsy (Mád)",
            "Királyudvar (Tarcal)",
            "Pajzos Tokaj (Sárospatak)"
        ],
        imageName: "tokaj_image",
        iconNames: ["volcano", "wine_glass"]
    ),
    Region(
        name: "Eger",
        details: "Eger, located in northern Hungary, is a renowned wine region famous for its red blend, Egri Bikavér (Bull's Blood of Eger), and its elegant white wines. The region's diverse microclimates and volcanic soils provide an ideal environment for producing a variety of wine styles. Eger is celebrated for its structured and spicy red wines as well as its crisp and aromatic whites, particularly from the Leányka and Furmint grape varieties.",
        subregions: [
            "Eger: The primary area for producing Egri Bikavér, known for its rich and full-bodied red wines.\n",
            "Nagy-Eged Hill: A prestigious vineyard area noted for high-quality wines with excellent aging potential.\n",
            "Debrő: Recognized for its fresh and aromatic white wines."
        ],
        climate: "Eger has a continental climate with warm summers and cold winters. The region benefits from a mix of sunshine and precipitation, creating favorable conditions for grape growing and the production of both red and white wines.",
        soil: [
            "Predominantly volcanic soils with limestone and clay, which contribute to the complexity and minerality of the wines."
        ],
        keyWineStyles: "Eger is best known for Egri Bikavér, a red blend that typically includes Kékfrankos, Kadarka, and other varietals, resulting in a spicy, robust wine with good aging potential. The region also produces high-quality white wines, such as Egri Csillag (Star of Eger), made from a blend of indigenous and international grape varieties.",
        topProducers: [
            "St. Andrea Winery (Eger)",
            "Bolyki Pincészet (Eger)",
            "Thummerer Winery (Noszvaj)",
            "Gál Tibor Winery (Eger)",
            "Juhász Brothers Winery (Eger)",
            "Ostorosbor (Eger)"
        ],
        imageName: "eger_image",
        iconNames: ["castle", "wine_glass"]
    ),
    Region(
        name: "Villány",
        details: "Located in southern Hungary near the Croatian border, Villány is one of Hungary's premier wine regions, renowned for its full-bodied and robust red wines. The region benefits from a warm climate and limestone-rich soils, making it ideal for producing high-quality wines, particularly from Bordeaux varietals like Cabernet Sauvignon and Merlot. Villány is also known for its indigenous varieties, such as Kadarka and Kékfrankos, which contribute to the region's diverse wine profile.",
        subregions: [
            "Siklós: Known for producing elegant and balanced wines with a focus on Cabernet Franc and Merlot.\n",
            "Nagyharsány: Features vineyards that produce powerful and structured red wines, particularly from Bordeaux varieties.\n",
            "Villánykövesd: Noted for its diverse range of red wines and innovative winemaking techniques."
        ],
        climate: "Villány enjoys a warm, Mediterranean-like climate with long, hot summers and mild winters. The region's climate is influenced by the nearby Drava River, which helps moderate temperatures and maintain humidity levels.",
        soil: [
            "Predominantly limestone and loess soils, which provide excellent drainage and contribute to the mineral complexity of the wines."
        ],
        keyWineStyles: "Villány is celebrated for its robust red wines, particularly from Cabernet Sauvignon, Merlot, and Cabernet Franc. These wines are known for their rich fruit flavors, firm tannins, and excellent aging potential. The region also produces notable wines from indigenous varieties like Kadarka and Kékfrankos.",
        topProducers: [
            "Gere Attila Winery (Villány)",
            "Bock Winery (Villány)",
            "Vylyan Vineyards and Winery (Villány)",
            "Günzer Tamás Winery (Villány)",
            "Wassmann Pince (Villánykövesd)",
            "Jackfall Estate (Villány)"
        ],
        imageName: "villany_image",
        iconNames: ["vineyard", "wine_glass"]
    ),
    Region(
        name: "Szekszárd",
        details: "Szekszárd, situated in southern Hungary, is a historic wine region known for its elegant and spicy red wines. The region's rolling hills and diverse soils create a unique terroir that is ideal for cultivating both international and indigenous grape varieties. Szekszárd is particularly famous for its Kékfrankos and Kadarka wines, which are often blended to produce the region's signature wine, Bikavér (Bull's Blood).",
        subregions: [
            "Decs: Known for producing high-quality Kékfrankos and Kadarka wines with excellent structure and balance.\n",
            "Őcsény: Features vineyards that produce aromatic and spicy red wines, including Bikavér blends.\n",
            "Sárpilis: Noted for its innovative winemaking techniques and diverse range of wine styles."
        ],
        climate: "Szekszárd has a continental climate with hot summers and cold winters. The region benefits from a mix of sunshine and moderate rainfall, which creates favorable conditions for grape growing and the production of both red and white wines.",
        soil: [
            "Predominantly loess and clay soils, which contribute to the richness and complexity of the wines."
        ],
        keyWineStyles: "Szekszárd is best known for its Kékfrankos and Kadarka wines, which are often blended to create the region's famous Bikavér. These wines are characterized by their vibrant fruit flavors, spicy notes, and good aging potential. The region also produces high-quality Merlot, Cabernet Sauvignon, and Syrah.",
        topProducers: [
            "Heimann Family Winery (Szekszárd)",
            "Takler Winery (Szekszárd)",
            "Bodri Winery (Szekszárd)",
            "Eszterbauer Winery (Szekszárd)",
            "Sebestyén Winery (Szekszárd)",
            "Mészáros Pál Winery (Szekszárd)"
        ],
        imageName: "szekszard_image",
        iconNames: ["rolling_hills", "wine_glass"]
    ),
    Region(
        name: "Balaton",
        details: "The Balaton wine region, surrounding Lake Balaton, the largest lake in Central Europe, is one of Hungary's most picturesque and diverse wine-producing areas. Known for its volcanic soils and cool climate, the region is ideal for producing crisp and aromatic white wines. Balaton is particularly famous for its Olaszrizling, Furmint, and Kéknyelű wines, which reflect the unique terroir of the region. The lake's moderating influence helps to create a favorable microclimate for viticulture.",
        subregions: [
            "Badacsony: Known for its distinctive white wines made from Kéknyelű and Olaszrizling, with a strong mineral character.\n",
            "Balatonfüred-Csopak: Produces elegant and aromatic white wines, particularly Olaszrizling, with a focus on freshness and acidity.\n",
            "Balatonboglár: Known for a variety of wine styles, including sparkling wines, and both red and white wines."
        ],
        climate: "Balaton has a cool continental climate, moderated by the presence of Lake Balaton. The lake helps to regulate temperatures, reducing the risk of frost and providing a longer growing season, which is ideal for producing high-quality white wines.",
        soil: [
            "Badacsony: Volcanic basalt and tuff soils, contributing to the distinctive minerality and complexity of the wines.\n",
            "Balatonfüred-Csopak: Mainly limestone and marl, providing good drainage and enhancing the aromatic profile of the wines.\n",
            "Balatonboglár: A mix of loess and sandy soils, suitable for a wide range of grape varieties."
        ],
        keyWineStyles: "Balaton is celebrated for its white wines, particularly those made from Olaszrizling, Kéknyelű, and Furmint. These wines are known for their crisp acidity, fresh fruit flavors, and mineral notes. The region also produces notable sparkling wines and a variety of red wines, including Pinot Noir and Merlot.",
        topProducers: [
            "Laposa Estate (Badacsony)",
            "Figula Winery (Balatonfüred-Csopak)",
            "Kreinbacher Estate (Somló)",
            "Jásdi Winery (Csopak)",
            "Konyári Winery (Balatonboglár)",
            "Villa Tolnay (Badacsony)"
        ],
        imageName: "balaton_image",
        iconNames: ["lake", "wine_glass"]
    )
        ])
    ]
}
