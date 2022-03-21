#loader gregtech
#priority 10000

import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.IMaterialPredicate;
import mods.gregtech.material.Material;
import mods.gregtech.material.Elements;
import mods.gregtech.ore.OrePrefix;

val gemPerfect as OrePrefix = OrePrefix.registerOrePrefix("gemPerfect", 8, "gemPerfect", 1);
gemPerfect.setGenerationPredicate(IMaterialPredicate.hasGem);
gemPerfect.createMaterialItem();

var element_omnium = Elements.add(130, 234, -1, null, "Omnium", "Nm", false);
var element_draconium = Elements.add(149, 264, -1, null, "Draconium", "Dc", false);
var element_draconium_awakened = Elements.add(149, 267, -1, null, "AwakenedDraconium", "Dc*", false);

var draconium = MaterialBuilder(32001, "draconium")
    .element("Draconium")
    .ingot().fluid().ore()
    .color(0xbe49ed).iconSet("metallic")
    .blastTemp(6800, "HIGHER")
    .cableProperties(524288, 1, 0, true)
    .flags(["generate_plate", "generate_rod", "generate_gear"])
    .build();

var awakened_draconium = MaterialBuilder(32002, "awakened_draconium")
    .element("AwakenedDraconium")
    .ingot().fluid()
    .color(0xf58742).iconSet("metallic")
    .flags(["no_smelting", "generate_plate", "generate_rod", "generate_gear"])
    .build();

var dark_steel = MaterialBuilder(32003, "dark_steel")
    .ingot().fluid()
    .color(0x414751).iconSet("dull")
    .flags(["generate_plate", "generate_rod", "generate_frame", "disable_decomposition"])
    .components([<material:iron> * 1])
    .build();

var omnium = MaterialBuilder(32004, "omnium")
    .ingot().fluid()
    .element("Omnium")
    .color(0x84053e).iconSet("shiny")
    .cableProperties(2147483647, 64, 0, true)
    .build();

var ardite = MaterialBuilder(32006, "ardite")
    .ingot().fluid()
    .color(0xad2f05).iconSet("dull")
    .components([<material:red_steel> * 3, <material:blaze> * 1])
    .flags(["generate_plate"])
    .build();

var mana = MaterialBuilder(32007, "mana")
    .flags(["disable_decomposition"])
    .build();

var manyullyn = MaterialBuilder(32008, "manyullyn")
    .ingot().fluid()
    .color(0x9949cc).iconSet("metallic")
    .flags(["generate_plate"])
    .components([<material:ardite> * 4, <material:cobalt> * 4, <material:mana> * 1])
    .build();


var signalum = MaterialBuilder(32010, "signalum")
    .ingot().fluid()
    .color(0xff7f0f).iconSet("shiny")
    .blastTemp(4000, "MID", 120, 12800)
    .flags(["generate_plate", "generate_dense", "generate_rod", "generate_gear"])
    .components([<material:annealed_copper> * 4, <material:ardite> * 2, <material:red_alloy> * 2])
    .cableProperties(32768, 1, 0, true)
    .build();

var conductive_iron = MaterialBuilder(32011, "conductive_iron")
    .ingot().fluid()
    .color(0xf7b29b).iconSet("metallic")
    .flags("generate_plate", "generate_gear")
    .components([<material:iron> * 1, <material:redstone> * 1])
    .cableProperties(32, 1, 0, true)
    .build();

var energetic_alloy = MaterialBuilder(32012, "energetic_alloy")
    .ingot().fluid()
    .color(0xffb545).iconSet("shiny")
    .flags("generate_plate", "generate_gear")
    .blastTemp(1250, "LOW", 120, 400)
    .components([<material:gold> * 2, <material:redstone> * 1, <material:glowstone> * 1])
    .cableProperties(128, 1, 0, true)
    .build();

var vibrant_alloy = MaterialBuilder(32013, "vibrant_alloy")
    .ingot().fluid()
    .color(0xa4ff70).iconSet("shiny")
    .flags("generate_plate", "generate_gear", "generate_rod", "generate_bolt_screw")
    .blastTemp(1350, "LOW", 120, 600)
    .components([<material:energetic_alloy> * 1, <material:ender_pearl> * 1])
    .cableProperties(512, 1, 0, true)
    .build();

var pulsating_iron = MaterialBuilder(32014, "pulsating_iron")
    .ingot().fluid()
    .color(0x6ae26e).iconSet("shiny")
    .flags("generate_plate", "generate_gear")
    .components([<material:iron> * 1])
    .cableProperties(8, 1, 0, true)
    .build();

var electrical_steel = MaterialBuilder(32015, "electrical_steel")
    .ingot().fluid()
    .color(0xb2c0c1).iconSet("metallic")
    .flags("generate_plate", "generate_gear")
    .components([<material:steel> * 1, <material:silicon> * 1])
    .build();
    
var lumium = MaterialBuilder(32017, "lumium")
    .ingot().fluid()
    .color(0xf6ff99).iconSet("bright")
    .flags("generate_plate", "generate_gear")
    .blastTemp(4500, "MID", 120, 14400)
    .components([<material:tin_alloy> * 4, <material:sterling_silver> * 2])
    .cableProperties(8192, 1, 0, true)
    .build();

var enderium = MaterialBuilder(32018, "enderium")
    .ingot().fluid()
    .color(0x1f6b62).iconSet("shiny")
    .flags("generate_plate", "generate_gear", "generate_fine_wire")
    .blastTemp(6400, "HIGHEST", 120, 20800)
    .components([<material:lead> * 4, <material:platinum> * 2, <material:blue_steel> * 1, <material:osmium> * 1])
    .cableProperties(131072, 1, 0, true)
    .build();

var electrum_flux = MaterialBuilder(32019, "electrum_flux")
    .ingot().fluid()
    .color(0xf7be20).iconSet("bright")
    .flags("generate_plate", "generate_gear")
    .blastTemp(1100)
    .components([<material:electrum> * 6, <material:lumium> * 1, <material:signalum> * 1]) 
    .build();

var mithril = MaterialBuilder(32021, "mithril")
    .ingot()
    .color(0x428fdb).iconSet("dull")
    .flags("generate_plate", "generate_gear")
    .components([<material:titanium> * 1, <material:mana> * 1])
    .build();

var crystal_matrix = MaterialBuilder(32023, "crystal_matrix")
    .ingot().fluid()
    .color(0x70ecff).iconSet("shiny")
    .flags("generate_plate")
    .build();

var soularium = MaterialBuilder(32024, "soularium")
    .ingot().fluid()
    .color(0x7c674d).iconSet("metallic")
    .flags("generate_plate")
    .components([<material:gold> * 1])
    .build();

var end_steel = MaterialBuilder(32025, "end_steel")
    .ingot().fluid()
    .color(0xd6d980).iconSet("metallic")
    .flags("generate_plate", "generate_gear")
    .cableProperties(2048,1,0,true)
    .build();

var infinity = MaterialBuilder(32026, "infinity")
    .ingot()
    .color(0x000000).iconSet("shiny")
    .flags("generate_plate")
    .build();

var microversium = MaterialBuilder(32027, "microversium")
    .ingot()
    .color(0x9b61b8).iconSet("dull")
    .flags("generate_plate", "generate_frame")
    .build();

var draconic_superconductor = MaterialBuilder(32028, "draconic_superconductor")
    .ingot()
    .color(0xf5f0f4).iconSet("shiny")
    .cableProperties(2147483647, 4, 0, true)
    .build();

var osmiridium_8020 = MaterialBuilder(32029, "osmiridium_8020")
    .dust()
    .components([<material:osmium> * 4, <material:iridium> * 1])
    .colorAverage()
    .ore()
    .addOreByproducts(<material:osmium>, <material:iridium>, <material:nickel>)
    .build();

var iridosmine_8020 = MaterialBuilder(32030, "iridosmine_8020")
    .dust()
    .components([<material:iridium> * 4, <material:osmium> * 1])
    .colorAverage()
    .ore()
    .addOreByproducts(<material:iridium>, <material:osmium>, <material:nickel>)
    .build();

var kaemanite = MaterialBuilder(32031, "kaemanite")
    .dust()
    .components([<material:trinium> * 1, <material:tantalum> * 1, <material:oxygen> * 4])
    .color(0xe7413c).iconSet("bright")
    .ore()
    .addOreByproducts(<material:niobium>, <material:trinium_sulfide>, <material:trinium>)
    .build();

<material:lutetium>.addIngot();
<material:neptunium>.addIngot();
<material:curium>.addIngot();
<material:berkelium>.addIngot();
<material:californium>.addIngot();
<material:einsteinium>.addIngot();
<material:graphite>.addIngot();

<material:uranium_235>.addFluid();
<material:neptunium>.addFluid();
<material:plutonium_241>.addFluid();
<material:curium>.addFluid();
<material:berkelium>.addFluid();
<material:californium>.addFluid();
<material:einsteinium>.addFluid();
<material:nether_star>.addFluid();

<material:topaz>.addFlags(["generate_lens"]);
<material:electrum>.addFlags(["generate_gear"]);
<material:neutronium>.addFlags(["generate_round"]);
<material:titanium>.addFlags(["generate_foil", "generate_fine_wire"]);
<material:stainless_steel>.addFlags(["generate_foil", "generate_fine_wire"]);
<material:naquadah_enriched>.addFlags(["generate_bolt_screw"]);
<material:naquadria>.addFlags(["generate_bolt_screw"]);
<material:redstone>.addFlags(["generate_dense"]);
<material:lapis>.addFlags(["generate_dense"]);
<material:graphene>.addFlags(["generate_foil"]);
// Prevent TE Gears from showing up
<material:tin>.addFlags(["generate_gear"]);
<material:copper>.addFlags(["generate_gear"]);
<material:gold>.addFlags(["generate_gear"]);
<material:lead>.addFlags(["generate_gear"]);
<material:nickel>.addFlags(["generate_gear"]);
<material:platinum>.addFlags(["generate_gear", ]);
<material:silver>.addFlags(["generate_gear"]);
<material:emerald>.addFlags(["generate_gear"]);

<material:black_steel>.setFormula("(AuAgCu3)2Fe3?4", true);
<material:rhodium_plated_palladium>.setFormula("((SnFe)4(CuAg4)2)2Pd3Rh", true);
