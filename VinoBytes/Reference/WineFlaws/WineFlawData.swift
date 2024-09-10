//
//  WineFlawData.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/14/24.
//

import Foundation

struct WineFlaw: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let additionalInfo: String
}

let wineFlawData = [
    
    WineFlaw(name: "Acetobacter",
                  description: "A genus of bacteria that converts alcohol into acetic acid, leading to wine spoilage and vinegar-like off-flavors.",
                  additionalInfo: "Acetobacter is responsible for the oxidation of ethanol to acetic acid, causing wine to develop a sour, vinegar taste. This bacteria thrives in the presence of oxygen, making proper storage and handling essential to prevent spoilage."),
    
    WineFlaw(name: "Acetaldehyde",
             description: "A compound produced during fermentation that can cause off-flavors in wine if present in high concentrations, often associated with oxidative spoilage.",
             additionalInfo: "Acetaldehyde is generally considered a flaw in most wine styles, imparting aromas of green apple, bruised apple, or sherry-like notes when oxidation is unintended. However, in certain wine styles, such as Fino or Manzanilla Sherry, acetaldehyde is a desired characteristic that contributes to the wine's distinctive nutty, briny flavor profile. Proper management during fermentation and storage can prevent excessive levels of acetaldehyde in wines where it is undesirable."),
    WineFlaw(name: "Oxidation", description: "Oxidation occurs when wine is exposed to oxygen for too long, resulting in a loss of color and flavor. This can happen during the winemaking process or through a faulty cork. Oxidized wines often have a brownish hue and taste flat, with notes of sherry or overripe fruit.", additionalInfo: "Preventive measures include using proper sealing techniques, adding antioxidants like sulfur dioxide, and storing wine in a cool, dark place. Winemakers often use inert gases to displace oxygen in tanks and bottles."),

    WineFlaw(name: "Cork Taint (TCA)", description: "Cork taint is caused by the presence of 2,4,6-trichloroanisole (TCA), which gives the wine a musty, moldy aroma and flavor. TCA can come from contaminated corks, barrels, or winery equipment. Affected wines smell like damp cardboard, wet dog, or moldy basement.", additionalInfo: "TCA can be detected at very low concentrations (as low as parts per trillion). Synthetic corks and screw caps are alternatives to natural corks that can reduce the risk of cork taint."),

    WineFlaw(name: "Volatile Acidity", description: "Volatile acidity (VA) is the presence of acetic acid and ethyl acetate, which give the wine a vinegar-like aroma and taste. While a small amount of VA can add complexity, high levels are considered a flaw. Causes include bacterial contamination or excessive exposure to oxygen.", additionalInfo: "Maintaining clean equipment and proper storage conditions can minimize the risk of high volatile acidity. In winemaking, sulfur dioxide is used to inhibit the growth of acetic acid bacteria."),

    WineFlaw(name: "Brettanomyces", description: "Brettanomyces, or 'Brett', is a type of wild yeast that can cause off-flavors and aromas in wine. Common Brett characteristics include barnyard, medicinal, or metallic notes. While some winemakers appreciate Brett for its complexity, it is generally considered a flaw when overpowering.", additionalInfo: "Managing Brett involves rigorous sanitation, monitoring sulfur dioxide levels, and using filtration methods. Some winemakers use Brett intentionally for its unique profile, but it requires careful control."),

    WineFlaw(name: "Reduction", description: "Reduction occurs when wine lacks oxygen, resulting in sulfurous aromas like rotten eggs, burnt rubber, or garlic. This can happen during fermentation or aging in a sealed environment. Proper aeration or decanting can sometimes alleviate these aromas.", additionalInfo: "Reduction can be managed by controlling the amount of sulfur dioxide added and ensuring appropriate oxygen exposure during winemaking. Copper sulfate can be used as a treatment to remove sulfur compounds."),

    WineFlaw(name: "Lightstrike", description: "Lightstrike happens when wine is exposed to light, particularly ultraviolet light, resulting in off-flavors such as wet cardboard, damp wool, or cabbage. This is why wines are often stored in dark places or in colored bottles to protect them from light exposure.", additionalInfo: "Lightstrike is most common in wines stored in clear bottles. UV-protective coatings on bottles and using dim lighting in storage areas can help mitigate this risk. Sparkling wines are particularly sensitive to light exposure."),

    WineFlaw(name: "Microbial Contamination", description: "Microbial contamination can occur from bacteria or wild yeast, leading to spoilage and off-flavors. Common culprits include Acetobacter (which produces acetic acid), lactic acid bacteria (causing mousy taints), and other spoilage organisms. Good sanitation practices in winemaking can prevent this flaw.", additionalInfo: "Regular monitoring and testing for microbial activity are essential. Winemakers use sulfur dioxide and sterile filtration to control microbial populations. Barrel aging and bottle cleanliness are also crucial in preventing contamination."),
    
    WineFlaw(name: "Hydrogen Sulfide (H2S)", description: "Hydrogen sulfide is a gas that can form during fermentation, resulting in a smell reminiscent of rotten eggs or sewage.", additionalInfo: "H2S is usually produced by yeast when there is a deficiency of nitrogen or other nutrients. It can often be resolved by racking the wine or adding copper sulfate. Preventive measures include ensuring proper nutrient levels during fermentation."),

    WineFlaw(name: "Mercaptans", description: "Mercaptans are sulfur compounds that can develop if hydrogen sulfide is not addressed, leading to odors of garlic, onions, or rubber.", additionalInfo: "Mercaptans are more challenging to remove than H2S and may require aeration or copper sulfate treatment. Good fermentation practices and monitoring H2S levels can help prevent their formation."),

    WineFlaw(name: "Geranium Taint", description: "Geranium taint produces a distinct geranium leaf odor, often caused by lactic acid bacteria metabolizing sorbic acid.", additionalInfo: "Avoiding the use of sorbic acid in wines that will undergo malolactic fermentation can prevent geranium taint. Proper sanitation and monitoring can also help mitigate this risk."),

    WineFlaw(name: "Ladybug Taint", description: "Ladybug taint occurs when ladybugs are inadvertently crushed during harvest, imparting a green, bell pepper-like aroma to the wine. This should be distinguished from the naturally occurring green flavors in some varietals like Cabernet Sauvignon and Sauvignon Blanc, where such aromas are desirable and result from compounds known as pyrazines.", additionalInfo: "Preventive measures include careful sorting of grapes before fermentation. Once present, ladybug taint is challenging to remove and may require blending to reduce its impact. Recognizing the source of green notes—whether from pyrazines or contaminants—is crucial for accurate assessment and handling."),

    WineFlaw(name: "Mouse Taint", description: "Mouse taint is an off-flavor caused by lactic acid bacteria, resulting in a mousy, rodent-like taste that is often perceived after swallowing.", additionalInfo: "Preventive measures include maintaining proper pH levels, sulfur dioxide management, and good sanitation practices. Once detected, mouse taint is difficult to eliminate and often requires blending or masking."),

    WineFlaw(name: "Protein Haze", description: "Protein haze appears as a cloudiness in wine, often resulting from heat instability or inadequate fining.", additionalInfo: "Preventing protein haze involves proper fining with agents like bentonite and conducting heat stability tests. Filtration can also help remove excess proteins."),

    WineFlaw(name: "Tartrate Crystals", description: "Tartrate crystals, or 'wine diamonds', form naturally from tartaric acid and are harmless but can be perceived as a flaw by consumers.", additionalInfo: "Cold stabilization is a common method to prevent tartrate crystals by chilling the wine to encourage crystal formation before bottling. Filtration can also help remove crystals."),

    WineFlaw(name: "Sulfur Dioxide (SO2)", description: "Excessive sulfur dioxide can give wine a sharp, pungent smell and taste reminiscent of burnt matches.", additionalInfo: "Managing SO2 levels is crucial in winemaking. It is used for its antioxidant and antimicrobial properties, but overuse can lead to sensory issues. Proper monitoring and dosing are essential."),

    WineFlaw(name: "Ethyl Acetate", description: "Ethyl acetate gives wine a nail polish remover or glue-like aroma, often resulting from the activity of acetobacter or excessive oxygen exposure.", additionalInfo: "Preventing ethyl acetate involves maintaining low oxygen exposure and proper sanitation. If detected early, aeration or sulfur dioxide additions may reduce its impact."),
    
    WineFlaw(name: "Maderization", description: "Maderization refers to the process where wine becomes oxidized and heated, resembling the flavors found in Madeira wine, often giving a nutty or caramelized taste.", additionalInfo: "Madeira wine intentionally undergoes this process, which involves heating and oxidation to develop its unique flavor profile. To prevent unintentional maderization in other wines, they should be stored at consistent, cool temperatures and protected from excessive oxygen exposure."),
    
    WineFlaw(name: "Heat Damage", description: "Heat damage, also known as 'cooked wine', can cause the wine to age prematurely, leading to cooked or stewed fruit flavors. This occurs when wine is stored in overly warm conditions, causing the chemical balance to be disrupted and resulting in a flat, dull taste.", additionalInfo: "To prevent heat damage, wine should be stored at a stable temperature between 50-59°F (10-15°C) and away from direct sunlight. Shipping conditions are also critical to avoid exposing wine to excessive heat."),
    
    WineFlaw(name: "Smoke Taint", description: "Smoke taint occurs when grapes are exposed to smoke from wildfires, resulting in a smoky, ashy taste in the wine.", additionalInfo: "Preventive measures include careful vineyard management and testing grapes for smoke exposure before harvesting. Winemakers can use activated carbon treatments and blending to mitigate the effects of smoke taint."),

    WineFlaw(name: "Excessive Alcohol", description: "Excessive alcohol levels can make the wine taste hot or burning and can overpower the other flavors in the wine.", additionalInfo: "Properly managing fermentation temperatures and yeast selection can help control alcohol levels. Watering back (adding water) is a technique sometimes used to lower alcohol content, though it's controversial."),

    WineFlaw(name: "Excessive Tannin", description: "Excessive tannin can make a wine overly astringent and bitter, resulting in a harsh mouthfeel.", additionalInfo: "Managing tannin levels involves careful selection of grape varieties, fermentation techniques, and oak aging. Fining agents such as egg whites or gelatin can be used to soften tannins in the wine."),

    WineFlaw(name: "Over-Oaking", description: "Over-oaking can lead to dominant wood, vanilla, or spice flavors that mask the fruit and other characteristics of the wine.", additionalInfo: "Properly balancing the use of oak barrels and aging time is crucial to avoid over-oaking. Winemakers can use a combination of new and neutral oak or stainless steel to achieve the desired balance."),

    WineFlaw(name: "Excess Residual Sugar", description: "Excess residual sugar can make a wine taste cloyingly sweet and unbalanced, especially if not intended to be a dessert wine.", additionalInfo: "To control residual sugar levels, winemakers can carefully manage fermentation, potentially halting it early or using techniques to ensure complete fermentation of sugars. Proper yeast selection is also important.")
    
    
    
    
]
