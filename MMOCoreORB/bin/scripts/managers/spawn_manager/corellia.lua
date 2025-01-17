JUNKNOTSELLABLE = 0
JUNKGENERIC = 1
JUNKCLOTHESANDJEWELLERY = 2
JUNKWEAPONS = 4
JUNKARMOUR = 8
JUNKTUSKEN = 16
JUNKJEDI = 32
JUNKJAWA = 64
JUNKGUNGAN = 128
JUNKCORSEC = 256

JUNKCONVGENERIC = 1
JUNKCONVARMS = 2
JUNKCONVFINARY = 3
JUNKCONVDENDERRORI = 4
JUNKCONVDENDERTHEED = 5
JUNKCONVLILABORVO = 6
JUNKCONVMALIKVISTAL = 7
JUNKCONVNADOWATTOS = 8
JUNKCONVNATHANTAIKE = 9
JUNKCONVOLLOBOJABBAS = 10
JUNKCONVQUICHDANTOOINE = 11
JUNKCONVREGGINYM = 12
JUNKCONVSHEANILAKE = 13
JUNKCONVSNEGVALARIAN = 14
JUNKCONVJAWAGENERIC = 15
JUNKCONVJAWAFINARY = 16
JUNKCONVJAWAARMS = 17
JUNKCONVJAWATUSKEN = 18

-- {"regionName", xCenter, yCenter, shape and size, tier, {"spawnGroup1", ...}, maxSpawnLimit}
-- Shape and size is a table with the following format depending on the shape of the area:
--   - Circle: {1, radius}
--   - Rectangle: {2, width, height}
--   - Ring: {3, inner radius, outer radius}
-- Tier is a bit mask with the following possible values where each hexadecimal position is one possible configuration.
-- That means that it is not possible to have both a spawn area and a no spawn area in the same region, but
-- a spawn area that is also a no build zone is possible.


UNDEFINEDAREA       = 0x0000
SPAWNAREA           = 0x0001
NOSPAWNAREA         = 0x0002
WORLDSPAWNAREA      = 0x0010
NOWORLDSPAWNAREA    = 0x0020
NOBUILDZONEAREA     = 0x0100

corellia_regions = {
	{"abandoned_campsite",6050,6400,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"abandoned_settlement",-5170,6227,{1,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"afarathu_cave",-2626,2968,{1,150},NOSPAWNAREA + NOBUILDZONEAREA},
	{"agrilat_swamp",0,0,{1,0},UNDEFINEDAREA},
	{"agrilat_swamp_1",0,0,{1,0},UNDEFINEDAREA},
	{"archway",4853,-2663,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"archway_2",4827,-2637,{1,75},NOSPAWNAREA + NOBUILDZONEAREA},
	{"beach1",0,0,{1,0},UNDEFINEDAREA},
	{"beach2",0,0,{1,0},UNDEFINEDAREA},
	{"beach3",0,0,{1,0},UNDEFINEDAREA},
	{"beach4",0,0,{1,0},UNDEFINEDAREA},
	{"beach_awnings",-6152,-3390,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"bela_vistal",0,0,{1,0},UNDEFINEDAREA},
	{"bela_vistal_easy_newbie",6750,-5740,{1,900},SPAWNAREA + NOWORLDSPAWNAREA,{"corellia_easy"},128},
	{"bela_vistal_medium_newbie",6750,-5740,{3,900,1500},SPAWNAREA + NOWORLDSPAWNAREA,{"corellia_medium"},192},
	{"bindreg_hills_1",0,0,{1,0},UNDEFINEDAREA},
	{"bindreg_hills_2",0,0,{1,0},UNDEFINEDAREA},
	{"bindreg_hills_3",0,0,{1,0},UNDEFINEDAREA},
	{"blocks",-375,6075,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"blocks_2",2520,5970,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"blocks_3",2387,670,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"broken_bridge",-4275,3650,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"broken_ore_extractor",170,1720,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"buried_arches",2922,1600,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"central_plains",0,0,{1,0},UNDEFINEDAREA},
	{"corellia_mountain_fortress",0,0,{1,0},UNDEFINEDAREA},
	{"corellia_pvp",0,0,{1,0},UNDEFINEDAREA},
	{"corellia_rebel_riverside_fort",0,0,{1,0},UNDEFINEDAREA},
	{"coronet_easy_newbie",-230,-4460,{1,1750},SPAWNAREA + NOWORLDSPAWNAREA,{"corellia_easy"},256},
	{"coronet",0,0,{1,0},UNDEFINEDAREA},
	{"coronet_medium_newbie",-230,-4460,{3,1750,2500},SPAWNAREA + NOWORLDSPAWNAREA,{"corellia_medium"},384},
	{"crystal_arch_hall",-6831,2200,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"daoba_guerfel",0,0,{1,0},UNDEFINEDAREA},
	{"denendre_valley_1",0,0,{1,0},UNDEFINEDAREA},
	{"denendre_valley_2",0,0,{1,0},UNDEFINEDAREA},
	{"denendre_valley_3",0,0,{1,0},UNDEFINEDAREA},
	{"denendre_valley_4",0,0,{1,0},UNDEFINEDAREA},
	{"destroyed_outpost",1877,-236,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"doaba_guefel_easy_newbie",3210,5360,{1,1750},SPAWNAREA + NOWORLDSPAWNAREA,{"corellia_easy"},256},
	{"doaba_guefel_medium_newbie",3210,5360,{3,1750,2500},SPAWNAREA + NOWORLDSPAWNAREA,{"corellia_medium"},384},
	{"doaba_guerfel",0,0,{1,0},UNDEFINEDAREA},
	{"drall_patriots_cave",937,4106,{1,150},NOSPAWNAREA + NOBUILDZONEAREA},
	{"dregans_pike",0,0,{1,0},UNDEFINEDAREA},
	{"east_sea_coast",0,0,{1,0},UNDEFINEDAREA},
	{"forest1",0,0,{1,0},UNDEFINEDAREA},
	{"forest2",0,0,{1,0},UNDEFINEDAREA},
	{"forest3",0,0,{1,0},UNDEFINEDAREA},
	{"forest4",0,0,{1,0},UNDEFINEDAREA},
	{"forest5",0,0,{1,0},UNDEFINEDAREA},
	{"forest_1",0,0,{1,0},UNDEFINEDAREA},
	{"forest_2",0,0,{1,0},UNDEFINEDAREA},
	{"forest_3",0,0,{1,0},UNDEFINEDAREA},
	{"garden_monument",4254,-163,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"gated_area",1699,-2171,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"geyser",4875,6685,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"golden_beaches_1",0,0,{1,0},UNDEFINEDAREA},
	{"golden_beaches_2",0,0,{1,0},UNDEFINEDAREA},
	{"golden_beaches_3",0,0,{1,0},UNDEFINEDAREA},
	{"golden_beaches_4",0,0,{1,0},UNDEFINEDAREA},
	{"golden_beaches_5",0,0,{1,0},UNDEFINEDAREA},
	{"golden_beaches_6",0,0,{1,0},UNDEFINEDAREA},
	{"golden_beaches_7",0,0,{1,0},UNDEFINEDAREA},
	{"golden_beaches_8",0,0,{1,0},UNDEFINEDAREA},
	{"grassland1",0,0,{1,0},UNDEFINEDAREA},
	{"grassland2",0,0,{1,0},UNDEFINEDAREA},
	{"grassland3",0,0,{1,0},UNDEFINEDAREA},
	{"grassland4",0,0,{1,0},UNDEFINEDAREA},
	{"grassland5",0,0,{1,0},UNDEFINEDAREA},
	{"grassland6",0,0,{1,0},UNDEFINEDAREA},
	{"grassland7",0,0,{1,0},UNDEFINEDAREA},
	{"grassland8",0,0,{1,0},UNDEFINEDAREA},
	{"hard_crimson_sand_panther_sw",0,0,{1,0},UNDEFINEDAREA},
	{"hard_greater_gulginaw_nw",0,0,{1,0},UNDEFINEDAREA},
	{"hard_gronda_ne",0,0,{1,0},UNDEFINEDAREA},
	{"hard_gronda_nw",0,0,{1,0},UNDEFINEDAREA},
	{"hard_gronda_sw",0,0,{1,0},UNDEFINEDAREA},
	{"hard_gulginaw_ne",0,0,{1,0},UNDEFINEDAREA},
	{"hard_gulginaw_sw",0,0,{1,0},UNDEFINEDAREA},
	{"kor_vella",0,0,{1,0},UNDEFINEDAREA},
	{"kor_vella_easy_newbie",-3390,3024,{1,1750},SPAWNAREA + NOWORLDSPAWNAREA,{"corellia_easy"},256},
	{"kor_vella_medium_newbie",-3390,3024,{3,1750,2500},SPAWNAREA + NOWORLDSPAWNAREA,{"corellia_medium"},384},
	{"lake1",0,0,{1,0},UNDEFINEDAREA},
	{"lake2",0,0,{1,0},UNDEFINEDAREA},
	{"lake3",0,0,{1,0},UNDEFINEDAREA},
	{"large_broken_tower",4990,2890,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"listening_post",-1450,1990,{1,35},NOSPAWNAREA + NOBUILDZONEAREA},
	{"loch_khaxus",0,0,{1,0},UNDEFINEDAREA},
	{"long_wall",2550,4740,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"lord_nyax_cult",1359,-326,{1,150},NOSPAWNAREA + NOBUILDZONEAREA},
	{"malal_mountains",0,0,{1,0},UNDEFINEDAREA},
	{"medium_dire_cat_ne",0,0,{1,0},UNDEFINEDAREA},
	{"medium_dire_cat_se",0,0,{1,0},UNDEFINEDAREA},
	{"medium_murra_nw",0,0,{1,0},UNDEFINEDAREA},
	{"medium_murra_se",0,0,{1,0},UNDEFINEDAREA},
	{"medium_plumed_rasp_ne",0,0,{1,0},UNDEFINEDAREA},
	{"medium_sand_panther_se",0,0,{1,0},UNDEFINEDAREA},
	{"medium_slice_hound_nw",0,0,{1,0},UNDEFINEDAREA},
	{"medium_slice_hound_se",0,0,{1,0},UNDEFINEDAREA},
	{"medium_slice_hound_sw",0,0,{1,0},UNDEFINEDAREA},
	{"mountain1",0,0,{1,0},UNDEFINEDAREA},
	{"mountain2",0,0,{1,0},UNDEFINEDAREA},
	{"mountain3",0,0,{1,0},UNDEFINEDAREA},
	{"mountain4",0,0,{1,0},UNDEFINEDAREA},
	{"mountain5",0,0,{1,0},UNDEFINEDAREA},
	{"mountain6",0,0,{1,0},UNDEFINEDAREA},
	{"mountain7",0,0,{1,0},UNDEFINEDAREA},
	{"mountain8",0,0,{1,0},UNDEFINEDAREA},
	{"monument",740,2510,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"monument_2",-7165,135,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"mysterious_shrine",-2385,6390,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"mysterious_shrine_2",6300,6685,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"north_central_mountains",0,0,{1,0},UNDEFINEDAREA},
	{"northeast_mountains",0,0,{1,0},UNDEFINEDAREA},
	{"northwest_forest",0,0,{1,0},UNDEFINEDAREA},
	{"northwest_mountain_peak",0,0,{1,0},UNDEFINEDAREA},
	{"northwest_mountains",0,0,{1,0},UNDEFINEDAREA},
	{"northwest_plains",0,0,{1,0},UNDEFINEDAREA},
	{"power_generator",-3611,-375,{1,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"power_plant",643,-435,{1,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"rebel_hideout",-6530,5967,{1,300},NOSPAWNAREA + NOBUILDZONEAREA},
	{"rebel_outpost",4112,-1267,{1,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"rhalers_bastion",0,0,{1,0},UNDEFINEDAREA},
	{"rier_let",0,0,{1,0},UNDEFINEDAREA},
	{"rier_vem",0,0,{1,0},UNDEFINEDAREA},
	{"riverlands_1",0,0,{1,0},UNDEFINEDAREA},
	{"riverlands_2",0,0,{1,0},UNDEFINEDAREA},
	{"riverlands_3",0,0,{1,0},UNDEFINEDAREA},
	{"riverlands_4",0,0,{1,0},UNDEFINEDAREA},
	{"riverlands_5",0,0,{1,0},UNDEFINEDAREA},
	{"riverlands_6",0,0,{1,0},UNDEFINEDAREA},
	{"rogue_corsec_base",5210,1590,{1,300},NOSPAWNAREA + NOBUILDZONEAREA},
	{"ruined_guard_tower",-5900,4670,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"ruined_military_installation",-5330,220,{1,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"southeast_mountain_peak",0,0,{1,0},UNDEFINEDAREA},
	{"southeast_mountain_range",0,0,{1,0},UNDEFINEDAREA},
	{"southeast_plains",0,0,{1,0},UNDEFINEDAREA},
	{"southwest_forest",0,0,{1,0},UNDEFINEDAREA},
	{"steam_geyser",4520,4329,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"stronghold",4664,-5781,{1,220},NOSPAWNAREA + NOBUILDZONEAREA},
	{"suntir_plains",0,0,{1,0},UNDEFINEDAREA},
	{"swamp1",0,0,{1,0},UNDEFINEDAREA},
	{"thaos_mountains_1",0,0,{1,0},UNDEFINEDAREA},
	{"thaos_mountains_2",0,0,{1,0},UNDEFINEDAREA},
	{"thaos_mountains_3",0,0,{1,0},UNDEFINEDAREA},
	{"three_walls",1906,-3602,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"tyrena",0,0,{1,0},UNDEFINEDAREA},
	{"tyrena_easy_newbie",-5236,-2553,{1,1750},SPAWNAREA + NOWORLDSPAWNAREA,{"corellia_easy"},256},
	{"tyrena_medium_newbie",-5236,-2553,{3,1750,2500},SPAWNAREA + NOWORLDSPAWNAREA,{"corellia_medium"},384},
	{"vreni_island",0,0,{1,0},UNDEFINEDAREA},
	{"vreni_island_easy_newbie",-5405,-6230,{1,600},SPAWNAREA + NOWORLDSPAWNAREA,{"corellia_easy"},64},
	{"vreni_island_medium_newbie",0,0,{1,0},UNDEFINEDAREA},
	{"wind_farm",6270,4395,{1,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"western_mountain_forest",0,0,{1,0},UNDEFINEDAREA},
	{"western_plains",0,0,{1,0},UNDEFINEDAREA},
	{"world_spawner",0,0,{1,-1},SPAWNAREA + WORLDSPAWNAREA,{"corellia_world","global"},2048},
}

corellia_static_spawns = {
	{"acun_solari",60,19.8219,-0.894996,-19.5533,0,2625356, "calm", "Acun Solari", "stationary"},
	{"adar",60,-5448.03,21,-2674.92,253.163,0, "calm", "Adar Tallon", "stationary"},
	{"commoner",60,-51.7918,28,-4662.65,360.011,0, "calm", "Hunter Javeezo", "stationary"},
	{"commoner",60,15.2091,0.639422,56.8933,284.328,1935687, "calm", "Amarent Loren", "stationary"},
	{"corsec_sergeant",300,-5410.17,20.9418,-2789.21,215.169,0, "", "", "stationary"},
	{"death_watch_herald_rebel",1,-213.642,28,-4445.46,28.5501,0, "", "", "stationary"},
	{"farmer",60,3145.1,289.991,4994.55,359.489,0, "conversation", "", "stationary"},
	{"gambler",60,0.68378,0.639421,61.0666,268.449,4255423, "calm", "", "stationary"},
	{"herald_biogenic_03",60,21.3645,1.28309,9.48413,142.744,1935823, "calm", "Teraeza Furloti", "stationary"},
	{"info_broker",60,-3557.49,86,3158.11,180.005,0, "conversation", "", "stationary"},
	{"jom_irimore",60,-5520,21.3,-2630.99,0,0, "calm", "Jom Irimore", "stationary"},
	{"junk_dealer",0,6840,315,-5630,-32,0, "", "", "stationary",JUNKCLOTHESANDJEWELLERY+JUNKARMOUR,JUNKCONVFINARY},
	{"junk_dealer",0,-14.5,1.1,1.9,89,2365767, "", "", "stationary",JUNKWEAPONS,JUNKCONVARMS},
	{"junk_malik",0,6756.1,315,-5778,88,0, "", "Malik Pendron", "stationary",JUNKCORSEC,JUNKCONVMALIKVISTAL},
	{"junk_dealer",0,6970,330,-5588,92,0, "", "", "stationary",JUNKGENERIC,JUNKCONVGENERIC},
	{"junk_dealer",0,-118.2,28,-4792.9,-144,0, "", "", "stationary",JUNKGENERIC,JUNKCONVGENERIC}, 
	{"junk_dealer",0,-14.5,1.1,2.5,88,1855505, "", "", "stationary",JUNKWEAPONS,JUNKCONVARMS},
	{"junk_dealer",0,-14.5,1.1,2.5,88,3075358, "", "", "stationary",JUNKWEAPONS,JUNKCONVARMS},
	{"junk_dealer",0,3402.4,308,5679,5,0, "", "", "stationary",JUNKGENERIC,JUNKCONVGENERIC},
	{"junk_dealer",10,-3133.8,31,2975.5,7,0, "", "", "stationary",JUNKGENERIC,JUNKCONVGENERIC},
	{"junk_dealer",0,-5639.2,21,-2799.2,-40,0, "", "", "stationary",JUNKCLOTHESANDJEWELLERY+JUNKARMOUR,JUNKCONVFINARY},
	{"junk_dealer",0,-5203.6,21,-2285.9,-11,0, "", "", "stationary",JUNKGENERIC,JUNKCONVGENERIC},
	{"junk_dealer",0,-14.5, 1.1, 2.5, 88, 2955424, "", "", "stationary",JUNKWEAPONS,JUNKCONVARMS},
	{"r2",60,-1.84202,0.184067,2.59886,22.229,3375392, "calm", "R2-J0", "stationary"},
	{"r2",60,-3697.43,87.5185,3141.62,327.074,0, "calm", "R2-Z1", "stationary"},
	{"r2",60,-5295.88,21,-2528.24,196.589,0, "calm", "R2-B0", "stationary"},
	{"r2",60,-5297.6,21,-2396.69,271.4,0, "calm", "R2-X2", "stationary"},
	{"r2",60,-4954.63,21,-2376.82,26.4361,0, "calm", "R2-E3", "stationary"},
	{"r3",60,-3423.05,80.6846,3333.75,253.023,0, "calm", "R3-U1", "stationary"},
	{"r3",60,-3327.95,86,3233.64,315.946,0, "calm", "R3-N0", "stationary"},
	{"r3",60,-3151.77,31,2800,265.951,0, "calm", "R3-L8", "stationary"},
	{"r3",60,-16.1386,2.25,18.5614,173.343,1935472, "calm", "R3-X8", "stationary"},
	{"r3",60,-5306.4,21,-2567.6,-145,0, "calm", "R3-X5", "stationary"},
	{"r5",60,-3094.48,31,2972.63,268.321,0, "calm", "R5-W1", "stationary"},
	{"r5",60,-3134.32,31,2801.71,82.3858,0, "calm", "R5-U7", "stationary"},
	{"r5",60,-5400.32,21,-2614.17,236.816,0, "calm", "R5-S7", "stationary"},
	{"r5",60,-4954.81,21,-2379.55,166.051,0, "calm", "R5-C7", "stationary"},
	{"ulaire_roye",60,-5048.68,21,-2291.24,122.799,0, "neutral", "", "stationary"},
}
