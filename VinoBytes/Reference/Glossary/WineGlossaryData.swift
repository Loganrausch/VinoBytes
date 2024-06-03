//
//  WineGlossaryData.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/3/24.
//

import Foundation

struct GlossaryEntry {
    let term: String
    let definition: String
    let additionalInfo: String
}

struct WineGlossaryData {
    static let terms: [GlossaryEntry] = [
        GlossaryEntry(term: "Acidity", definition: "The quality of wine that gives it its crispness and freshness.", additionalInfo: "Acidity is a crucial component of a wine's structure and balance."),
        GlossaryEntry(term: "AOC (Appellation d'Origine Contrôlée)", definition: "A French certification granted to certain geographical areas for wine.", additionalInfo: "It ensures that wines are produced according to strict guidelines."),
        GlossaryEntry(term: "Amphora", definition: "A type of clay vessel used for fermenting and aging wine.", additionalInfo: "Amphorae have been used since ancient times and are seeing a resurgence in modern winemaking."),
        GlossaryEntry(term: "Aroma", definition: "Aroma refers to the smells that come from the grapes and fermentation process.", additionalInfo: "In young wines, these are typically fruity or floral."),
        GlossaryEntry(term: "Balance", definition: "The harmonious relationship between a wine's elements (acidity, tannin, alcohol, and fruit).", additionalInfo: "A well-balanced wine has no single element overpowering the others."),
        GlossaryEntry(term: "Barrique", definition: "A type of oak barrel traditionally used for aging wine, particularly in Bordeaux.", additionalInfo: "It typically holds 225 liters."),
        GlossaryEntry(term: "Blanc de Blancs", definition: "A sparkling wine made exclusively from white grapes.", additionalInfo: "Commonly used in Champagne."),
        GlossaryEntry(term: "Blanc de Noirs", definition: "A sparkling wine made from red grapes.", additionalInfo: "The juice is usually pressed off the skins quickly to avoid color transfer."),
        GlossaryEntry(term: "Botrytis Cinerea", definition: "Botrytis cinerea is a fungus that can affect grapes.", additionalInfo: "In controlled conditions, it is known as 'noble rot' and can produce sweet dessert wines."),
        GlossaryEntry(term: "Bouquet", definition: "Bouquet refers to the complex aromas that develop in wine after it has aged.", additionalInfo: "It is different from aroma, which is more associated with young wines."),
        GlossaryEntry(term: "Carbonic Maceration", definition: "Carbonic maceration is a winemaking technique where whole grapes ferment in a carbon dioxide-rich environment.", additionalInfo: "It produces fruity, low-tannin wines."),
        GlossaryEntry(term: "Chaptalization", definition: "The process of adding sugar to grape juice before fermentation to increase the alcohol content.", additionalInfo: "This practice is often used in cooler climates where grapes may not ripen fully."),
        GlossaryEntry(term: "Claret", definition: "Claret is a term used in Britain to describe red Bordeaux wine.", additionalInfo: "It is traditionally a blend of several grape varieties."),
        GlossaryEntry(term: "Clos", definition: "A French term for a walled vineyard.", additionalInfo: "Clos is commonly used in Burgundy."),
        GlossaryEntry(term: "Corked", definition: "Corked wine has been contaminated with TCA, a chemical compound that causes off-flavors.", additionalInfo: "It can give the wine a musty, moldy aroma."),
        GlossaryEntry(term: "Cremant", definition: "A French term for sparkling wines made outside of the Champagne region.", additionalInfo: "Cremant wines are made using the same traditional method as Champagne."),
        GlossaryEntry(term: "Cru", definition: "Cru is a French term that means 'growth' and refers to a vineyard or group of vineyards of recognized quality.", additionalInfo: "It is often used in regions like Bordeaux and Burgundy."),
        GlossaryEntry(term: "Decanting", definition: "Decanting is the process of pouring wine from its bottle into a decanter.", additionalInfo: "This helps to separate the wine from any sediment and allows it to breathe."),
        GlossaryEntry(term: "Dry", definition: "Dry wine has little to no residual sugar, making it not sweet.", additionalInfo: "It is the opposite of sweet wine."),
        GlossaryEntry(term: "Enology", definition: "Enology is the science and study of wine and winemaking.", additionalInfo: "It encompasses everything from the vineyard to the finished product."),
        GlossaryEntry(term: "Estate Bottled", definition: "Indicates that the wine was made and bottled on the winery's property.", additionalInfo: "All the grapes used must come from the estate's vineyards."),
        GlossaryEntry(term: "Fermentation", definition: "The process by which yeast converts sugars in grape juice into alcohol and carbon dioxide.", additionalInfo: "Fermentation is essential to the production of wine."),
        GlossaryEntry(term: "Finish", definition: "Finish is the taste that lingers in the mouth after swallowing.", additionalInfo: "A long finish is often a sign of a high-quality wine."),
        GlossaryEntry(term: "Fortified Wine", definition: "Wine to which a distilled spirit, usually brandy, has been added.", additionalInfo: "Examples include Port, Sherry, and Madeira."),
        GlossaryEntry(term: "Hybrid", definition: "A grape variety that is a cross between two different species of grapevine.", additionalInfo: "Hybrids are often bred for disease resistance and hardiness."),
        GlossaryEntry(term: "Jeroboam", definition: "A large wine bottle holding 3 liters, equivalent to four standard bottles.", additionalInfo: "Commonly used for sparkling wines."),
        GlossaryEntry(term: "Late Harvest", definition: "Wines made from grapes that are picked later than usual, resulting in higher sugar levels.", additionalInfo: "These wines are often sweet."),
        GlossaryEntry(term: "Lees", definition: "Sediment consisting of dead yeast cells and other particles that settles at the bottom of a wine tank or barrel.", additionalInfo: "Lees aging can add complexity to the wine."),
        GlossaryEntry(term: "Legs", definition: "Legs are the streaks of wine that form on the inside of a glass after swirling.", additionalInfo: "They can give an indication of the wine's alcohol content."),
        GlossaryEntry(term: "Maceration", definition: "The process of soaking grape skins in their juice to extract color, tannins, and flavors.", additionalInfo: "Maceration is a key step in red wine production."),
        GlossaryEntry(term: "Malolactic Fermentation", definition: "Malolactic fermentation is a process where malic acid in wine is converted to lactic acid.", additionalInfo: "This can soften the wine and add complexity."),
        GlossaryEntry(term: "Meritage", definition: "A term used in the United States for Bordeaux-style red and white wines.", additionalInfo: "Meritage wines must be made from specific grape varieties."),
        GlossaryEntry(term: "Microclimate", definition: "The climate of a small, specific area within a vineyard.", additionalInfo: "Microclimate can significantly affect the quality of grapes."),
        GlossaryEntry(term: "Négociant", definition: "A wine merchant who buys grapes, juice, or finished wine from growers and winemakers.", additionalInfo: "Négociants then bottle and sell the wine under their own label."),
        GlossaryEntry(term: "Oaked", definition: "Oaked wine has been aged in oak barrels, imparting flavors and aromas.", additionalInfo: "These can include vanilla, spice, and toast."),
        GlossaryEntry(term: "Old Vine", definition: "Refers to wines made from grapes grown on older vines, typically 20 years or older.", additionalInfo: "Old vines often produce lower yields of higher quality fruit."),
        GlossaryEntry(term: "Oxidation", definition: "Oxidation occurs when wine is exposed to air and starts to spoil.", additionalInfo: "This can cause the wine to lose its freshness and develop off-flavors."),
        GlossaryEntry(term: "Phylloxera", definition: "Phylloxera is a tiny insect that attacks the roots of grapevines.", additionalInfo: "It devastated European vineyards in the 19th century."),
        GlossaryEntry(term: "Pomace", definition: "The solid remains of grapes after pressing, including skins, pulp, seeds, and stems.", additionalInfo: "Pomace can be used for making grappa or as compost."),
        GlossaryEntry(term: "Racking", definition: "The process of moving wine from one container to another to separate it from sediment.", additionalInfo: "Racking helps clarify the wine."),
        GlossaryEntry(term: "Residual Sugar", definition: "The amount of sugar remaining in a wine after fermentation.", additionalInfo: "It determines the sweetness of the wine."),
        GlossaryEntry(term: "Sediment", definition: "Sediment is the solid particles that settle at the bottom of a wine bottle.", additionalInfo: "It is often found in older red wines and should be separated by decanting."),
        GlossaryEntry(term: "Single Vineyard", definition: "Wine made from grapes grown in a single vineyard.", additionalInfo: "Often indicates a higher quality and more distinctive wine."),
        GlossaryEntry(term: "Sommelier", definition: "A sommelier is a wine steward responsible for wine service and pairing in a restaurant.", additionalInfo: "They are trained and knowledgeable in all aspects of wine."),
        GlossaryEntry(term: "Sur Lie Aging", definition: "A winemaking technique where wine is left to age on its yeast lees, adding complexity and texture.", additionalInfo: "Common in the production of certain white wines, like Muscadet."),
        GlossaryEntry(term: "Sustainable Viticulture", definition: "Farming practices that are environmentally responsible and economically viable.", additionalInfo: "These practices aim to balance the needs of the present without compromising future generations."),
        GlossaryEntry(term: "Tannin", definition: "Naturally occurring compounds in grape skins, seeds, and stems that provide structure and ageability to wine.", additionalInfo: "Tannins are most prominent in red wines and contribute to their astringency."),
        GlossaryEntry(term: "Terroir", definition: "The set of all environmental factors that affect a crop's phenotype, including unique environment contexts, farming practices and a crop's specific growth habitat.", additionalInfo: "Terroir gives wine its unique qualities."),
        GlossaryEntry(term: "Ullage", definition: "The space between the wine and the top of the wine container in barrels and bottles.", additionalInfo: "This space allows for some expansion and contraction of the wine due to temperature changes."),
        GlossaryEntry(term: "Unfiltered", definition: "Wine that has not been filtered to remove solid particles before bottling.", additionalInfo: "Unfiltered wines can have more texture and flavor complexity."),
        GlossaryEntry(term: "Varietal", definition: "Refers to wines made primarily from a single named grape variety.", additionalInfo: "Common examples include Chardonnay, Merlot, and Syrah."),
        GlossaryEntry(term: "Véraison", definition: "The stage of grape ripening when the grapes change color and begin to soften.", additionalInfo: "This is an important indicator in determining the harvest time."),
        GlossaryEntry(term: "Vinification", definition: "The process of turning grapes into wine, involving fermentation and aging.", additionalInfo: "Each step of vinification can influence the final taste and quality of the wine."),
        GlossaryEntry(term: "Vintage", definition: "Refers to the year the grapes were harvested and used to produce a particular wine.", additionalInfo: "Vintage can greatly affect wine quality due to the differing conditions each year."),
        GlossaryEntry(term: "Viticulture", definition: "The science, production, and study of grapes.", additionalInfo: "It focuses primarily on the process of grape cultivation."),
        GlossaryEntry(term: "Yeast", definition: "Microorganisms that are essential to the fermentation process, converting sugars in grape juice into alcohol and carbon dioxide.", additionalInfo: "Different strains of yeast can impart varying flavors and aromas."),
        GlossaryEntry(term: "Yield", definition: "The amount of grapes or wine produced in a specific area.", additionalInfo: "Lower yields are often associated with higher quality wine production."),
        GlossaryEntry(term: "Zymology", definition: "The science of fermentation in wine.", additionalInfo: "Also known as enology, it studies the biochemical process and its role in winemaking."),
        GlossaryEntry(term: "Angel's Share", definition: "The portion of wine or spirits that evaporates from oak barrels during aging.", additionalInfo: "Commonly mentioned in the context of barrel-aged wines and spirits like whisky."),
        GlossaryEntry(term: "Appassimento", definition: "A traditional Italian method of drying harvested grapes to concentrate their juice.", additionalInfo: "Primarily used in the Veneto region to produce rich, flavorful wines like Amarone."),
        GlossaryEntry(term: "Bâtonnage", definition: "The process of stirring wine lees in a barrel to enhance flavor and texture.", additionalInfo: "This technique is often used in the production of creamy, complex white wines."),
        GlossaryEntry(term: "Biodynamic", definition: "A method of organic farming involving homeopathic treatments and following an agricultural calendar.", additionalInfo: "Emphasizes a holistic approach to viticulture and enology."),
        GlossaryEntry(term: "Brix", definition: "A measure of the sugar content of grapes, indicating the degree of potential alcohol level in wine.", additionalInfo: "It helps vintners decide the optimal time for harvest."),
        GlossaryEntry(term: "Capsule", definition: "The protective sleeve made of metal or plastic that covers the cork and neck of a wine bottle.", additionalInfo: "Serves both decorative and protective functions."),
        GlossaryEntry(term: "Cépage", definition: "A French term for grape variety.", additionalInfo: "Often used in the context of labeling wines produced from one or more specific varietals."),
        GlossaryEntry(term: "Cultivar", definition: "A plant variety that has been produced in cultivation by selective breeding.", additionalInfo: "Commonly used in the context of viticulture for grape variety."),
        GlossaryEntry(term: "Demi-sec", definition: "A French term used to describe a semi-sweet wine, often a style of Champagne or sparkling wine.", additionalInfo: "Demi-sec wines are sweeter than brut but not as sweet as doux."),
        GlossaryEntry(term: "Elevage", definition: "The progression of wine between fermentation and bottling.", additionalInfo: "Comparable to the term 'raising' and often used to describe maturation processes in barrel or tank."),
        GlossaryEntry(term: "Fining", definition: "A process by which small particles in wine are coagulated and removed.", additionalInfo: "Agents like egg whites, gelatin, or bentonite may be used for this purpose."),
        GlossaryEntry(term: "Flor", definition: "A layer of yeast cells that develops on the surface of some wines during aging, notably in Sherry production.", additionalInfo: "Helps prevent oxidation and imparts unique flavors."),
        GlossaryEntry(term: "Green Harvest", definition: "The practice of removing unripe grape clusters to concentrate the energy and resources into the remaining fruit.", additionalInfo: "Aims to improve the quality of the harvest."),
        GlossaryEntry(term: "Herbaceous", definition: "Describes wines that exhibit flavors or aromas of green plants or grass.", additionalInfo: "Often associated with varieties like Sauvignon Blanc."),
        GlossaryEntry(term: "Ice Wine", definition: "A type of dessert wine produced from grapes that have been frozen while still on the vine.", additionalInfo: "The ice causes water to freeze inside the grape, concentrating the sugars and flavors."),
        GlossaryEntry(term: "Jug Wine", definition: "A term used for inexpensive bulk wine typically sold in large containers or jugs.", additionalInfo: "Associated with lower quality, everyday drinking wines."),
        GlossaryEntry(term: "Kabinett", definition: "A German term used to describe a light wine made from fully ripe grapes of the main harvest, typically Riesling.", additionalInfo: "Denotes a level of sweetness in German prädikat system."),
        GlossaryEntry(term: "Lieu-dit", definition: "A French term for a named place that signifies a smaller area within a larger region, recognized for its unique terroir.", additionalInfo: "Often appears on wine labels to denote specific vineyard sites."),
        GlossaryEntry(term: "Methuselah", definition: "A large wine bottle with a capacity of six liters, equivalent to eight standard bottles.", additionalInfo: "Often used for Champagne and other sparkling wines."),
        GlossaryEntry(term: "Noble Varieties", definition: "Refers to grape varieties considered to be of the highest quality due to their historical pedigree and the premium wines they produce.", additionalInfo: "Examples include Cabernet Sauvignon, Merlot, Chardonnay, and Riesling."),
        GlossaryEntry(term: "Orange Wine", definition: "A type of wine made from white grape varieties where the grape skins are not removed, giving the wine an orange color.", additionalInfo: "This winemaking style imparts additional tannins and complexity."),
        GlossaryEntry(term: "Pétillant", definition: "A French term describing lightly sparkling wine.", additionalInfo: "Less effervescent than fully sparkling wines like Champagne."),
        GlossaryEntry(term: "Quinta", definition: "A Portuguese term for a wine estate.", additionalInfo: "Particularly used in the context of Port wine production."),
        GlossaryEntry(term: "Recioto", definition: "An Italian dessert wine made from grapes that have been dried to concentrate their juice.", additionalInfo: "A traditional wine style from the Veneto region."),
        GlossaryEntry(term: "Saignée", definition: "A method of rosé winemaking that involves 'bleeding' off a portion of red wine juice after it's had brief contact with the skins.", additionalInfo: "This technique concentrates the remaining red wines."),
        GlossaryEntry(term: "Tafelwein", definition: "A German term for table wine, representing the most basic level of wine classification in Germany.", additionalInfo: "Typically simple, everyday drinking wines."),
        GlossaryEntry(term: "Ugni Blanc", definition: "A white grape variety widely planted in France, known internationally as Trebbiano.", additionalInfo: "Commonly used in the production of Cognac and Armagnac."),
        GlossaryEntry(term: "Vendange", definition: "The French term for grape harvest, particularly the picking of grapes during the harvest season.", additionalInfo: "A crucial time for winemakers, affecting the style and quality of the wine."),
        GlossaryEntry(term: "Weinbau", definition: "The German word for viticulture or winegrowing.", additionalInfo: "Encompasses all aspects of the grape growing process."),
        GlossaryEntry(term: "Xylem", definition: "Part of the vine’s vascular system, which transports water and nutrients from the roots to the rest of the vine.", additionalInfo: "Essential for healthy grape development."),
        GlossaryEntry(term: "Yield Management", definition: "A viticultural practice of controlling vineyard yields to produce higher quality grapes.", additionalInfo: "Often involves techniques like green harvesting."),
        GlossaryEntry(term: "Zesty", definition: "Describes wines with lively, vibrant, and sharp flavors, often attributed to high acidity.", additionalInfo: "Commonly used to describe certain white wines like Sauvignon Blanc.")
                      
                      
        ]
        }
