"""
Generate ~500 diverse AOIs for EMIT/S2 super-resolution training.

Strategy:
- Define biome regions as (lat_range, lon_range) bounding boxes
- Sample N points per biome, jittered to avoid clustering
- Keep existing 160 AOIs, add new ones to fill gaps
- EMIT orbital constraint: ±51.6° latitude
- Bias toward drier/clearer climate zones where possible

Land cover targets (500 total):
  Cropland:             100  (largest terrestrial land use)
  Forest - Tropical:     60  (oversample — cloud-prone, expect losses)
  Forest - Temperate:    40
  Forest - Boreal:       15  (limited by EMIT orbit)
  Shrubland:             45
  Grassland/Savanna:     50
  Bare/Sparse/Desert:    55
  Urban:                 40
  Wetland:               30
  Coastal/Delta:         15
  Special:               20  (fire scar, mining, deforestation, volcanic)
  Alpine/Mountain:       30
"""

import csv
import random
from pathlib import Path

random.seed(42)

# Each entry: (name, lat, lon, description, land_cover)
# Organized by biome, then by region

EXISTING_CSV = Path("/sessions/laughing-tender-goodall/mnt/HyperSpectralSuperResolution/aois.csv")

def load_existing():
    rows = []
    with open(EXISTING_CSV) as f:
        reader = csv.DictReader(f)
        for r in reader:
            rows.append(r)
    return rows

def jitter(val, amount=0.3):
    return round(val + random.uniform(-amount, amount), 2)


NEW_AOIS = []

def add(name, lat, lon, desc, lc):
    NEW_AOIS.append({
        "name": name,
        "lat": round(lat, 2),
        "lon": round(lon, 2),
        "description": desc,
        "land_cover": lc,
    })

# ============================================================================
# CROPLAND — 100 total (existing ~35, need ~65 more)
# ============================================================================

# Rainfed grain belts
add("nebraska_corn", 41.0, -100.5, "Nebraska corn-soybean belt — USA", "cropland")
add("south_dakota_wheat", 44.5, -99.0, "South Dakota spring wheat — USA", "cropland")
add("minnesota_soy", 44.0, -95.0, "Minnesota soybean-corn rotation — USA", "cropland")
add("oklahoma_wheat", 35.5, -98.0, "Oklahoma winter wheat — USA", "cropland")
add("north_dakota_durum", 47.5, -100.5, "North Dakota durum wheat — USA", "cropland")
add("saskatchewan_canola", 51.0, -106.5, "Saskatchewan canola-wheat — Canada", "cropland")
add("manitoba_grain", 50.0, -98.5, "Manitoba grain belt — Canada", "cropland")
add("france_picardy", 49.5, 2.5, "Picardy sugar beet-wheat — France", "cropland")
add("germany_saxony", 51.2, 12.5, "Saxony grain belt — Germany", "cropland")
add("poland_masuria", 51.5, 20.5, "Polish lowland grain — Masuria", "cropland")
add("romania_wallachian", 44.0, 26.0, "Wallachian Plain wheat — Romania", "cropland")
add("hungary_alföld", 47.0, 20.0, "Hungarian Great Plain — Alföld", "cropland")
add("volga_grain", 51.0, 46.0, "Volga grain belt — Saratov Russia", "cropland")
add("kuban_wheat", 45.5, 40.0, "Kuban breadbasket — Krasnodar Russia", "cropland")
add("australia_nsw_wheat", -33.0, 148.0, "NSW wheat belt — Australia", "cropland")
add("australia_wa_grain", -31.5, 117.5, "Western Australia grain belt", "cropland")
add("argentina_cordoba", -32.5, -63.5, "Córdoba soybean — Argentina", "cropland")
add("argentina_santa_fe", -32.0, -61.5, "Santa Fe soy-wheat — Argentina", "cropland")
add("brazil_parana_soy", -24.0, -51.0, "Paraná soybean — Brazil", "cropland")
add("brazil_goias_soy", -16.0, -49.5, "Goiás soy-maize double crop — Brazil", "cropland")
add("brazil_bahia_soy", -12.0, -46.0, "Western Bahia soy frontier — Brazil", "cropland")
add("kazakhstan_grain", 51.0, 67.0, "North Kazakhstan grain — Kostanay", "cropland")

# Irrigated
add("egypt_beheira", 31.0, 30.5, "Beheira irrigated cotton — Nile Delta Egypt", "cropland/irrigated")
add("uzbekistan_fergana", 40.5, 71.0, "Fergana Valley cotton — Uzbekistan", "cropland/irrigated")
add("california_imperial", 33.0, -115.5, "Imperial Valley irrigated — California", "cropland/irrigated")
add("israel_negev", 31.0, 34.5, "Negev drip-irrigated agriculture — Israel", "cropland/irrigated")
add("libya_kufra", 24.0, 23.5, "Kufra center-pivot irrigation — Libya", "cropland/irrigated")
add("saudi_hail", 27.5, 41.5, "Hail center-pivot farms — Saudi Arabia", "cropland/irrigated")
add("spain_almeria", 36.8, -2.5, "Almería greenhouse agriculture — Spain", "cropland/irrigated")
add("india_haryana", 29.0, 76.5, "Haryana rice-wheat irrigated — India", "cropland/irrigated")
add("china_henan", 34.0, 113.5, "Henan wheat-maize double crop — China", "cropland/irrigated")
add("iraq_mesopotamia", 32.5, 44.5, "Mesopotamian irrigated agriculture — Iraq", "cropland/irrigated")
add("pakistan_sindh_canal", 27.5, 68.5, "Sindh canal-irrigated cotton — Pakistan", "cropland/irrigated")

# Rice paddy
add("bangladesh_boro", 24.0, 90.0, "Bangladesh boro rice — Dhaka division", "cropland/rice")
add("india_wb_rice", 23.0, 88.0, "West Bengal rice paddies — India", "cropland/rice")
add("china_hunan_rice", 27.5, 112.0, "Hunan double rice — China", "cropland/rice")
add("china_jiangsu_rice", 33.0, 119.5, "Jiangsu rice-wheat rotation — China", "cropland/rice")
add("thailand_isan", 15.5, 103.0, "Isan rainfed rice — northeast Thailand", "cropland/rice")
add("vietnam_red_river", 20.5, 106.0, "Red River Delta rice — Vietnam", "cropland/rice")
add("japan_niigata", 37.8, 139.0, "Niigata rice plains — Japan", "cropland/rice")
add("philippines_luzon", 15.5, 121.0, "Central Luzon rice granary — Philippines", "cropland/rice")
add("myanmar_ayeyarwady", 16.5, 95.0, "Ayeyarwady Delta rice — Myanmar", "cropland/rice")

# Plantation / cash crop
add("malaysia_palm", 4.5, 103.5, "Pahang oil palm — Peninsular Malaysia", "cropland/plantation")
add("indonesia_palm", -1.0, 109.5, "West Kalimantan oil palm — Indonesia", "cropland/plantation")
add("sri_lanka_tea", 7.0, 80.5, "Central Highlands tea estates — Sri Lanka", "cropland/plantation")
add("kenya_tea", -0.5, 37.0, "Kericho tea highlands — Kenya", "cropland/plantation")
add("brazil_sugarcane", -22.0, -47.5, "São Paulo sugarcane belt — Brazil", "cropland/plantation")
add("india_assam_tea", 26.5, 93.0, "Assam tea gardens — India", "cropland/plantation")
add("ghana_cocoa", 6.5, -2.0, "Ashanti cocoa belt — Ghana", "cropland/plantation")
add("ivory_coast_cocoa", 6.5, -5.5, "Ivory Coast cocoa zone", "cropland/plantation")
add("ethiopia_coffee", 7.0, 36.0, "Kaffa coffee forest — Ethiopia", "cropland/plantation")
add("rubber_thailand", 8.0, 99.0, "Southern Thailand rubber — Surat Thani", "cropland/plantation")

# ============================================================================
# FOREST — TROPICAL (60 total, existing ~8, need ~52)
# ============================================================================

# Dense tropical lowland
add("amazon_para", -3.5, -52.0, "Pará terra firme forest — Brazil", "tropical_forest")
add("amazon_acre", -9.5, -69.0, "Acre transitional forest — Brazil", "tropical_forest")
add("amazon_ecuador", -1.5, -76.5, "Oriente lowland forest — Ecuador", "tropical_forest")
add("amazon_guyana", 4.5, -59.0, "Guyana Shield forest — Guyana", "tropical_forest")
add("amazon_colombia", 1.0, -72.0, "Vaupés lowland forest — Colombia", "tropical_forest")
add("congo_cameroon", 2.5, 14.0, "Dja forest reserve — Cameroon", "tropical_forest")
add("congo_gabon", -0.5, 11.5, "Lopé rainforest — Gabon", "tropical_forest")
add("congo_republic", -1.0, 16.5, "Odzala forest — Republic of Congo", "tropical_forest")
add("borneo_sabah", 5.0, 117.5, "Sabah lowland dipterocarp — Malaysia", "tropical_forest")
add("sulawesi_forest", -1.5, 121.5, "Central Sulawesi montane — Indonesia", "tropical_forest")
add("papua_lowland", -5.5, 141.0, "Trans-Fly lowland forest — PNG", "tropical_forest")
add("mindanao_forest", 8.0, 126.0, "Eastern Mindanao rainforest — Philippines", "tropical_forest")
add("liberia_forest", 6.0, -9.0, "Sapo National Park — Liberia", "tropical_forest")
add("sierra_leone_forest", 7.5, -11.5, "Gola rainforest — Sierra Leone", "tropical_forest")
add("peru_tambopata", -13.0, -69.5, "Tambopata lowland forest — Peru", "tropical_forest")
add("bolivia_chapare", -16.5, -65.5, "Chapare tropical forest — Bolivia", "tropical_forest")

# Tropical dry forest
add("india_satpura", 22.5, 78.0, "Satpura teak forest — Madhya Pradesh India", "tropical_dry_forest")
add("mexico_jalisco", 20.0, -105.0, "Jalisco tropical dry forest — Mexico", "tropical_dry_forest")
add("thailand_dry", 14.5, 99.0, "Kanchanaburi dry forest — Thailand", "tropical_dry_forest")
add("mozambique_miombo", -14.0, 35.5, "Niassa miombo dry forest — Mozambique", "tropical_dry_forest")
add("bolivia_chiquitano", -17.5, -61.5, "Chiquitanía dry forest — Bolivia", "tropical_dry_forest")
add("australia_monsoon", -13.5, 131.0, "Arnhem Land monsoon vine forest — Australia", "tropical_dry_forest")
add("nicaragua_dry", 12.0, -86.0, "Pacific lowland dry forest — Nicaragua", "tropical_dry_forest")
add("cambodia_dry", 13.5, 106.5, "Eastern Plains dry forest — Cambodia", "tropical_dry_forest")
add("zambia_dry_forest", -13.5, 29.0, "South Luangwa dry forest — Zambia", "tropical_dry_forest")
add("venezuela_llanos_dry", 8.5, -69.0, "Llanos dry forest patches — Venezuela", "tropical_dry_forest")

# Tropical montane
add("colombia_cloud", 5.5, -75.5, "Quindío cloud forest — Colombia", "tropical_montane_forest")
add("peru_cloud", -13.0, -72.5, "Cusco cloud forest — Peru", "tropical_montane_forest")
add("uganda_bwindi", -1.0, 29.6, "Bwindi montane forest — Uganda", "tropical_montane_forest")
add("borneo_kinabalu", 6.0, 116.5, "Kinabalu montane forest — Sabah", "tropical_montane_forest")
add("costa_rica_monteverde", 10.3, -84.8, "Monteverde cloud forest — Costa Rica", "tropical_montane_forest")
add("tanzania_usambara", -5.0, 38.5, "Usambara Mountains forest — Tanzania", "tropical_montane_forest")
add("vietnam_hoang_lien", 22.3, 103.8, "Hoàng Liên montane forest — Vietnam", "tropical_montane_forest")

# Mangrove
add("nigeria_mangrove", 4.5, 6.0, "Niger Delta mangrove — Nigeria", "mangrove")
add("myanmar_mangrove", 15.5, 96.5, "Ayeyarwady Delta mangrove — Myanmar", "mangrove")
add("brazil_maranhao_mangrove", -2.5, -44.0, "Maranhão mangrove — Brazil", "mangrove")
add("australia_kimberley_mang", -15.5, 124.5, "Kimberley mangrove — Western Australia", "mangrove")
add("senegal_saloum_mangrove", 13.5, -16.5, "Saloum Delta mangrove — Senegal", "mangrove")
add("mexico_sian_kaan_mangrove", 19.5, -87.5, "Sian Ka'an mangrove — Quintana Roo Mexico", "mangrove")
add("india_pichavaram_mang", 11.4, 79.8, "Pichavaram mangrove — Tamil Nadu India", "mangrove")
add("madagascar_west_mang", -15.8, 46.3, "Western Madagascar mangrove", "mangrove")
add("panama_mangrove", 8.0, -78.5, "Gulf of San Miguel mangrove — Panama", "mangrove")

# ============================================================================
# FOREST — TEMPERATE (40 total, existing ~11, need ~29)
# ============================================================================

add("ozark_missouri", 37.0, -91.5, "Ozark Plateau oak-hickory — Missouri USA", "temperate_forest")
add("great_smoky", 35.6, -83.5, "Great Smoky Mountains — Tennessee USA", "temperate_forest")
add("pacific_nw_forest", 46.0, -122.0, "Pacific NW Douglas fir — Washington USA", "temperate_forest")
add("france_massif", 44.5, 3.0, "Massif Central beech-oak — France", "temperate_forest")
add("sweden_smaland", 57.0, 15.0, "Småland mixed conifer — Sweden", "temperate_forest")
add("poland_bialowieza", 52.7, 23.8, "Białowieża primeval forest — Poland", "temperate_forest")
add("china_changbai", 42.0, 128.0, "Changbai mixed forest — Jilin China", "temperate_forest")
add("chile_araucaria", -38.0, -71.5, "Araucaria forest — Chile", "temperate_forest")
add("nz_fiordland", -45.5, 167.5, "Fiordland temperate rainforest — New Zealand", "temperate_forest")
add("tasmania_huon", -43.0, 146.5, "Huon Valley tall eucalypt — Tasmania", "temperate_forest")
add("turkey_kackar", 40.8, 41.0, "Kaçkar Mountains mixed forest — Turkey", "temperate_forest")
add("georgia_colchic", 42.0, 42.0, "Colchic temperate rainforest — Georgia", "temperate_forest")
add("japan_tohoku", 39.5, 140.0, "Tōhoku beech forest — Japan", "temperate_forest")
add("korea_jirisan", 35.3, 127.7, "Jirisan mixed forest — South Korea", "temperate_forest")
add("argentina_nahuel", -41.0, -71.5, "Nahuel Huapi Nothofagus — Argentina", "temperate_forest")
add("spain_asturias", 43.2, -5.5, "Asturian deciduous forest — Spain", "temperate_forest")
add("italy_abruzzo", 42.0, 13.5, "Abruzzo beech-fir — Italy", "temperate_forest")
add("uk_lake_district", 54.5, -3.0, "Lake District broadleaf — England", "temperate_forest")
add("bhutan_broadleaf", 27.5, 89.5, "Bhutan subtropical-temperate forest", "temperate_forest")
add("southeast_us_piedmont", 34.5, -82.5, "Piedmont mixed hardwood — South Carolina USA", "temperate_forest")
add("china_anhui_forest", 30.5, 118.0, "Huangshan subtropical evergreen — Anhui China", "temperate_forest")
add("portugal_cork_oak", 38.5, -8.0, "Cork oak montado — Alentejo Portugal", "temperate_forest")
add("california_redwood", 41.0, -124.0, "Redwood coastal forest — California USA", "temperate_forest")
add("oregon_cascades", 44.0, -122.0, "Cascade Range conifer — Oregon USA", "temperate_forest")

# ============================================================================
# FOREST — BOREAL (15 total, existing 2, need 13)
# ============================================================================
# EMIT only reaches ~51.6°, so boreal is limited to southern taiga

add("finland_lakeland", 61.5, 28.0, "Finnish Lakeland boreal — but EMIT limit!", "boreal_forest")
# Actually, EMIT orbit is ISS ~51.6°. Let me keep to ≤51° safely.
add("hokkaido_north", 43.5, 143.0, "Northern Hokkaido birch-conifer — Japan", "boreal_forest")
add("sakhalin", 47.0, 143.0, "Sakhalin Island boreal — Russia", "boreal_forest")
add("kamchatka_south", 51.0, 157.0, "Southern Kamchatka birch — Russia", "boreal_forest")
add("quebec_laurentian", 47.5, -74.0, "Laurentian boreal — Quebec Canada", "boreal_forest")
add("alberta_foothills", 51.0, -115.5, "Alberta boreal foothills — Canada", "boreal_forest")
add("bc_interior", 51.0, -121.0, "BC interior spruce-fir — Canada", "boreal_forest")
add("nova_scotia", 45.0, -63.0, "Nova Scotia spruce-fir — Canada", "boreal_forest")
add("maine_boreal", 46.5, -69.0, "Maine northern boreal — USA", "boreal_forest")
add("norway_hedmark", 61.0, 11.5, "Hedmark boreal — but EMIT limit!", "boreal_forest")
add("sweden_dalarna", 61.0, 14.5, "Dalarna conifer — but EMIT limit!", "boreal_forest")
add("mongolia_khentii", 48.5, 109.5, "Khentii Mountains larch — Mongolia", "boreal_forest")
add("russia_ural_south", 51.0, 59.5, "Southern Urals boreal-steppe — Russia", "boreal_forest")

# ============================================================================
# SHRUBLAND (45 total, existing ~6, need ~39)
# ============================================================================

# Mediterranean shrubland
add("sardinia_maquis", 39.5, 9.5, "Sardinia maquis interior — Italy", "shrubland/mediterranean")
add("corsica_maquis", 42.0, 9.0, "Corsica maquis — France", "shrubland/mediterranean")
add("morocco_maquis", 34.5, -5.0, "Rif Mountains maquis — Morocco", "shrubland/mediterranean")
add("chile_matorral", -33.5, -71.0, "Chilean matorral — Valparaíso", "shrubland/mediterranean")
add("australia_kwongan", -30.0, 115.5, "Kwongan heathland — Western Australia", "shrubland/mediterranean")
add("california_chaparral_sb", 34.5, -119.5, "Santa Barbara chaparral — California", "shrubland/mediterranean")
add("portugal_maquis", 37.5, -8.5, "Algarve maquis — Portugal", "shrubland/mediterranean")
add("turkey_maquis", 37.5, 28.5, "Aegean maquis — Turkey", "shrubland/mediterranean")

# Semi-arid shrubland
add("namibia_shrub", -22.5, 17.0, "Namibian pro-Namib shrubland", "shrubland/semi-arid")
add("botswana_kalahari_shrub", -23.0, 23.5, "Kalahari scrub savanna — Botswana", "shrubland/semi-arid")
add("mexico_chihuahuan", 30.0, -105.0, "Chihuahuan creosote scrub — Mexico", "shrubland/semi-arid")
add("australia_chenopod", -31.5, 139.0, "Chenopod shrubland — South Australia", "shrubland/semi-arid")
add("iran_zagros_shrub", 33.5, 47.0, "Zagros foothill shrubland — Iran", "shrubland/semi-arid")
add("argentina_monte", -35.5, -67.5, "Monte desert scrub — Mendoza Argentina", "shrubland/semi-arid")
add("yemen_highland_shrub", 15.0, 44.0, "Yemen highland scrub", "shrubland/semi-arid")
add("kenya_nyika_shrub", -3.5, 39.5, "Nyika coastal shrubland — Kenya", "shrubland/semi-arid")
add("chile_atacama_shrub", -27.0, -70.5, "Atacama coastal shrubland — Chile", "shrubland/semi-arid")
add("spain_tabernas", 37.0, -2.4, "Tabernas badlands shrub — Spain", "shrubland/semi-arid")
add("jordan_badia", 31.5, 37.0, "Eastern Badia shrubland — Jordan", "shrubland/semi-arid")
add("india_kutch", 23.5, 69.5, "Kutch semi-arid scrub — Gujarat India", "shrubland/semi-arid")

# Tundra-edge shrub (near EMIT limit)
add("iceland_highland", 64.5, -19.0, "Icelandic highland shrub — EMIT limit!", "shrubland/subarctic")
add("patagonia_shrub", -50.0, -71.0, "Tierra del Fuego shrub — Argentina", "shrubland/subantarctic")
add("falkland_shrub", -51.5, -59.0, "Falkland Islands dwarf shrub", "shrubland/subantarctic")

# Heathland
add("scotland_heath", 57.0, -5.0, "Scottish Highlands heather — but EMIT?", "shrubland/heathland")
add("south_africa_renosterveld", -33.5, 19.5, "Renosterveld shrubland — South Africa", "shrubland/heathland")

# ============================================================================
# GRASSLAND / SAVANNA (50 total, existing ~11, need ~39)
# ============================================================================

# Tropical savanna
add("tanzania_selous", -9.0, 37.5, "Selous savanna — Tanzania", "savanna")
add("mozambique_savanna", -17.5, 34.5, "Mozambican savanna — Zambézia", "savanna")
add("burkina_faso_savanna", 12.0, -1.5, "Sudanian savanna — Burkina Faso", "savanna")
add("mali_savanna", 12.5, -8.0, "Southern Mali savanna", "savanna")
add("chad_savanna", 10.0, 17.0, "Sudanian savanna — southern Chad", "savanna")
add("zambia_kafue", -15.0, 26.0, "Kafue floodplain savanna — Zambia", "savanna")
add("brazil_cerrado_ms", -20.5, -55.0, "Cerrado-Pantanal transition — Mato Grosso do Sul", "savanna")
add("australia_top_end", -14.0, 132.5, "Top End tropical savanna — NT Australia", "savanna")
add("venezuela_gran_sabana", 5.5, -61.5, "Gran Sabana tepui grassland — Venezuela", "savanna/grassland")
add("india_western_ghats_savanna", 11.5, 76.5, "Deccan savanna-forest mosaic — India", "savanna")
add("malawi_savanna", -13.5, 34.0, "Malawi miombo-savanna — Lilongwe", "savanna/woodland")

# Temperate grassland
add("argentina_entre_rios", -32.0, -59.5, "Entre Ríos pampa grassland — Argentina", "grassland")
add("south_africa_grassland", -29.5, 29.5, "KwaZulu-Natal Highveld grassland — SA", "grassland")
add("montana_prairie", 47.0, -108.0, "Montana shortgrass prairie — USA", "grassland")
add("colorado_prairie", 39.5, -104.0, "Colorado Front Range grassland — USA", "grassland")
add("wyoming_grassland", 42.5, -106.5, "Wyoming mixed-grass prairie — USA", "grassland")
add("uruguay_tacuarembo", -31.5, -55.5, "Tacuarembó grassland — Uruguay", "grassland")
add("south_africa_freestate", -29.0, 26.5, "Free State highveld grassland — SA", "grassland")
add("australia_qld_grass", -25.0, 149.0, "Queensland subtropical grassland", "grassland")

# Steppe
add("russia_orenburg", 51.0, 55.0, "Orenburg steppe — Russia", "steppe")
add("china_hulunbuir", 49.0, 119.5, "Hulunbuir meadow steppe — Inner Mongolia", "steppe/grassland")
add("kyrgyzstan_steppe", 42.0, 75.0, "Kyrgyz mountain steppe", "steppe/grassland")
add("turkey_central_steppe", 39.0, 33.5, "Central Anatolian steppe — Turkey", "steppe")
add("iran_steppe", 36.5, 53.0, "Northern Iran steppe — Golestan", "steppe")

# Alpine meadow
add("tibet_nagqu", 31.5, 92.0, "Nagqu alpine meadow — Tibet China", "alpine/grassland")
add("kyrgyzstan_alpine", 41.5, 76.0, "Son-Kul alpine pasture — Kyrgyzstan", "alpine/grassland")
add("peru_puna", -15.0, -70.5, "Puna highland grassland — Peru", "alpine/grassland")
add("ethiopia_afroalpine", 9.0, 39.5, "Bale Mountains afroalpine — Ethiopia", "alpine/grassland")
add("colorado_alpine", 39.0, -106.0, "Colorado alpine tundra — USA", "alpine/grassland")

# ============================================================================
# BARE / SPARSE / DESERT (55 total, existing ~15, need ~40)
# ============================================================================

# Sand desert
add("sahara_mauritania", 22.0, -8.0, "Mauritanian sand sea — Sahara", "desert")
add("sahara_libya", 26.0, 17.0, "Libyan Murzuq sand sea", "desert")
add("sahara_egypt_west", 25.0, 28.0, "Western Desert — Egypt", "desert")
add("gobi_mongolia", 43.5, 104.0, "Gobi Desert — southern Mongolia", "desert")
add("taklamakan", 39.0, 83.0, "Taklamakan sand desert — Xinjiang China", "desert")
add("karakum_turkmenistan", 39.0, 59.0, "Karakum Desert — Turkmenistan", "desert")
add("simpson_australia", -25.5, 138.0, "Simpson Desert — Australia", "desert")
add("wahiba_oman", 22.0, 58.5, "Wahiba Sands — Oman", "desert")
add("lut_desert", 32.0, 58.5, "Dasht-e Lut — Iran", "desert")
add("chihuahuan_dunes", 32.5, -106.5, "White Sands gypsum dunes — New Mexico USA", "desert")

# Rock / reg desert
add("sahara_hoggar", 23.5, 5.5, "Hoggar volcanic plateau — Algeria", "desert/rock")
add("sahara_tibesti", 21.0, 17.5, "Tibesti Mountains — Chad", "desert/rock")
add("negev_makhtesh", 30.8, 35.0, "Makhtesh Ramon crater — Israel", "desert/rock")
add("arabia_harrat", 26.0, 38.0, "Harrat Khaybar lava field — Saudi Arabia", "desert/volcanic")
add("iran_kavir_rock", 34.5, 52.5, "Dasht-e Kavir rock desert — Iran", "desert/rock")
add("patagonia_rock", -47.0, -69.0, "Patagonian rock desert — Argentina", "desert/rock")
add("australia_sturt", -29.5, 142.0, "Sturt Stony Desert — NSW Australia", "desert/rock")

# Salt flat / playa
add("chott_el_jerid", 33.7, 8.0, "Chott el Jerid salt lake — Tunisia", "salt_flat")
add("lake_eyre", -28.5, 137.5, "Lake Eyre salt flat — South Australia", "salt_flat")
add("salar_atacama", -23.5, -68.2, "Salar de Atacama — Chile", "salt_flat")
add("lake_magadi", -1.9, 36.3, "Lake Magadi soda lake — Kenya", "salt_flat")
add("rann_of_kutch", 24.0, 70.0, "Great Rann of Kutch — India", "salt_flat")

# Volcanic terrain
add("iceland_lava", 63.8, -18.5, "Iceland interior lava field — near EMIT limit", "volcanic/barren")
add("erta_ale", 13.5, 40.7, "Erta Ale volcanic desert — Afar Ethiopia", "volcanic/barren")
add("tenerife_teide", 28.3, -16.5, "Teide volcanic cone — Canary Islands Spain", "volcanic")
add("reunion_enclos", -21.2, 55.7, "Piton de la Fournaise enclos — Réunion", "volcanic")
add("kamchatka_volcanic", 51.0, 157.5, "Kamchatka volcanic plateau — Russia", "volcanic")
add("galapagos_lava", -0.5, -91.0, "Galápagos recent lava — Ecuador", "volcanic")

# Mining / bare soil
add("chile_copper", -22.5, -68.5, "Chuquicamata open-pit copper — Chile", "mining/barren")
add("australia_pilbara_mine", -23.0, 119.5, "Pilbara iron ore mines — WA Australia", "mining/barren")
add("brazil_carajas", -6.0, -50.0, "Carajás iron ore — Pará Brazil", "mining/barren")
add("mongolia_oyu_tolgoi", 43.0, 107.0, "Oyu Tolgoi copper-gold mine — Mongolia", "mining/barren")
add("south_africa_bushveld", -25.0, 29.5, "Bushveld platinum mines — SA", "mining/barren")

# ============================================================================
# URBAN (40 total, existing ~17, need ~23)
# ============================================================================

add("new_york", 40.7, -74.0, "New York City metro — USA", "urban")
add("london", 51.5, -0.1, "Greater London — UK", "urban/temperate")
add("paris", 48.9, 2.3, "Paris Île-de-France — France", "urban/temperate")
add("moscow", 55.8, 37.6, "Moscow sprawl — but EMIT limit!", "urban")
add("istanbul", 41.0, 29.0, "Istanbul metro — Turkey", "urban")
add("jakarta", -6.2, 106.8, "Jakarta megacity — Indonesia", "urban/tropical")
add("karachi", 25.0, 67.0, "Karachi coastal megacity — Pakistan", "urban/arid")
add("dhaka", 23.8, 90.4, "Dhaka dense urban — Bangladesh", "urban/tropical")
add("kinshasa", -4.3, 15.3, "Kinshasa-Brazzaville — DRC/Congo", "urban/tropical")
add("bogota", 4.7, -74.1, "Bogotá highland city — Colombia", "urban/mountain")
add("tehran", 35.7, 51.4, "Tehran mountain-basin city — Iran", "urban/arid")
add("dallas", 32.8, -96.8, "Dallas-Fort Worth metro — Texas USA", "urban")
add("sydney", -33.9, 151.2, "Sydney metro — Australia", "urban/temperate")
add("singapore", 1.3, 103.8, "Singapore city-state", "urban/tropical")
add("addis_ababa", 9.0, 38.7, "Addis Ababa highland city — Ethiopia", "urban/mountain")
add("buenos_aires", -34.6, -58.4, "Buenos Aires metro — Argentina", "urban")
add("berlin", 52.5, 13.4, "Berlin metro — Germany — EMIT edge", "urban/temperate")
add("chengdu", 30.6, 104.1, "Chengdu basin city — Sichuan China", "urban")
add("hyderabad", 17.4, 78.5, "Hyderabad sprawl — Telangana India", "urban")
add("casablanca", 33.6, -7.6, "Casablanca coastal — Morocco", "urban")
add("johannesburg_east", -26.0, 28.5, "Johannesburg East Rand — SA", "urban/grassland")
add("atlanta", 33.7, -84.4, "Atlanta sprawl — Georgia USA", "urban/temperate")
add("kuala_lumpur", 3.1, 101.7, "Kuala Lumpur metro — Malaysia", "urban/tropical")

# ============================================================================
# WETLAND (30 total, existing ~8, need ~22)
# ============================================================================

# Freshwater marsh / swamp
add("sudd_south", 6.5, 31.0, "Sudd southern marshes — South Sudan", "wetland")
add("bangweulu", -11.5, 29.5, "Bangweulu Swamps — Zambia", "wetland")
add("llanos_wetland", 7.0, -69.0, "Llanos seasonal wetland — Venezuela", "wetland")
add("everglades_south", 25.5, -80.5, "Southern Everglades marsh — Florida USA", "wetland/marsh")
add("biebrza_poland", 53.5, 22.5, "Biebrza marshes — Poland — EMIT edge", "wetland/marsh")
add("iraq_marshes", 31.0, 47.0, "Mesopotamian Marshes — Iraq", "wetland")
add("okavango_panhandle", -18.5, 21.5, "Okavango Panhandle — Botswana", "wetland/savanna")

# Floodplain
add("niger_inland_delta", 14.5, -4.0, "Niger Inland Delta — Mali", "wetland/floodplain")
add("amazon_varzea", -3.0, -60.5, "Amazon várzea floodplain — Manaus Brazil", "wetland/floodplain")
add("ganges_floodplain", 25.5, 85.0, "Ganges floodplain — Bihar India", "wetland/floodplain")
add("mekong_floodplain", 11.0, 105.0, "Mekong floodplain — Cambodia", "wetland/floodplain")
add("ob_floodplain", 56.0, 69.0, "Ob River floodplain — but EMIT limit!", "wetland/floodplain")

# Peatland / bog
add("borneo_peat", 1.5, 110.5, "Central Kalimantan peatland — Indonesia", "peatland")
add("congo_peat", -1.5, 18.5, "Cuvette Centrale peatland — DRC", "peatland")
add("ireland_bog", 53.5, -8.0, "Western Ireland blanket bog — EMIT edge", "peatland")
add("scotland_flow", 58.3, -4.0, "Flow Country peatland — Scotland — EMIT limit!", "peatland")
add("sumatra_peat", 0.5, 104.0, "Sumatra peatland — Riau Indonesia", "peatland")

# Coastal / salt marsh
add("wadden_sea", 53.5, 8.5, "Wadden Sea tidal flats — Germany — EMIT edge", "wetland/coastal")
add("chesapeake_marsh", 38.5, -76.0, "Chesapeake Bay salt marsh — Maryland USA", "wetland/coastal")
add("doñana_marsh", 37.0, -6.3, "Doñana marshes — Spain", "wetland/coastal")
add("banc_darguin", 19.5, -16.5, "Banc d'Arguin tidal flats — Mauritania", "wetland/coastal")
add("indus_delta", 24.0, 67.5, "Indus Delta tidal wetland — Pakistan", "wetland/coastal")

# ============================================================================
# COASTAL / DELTA (15 total, existing ~3, need ~12)
# ============================================================================

add("irrawaddy_delta", 16.0, 95.0, "Irrawaddy Delta — Myanmar", "coastal/delta")
add("lena_delta", 72.0, 127.0, "Lena Delta — but EMIT limit!", "coastal/delta")
add("niger_delta", 4.8, 6.5, "Niger Delta — Nigeria", "coastal/delta")
add("orinoco_delta", 9.0, -62.0, "Orinoco Delta — Venezuela", "coastal/delta")
add("mahakam_delta", -0.5, 117.0, "Mahakam Delta — East Kalimantan Indonesia", "coastal/delta")
add("volta_delta", 6.0, 0.5, "Volta River Delta — Ghana", "coastal/delta")
add("red_river_delta", 20.5, 106.5, "Red River Delta coast — Vietnam", "coastal/delta")
add("coral_coast_australia", -23.5, 151.5, "Great Barrier Reef coast — Queensland", "coastal")
add("oman_coast", 23.5, 58.5, "Oman Batinah coast — Oman", "coastal/arid")
add("baja_coast", 24.5, -110.0, "Baja California Sur coast — Mexico", "coastal/desert")
add("brazil_northeast_coast", -8.0, -34.8, "Pernambuco coast — Brazil", "coastal")
add("zanzibar_coast", -6.0, 39.5, "Zanzibar Island coast — Tanzania", "coastal/tropical")

# ============================================================================
# ALPINE / MOUNTAIN (30 total, existing ~8, need ~22)
# ============================================================================

add("andes_ecuador", -1.0, -78.5, "Ecuadorian Andes páramo", "alpine/grassland")
add("andes_peru_south", -14.0, -71.0, "Southern Peru Andes — Cusco", "alpine/mountain")
add("atlas_middle", 33.0, -4.5, "Middle Atlas — Morocco", "mountain/semi-arid")
add("drakensberg", -29.5, 29.0, "Drakensberg escarpment — South Africa", "mountain/grassland")
add("pyrenees", 42.7, 0.5, "Central Pyrenees — France-Spain", "alpine/mountain")
add("caucasus", 42.5, 44.0, "Greater Caucasus — Georgia", "alpine/mountain")
add("hindu_kush", 36.0, 71.0, "Hindu Kush — Afghanistan-Pakistan", "alpine/mountain")
add("karakoram", 36.0, 76.0, "Karakoram Range — Pakistan", "alpine/glacier")
add("tien_shan", 42.0, 79.0, "Tien Shan — Kyrgyzstan-China", "alpine/mountain")
add("pamir", 38.5, 73.0, "Pamir Plateau — Tajikistan", "alpine/mountain")
add("rwenzori", 0.4, 29.9, "Rwenzori Mountains — Uganda-DRC", "alpine/tropical")
add("mount_kenya", -0.2, 37.3, "Mount Kenya alpine zone — Kenya", "alpine/tropical")
add("simien_ethiopia", 13.2, 38.4, "Simien Mountains — Ethiopia", "alpine/mountain")
add("andes_bolivia_cordillera", -17.0, -66.0, "Cordillera Real — Bolivia", "alpine/mountain")
add("rocky_mountain_co", 40.0, -105.5, "Rocky Mountain NP — Colorado USA", "alpine/mountain")
add("sierra_nevada_us", 37.0, -118.5, "Sierra Nevada alpine — California USA", "alpine/mountain")
add("japan_alps", 36.3, 137.6, "Japanese Alps — Honshu Japan", "alpine/mountain")
add("new_zealand_alps", -43.5, 170.5, "Southern Alps — New Zealand", "alpine/mountain")
add("carpathian_tatras", 49.2, 20.0, "High Tatras — Slovakia-Poland", "alpine/mountain")
add("scandinavian_mountain", 62.0, 14.0, "Scandinavian Mountains — but EMIT limit!", "alpine/mountain")
add("taiwan_central", 24.0, 121.2, "Taiwan Central Mountain Range", "mountain/tropical")
add("cameron_highlands", 4.5, 101.4, "Cameron Highlands — Malaysia", "mountain/tropical")

# ============================================================================
# SPECIAL (20 total)
# ============================================================================

# Fire scar / burned areas
add("california_fire_scar", 37.5, -120.0, "Sierra Nevada fire scar — California USA", "fire_scar")
add("australia_fire_scar", -37.0, 149.0, "Snowy Mountains fire scar — NSW Australia", "fire_scar")
add("siberia_fire_scar", 51.0, 120.0, "Siberian taiga fire scar — Russia", "fire_scar")
add("amazon_fire_front", -8.5, -55.0, "Pará deforestation-fire arc — Brazil", "fire_scar")
add("portugal_fire_scar", 40.0, -8.0, "Central Portugal fire scar", "fire_scar")

# Deforestation front
add("rondonia_deforest", -10.5, -62.5, "Rondônia deforestation front — Brazil", "deforestation")
add("borneo_deforest", 1.0, 112.0, "Borneo palm oil deforestation — Indonesia", "deforestation")
add("madagascar_deforest", -18.0, 48.0, "Eastern Madagascar slash-burn — Madagascar", "deforestation")
add("congo_deforest", 2.0, 23.0, "Northern DRC deforestation — DRC", "deforestation")
add("myanmar_deforest", 19.0, 97.0, "Shan State forest loss — Myanmar", "deforestation")

# Unique spectral surfaces
add("salton_sea", 33.3, -115.8, "Salton Sea evaporite playa — California USA", "barren/evaporite")
add("danakil", 14.2, 40.3, "Danakil Depression salt and sulfur — Ethiopia", "barren/hydrothermal")
add("mono_lake", 38.0, -119.0, "Mono Lake tufa — California USA", "barren/alkaline")
add("dead_sea_south", 31.0, 35.4, "Dead Sea southern evaporation ponds — Israel", "barren/evaporite")
add("yellowstone_thermal", 44.5, -110.5, "Yellowstone thermal basins — Wyoming USA", "barren/hydrothermal")

# ============================================================================
# MERGE WITH EXISTING AND WRITE
# ============================================================================

# Filter out AOIs beyond EMIT coverage (|lat| > 51.6)
EMIT_LAT_MAX = 51.6
filtered_new = []
for a in NEW_AOIS:
    if abs(a["lat"]) > EMIT_LAT_MAX:
        print(f"  SKIP (EMIT orbit): {a['name']} lat={a['lat']}")
        continue
    filtered_new.append(a)

print(f"\nNew AOIs after EMIT filter: {len(filtered_new)}")

# Load existing
existing = load_existing()
print(f"Existing AOIs: {len(existing)}")

# Check for near-duplicates (within ~0.5° of existing)
existing_coords = [(float(r["lat"]), float(r["lon"])) for r in existing]
deduped = []
for a in filtered_new:
    too_close = False
    for elat, elon in existing_coords:
        if abs(a["lat"] - elat) < 0.5 and abs(a["lon"] - elon) < 0.5:
            print(f"  SKIP (near-duplicate): {a['name']} ≈ existing ({elat}, {elon})")
            too_close = True
            break
    if not too_close:
        deduped.append(a)
        existing_coords.append((a["lat"], a["lon"]))

print(f"After dedup: {len(deduped)} new AOIs")

# Merge
all_aois = existing + deduped
print(f"TOTAL: {len(all_aois)} AOIs")

# Write
OUT = Path("/sessions/laughing-tender-goodall/mnt/HyperSpectralSuperResolution/aois.csv")
with open(OUT, "w", newline="") as f:
    writer = csv.DictWriter(f, fieldnames=["name", "lat", "lon", "description", "land_cover"])
    writer.writeheader()
    for row in all_aois:
        writer.writerow(row)

print(f"\nWritten to {OUT}")

# Summary
import collections
lc_primary = collections.Counter()
for a in all_aois:
    lc_primary[a["land_cover"].split("/")[0]] += 1
print("\nPrimary land cover distribution:")
for lc, n in lc_primary.most_common():
    print(f"  {lc:30s} {n:4d}")
