#modloaded immersiveengineering
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.Crusher;

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
//Scribing Tools
recipes.remove(<thaumcraft:scribing_tools>);
Blueprint.addRecipe("components",<thaumcraft:scribing_tools>,[<minecraft:feather>,<botania:manabottle>,<ore:dyeBlack>]);

//Steel Ingot
BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:8>);
furnace.remove(<ore:ingotSteel>);

//Coke
CokeOven.removeRecipe(<immersiveengineering:material:6>);
CokeOven.removeRecipe(<immersiveengineering:stone_decoration:3>);
CokeOven.addRecipe(<immersiveengineering:metal>,1,<minecraft:iron_ingot>,100);

//Molds (Steel->Iron)
val mold=<immersiveengineering:mold>.definition;
for m in mold.subItems{
Blueprint.removeRecipe(m);
Blueprint.addRecipe("molds",m,[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>,<ore:plateIron>,<ore:plateIron>,<immersiveengineering:tool:1>]);
}

AlloySmelter.addRecipe(<thermalfoundation:coin:72>,<thermalfoundation:material:72>,<tconstruct:clay_cast>.withTag({PartType: "tconstruct:pan_head"}),1200);

function cru(n as IItemStack){
recipes.remove(n);
Crusher.removeRecipe(n);
furnace.remove(n);
mods.mekanism.crusher.removeRecipe(n);
ArcFurnace.removeRecipe(n);
mods.mekanism.enrichment.removeRecipe(<*>,n);
}
//Crushed Diamond
cru(<ic2:dust:5>);

//Diamond Gear
recipes.remove(<thermalfoundation:material:26>);
AlloySmelter.addRecipe(<thermalfoundation:material:26>,<actuallyadditions:item_dust:2>*2,<appliedenergistics2:material:40>, 400);
