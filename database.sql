create database League;
use League;

create table champions (
    champion_name varchar(30) not null,
    primary key (champion_name),
    class varchar(30),
    lane varchar(30),
    attackRange varchar(30),
    damageType varchar(30)
);

create table abilities (
   champion_name varchar(30),
   foreign key (champion_name) references champions(champion_name),
   passive varchar(30),
   q_ability varchar(30),
   w_ability varchar(30),
   e_ability varchar(30),
   ultimate varchar(30)
);

create table builds (
    champion_name varchar(30),
    foreign key (champion_name) references champions(champion_name),
    startingItem varchar(30),
    Mythic varchar(30),
    boots varchar(30),
    firstItem varchar(30),
    secondItem varchar(30),
    thirdItem varchar(30),
    situationalItem varchar(30)
);

create table counters(
    champion_name varchar(30),
    foreign key (champion_name) references champions(champion_name),
    counter_1 varchar(30),
    counter_2 varchar(30),
    counter_3 varchar(30)
);

insert into champions values ("Aatrox", "Fighter", "Top", "Melee", "Physical"),
 ("Ahri", "Mage", "Mid", "Ranged", "Magical"),
 ("Akali", "Assassin", "Mid", "Melee", "Hybrid"),
 ("Akshan", "Marksman", "Top/Mid", "Ranged", "Physical"),
 ("Alistar", "Tank", "Support", "Melee", "Magical"),
 ("Amumu", "Tank", "Jungle/Support", "Melee", "Magical"),
 ("Anivia", "Mage", "Mid", "Ranged", "Magical"),
 ("Annie", "Mage", "Mid", "Ranged", "Magical"),
 ("Aphelios", "Marksman", "Bot", "Ranged", "Physical"),
 ("Ashe", "Marksman", "Bot/Support", "Ranged", "Hybrid"),
 ("Aurelion Sol", "Mage", "Mid", "Ranged", "Magical"),
 ("Azir", "Mage", "Mid", "Mixed", "Magical"),
 ("Bard", "Enchanter", "Support", "Mixed", "Magical"),
 ("Bel'Veth", "Skirmisher", "Jungle", "Melee", "Physical"),
 ("Blitzcrank", "Tank", "Support", "Melee", "Magical"),
 ("Brand", "Mage", "Bot/Support", "Ranged", "Magical"),
 ("Braum", "Warden", "Support", "Melee", "Magical"),
 ("Caitlyn", "Marksman", "Bot", "Ranged", "Physical"),
 ("Camille", "Fighter", "Top", "Melee", "Physical"),
 ("Cassiopeia", "Mage", "Mid", "Ranged", "Magical"),
 ("Cho'Gath", "Tank", "Top", "Melee", "Magical"),
 ("Corki", "Mage", "Mid", "Ranged", "Hybrid"),
 ("Darius", "Fighter", "Top", "Melee", "Physical"),
 ("Diana", "Fighter", "Jungle", "Melee", "Magical"),
 ("Dr. Mundo", "Tank", "Top", "Melee", "Physical"),
 ("Draven", "Marksman", "Bot", "Ranged", "Physical"),
 ("Ekko", "Assassin", "Jungle", "Melee", "Magical"),
 ("Elise", "Mage", "Jungle", "Mixed", "Magical"),
 ("Evelynn", "Assassin", "Jungle", "Ranged", "Magical"),
 ("Ezreal", "Marksman", "Bot", "Ranged", "Hybrid"),
 ("Fiddlesticks", "Mage", "Jungle", "Ranged", "Magical"),
 ("Fiora", "Fighter", "Top", "Melee", "Physical"),
 ("Fizz", "Assassin", "Mid", "Melee", "Magical"),
 ("Galio", "Tank", "Mid", "Melee", "Magical"),
 ("Gangplank", "Fighter", "Top", "Melee", "Physical"),
 ("Garen", "Fighter", "Top", "Melee", "Physical"),
 ("Gnar", "Fighter", "Top", "Mixed", "Physical"),
 ("Gragas", "Fighter", "Top/Mid/Jungle", "Melee", "Magical"),
 ("Graves", "Marksman", "Top/Jungle", "Ranged", "Physical"),
 ("Gwen", "Fighter", "Top", "Melee", "Magical"),
 ("Hecarim", "Fighter", "Jungle", "Melee", "Physical"),
 ("Heimerdinger", "Mage", "Mid", "Ranged", "Magical"),
 ("Illaoi", "Fighter", "Top", "Melee", "Physical"),
 ("Irelia", "Fighter", "Top/Mid", "Melee", "Physical"),
 ("Ivern", "Enchanter", "Jungle/Support", "Ranged", "Magical"),
 ("Janna", "Enchanter", "Support", "Ranged", "Magical"),
 ("Jarvan IV", "Fighter", "Jungle", "Melee", "Physical"),
 ("Jax", "Fighter", "Top/Jungle", "Melee", "Physical"),
 ("Jayce", "Fighter", "Top", "Mixed", "Physical"),
 ("Jhin", "Marksman", "Bot", "Ranged", "Physical"),
 ("Jinx", "Marksman", "Bot", "Ranged", "Physical"),
 ("Kai'sa", "Marksman", "Bot", "Ranged", "Hybrid"),
 ("Kalista", "Marksman", "Bot", "Ranged", "Physical"),
 ("Karma", "Enchanter", "Support", "Ranged", "Magical"),
 ("Karthus", "Mage", "Top/Jungle/Bot/Support", "Ranged", "Magical"),
 ("Kassadin", "Mage", "Mid", "Melee", "Magical"),
 ("Katarina", "Assassin", "Mid", "Melee", "Hybrid"),
 ("Kayle", "Fighter", "Top", "Mixed", "Hybrid"),
 ("Kayn", "Fighter/Assassin", "Jungle", "Melee", "Physical"),
 ("Kennen", "Mage", "Top", "Ranged", "Magical"),
 ("Kha'Zix", "Assassin", "Jungle", "Melee", "Physical"),
 ("Kindred", "Marksman", "Jungle", "Ranged", "Physical"),
 ("Kled", "Fighter", "Top", "Melee", "Physical"),
 ("Kog'Maw", "Marksman", "Bot", "Ranged", "Hybrid"),
 ("LeBlanc", "Assassin", "Mid", "Ranged", "Magical"),
 ("Lee Sin", "Fighter", "Jungle", "Melee", "Physical"),
 ("Leona", "Warden", "Support", "Melee", "Magical"),
 ("Lillia", "Skirmisher", "Jungle", "Ranged", "Magical"),
 ("Lissandra", "Mage", "Mid", "Ranged", "Magical"),
 ("Lucian", "Marksman", "Bot", "Ranged", "Physical"),
 ("Lulu", "Enchanter", "Support", "Ranged", "Magical"),
 ("Lux", "Mage", "Mid/Support", "Ranged", "Magical"),
 ("Malphite", "Tank", "Top/Support", "Melee", "Hybrid"),
 ("Malzahar", "Mage", "Mid", "Ranged", "Magical"),
 ("Maokai", "Tank", "Top/Jungle/Support", "Melee", "Magical"),
 ("Master Yi", "Skirmisher", "Jungle", "Melee", "Physical"),
 ("Miss Fortune", "Marksman", "Bot", "Ranged", "Physical"),
 ("Mordekaiser", "Bruiser", "Top/Jungle", "Melee", "Magical"),
 ("Morgana", "Mage", "Support", "Ranged", "Magical"),
 ("Nami", "Enchanter", "Support", "Ranged", "Magical"),
 ("Nasus", "Juggernaut", "Top", "Melee", "Physical"),
 ("Nautilus", "Warden", "Support", "Melee", "Magical"),
 ("Neeko", "Mage", "Mid", "Ranged", "Magical"),
 ("Nidalee", "Assassin", "Jungle", "Mixed", "Magical"),
 ("Nilah", "Marksman", "Bot", "Melee", "Physical"),
 ("Nocturne", "Assassin", "Jungle", "Melee", "Physical"),
 ("Nunu & Willump", "Tank", "Jungle", "Melee", "Magical"),
 ("Olaf", "Skirmisher", "Top/Jungle", "Melee", "Physical"),
 ("Orianna", "Mage", "Mid", "Ranged", "Magical"),
 ("Ornn", "Tank", "Top", "Melee", "Magical"),
 ("Pantheon", "Assassin", "Top/Jungle/Support", "Melee", "Physical"),
 ("Poppy", "Warden", "Top/Jungle", "Melee", "Physical"),
 ("Pyke", "Assassin", "Support", "Melee", "Physical"),
 ("Qiyana", "Assassin", "Jungle/Mid", "Melee", "Physical"),
 ("Quinn", "Marksman", "Top", "Ranged", "Physical"),
 ("Rakan", "Enchanter", "Support", "Ranged", "Magical"),
 ("Rammus", "Tank", "Jungle", "Melee", "Magical"),
 ("Rek'sai", "Skirmisher", "Jungle", "Melee", "Physical"),
 ("Rell", "Warden", "Support", "Melee", "Magical"),
 ("Renata Glasc", "Enchanter", "Support", "Ranged", "Magical"),
 ("Renekton", "Bruiser", "Top/Mid", "Melee", "Physical"),
 ("Rengar", "Assassin", "Jungle", "Melee", "Physical"),
 ("Riven", "Bruiser", "Top", "Melee", "Physical"),
 ("Rumble", "Mage", "Top/Mid", "Melee", "Magical"),
 ("Ryze", "Mage", "Mid", "Ranged", "Magical"),
 ("Samira", "Marksman", "Bot", "Mixed", "Physical"),
 ("Sejuani", "Tank", "Jungle/Top", "Melee", "Magical"),
 ("Senna", "Marksman", "Support/Bot", "Ranged", "Physical"),
 ("Seraphine", "Mage", "Support/Bot/Mid", "Ranged", "Magical"),
 ("Sett", "Bruiser", "Top", "Melee", "Physical"),
 ("Shaco", "Assassin", "Jungle", "Melee", "Hybrid"),
 ("Shen", "Warden", "Top", "Melee", "Hybrid"),
 ("Shyvana", "Tank", "Jungle", "Melee", "Magical"),
 ("Singed", "Tank", "Top", "Melee", "Magical"),
 ("Sion", "Tank", "Top", "Melee", "Physical"),
 ("Sivir", "Marksman", "Bot", "Ranged", "Physical"),
 ("Skarner", "Tank", "Jungle", "Melee", "Magical"),
 ("Sona", "Enchanter", "Support", "Ranged", "Magical"),
 ("Soraka", "Enchanter", "Support", "Ranged", "Magical"),
 ("Swain", "Mage", "Mid/Support", "Ranged", "Magical"),
 ("Sylas", "Mage", "Mid", "Melee", "Magical"),
 ("Syndra", "Mage", "Mid", "Ranged", "Magical"),
 ("Tahm Kench", "Warden", "Top/Support", "Melee", "Magical"),
 ("Taliyah", "Mage", "Mid/Jungle", "Ranged", "Magical"),
 ("Talon", "Assassin", "Mid/Jungle", "Melee", "Physical"),
 ("Taric", "Warden", "Support", "Melee", "Magical"),
 ("Teemo", "Marksman", "Top", "Ranged", "Hybrid"),
 ("Thresh", "Warden", "Support", "Ranged","Hybrid"),
 ("Tristana", "Marksman", "Bot", "Ranged", "Physical"),
 ("Trundle", "Bruiser", "Jungle", "Melee", "Physical"),
 ("Tryndamere", "Skirmisher", "Top", "Melee", "Physical"),
 ("Twisted Fate", "Mage", "Mid", "Ranged", "Magical"),
 ("Twitch", "Marksman", "Bot", "Ranged", "Hybrid"),
 ("Udyr", "Tank", "Jungle", "Melee", "Hybrid"),
 ("Urgot", "Bruiser", "Top", "Ranged", "Physical"),
 ("Varus", "Marksman", "Bot", "Ranged", "Hybrid"),
 ("Vayne", "Marksman", "Bot", "Ranged", "Physical"),
 ("Veigar", "Mage", "Mid", "Ranged", "Magical"),
 ("Vel'Koz", "Mage", "Support/Mid", "Ranged", "Magical"),
 ("Vex", "Mage", "Mid", "Ranged", "Magical"),
 ("Vi", "Fighter", "Jungle", "Melee", "Physical"),
 ("Viego", "Skirmisher", "Jungle", "Melee", "Physical"),
 ("Viktor", "Mage", "Mid", "Ranged", "Magical"),
 ("Vladimir", "Mage", "Mid", "Ranged", "Magical"),
 ("Volibear", "Tank", "Top/Jungle", "Melee", "Hybrid"),
 ("Warwick", "Bruiser", "Jungle/Top", "Melee", "Hybrid"),
 ("Wukong", "Skirmisher", "Top/Jungle", "Melee", "Physical"),
 ("Xerath", "Mage", "Mid", "Ranged", "Magical"),
 ("Xin Zhao", "Skirmisher", "Jungle", "Melee", "Physical"),
 ("Yasuo", "Skirmisher", "Mid", "Melee", "Physical"),
 ("Yone", "Skirmisher", "Mid", "Melee", "Physical"),
 ("Yorick", "Juggernaut", "Top", "Melee", "Physical"),
 ("Yuumi", "Enchanter", "Support", "Ranged", "Magical"),
 ("Zac", "Warden", "Jungle", "Melee", "Magical"),
 ("Zed", "Assassin", "Mid", "Melee", "Physical"),
 ("Zeri", "Marksman", "Bot", "Ranged", "Hybrid"),
 ("Ziggs", "Mage", "Mid/Support", "Ranged", "Magical"),
 ("Zilean", "Enchanter", "Support", "Ranged", "Magical"),
 ("Zoe", "Mage", "Mid", "Ranged", "Magical"),
 ("Zyra", "Mage", "Support", "Ranged", "Magical");

insert into abilities values ("Aatrox", "Deathbringer's Stance", "The Darkin Blade", "Infernal Chains", "Umbral Dash", "World Ender"),
("Ahri", "Essence Theft", "Orb of Deception", "Fox-Fire","Charm","Spirit Rush"),
("Akali","Assassin's Mark","Five Point Strike", "Twilight Shroud", "Shuriken Flip", "Perfect Execution"),
("Akshan", "Dirty Fighting", "Avengerang", "Going Rogue", "Heroid Swing", "Comeuppance"),
("Alistar", "Triumphant Roar", "Pulverize", "Headbutt", "Trample", "Unbreakable Will"),
("Amumu", "Cursed Touch", "Bandage Toss", "Despair", "Tantrum", "Curse of the Sad Mummy"),
("Anivia","Rebirth", "Flash Frost", "Crystallize", "Frostbite", "Glacial Storm"),
("Annie","Pyromania","Disintegrate","Incinerate","Molten Shield","Summon: Tibbers"),
("Aphelios","The Hitman and the Seer", "Weapon Abilities","Phase","Weapon Queue System","Moonlight Vigil"),
("Ashe","Frost Shot","Ranger's Focus","Volley","Hawkshot","Enchanted Crystal Arrow"),
("Aurelion Sol","Center of the Universe","Starsurge","Celestial Expansion","Comet of Legend","Voice of Light"),
("Azir", "Shurima's Legacy","Conquering Sands","Arise!","Shifting Sands", "Emperor's Divide"),
("Bard","Traveler's Call","Cosmic Binding","Caretarker's Shrine","Magical Journey","Tempered Fate"),
("Bel'Veth","Death in Lavender", "Void Surge","Above and Below","Royal Maelstrom","Endless Banquet"),
("Blitzcrank", "Mana Barrier", "Rocket Grab", "Overdrive", "Power Fist", "Static Field"),
("Brand","Blaze","Sear","Pillar of Flame","Conflagration","Pyroclasm"),
("Braum","Concussive Blows","Winter's Bite","Stand Behind Me","Unbreakable","Glacial Fissure"),
("Caitlyn","Headshot","Piltover Peacemaker","Yordle Snap Trap","90 Caliber Net","Ace in the Hole"),
("Camille","Adaptive Defenses","Precision Protocol","Tactical Sweep","Hookshot","The Hextech Ultimatum"),
("Cassiopeia","Serpentine Grace","Noxious Blast","Miasma","Twin Fang","Petrifying Gaze"),
("Cho'Gath","Carnivore","Rupture", "Feral Scream","Vorpal Spikes","Feast"),
("Corki","Hextech Munitions","Phosphorus Bomb","Valkyrie","Gatling Gun","Missile Barrage"),
("Darius", "Hemorrhage", "Decimate", "Crippling Strike", "Apprehend", "Noxian Guillotine"),
("Diana","Moonsilver Blade","Crescent Strike","Pale Cascade", "Lunar Rush", "Moonfall"),
("Dr. Mundo", "Goes Where He Pleases", "Infected Bonesaw", "Heart Zapper", "Blunt Force Trauma", "Maximum Dosage"),
("Draven", "League of Draven", "Spinning Axe", "Blood Rush", "Stand Aside", "Whirling Death"),
("Ekko", "Z-Drive Resonance","Timewinder", "Parallel Convergence", "Phase Dive", "Chronobreak"),
("Elise", "Spider Queen", "Neurotoxin/Venomous Bite", "Volatile Spiderling/Skittering Frenzy","Cocoon/Rappel","Spider Form"),
("Evelynn", "Demon Shade", "Hate Spike", "Allure", "Whiplash", "Last Caress");
