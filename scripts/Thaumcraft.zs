#modloaded thaumcraft
import mods.thaumcraft.ArcaneWorkbench as table;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.Crucible;

import crafttweaker.item.IItemStack;

recipes.remove(<thaumcraft:thaumium_helm>);
recipes.remove(<thaumcraft:thaumium_legs>);
recipes.remove(<thaumcraft:thaumium_chest>);
recipes.remove(<thaumcraft:thaumium_boots>);

table.removeRecipe(<thaumcraft:thaumometer>);
recipes.addShaped("Thaumometer",<thaumcraft:thaumometer>,[[null,<minecraft:iron_ingot>,null],[<minecraft:iron_ingot>,<ore:paneGlass>,<minecraft:iron_ingot>],[null,<minecraft:iron_ingot>,null]]);

table.registerShapedRecipe("Lumiuous Crafting Table","BASEALCHEMY",10,[<aspect:aqua>, <aspect:ignis>, <aspect:terra>,<aspect:ordo>,<aspect:aer>,<aspect:perditio>],<astralsorcery:blockaltar>,[[<astralsorcery:blockmarble>,<astralsorcery:itemcraftingcomponent>,<astralsorcery:blockmarble>],[null,<ore:workbench>,null],[<ore:livingwood>,<ore:livingwood>,<ore:livingwood>]]);

//0825 changed
recipes.remove(<botania:pylon:2>);
table.registerShapedRecipe("Gaia Pylon","INFUSIONSTABLE",500,[<aspect:aqua>*10, <aspect:ignis>*10, <aspect:terra>*10,<aspect:ordo>*10,<aspect:aer>*10,<aspect:perditio>*10],<botania:pylon:2>, [[<botania:manaresource:8>, <botania:manaresource:7>, <botania:manaresource:9>],[<astralsorcery:blockritualpedestal>, <botania:pylon:1>, <bloodmagic:activation_crystal>], [<forge:bucketfilled>.withTag({FluidName: "lifeessence", Amount: 1000}), <thaumcraft:stabilizer>, <forge:bucketfilled>.withTag({FluidName: "lifeessence", Amount: 1000})]]);

//Inculde TiC FurnaceC
recipes.remove(<tconstruct:seared_furnace_controller>);
table.registerShapedRecipe("TC smelter","UNLOCKALCHEMY",50,[<aspect:ignis>],<thaumcraft:smelter_basic>, [[<ore:plateBrass>, <thaumcraft:crucible>, <ore:plateBrass>], [<ore:cobblestone>, <tconstruct:seared_furnace_controller>, <ore:cobblestone>], [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);

Infusion.registerRecipe("Steel Ingot","INFUSION",<thermalfoundation:material:160>,0,[<aspect:ignis>,<aspect:metallum>*5],<minecraft:iron_ingot>,[<ic2:coke>,<botania:rune:1>,<thaumcraft:jar_brace>,<thaumcraft:jar_brace>,<appliedenergistics2:material:7>]);

table.removeRecipe(<thaumcraft:vis_generator>);

var gears=[<thaumcraft:fortress_chest>,<thaumcraft:fortress_legs>,<thaumcraft:fortress_helm>] as IItemStack[];
for t in gears{
Infusion.removeRecipe(t);
}

Infusion.registerRecipe("Bullet Blue Print","INFUSION",<immersiveengineering:blueprint>.withTag({blueprint: "specialBullet"}),150,[<aspect:ignis>*32,<aspect:humanus>*64,<aspect:aversio>*48,<aspect:tenebrae>*48],<extrautils2:playerchest>,[<thermalfoundation:material:264>,<actuallyadditions:item_crate_keeper>,<gendustry:gene_template>,<ic2:remote>,<mekanism:balloon:4>,<ic2:cover:1>,<industrialforegoing:laser_lens_inverted:3>,<appliedenergistics2:tiny_tnt>,<immersiveengineering:material:15>]);

Crucible.registerRecipe("AutoCertus","",<appliedenergistics2:material>,<appliedenergistics2:material:2>,[<aspect:metallum>]);
/*
-Aspects
--Aspect Aer
--Aspect Terra
--Aspect Ignis
--Aspect Aqua
--Aspect Ordo
--Aspect Perditio
--Aspect Vacuos
--Aspect Lux
--Aspect Motus
--Aspect Gelum
--Aspect Vitreus
--Aspect Metallum
--Aspect Victus
--Aspect Mortuus
--Aspect Potentia
--Aspect Permutatio
--Aspect Praecantatio
--Aspect Auram
--Aspect Alkimia
--Aspect Vitium
--Aspect Tenebrae
--Aspect Alienis
--Aspect Volatus
--Aspect Herba
--Aspect Instrumentum
--Aspect Fabrico
--Aspect Machina
--Aspect Vinculum
--Aspect Spiritus
--Aspect Cognitio
--Aspect Sensus
--Aspect Aversio
--Aspect Praemunio
--Aspect Desiderium
--Aspect Exanimis
--Aspect Bestia
--Aspect Humanus
*/