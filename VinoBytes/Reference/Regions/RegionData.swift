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
    let soil: String
    let keyWineStyles: String
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
                    Region(name: "Bordeaux", details: "Details about Bordeaux...", subregions: ["Médoc", "Graves"], climate: "Maritime", soil: "Gravel, sand, and clay", keyWineStyles: "Cabernet Sauvignon and Merlot blends", imageName: "bordeaux_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Burgundy", details: "Details about Burgundy...", subregions: ["Chablis", "Côte d’Or", "Beaujolais"], climate: "Continental", soil: "Limestone and clay", keyWineStyles: "Chardonnay and Pinot Noir wines", imageName: "burgundy_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Champagne", details: "Details about Champagne...", subregions: ["Montagne de Reims", "Côte des Blancs"], climate: "Cool continental", soil: "Chalky", keyWineStyles: "Sparkling wines", imageName: "champagne_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Rhône Valley", details: "Details about Rhône Valley...", subregions: ["Northern Rhône", "Southern Rhône"], climate: "Mediterranean", soil: "Granite in the north, sandy in the south", keyWineStyles: "Syrah and Grenache blends", imageName: "rhone_valley_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Loire Valley", details: "Details about Loire Valley...", subregions: ["Anjou", "Touraine"], climate: "Maritime to continental", soil: "Tuffeau and flint", keyWineStyles: "Sauvignon Blanc and Chenin Blanc wines", imageName: "loire_valley_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Alsace", details: "Details about Alsace...", subregions: ["Haut-Rhin", "Bas-Rhin"], climate: "Semi-continental", soil: "Volcanic and limestone", keyWineStyles: "Riesling and Gewürztraminer", imageName: "alsace_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Languedoc-Roussillon", details: "Details about Languedoc-Roussillon...", subregions: ["Corbières", "Minervois"], climate: "Mediterranean", soil: "Schist and limestone", keyWineStyles: "Red blends", imageName: "languedoc_roussillon_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Provence", details: "Details about Provence...", subregions: ["Bandol", "Côtes de Provence"], climate: "Mediterranean", soil: "Limestone and clay", keyWineStyles: "Rosé wines", imageName: "provence_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Jura", details: "Details about Jura...", subregions: ["Arbois", "Château-Chalon"], climate: "Continental", soil: "Marl", keyWineStyles: "Vin Jaune and Savagnin", imageName: "jura_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Savoie", details: "Details about Savoie...", subregions: ["Chautagne", "Chambéry"], climate: "Alpine", soil: "Limestone and rocky", keyWineStyles: "White wines from Jacquère", imageName: "savoie_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Corsica", details: "Details about Corsica...", subregions: ["Patrimonio", "Ajaccio"], climate: "Mediterranean", soil: "Schist", keyWineStyles: "Vermentino and Nielluccio wines", imageName: "corsica_image", iconNames: ["leaf", "drop"])
                    
        ]),
    
                    
                    //ITALY
                    
        Country(name: "Italy", regions: [
                    Region(name: "Tuscany", details: "Famous for its Chianti and Brunello di Montalcino, Tuscany epitomizes Italian wine culture.", subregions: ["Chianti", "Brunello di Montalcino", "Maremma"], climate: "Mediterranean", soil: "Galestro, clay, and sand", keyWineStyles: "Sangiovese-based wines", imageName: "tuscany_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Piedmont", details: "Home to the prestigious Barolo and Barbaresco, Piedmont is a gem in Italy's wine crown.", subregions: ["Langhe", "Monferrato", "Gavi"], climate: "Continental", soil: "Clay, limestone, and marl", keyWineStyles: "Nebbiolo, Barbera, Dolcetto wines", imageName: "piedmont_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Veneto", details: "Known for its diverse wine production including Amarone and Prosecco.", subregions: ["Valpolicella", "Soave", "Prosecco di Conegliano-Valdobbiadene"], climate: "Varied from continental to Mediterranean", soil: "Volcanic, limestone, and alluvial", keyWineStyles: "Amarone, Prosecco, Soave", imageName: "veneto_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Sicily", details: "Sicily's wine scene is vibrant, featuring robust Nero d'Avola and sweet Marsala.", subregions: ["Etna", "Vittoria", "Marsala"], climate: "Mediterranean", soil: "Volcanic, sandy", keyWineStyles: "Nero d'Avola, Marsala", imageName: "sicily_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Abruzzo", details: "Abruzzo is well-regarded for its accessible and robust Montepulciano d'Abruzzo.", subregions: ["Teramo", "Chieti", "Pescara"], climate: "Mediterranean and continental", soil: "Clay, limestone", keyWineStyles: "Montepulciano, Trebbiano", imageName: "abruzzo_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Emilia-Romagna", details: "Known for its sparkling Lambrusco and rich Sangiovese di Romagna.", subregions: ["Modena", "Romagna"], climate: "Humid subtropical and continental", soil: "Clay, silt, and sand", keyWineStyles: "Lambrusco, Sangiovese", imageName: "emilia_romagna_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Lombardy", details: "Lombardy is famous for its sparkling Franciacorta and Valtellina's Nebbiolo wines.", subregions: ["Franciacorta", "Valtellina", "Oltrepò Pavese"], climate: "Continental", soil: "Morainic, limestone, and sandy", keyWineStyles: "Franciacorta, Nebbiolo", imageName: "lombardy_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Umbria", details: "Umbria offers a rustic charm with its Sagrantino di Montefalco and Orvieto.", subregions: ["Orvieto", "Montefalco"], climate: "Mediterranean and continental", soil: "Volcanic, clay", keyWineStyles: "Sagrantino, Orvieto", imageName: "umbria_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Friuli-Venezia Giulia", details: "This region is admired for its crisp white wines and unique reds.", subregions: ["Collio", "Friuli Grave"], climate: "Cool continental", soil: "Gravel, marl, and sandstone", keyWineStyles: "Friulano, Pinot Grigio", imageName: "friuli_venezia_giulia_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Campania", details: "Campania is renowned for its ancient grape varieties and complex white wines.", subregions: ["Taurasi", "Greco di Tufo", "Fiano di Avellino"], climate: "Mediterranean", soil: "Volcanic, limestone", keyWineStyles: "Aglianico, Fiano, Greco", imageName: "campania_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Trentino-Alto Adige", details: "Known for its high-altitude vineyards and Germanic influences in wine.", subregions: ["Alto Adige", "Trentino"], climate: "Alpine", soil: "Dolomite limestone, volcanic", keyWineStyles: "Pinot Grigio, Gewürztraminer", imageName: "trentino_alto_adige_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Puglia", details: "Puglia is a key player in Italian viticulture, primarily known for its bold red wines.", subregions: ["Salento", "Valle d'Itria"], climate: "Mediterranean", soil: "Red earth, limestone", keyWineStyles: "Primitivo, Negroamaro", imageName: "puglia_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Sardinia", details: "Sardinia's isolated wine culture features robust and hearty styles.", subregions: ["Vermentino di Gallura", "Cannonau di Sardegna"], climate: "Mediterranean", soil: "Granite, sand", keyWineStyles: "Vermentino, Cannonau", imageName: "sardinia_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Liguria", details: "Liguria, with its steep coastal vineyards, is known for crisp, aromatic whites.", subregions: ["Cinque Terre", "Riviera Ligure di Ponente"], climate: "Mediterranean", soil: "Slate, sandy", keyWineStyles: "Vermentino, Pigato", imageName: "liguria_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Molise", details: "Molise, often overshadowed by its neighbors, produces both Montepulciano and Trebbiano.", subregions: ["Biferno", "Pentro di Isernia"], climate: "Mediterranean and continental", soil: "Clay, limestone", keyWineStyles: "Montepulciano, Trebbiano", imageName: "molise_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Valle d'Aosta", details: "Known for its high-altitude vineyards producing unique local varietals.", subregions: ["Donnas", "Enfer d'Arvier"], climate: "Continental", soil: "Sandy, alluvial", keyWineStyles: "Petit Rouge, Premetta", imageName: "valle_daosta_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Basilicata", details: "Basilicata is celebrated for its Aglianico del Vulture, which thrives on volcanic soils.", subregions: ["Vulture"], climate: "Mediterranean", soil: "Volcanic", keyWineStyles: "Aglianico", imageName: "basilicata_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Calabria", details: "Calabria's rustic vineyards produce wines primarily from Gaglioppo and Greco.", subregions: ["Cirò", "Greco di Bianco"], climate: "Mediterranean", soil: "Clay, sandy", keyWineStyles: "Gaglioppo, Greco", imageName: "calabria_image", iconNames: ["leaf", "drop"])
                            ]),
        
        //SPAIN
        
        Country(name: "Spain", regions: [
                    Region(name: "Rioja", details: "Famous for its balanced and age-worthy red wines primarily from Tempranillo.", subregions: ["Rioja Alta", "Rioja Alavesa", "Rioja Oriental"], climate: "Continental", soil: "Clay, iron-rich, and alluvial soils", keyWineStyles: "Tempranillo-based reds", imageName: "rioja_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Ribera del Duero", details: "Known for full-bodied and robust red wines.", subregions: [], climate: "Continental", soil: "Limestone, clay, and silt", keyWineStyles: "Tempranillo (Tinto Fino) reds", imageName: "ribera_del_duero_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Priorat", details: "Characterized by its rugged terrain and powerful red wines.", subregions: [], climate: "Mediterranean", soil: "Llicorella (slate)", keyWineStyles: "Garnacha and Cariñena blends", imageName: "priorat_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Jerez", details: "World-renowned for its fortified wines, such as Sherry.", subregions: [], climate: "Hot Mediterranean", soil: "Albariza (chalky white soil)", keyWineStyles: "Fortified wines (Fino, Oloroso)", imageName: "jerez_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Rias Baixas", details: "Famous for its aromatic white wines made from Albariño.", subregions: [], climate: "Cool, maritime", soil: "Granite and sandy", keyWineStyles: "Albariño whites", imageName: "rias_baixas_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Penedès", details: "Versatile region producing Cava and a range of still wines.", subregions: [], climate: "Mediterranean to continental", soil: "Limestone and clay", keyWineStyles: "Cava, red and white still wines", imageName: "penedes_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Valdepeñas", details: "Offers good value wines mostly from Tempranillo.", subregions: [], climate: "Continental", soil: "Calcareous and sandy", keyWineStyles: "Tempranillo reds", imageName: "valdepenas_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Navarra", details: "Diverse wine styles from international and local grapes.", subregions: [], climate: "Continental", soil: "Alluvial, gravel, and clay", keyWineStyles: "Reds, rosés, and whites", imageName: "navarra_image", iconNames: ["leaf", "drop"]),
                    Region(name: "La Mancha", details: "One of the largest wine-producing areas in the world.", subregions: [], climate: "Hot continental", soil: "Clay and limestone", keyWineStyles: "Variety of affordable wines", imageName: "la_mancha_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Toro", details: "Known for its powerful, full-bodied red wines from Tinta de Toro.", subregions: [], climate: "Continental", soil: "Sandy and clay", keyWineStyles: "Tinta de Toro reds", imageName: "toro_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Bierzo", details: "Appreciated for its aromatic and light to medium-bodied Mencía wines.", subregions: [], climate: "Mild continental", soil: "Slate and quartzite", keyWineStyles: "Mencía reds", imageName: "bierzo_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Rueda", details: "Best known for its crisp and fresh white wines from Verdejo.", subregions: [], climate: "Continental", soil: "Sandy and gravelly", keyWineStyles: "Verdejo whites", imageName: "rueda_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Catalonia (Catalunya)", details: "Produces a diverse array of wines, including Spain's famous Cava.", subregions: ["Priorat", "Penedès", "Montsant"], climate: "Mediterranean", soil: "Varied, including limestone, granite, and slate", keyWineStyles: "Cava, reds, and whites", imageName: "catalonia_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Galicia", details: "Known for its refreshing white wines and distinct sub-regions.", subregions: ["Ribeira Sacra", "Valdeorras", "Rías Baixas"], climate: "Cool maritime", soil: "Granite and slate", keyWineStyles: "Albariño and other whites", imageName: "galicia_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Somontano", details: "This region is known for its modern approach to both indigenous and international grape varieties.", subregions: [], climate: "Continental with some Pyrenean influence", soil: "Clay, limestone, and sand", keyWineStyles: "Variety of reds and whites", imageName: "somontano_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Canary Islands", details: "Unique viticulture influenced by volcanic soils, producing distinctive wines.", subregions: ["Tenerife", "La Palma", "Lanzarote"], climate: "Subtropical", soil: "Volcanic", keyWineStyles: "Listán Negro and Malvasia wines", imageName: "canary_islands_image", iconNames: ["leaf", "drop"])
                            ]),
        
        //AUSTRALIA
        
        Country(name: "Australia", regions: [
                   Region(name: "Barossa Valley", details: "Famous for its powerful Shiraz and robust Cabernet Sauvignon.", subregions: [], climate: "Mediterranean", soil: "Loam and clay", keyWineStyles: "Shiraz, Cabernet Sauvignon", imageName: "barossa_valley_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Clare Valley", details: "Renowned for its Riesling, characterized by crisp acidity and floral aromas.", subregions: [], climate: "Continental", soil: "Slate and limestone", keyWineStyles: "Riesling", imageName: "clare_valley_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Coonawarra", details: "Best known for its high-quality Cabernet Sauvignon with a distinctive minty character, grown on its unique terra rossa soil.", subregions: [], climate: "Maritime", soil: "Terra rossa (red clay) over limestone", keyWineStyles: "Cabernet Sauvignon", imageName: "coonawarra_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Margaret River", details: "Known for premium Chardonnay and Cabernet Sauvignon, with a growing reputation for quality Sauvignon Blanc-Semillon blends.", subregions: [], climate: "Maritime", soil: "Gravelly loam", keyWineStyles: "Chardonnay, Cabernet Sauvignon, Sauvignon Blanc-Semillon blends", imageName: "margaret_river_image", iconNames: ["leaf", "drop"]),
                   Region(name: "McLaren Vale", details: "Produces rich Shiraz, fragrant Grenache, and robust Cabernet Sauvignon, along with innovative blends.", subregions: [], climate: "Mediterranean", soil: "Sand, clay, and loam", keyWineStyles: "Shiraz, Grenache, Cabernet Sauvignon", imageName: "mclaren_vale_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Yarra Valley", details: "Offers a range of cool-climate wines, notably Pinot Noir and Chardonnay, along with sparkling wines.", subregions: [], climate: "Cool maritime", soil: "Sandy loam and clay", keyWineStyles: "Pinot Noir, Chardonnay, sparkling wines", imageName: "yarra_valley_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Hunter Valley", details: "Australia’s oldest wine region, famous for its Semillon and Shiraz.", subregions: [], climate: "Subtropical", soil: "Red clay and loam", keyWineStyles: "Semillon, Shiraz", imageName: "hunter_valley_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Tasmania", details: "Known for its premium cool-climate wines, including Pinot Noir, Chardonnay, and sparkling wines.", subregions: [], climate: "Cool maritime", soil: "Varied, including clay and sandy loam", keyWineStyles: "Pinot Noir, Chardonnay, sparkling wines", imageName: "tasmania_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Adelaide Hills", details: "Noted for its elegant Chardonnay, Sauvignon Blanc, and cool-climate Shiraz.", subregions: [], climate: "Cool maritime", soil: "Loam and clay", keyWineStyles: "Chardonnay, Sauvignon Blanc, Shiraz", imageName: "adelaide_hills_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Eden Valley", details: "High-altitude region adjacent to Barossa, known for its finely structured Riesling and elegant Shiraz.", subregions: [], climate: "Cool continental", soil: "Sandy loam over clay", keyWineStyles: "Riesling, Shiraz", imageName: "eden_valley_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Riverina", details: "Known for its dessert wines, particularly Botrytis Semillon.", subregions: [], climate: "Hot continental", soil: "Sandy loam", keyWineStyles: "Botrytis Semillon", imageName: "riverina_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Heathcote", details: "Recognized for its deep-colored and full-bodied Shiraz, grown on ancient Cambrian soils.", subregions: [], climate: "Moderate continental", soil: "Cambrian red soil", keyWineStyles: "Shiraz", imageName: "heathcote_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Rutherglen", details: "Famous for its fortified Muscats and Tokays (now labeled as Topaque).", subregions: [], climate: "Continental", soil: "Alluvial loam", keyWineStyles: "Fortified Muscat and Topaque", imageName: "rutherglen_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Great Southern", details: "A diverse region known for Riesling, Chardonnay, Pinot Noir, and Shiraz, with a distinct cool-climate expression.", subregions: ["Albany", "Denmark", "Frankland River", "Mount Barker", "Porongurup"], climate: "Cool maritime", soil: "Varied, including sandy loam and gravel", keyWineStyles: "Riesling, Chardonnay, Pinot Noir, Shiraz", imageName: "great_southern_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Pemberton", details: "Known for its high-quality Pinot Noir, Chardonnay, and Merlot.", subregions: [], climate: "Maritime", soil: "Karri loam", keyWineStyles: "Pinot Noir, Chardonnay, Merlot", imageName: "pemberton_image", iconNames: ["leaf", "drop"])
               ]),
        
        //UNITED STATES
        
        Country(name: "United States", regions: [
                    Region(name: "Napa Valley", details: "Famous for its world-class Cabernet Sauvignon and other Bordeaux varietals.", subregions: ["Stags Leap District", "Rutherford", "Oakville"], climate: "Mediterranean", soil: "Volcanic, clay, and loam", keyWineStyles: "Cabernet Sauvignon, Chardonnay", imageName: "napa_valley_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Sonoma County", details: "Known for its diverse microclimates and wine styles.", subregions: ["Russian River Valley", "Dry Creek Valley", "Alexander Valley"], climate: "Varied", soil: "Loam and volcanic", keyWineStyles: "Pinot Noir, Chardonnay", imageName: "sonoma_county_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Willamette Valley", details: "Renowned for its elegant Pinot Noir.", subregions: ["Dundee Hills", "Eola-Amity Hills", "Ribbon Ridge"], climate: "Maritime", soil: "Volcanic, sedimentary", keyWineStyles: "Pinot Noir, Pinot Gris", imageName: "willamette_valley_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Columbia Valley", details: "Known for its rich and balanced wines.", subregions: ["Walla Walla Valley", "Yakima Valley", "Red Mountain"], climate: "Continental", soil: "Sandy, loam", keyWineStyles: "Cabernet Sauvignon, Merlot", imageName: "columbia_valley_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Finger Lakes", details: "Famous for its aromatic Rieslings.", subregions: ["Seneca Lake", "Cayuga Lake", "Keuka Lake"], climate: "Cool continental", soil: "Shale, limestone", keyWineStyles: "Riesling, Gewürztraminer", imageName: "finger_lakes_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Paso Robles", details: "Known for its bold Zinfandel and Rhône varietals.", subregions: ["Willow Creek District", "Adelaida District", "El Pomar District"], climate: "Mediterranean", soil: "Limestone, clay", keyWineStyles: "Zinfandel, Syrah", imageName: "paso_robles_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Santa Barbara County", details: "Renowned for its Pinot Noir and Chardonnay.", subregions: ["Santa Maria Valley", "Santa Ynez Valley", "Sta. Rita Hills"], climate: "Mediterranean", soil: "Sand, clay", keyWineStyles: "Pinot Noir, Chardonnay", imageName: "santa_barbara_county_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Central Coast", details: "Diverse wine region with a variety of microclimates.", subregions: ["Monterey", "Paso Robles", "Santa Barbara"], climate: "Mediterranean", soil: "Varied", keyWineStyles: "Chardonnay, Pinot Noir", imageName: "central_coast_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Texas Hill Country", details: "Emerging wine region known for its Tempranillo and Viognier.", subregions: [], climate: "Continental", soil: "Limestone, clay", keyWineStyles: "Tempranillo, Viognier", imageName: "texas_hill_country_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Virginia", details: "Known for its Viognier and Cabernet Franc.", subregions: ["Monticello", "Shenandoah Valley", "Northern Virginia"], climate: "Humid subtropical", soil: "Clay, loam", keyWineStyles: "Viognier, Cabernet Franc", imageName: "virginia_image", iconNames: ["leaf", "drop"])
                ]),
        
        
        //GERMANY
        
        Country(name: "Germany", regions: [
                    Region(name: "Mosel", details: "Renowned for its elegant and mineral-driven Rieslings.", subregions: ["Bernkastel", "Piesport", "Trittenheim"], climate: "Cool continental", soil: "Slate", keyWineStyles: "Riesling", imageName: "mosel_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Rheingau", details: "Known for high-quality Rieslings and Spätburgunder (Pinot Noir).", subregions: ["Johannisberg", "Rüdesheim", "Hochheim"], climate: "Moderate continental", soil: "Slate and quartzite", keyWineStyles: "Riesling, Pinot Noir", imageName: "rheingau_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Rheinhessen", details: "Germany's largest wine region, producing a variety of wines.", subregions: ["Nierstein", "Oppenheim", "Ingelheim"], climate: "Moderate continental", soil: "Limestone, loess, clay", keyWineStyles: "Riesling, Müller-Thurgau, Silvaner", imageName: "rheinhessen_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Pfalz", details: "Known for its warm climate and diverse range of wines.", subregions: ["Forst", "Deidesheim", "Dürkheim"], climate: "Warm continental", soil: "Sandstone, loess, clay", keyWineStyles: "Riesling, Pinot Noir, Dornfelder", imageName: "pfalz_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Nahe", details: "Produces wines with a balance of Mosel elegance and Rheingau richness.", subregions: ["Schlossböckelheim", "Bad Kreuznach", "Oberhausen"], climate: "Moderate continental", soil: "Slate, volcanic, sandstone", keyWineStyles: "Riesling", imageName: "nahe_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Franken", details: "Famous for its dry white wines, particularly Silvaner.", subregions: ["Würzburg", "Iphofen", "Volkach"], climate: "Continental", soil: "Limestone, clay", keyWineStyles: "Silvaner, Riesling", imageName: "franken_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Ahr", details: "Germany's northernmost wine region, known for its Spätburgunder (Pinot Noir).", subregions: ["Altenahr", "Mayschoß", "Bad Neuenahr"], climate: "Cool continental", soil: "Slate, greywacke", keyWineStyles: "Pinot Noir", imageName: "ahr_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Baden", details: "Germany's warmest wine region, producing a variety of wines.", subregions: ["Kaiserstuhl", "Tuniberg", "Ortenau"], climate: "Warm continental", soil: "Loess, volcanic, clay", keyWineStyles: "Pinot Noir, Pinot Gris, Pinot Blanc", imageName: "baden_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Württemberg", details: "Known for its red wines, especially Trollinger and Lemberger.", subregions: ["Stuttgart", "Heilbronn", "Remstal-Stuttgart"], climate: "Moderate continental", soil: "Keuper, loess, clay", keyWineStyles: "Trollinger, Lemberger, Riesling", imageName: "wurttemberg_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Saale-Unstrut", details: "Germany's northernmost wine region, known for its crisp white wines.", subregions: ["Freyburg", "Naumburg", "Bad Kösen"], climate: "Cool continental", soil: "Limestone, loess", keyWineStyles: "Müller-Thurgau, Silvaner, Riesling", imageName: "saale_unstrut_image", iconNames: ["leaf", "drop"])
                ]),
        
        
        //AUSTRIA
        
        Country(name: "Austria", regions: [
                    Region(name: "Wachau", details: "Famous for its high-quality Grüner Veltliner and Riesling.", subregions: ["Spitz", "Dürnstein", "Loiben"], climate: "Cool continental", soil: "Loess, granite", keyWineStyles: "Grüner Veltliner, Riesling", imageName: "wachau_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Kamptal", details: "Known for its elegant Grüner Veltliner and Riesling.", subregions: ["Langenlois", "Zöbing", "Gobelsburg"], climate: "Cool continental", soil: "Loess, primary rock", keyWineStyles: "Grüner Veltliner, Riesling", imageName: "kamptal_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Kremstal", details: "Produces high-quality Grüner Veltliner and Riesling wines.", subregions: ["Krems", "Rohrendorf", "Senftenberg"], climate: "Cool continental", soil: "Loess, gravel", keyWineStyles: "Grüner Veltliner, Riesling", imageName: "kremstal_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Burgenland", details: "Known for its red wines, particularly Blaufränkisch, and sweet wines.", subregions: ["Neusiedlersee", "Mittelburgenland", "Südburgenland"], climate: "Pannonian", soil: "Clay, sand, loam", keyWineStyles: "Blaufränkisch, Zweigelt, sweet wines", imageName: "burgenland_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Styria (Steiermark)", details: "Famous for its aromatic white wines, especially Sauvignon Blanc.", subregions: ["Südsteiermark", "Weststeiermark", "Südoststeiermark"], climate: "Cool continental", soil: "Opok (marl), sand", keyWineStyles: "Sauvignon Blanc, Welschriesling", imageName: "styria_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Weinviertel", details: "Austria's largest wine region, known for its peppery Grüner Veltliner.", subregions: ["Poysdorf", "Retz", "Falkenstein"], climate: "Cool continental", soil: "Loess, clay", keyWineStyles: "Grüner Veltliner", imageName: "weinviertel_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Thermenregion", details: "Produces a variety of wines, including indigenous white varieties.", subregions: ["Gumpoldskirchen", "Baden", "Bad Vöslau"], climate: "Pannonian", soil: "Limestone, loess", keyWineStyles: "Zierfandler, Rotgipfler", imageName: "thermenregion_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Carnuntum", details: "Known for its powerful red wines, particularly Zweigelt and Blaufränkisch.", subregions: ["Göttlesbrunn", "Petronell-Carnuntum", "Prellenkirchen"], climate: "Pannonian", soil: "Loess, gravel", keyWineStyles: "Zweigelt, Blaufränkisch", imageName: "carnuntum_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Wagram", details: "Famous for its Grüner Veltliner and Roter Veltliner.", subregions: ["Fels am Wagram", "Großriedenthal", "Kirchberg am Wagram"], climate: "Cool continental", soil: "Loess", keyWineStyles: "Grüner Veltliner, Roter Veltliner", imageName: "wagram_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Neusiedlersee", details: "Known for its sweet wines, particularly those made from noble rot grapes.", subregions: ["Illmitz", "Gols", "Podersdorf"], climate: "Pannonian", soil: "Clay, sand", keyWineStyles: "Sweet wines, Zweigelt", imageName: "neusiedlersee_image", iconNames: ["leaf", "drop"])
                ]),
        
        //CHILE
        
        Country(name: "Chile", regions: [
                    Region(name: "Maipo Valley", details: "The birthplace of Chilean wine, known for its Cabernet Sauvignon.", subregions: ["Alto Maipo", "Central Maipo", "Pacific Maipo"], climate: "Mediterranean", soil: "Alluvial, clay", keyWineStyles: "Cabernet Sauvignon", imageName: "maipo_valley_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Colchagua Valley", details: "Known for its premium red wines, especially Carménère.", subregions: ["Apalta", "Santa Cruz", "Marchigüe"], climate: "Mediterranean", soil: "Granite, clay", keyWineStyles: "Carménère, Cabernet Sauvignon", imageName: "colchagua_valley_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Casablanca Valley", details: "Renowned for its cool-climate white wines and Pinot Noir.", subregions: ["Las Dichas", "Lo Ovalle", "Las Vertientes"], climate: "Cool Mediterranean", soil: "Granite, clay", keyWineStyles: "Sauvignon Blanc, Chardonnay, Pinot Noir", imageName: "casablanca_valley_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Aconcagua Valley", details: "Known for its high-quality red wines, particularly Cabernet Sauvignon and Syrah.", subregions: ["Panquehue", "Hijuelas", "San Felipe"], climate: "Mediterranean", soil: "Alluvial, clay", keyWineStyles: "Cabernet Sauvignon, Syrah", imageName: "aconcagua_valley_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Cachapoal Valley", details: "Produces rich and robust red wines.", subregions: ["Peumo", "Rancagua", "Requínoa"], climate: "Mediterranean", soil: "Alluvial, clay", keyWineStyles: "Carménère, Cabernet Sauvignon", imageName: "cachapoal_valley_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Curicó Valley", details: "Known for its diverse range of wine styles.", subregions: ["Lontué Valley", "Teno Valley"], climate: "Mediterranean", soil: "Alluvial, clay", keyWineStyles: "Cabernet Sauvignon, Sauvignon Blanc", imageName: "curico_valley_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Maule Valley", details: "One of Chile's largest wine regions, known for its old vine Carignan.", subregions: ["Cauquenes", "Loncomilla", "Tutuven"], climate: "Mediterranean", soil: "Alluvial, clay", keyWineStyles: "Carignan, Cabernet Sauvignon", imageName: "maule_valley_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Itata Valley", details: "Known for its traditional viticulture and old vine varieties.", subregions: ["Coelemu", "Quillón"], climate: "Mediterranean", soil: "Granite, clay", keyWineStyles: "Muscat, Cinsault, País", imageName: "itata_valley_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Bío-Bío Valley", details: "Produces aromatic white wines and fresh reds.", subregions: ["Yumbel", "Mulchén"], climate: "Cool Mediterranean", soil: "Volcanic, clay", keyWineStyles: "Pinot Noir, Chardonnay", imageName: "bio_bio_valley_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Leyda Valley", details: "Renowned for its cool-climate Sauvignon Blanc and Pinot Noir.", subregions: ["Leyda", "San Antonio"], climate: "Cool Mediterranean", soil: "Granite, clay", keyWineStyles: "Sauvignon Blanc, Pinot Noir", imageName: "leyda_valley_image", iconNames: ["leaf", "drop"])
                ]),
        
        
        //ARGENTINA
        
        Country(name: "Argentina", regions: [
                   Region(name: "Mendoza", details: "Argentina's most important wine region, famous for Malbec.", subregions: ["Luján de Cuyo", "Valle de Uco", "Maipú"], climate: "Continental", soil: "Alluvial, sandy", keyWineStyles: "Malbec", imageName: "mendoza_image", iconNames: ["leaf", "drop"]),
                   Region(name: "San Juan", details: "Known for Syrah and Doux Naturels.", subregions: ["Tulum Valley", "Zonda Valley", "Ullum Valley"], climate: "Arid", soil: "Alluvial, sandy", keyWineStyles: "Syrah, Bonarda", imageName: "san_juan_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Salta", details: "High-altitude vineyards producing exceptional Torrontés.", subregions: ["Cafayate", "Molinos", "San Carlos"], climate: "Arid", soil: "Sandy, rocky", keyWineStyles: "Torrontés, Malbec", imageName: "salta_image", iconNames: ["leaf", "drop"]),
                   Region(name: "La Rioja", details: "One of Argentina's oldest wine regions, known for Torrontés Riojano.", subregions: ["Chilecito", "Famatina", "Castro Barros"], climate: "Arid", soil: "Alluvial, sandy", keyWineStyles: "Torrontés, Syrah", imageName: "la_rioja_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Patagonia", details: "Cooler climate region producing elegant Pinot Noir and Merlot.", subregions: ["Río Negro", "Neuquén", "La Pampa"], climate: "Cool continental", soil: "Alluvial, sandy", keyWineStyles: "Pinot Noir, Merlot", imageName: "patagonia_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Catamarca", details: "Known for high-altitude vineyards producing rich red wines.", subregions: ["Tinogasta", "Santa María", "Belén"], climate: "Arid", soil: "Alluvial, sandy", keyWineStyles: "Malbec, Syrah", imageName: "catamarca_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Neuquén", details: "Part of the Patagonia region, known for its modern wineries and high-quality wines.", subregions: ["San Patricio del Chañar"], climate: "Cool continental", soil: "Alluvial, sandy", keyWineStyles: "Pinot Noir, Malbec", imageName: "neuquen_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Río Negro", details: "Part of the Patagonia region, known for its elegant and fresh wines.", subregions: ["General Roca", "Alto Valle", "Valle Medio"], climate: "Cool continental", soil: "Alluvial, sandy", keyWineStyles: "Pinot Noir, Malbec", imageName: "rio_negro_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Tucumán", details: "A small but growing wine region with high-altitude vineyards.", subregions: ["Tafí del Valle"], climate: "Arid", soil: "Alluvial, sandy", keyWineStyles: "Malbec, Torrontés", imageName: "tucuman_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Jujuy", details: "High-altitude vineyards producing distinctive wines.", subregions: ["Quebrada de Humahuaca"], climate: "Arid", soil: "Alluvial, sandy", keyWineStyles: "Malbec, Syrah", imageName: "jujuy_image", iconNames: ["leaf", "drop"])
               ]),
        
        
        //NEW ZEALAND
        
        Country(name: "New Zealand", regions: [
                   Region(name: "Marlborough", details: "World-renowned for its Sauvignon Blanc.", subregions: ["Wairau Valley", "Awatere Valley", "Southern Valleys"], climate: "Maritime", soil: "Alluvial, gravelly", keyWineStyles: "Sauvignon Blanc", imageName: "marlborough_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Hawke's Bay", details: "Known for its Bordeaux-style red blends and Chardonnay.", subregions: ["Gimblett Gravels", "Esk Valley", "Dartmoor Valley"], climate: "Maritime", soil: "Alluvial, gravelly", keyWineStyles: "Merlot, Cabernet Sauvignon, Chardonnay", imageName: "hawkes_bay_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Central Otago", details: "Famous for its vibrant Pinot Noir.", subregions: ["Gibbston Valley", "Bannockburn", "Cromwell Basin"], climate: "Continental", soil: "Schist, loam", keyWineStyles: "Pinot Noir", imageName: "central_otago_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Waipara Valley", details: "Known for its aromatic whites and Pinot Noir.", subregions: ["Waipara", "Waikari"], climate: "Cool maritime", soil: "Limestone, clay", keyWineStyles: "Riesling, Pinot Noir", imageName: "waipara_valley_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Wairarapa", details: "Produces high-quality Pinot Noir and Sauvignon Blanc.", subregions: ["Martinborough", "Gladstone", "Masterton"], climate: "Maritime", soil: "Gravel, clay", keyWineStyles: "Pinot Noir, Sauvignon Blanc", imageName: "wairarapa_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Auckland", details: "Home to some of New Zealand's oldest vineyards, producing diverse wine styles.", subregions: ["Waiheke Island", "Kumeu", "Matakana"], climate: "Maritime", soil: "Clay, loam", keyWineStyles: "Chardonnay, Merlot, Syrah", imageName: "auckland_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Gisborne", details: "Known for its Chardonnay and aromatic whites.", subregions: ["Ormond", "Patutahi", "Manutuke"], climate: "Maritime", soil: "Alluvial, sandy", keyWineStyles: "Chardonnay, Gewürztraminer", imageName: "gisborne_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Canterbury", details: "Produces a variety of wine styles, with an emphasis on Pinot Noir and aromatic whites.", subregions: ["Waipara Valley", "Canterbury Plains"], climate: "Maritime", soil: "Gravel, clay", keyWineStyles: "Pinot Noir, Riesling", imageName: "canterbury_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Nelson", details: "Known for its sunny climate and aromatic white wines.", subregions: ["Waimea Plains", "Upper Moutere"], climate: "Maritime", soil: "Alluvial, clay", keyWineStyles: "Sauvignon Blanc, Chardonnay, Pinot Noir", imageName: "nelson_image", iconNames: ["leaf", "drop"]),
                   Region(name: "Northland", details: "New Zealand's northernmost wine region, producing rich reds and vibrant whites.", subregions: ["Kerikeri", "Kaitaia"], climate: "Subtropical", soil: "Clay, loam", keyWineStyles: "Syrah, Chardonnay", imageName: "northland_image", iconNames: ["leaf", "drop"])
               ]),
        
        
        //PORTUGAL
        
        Country(name: "Portugal", regions: [
                    Region(name: "Douro", details: "Home of Port wine and high-quality table wines.", subregions: ["Cima Corgo", "Baixo Corgo", "Douro Superior"], climate: "Continental", soil: "Schist", keyWineStyles: "Port, red blends", imageName: "douro_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Vinho Verde", details: "Known for its light and refreshing white wines.", subregions: ["Monção and Melgaço", "Lima", "Cávado"], climate: "Maritime", soil: "Granite", keyWineStyles: "Alvarinho, Loureiro", imageName: "vinho_verde_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Dão", details: "Produces elegant and age-worthy red wines.", subregions: ["Serra da Estrela", "Silgueiros", "Alva"], climate: "Continental", soil: "Granite, sand", keyWineStyles: "Touriga Nacional, Encruzado", imageName: "dao_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Bairrada", details: "Known for its full-bodied red wines and sparkling wines.", subregions: ["Cantanhede", "Anadia", "Mealhada"], climate: "Maritime", soil: "Clay, limestone", keyWineStyles: "Baga, sparkling wines", imageName: "bairrada_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Alentejo", details: "Produces rich and fruit-forward red wines.", subregions: ["Borba", "Évora", "Redondo"], climate: "Mediterranean", soil: "Granite, schist, clay", keyWineStyles: "Alicante Bouschet, Aragonez", imageName: "alentejo_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Lisboa", details: "Diverse region known for both red and white wines.", subregions: ["Alenquer", "Colares", "Arruda"], climate: "Maritime", soil: "Clay, limestone", keyWineStyles: "Arinto, Castelão", imageName: "lisboa_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Tejo", details: "Produces easy-drinking red and white wines.", subregions: ["Cartaxo", "Santarém", "Tomar"], climate: "Mediterranean", soil: "Sandy, clay", keyWineStyles: "Fernão Pires, Trincadeira", imageName: "tejo_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Setúbal", details: "Known for its fortified Muscat wines.", subregions: ["Palmela", "Azeitão"], climate: "Mediterranean", soil: "Sandy, limestone", keyWineStyles: "Muscat, Castelão", imageName: "setubal_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Madeira", details: "Produces fortified wines known for their longevity and complexity.", subregions: ["Funchal", "Câmara de Lobos"], climate: "Maritime", soil: "Volcanic", keyWineStyles: "Madeira (Sercial, Verdelho, Bual, Malmsey)", imageName: "madeira_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Porto", details: "Famous for Port wine, a fortified wine produced exclusively in the Douro Valley.", subregions: ["Vila Nova de Gaia"], climate: "Maritime", soil: "Granite, schist", keyWineStyles: "Port", imageName: "porto_image", iconNames: ["leaf", "drop"])
                ]),
        
        //SOUTH AFRICA
        
        Country(name: "South Africa", regions: [
                    Region(name: "Stellenbosch", details: "The heart of South Africa's wine industry, known for Cabernet Sauvignon and Chenin Blanc.", subregions: ["Simonsberg-Stellenbosch", "Bottelary"], climate: "Mediterranean", soil: "Granite, sandstone", keyWineStyles: "Cabernet Sauvignon, Chenin Blanc", imageName: "stellenbosch_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Swartland", details: "Renowned for its dry-farmed, old-vine wines.", subregions: ["Paardeberg", "Riebeekberg"], climate: "Mediterranean", soil: "Granite, shale", keyWineStyles: "Chenin Blanc, Syrah", imageName: "swartland_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Paarl", details: "Home to a variety of wine styles, known for Shiraz and Chenin Blanc.", subregions: ["Franschhoek", "Wellington"], climate: "Mediterranean", soil: "Granite, sandstone", keyWineStyles: "Shiraz, Chenin Blanc", imageName: "paarl_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Walker Bay", details: "Famous for cool-climate wines, particularly Pinot Noir and Chardonnay.", subregions: ["Hermanus", "Hemel-en-Aarde"], climate: "Cool maritime", soil: "Shale, sandstone", keyWineStyles: "Pinot Noir, Chardonnay", imageName: "walker_bay_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Constantia", details: "Historic wine region known for its sweet Muscat wines and Sauvignon Blanc.", subregions: [], climate: "Cool maritime", soil: "Granite, sandstone", keyWineStyles: "Sauvignon Blanc, Muscat", imageName: "constantia_image", iconNames: ["leaf", "drop"])
                ]),
                
        // GREECE
        
        Country(name: "Greece", regions: [
                    Region(name: "Naoussa", details: "Known for its Xinomavro wines.", subregions: [], climate: "Mediterranean", soil: "Limestone, clay", keyWineStyles: "Xinomavro", imageName: "naoussa_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Nemea", details: "Famous for its Agiorgitiko wines.", subregions: [], climate: "Mediterranean", soil: "Clay, limestone", keyWineStyles: "Agiorgitiko", imageName: "nemea_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Santorini", details: "Renowned for its Assyrtiko wines from volcanic soils.", subregions: [], climate: "Mediterranean", soil: "Volcanic", keyWineStyles: "Assyrtiko", imageName: "santorini_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Crete", details: "Produces a variety of wines including Liatiko and Vidiano.", subregions: [], climate: "Mediterranean", soil: "Limestone, clay", keyWineStyles: "Liatiko, Vidiano", imageName: "crete_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Peloponnese", details: "Home to a variety of indigenous grape varieties.", subregions: [], climate: "Mediterranean", soil: "Limestone, clay", keyWineStyles: "Moschofilero, Agiorgitiko", imageName: "peloponnese_image", iconNames: ["leaf", "drop"])
                ]),
                
        // HUNGARY
        
        Country(name: "Hungary", regions: [
                    Region(name: "Tokaj", details: "World-famous for its sweet Tokaji Aszú wines.", subregions: [], climate: "Continental", soil: "Volcanic, clay", keyWineStyles: "Tokaji Aszú", imageName: "tokaj_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Eger", details: "Known for its Egri Bikavér (Bull's Blood) red blend.", subregions: [], climate: "Continental", soil: "Volcanic, clay", keyWineStyles: "Egri Bikavér", imageName: "eger_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Villány", details: "Produces full-bodied red wines, particularly from Cabernet Sauvignon and Merlot.", subregions: [], climate: "Continental", soil: "Limestone, loess", keyWineStyles: "Cabernet Sauvignon, Merlot", imageName: "villany_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Szekszárd", details: "Another region known for its red wines, including Kadarka and Kékfrankos.", subregions: [], climate: "Continental", soil: "Loess, clay", keyWineStyles: "Kadarka, Kékfrankos", imageName: "szekszard_image", iconNames: ["leaf", "drop"]),
                    Region(name: "Balaton", details: "Produces a variety of wines from vineyards around Lake Balaton.", subregions: [], climate: "Continental", soil: "Volcanic, clay", keyWineStyles: "Olaszrizling, Furmint", imageName: "balaton_image", iconNames: ["leaf", "drop"])
                ])
            ]
        }
        
      
