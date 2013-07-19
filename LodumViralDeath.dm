#modname "Lodum : Viral Death"

#description "Adds a land based late age nation named Lodum. Lodum is a nation of sentient viral masses, shambling mounds of slime, and infected hordes of living beings. Loosely inspired by Left 4 Dead, Zerg from Starcraft, and Slimeworld."

#icon "LodumViralDeath/lodumbanner.tga"

#version 0.3

-- Weapons
#newweapon 700
#copystat
#name "Virulent Infection"
#dmg 9	
#dt_poison
#end

#newweapon 701
#name "Injection Spike"
#dmg 2
#rcost 1
#att 4
#secondaryeffect 700
#sound 14
#end

#newweapon 702
#name "Toothy Maw"
#dmg -4
#rcost 0
#att 2
#sound 14
#end

#newweapon 703
#name "Vomit"
#secondaryeffectalways 704
#dt_cap
#armornegating
#att 3
#flyspr 404 3
#explspr 10139
#nratt 10
#range -1
#ammo 1
#end

#newweapon 704
#name "Slimey Coating"	
#dmg 9
#dt_poison
#secondaryeffectalways 329
#end

#newweapon 705
#name "Censer of the Allspawn's Vitae"
#dt_stun
#dmg 36
#rcost 2
#armornegating	
#end

#newweapon 706
#name "Eye Capped Scepter"
#armornegating
#dmg 15
#rcost 0
#end

-- Armor
#newarmor 200
#name "Shield of Flesh"
#type 4
#prot 8
#enc 1
#rcost 2
#end

#newarmor 201
#name "Thick Slime"
#type 5
#prot 3
#enc 0
#rcost 1
#end

#newarmor 202
#name "Carapace of Hardened Sludge"
#type 5
#prot 11
#enc 1
#rcost 5
#end

#newarmor 203
#name "Scavenged Armor"
#type 5
#prot 8
#enc 2
#rcost 4
#end

#newarmor 204
#name "Patchwork of Flesh"
#type 5
#prot 7
#enc 0
#rcost 1
#end

#newarmor 205
#name "Stolen Face"
#type 6
#prot 7
#enc 0
#rcost 0
#end

#newarmor 206
#name "Pair of Antenna"
#type 6
#prot 3
#enc 0
#rcost 0
#end

#newarmor 207
#name "Fibrous Bands"
#type 5
#rcost 7
#prot 12
#enc 4
#rcost 5
#end


-- Units

#newmonster 2500
#name "Default Amphibian Template"
#swampsurvival
#mor 14
#enc 2
#magicbeing
#blind
#neednoteat
#poisonres 100
#heal
#fireres -25
#regeneration 30
#startage -1
#maxage 1000
#prot 3
#pooramphibian
#end

#newmonster 2501
#name "Default Non-amphibian Template"
#swampsurvival
#mor 14
#enc 2
#magicbeing
#blind
#neednoteat
#poisonres 100
#heal
#fireres -25
#regeneration 30
#startage -1
#maxage 1000
#prot 3
#end

#newmonster 2600
#copystats 2500
#copyspr 408
#diseasecloud 2
#name "Slime Ball"
#mindless
#trample
#weapon 90
#holy
#gcost 140
#rcost 20
#size 6
#hp 90
#mr 14
#str 25
#att 8
#def 6
#prec 10
#mapmove 3
#ap 16
#descr "Slime Balls are crafted directly by the Allspawn in cavities located throughout its body. At any one time up to a dozen Slime Balls may be growing inside of the massive Allspawn. To produce these green, gooey masses of death the Allspawn consumes fresh organic matter. After digestion, it then compresses that flesh down into a hollow cavity roughly the size of a large chariot. After several days of adding new material, the Allspawn implants a small bit of its essence into the ball which gives it the spark of life it needs to move. Finally, the Allspawn regurgitates it onto land. From there it joins the endless hordes of Lodum."
#end

#newmonster 2601
#copystats 2501
#spr1 "./LodumViralDeath/smokeStack1.tga"
#spr2 "./LodumViralDeath/smokeStack2.tga"
#diseasecloud 2
#name "Smokestack"
#weapon 271
#weapon 271
#gcost 170
#rcost 25
#size 6
#hp 35
#str 17
#def 8
#att 8
#prec 10
#mapmove 1
#ap 7
#poisoncloud 25
#descr "Smokestacks were named by the first victims of the Allspawn, the Tarum. Those native lizards, now literally subsumed into the great body of the Allspawn, choked to death on the toxic fumes that poured forth from the Smokestack’s single, hollow pillar of flesh. Smokestacks are grown by the Childern of the Allspawn and require rare ingredients from a number of plants, animals, and magical sources. This makes them both expensive and slow to produce. A single Smokestack can turn the tide of a battle, spreading a swath of poisonous decay that leaves the enemy breathless.  Despite their terrible power, Smokestacks are physically weak creatures with little ability for direct confrontation. When they do find themselves in combat, they fight with a set of thick, black tentacles that leech life from all those they touch."
#end

#newmonster 2602
#copystats 2500
#copyspr 483
#name "Goomba"
#mor 30
#diseasecloud 2
#weapon 701
#gcost 7
#rcost 2
#str 8
#size 1
#hp 9
#def 11
#att 8
#perc 10
#ap 13
#descr "Goombas are small, vaguely humanoid creatures constructed from the body parts of fallen enemies.  They are stitched together en mass in the temples of the great Lodum and blessed with new life by an injection of organic matter from a priest’s body. From this small injection spreads the terrible gift of the Allspawn. Goombas fight by overwhelming their opponents with sharp stabs of their injector spikes. They are nearly fearless being so possessed by the spirit of the Allspawn that they will fight to the last. As a matter of course, fallen Goombas are recovered from the battlefield only to be recycled back into more warriors for new legions in service to Lodum."
#end

#newmonster 2603
#copystats 2500
#diseasecloud 2
#copyspr 984
#name "Clattering Shambler"
#armor "Scavenged Armor"
#armor "Shield of Flesh"
#weapon 701
#gcost 10
#rcost 1
#size 2
#hp 16
#def 12
#att 10
#perc 10
#ap 13
#descr "Clattering Shamblers are called such because of the terrible racket they make as they lope forward towards the enemy. Most of Lodum’s troops simply neglect armor, but Shamblers wear various pieces of mismatched gear from fallen opponents. It provides a modicum of protection to the creature beneath the metal veil, which combined with its natural regenerative abilities, can make all the difference when closing the gap to the enemy. Shamblers are created from rotting organic material. They have no true form, as often leaving behind a patch of themselves on the battlefield, as growing new appendages from fresh organic matter scavenged from fallen warriors. Other nations tell tales of putting Shamblers to the sword, and finding their fallen comrades among the mix of foul smelling rot."
#end

#newmonster 2604
#copystats 2500
#copyspr 1354
#diseasecloud 2
#name "Congealed Mass"
#armor "Carapace of Hardened Sludge"
#weapon "Toothy Maw"
#rcost 4
#str 20
#size 3
#hp 25
#def 8
#att 10
#perc 10
#mapmove 1
#ap 11
#descr "Congealed Masses are large blobs of animated organic material contained within a tough membrane.  They are created in the same fashion as the Sentient Masses, but given only rudimentary intelligence. The blobs move by rolling forward, and attack by biting with one of their many slavering maws. Due to their sheer size and slow movement, Congealed Masses are easy targets in melee. Despite this fact, their thick outer layer protects them from the brunt of most direct attacks and for this reason they can often be seen leading the charge into battle, recklessly throwing their huge forms into the ranks of terrified enemies."
#end

#newmonster 2605
#copystats 2500
#spr1 "./LodumViralDeath/boomer1.tga"
#spr2 "./LodumViralDeath/boomer2.tga"
#name "Boomer"
#weapon "Vomit"
#armor "Thick Slime"
#poisonarmor
#diseasecloud 2
#gcost 28
#rcost 4
#weapon 322
#str 13
#size 3
#hp 15
#def 6
#att 9
#perc 12
#ap 12
#descr "Boomers can often be smelled before they are seen.  Members of the local populace are converted into boomers while still living. A tube is inserted into the throat, and the Allspawn’s gift is fed to them until their stomachs burst. A lucky few die before their flesh begins to renew itself, but those who do not become Boomers. Large, lumbering, and filled to the brim with bile that distends their stomachs; Boomers fight by spewing forth the contents of their bellies. They shower the enemy in a thick coat of bile that eats away at their flesh and makes fighting difficult. The boomers then engage in meele where, if they are punctured by the enemy’s weapon, poisonous streams of toxic goo spray forth injuring the attacker."
#end

#newmonster 2606
#copystats 2501
#copyspr 521	
#name "Faceless Lord"
#noleader
#hp 70
#size 4
#holy
#mr 17
#mor 18
#gcost 440
#rcost 10
#armor "Thick Slime"
#att 14
#str 18
#ap 10
#ambidextrous 5
#fear 0
#amphibian
#itemslots 28702
#magicskill 8 1
#magicskill 6 1
#magicskill 2 1
#magicskill 5 1
#custommagic 12800 100
#custommagic 12800 100
#custommagic 12800 100
#custommagic 12800 100
#weapon 701
#weapon 701
#weapon 701
#weapon 701
#descr "Faceless Lords are the penultimate creation of the Allspawn. They act as an army of one, laying waste to swaths of enemy troops with their many poison tipped appendages. These creatures are grown into a mass of flesh with an upwards jutting loop that bares its many appendages. Like a snake, a Faceless Lord moves by undulating the bottom curve of its form left to right. They are cultivated in the Spawning Pool of Lodum’s capital with the process taking months to grow a single successful Lord. Once unleashed the Faceless carry the full blessing of the Allspawn."
#end

#newmonster 2607
#copystats 2500
#copyspr 169
#name "Sentient Mass"
#noitem
#hp 30
#size 3
#str 6
#def  6
#att 4
#mr 12
#ap 10
#weapon 90
#gcost 10
#noleader
#okmagicleader
#descr "Lodum uses Sentient Masses to send the Allspawn’s wishes far and wide. Sentient Masses are often the leftovers of Goomba factories created across the land of Lodum.  They receive and distribute the Allspawn’s commands through a pair of antenna, leading the endless hordes of near mindless organic mobs to victory. Masses have no ability to defend themselves in a fight, and instead rely on bodyguards to keep enemies at bay."
#end

#newmonster 2608
#copystats 2501
#copyspr 427
#name "Vile Stalker"
#armor "Patchwork of Flesh"
#armor "Stolen Face"
#weapon 701
#weapon 701
#noleader
#gcost 40
#stealthy 30
#assassin
#mor 14
#hp 25
#str 13
#def 12
#att 12
#ambidextrous 2
#mr 15
#ap 12
#fear 0
#diseasecloud 4
#descr "Women of the nations bordering Lodum tell their naughty children that a Vile Stalker will come and steal their faces if they do not behave. The process for creating Stalkers is a closely guarded secret of Lodum, but the product is anything if not terrifying. Stalkers assimilate into other cultures by literally harvesting the memories, and skin, of its first victim. This makes them difficult to detect by even the most steadfast of guards. Once it is in place, the Stalker can assume that person’s identity until a new one is needed, or its primary target comes within range. Wrapped in the flesh of its victim’s friends, or family, a stalker can close the distance to its target to deliver a deadly poison via a pair of injectors. Even if the Stalker is slain during the course of its attack the pestilent nature of its felled body can leave its target diseased and unable to recover from a slow, agonizing death."
#end

#newmonster 2609
#copystats 2500
#copyspr 940
#name "Child of the Allspawn"
#goodmagicleader
#hp 20
#mr 17
#armor "Thick Slime"
#armor "Pair of Antenna"
#gcost 345
#holy
#itemslots 13446
#magicskill 2 1
#magicskill 6 3
#magicskill 5 2
#custommagic 12800 100
#custommagic 12800 50
#custommagic 2048 50
#custommagic 2048 10
#descr "Childern of the Allspawn are born when a female becomes infected with the Allspawn’s gift and survives to term. The resulting child chews its way forth, consuming its mother from the inside out, before fleeing its place of birth and returning to the Allspawn to join its legions.  There are efforts within Lodum to add this process to the meat factories that produce its other troops, but they have met with limited, and expensive, success. The spores that Allspawn spreads into the air directly, belched forth day after day, continue to be the main progenitor behind the Children."
#end

#newmonster 2610
#copystats 310
#spr1 "./LodumViralDeath/slimeDippedNecromancer1.tga"
#spr2 "./LodumViralDeath/slimeDippedNecromancer2.tga"
#name "Slime Dipped Necromancer"
#armor "Thick Slime"
#gcost 150
#mr 16
#magicskill 4 1
#custommagic 2048 40
#custommagic 2048 10
#undead
#swampsurvival
#mor 16
#regeneration 30
#neednoteat
#poisonres 100
#coldres 100
#fireres -25
#startage -1
#maxage 1000
#pooramphibian
#descr "Humans rarely service the Allspawn willingly. So when a cult of necromancers tried to study and subvert the power of the Allspawn, and they were discovered, their compliance to a new master was obtained through a lethal ritual. Dunked in a slime bath of the Allspawn’s liquid excrement until drown, the necromancers were then reawakened as undead themselves still bearing the gift of the Allspawn. Now they have only one duty to the land of Lodum; to make the dead, as well as the living, its servants."
#end

#newmonster 2611
#copystats 2500
#name "Cultivated Brain-Mass"
#noleader
#size 3
#spr1 "./LodumViralDeath/cultivatedBrainMass1.tga"
#spr2 "./LodumViralDeath/cultivatedBrainMass2.tga"
#gcost 40
#weapon 86
#weapon 86
#weapon 346
#att 6
#onebattlespell 636
#magicskill 4 1
#noitem
#descr "Humanoids submitted to the meat factories of Lodum often have their brains removed as the first step in processing.  This grey matter is collected in huge vats, and then mingled with crushed dust obtained by grinding down astral gems that naturally extrude from the Allspawn’s many orifices. Once so prepared, the brain matter is placed into a cylindrical metal container about the size of a small humanoid. Two of the hollowed out meatlings that were not processed for parts are then assigned to the container, and cart it from battle to battle. Once so combined the thinking flesh of a hundred victims can cast minor astral spells and lash out at the minds of other living beings."
#end

#newmonster 2612
#copystats 2500
#copyspr 668
#name "Herald of the Allspawn"
#standard 13
#diseasecloud 2
#hp 16
#att 9
#def 8
#weapon 705
#armor "Fibrous Bands"
#armor "Censer of the Allspawn's Vitae"
#descr "Heralds are the Allspawn’s direct connection to its many children. They broadcast commands to nearby troops ensuring that they stay engaged in combat. The censers they bear contain incense mixed with a regenerating piece of the Allspawn itself. As the incense burns, the chunk of flesh imparted from the Allspawn grant the censer deadly powers in combat. A few strong whiffs of the toxic smoke will leave even the strongest opponent incapacitated."
#end

#newmonster 2613
#copystats 2500
#copyspr 540
#name "Crest of the Allspawn"
#armor "Thick Slime"
#expertmagicleader
#hp 15
#holy
#gcost 210
#rcost 1
#weapon 706
#armor "Pair of Antenna"
#itemslots 13446
#magicskill 4 3
#custommagic 12288 100
#custommagic 12288 75
#custommagic 12288 10
#descr "Unlike the Childern of the Allspawn, which need female hosts, the Crests are grown directly on the Allspawn’s body. They incubate in milky white pockets that blister outwards from the great beast. They are delivered into the world by bursting free from the Allspawn’s blister-wombs. Their skin is a pallid white and their bodies are completely devoid of demarking features. Each inch of their smooth, hairless form is covered in a thick slime which provides them some protection. Because Crests are born directly from the Allspawn itself, they share an intimate connection with the astral magics that brought their beastly parent into existence."
#end

#newmonster 2614
#copyspr 720
#copystats 720
#name "Lobotomized Thrall"
#armor "Scavanged Armor"
#mor 50
#end

-- Pretender Gods


-- Start sites
#newsite 890
#name "Putrid Pit of Filth"
#path 5
#level 0
#rarity 5
#gems 5 2
#homemon 2600
#end

#newsite 891
#name "Spawning Pool"
#path 0
#level 0
#rarity 5
#gems 2 1
#gems 6 1
#homecom 2613
#homecom 2606
#end

--Nation Building Time

#selectnation 85
#name "Lodum"
#epithet "Viral Death"
#era 3
#clearnation
#clearrec
#startcom "Sentient Mass"
#startscout "Vile Stalker"
#startunittype1 "Clattering Shambler"
#startunittype2 "Goomba"
#startunitnbrs1 10
#startunitnbrs2 20
#templecost 300
#templepic 13
#startsite "Putrid Pit of Filth"
#startsite "Spawning Pool"
#color .8 1 .1

-- Adding units
#addrecunit "Goomba"
#addrecunit "Boomer"
#addrecunit "Clattering Shambler"
#addrecunit "Congealed Mass"
#addrecunit "Herald of the Allspawn"
#addrecunit "Smokestack"
-addrecunit "Lobotomized Thrall"
#addreccom "Sentient Mass"
#addreccom "Cultivated Brain-Mass"
#addreccom "Vile Stalker"
#addreccom "Slime Dipped Necromancer"
#addreccom "Child of the Allspawn"
-addreccom "Crest of the Allspawn"


--Set what forts they will use.
#startfort 5
#defaultfort 26
#mountainfort 32
#forestfort 7