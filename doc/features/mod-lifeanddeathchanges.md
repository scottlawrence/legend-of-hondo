###Life and Death Changes

I suppose this is my version of a "Combat Upgrade". I'm sure some folks will hate it, but oh well. :)

The combat model in Legend of Hondo is inspired by the Wrath of the Lich King era of World of Warcraft while playing an Elemental Shaman. The Shaman had Health and Mana and in its Elemental form, it was primarily a damage dealing class, but it also decent healing abilities. All the Shaman's abilities required Mana, while he had limited ways to recover the Mana once it was used. As a result, it was interesting to play an Elemental Shaman, because the Shaman could take on some very challenging content provided that he used his abilities effectively.

Combat in SWG was quite different, particularly how running out of the alternate stats, Action and Mind, caused the player to lose the encounter. Also, the use of abilities was ill defined, due to the ability cost being spread over all three of the player's main stats (Health/Action/Mind). Add the issue of Mind healing vs. Health and Action healing, the totally outrageous Doctor/Enterainer buffs people would use to steamroll content, and the sad reality that wearing half a suit of armor was numerically better than wearing a whole suit, what you're left with was (in my opinion) a combat model that just didn't work. Amongst other issues, this design caused any profession that could do Mind damage to literally be the best ones to play in every situation. And that's not even considering how unbalanced the Jedi professions made everything (I'm not using Jedi in LoH).

The following changes are designed to open up all of the content in the game to a solo player (who will most likely require creature or NPC pets for some content), while also taking cues from the Shaman to make combat more coherent and enjoyable. I've made some quality of life improvements to various aspects of the game related to combat.

####Major Points
- All all professions can easily use at least 444x Medic, so that the player never feels he has to run a second client to automate a healer.
- Health/Action/Mind each have their own unique purposes.
- Buffed player Health pool sizes so they can take larger hits without being "insta-gibbed".
- Player stats don't regeneate at such a high rate that the player effectively becomes invincible.
- The Jedi professions aren't being used in Legend of Hondo, so I haven't made any changes with them in mind. However, I made mobs that could only be killed by them more plausible to be defeated by the other professions; I am quite sure the harest content will still be extremely challenging, perhaps even impossible.

####NPC/Creature Changes
- High level NPCs/Creatures have less Health (80,000 Max).
- Creature/NPC armor resists capped at 80%. Any individual resist that was previously over 80% is now randomly selected between 65% - 80%.

####Professions and Skill Points
- I brought over the Hondo Classic skills.iff file to apply the Medic/Doctor/Combat Medic changes.
- Combat Medic removed, with its abilities and craftables megered into Doctor. 
- Doctor Buff application and buff crafting moved to xx22 Medic.
- Cure Poison and Cure Disease moved to 4x4x Medic.
- Cure State moved to Master Medic.  
- 15 total points of Wound Healing and Wound Healing Speed moved down to 22xx Medic, 44xx Medic, and Master Medic.
- Each box of Medic only requires 1 skill point.
- Novice Artisan, Brawler, Marksman, Medic, and Scout cost 1 Skill Point.
- Entertainer, Dancer, Image Designer, Musician, and Politian do not require skill points.

####Species and Professions
- All Species have 5,500 points to spend on stats.
- Species stat bonuses effect Min/Max values per stat.
- All species and professions start with the same neutral distribution of stats, as the player can change them whenever anyway.
- Species stat bonuses are different from normal SWG to factor in the combat changes.
- Min/Max stats are different from normal SWG to factor in the combat changes.  

####Regeneration
- All stats regen quickly when sitting down out of combat.
- Mind wounds and Battle Fatigue are also healed while sitting down (faster while in a camp, no sitting required).
- In combat regen is limited to prevent the player from becoming invincible.
- Dramatically limited crafted Constitution and Stamina (regen) buffs.
- Entertainer buffs have been disabled and replaced with the Medical Services Terminal.
- Terminal buffs are limited to +250 Constitution/Stamina/Willpower for the most powerful buff.

####Death
- Storing clone data reduces wounds and battle fatigue by 50% rather than 100%.
- Insurance is more expensive.

####Medical XP Gain
- Medical XP is gained for healing pets and healing yourself.
- The rate is generous; You should be able to level Medic by "just playing the game".

####Health
- Primary function is to be the only stat which will cause incap/death if it is depleted.
- The only stat that direct enemy attacks will damage.
- All Action and Mind special attacks hit Health instead.
- Only regens a max of 1 per tick while in combat.
- Removed "spill-over" damage, so only Health is directly damaged.
- Buffed crafted buffs for Health. I want the player to have a larger Health pool so it can absorb larger hits, but still needs to be healed with diligence.

####Action
- Primary function is to allow the use of special attacks.
- Any attack that would have damaged Action is applied to Health instead.
- Incap does not occur when it is empty (never drops below 1).
- DoTs still effect it.
- Stimpack healing is just the value shown on the Stimpack, no Medic/Doctor bonuses.
- Special Attack Cost is applied only to the Action pool and intended to require more Action per shot than normal SWG. 
- The Special Attack Cost is based on the total of all HAM values shown on the weapon.
- Designed to be used up quickly and replenished with healing.

####Mind
- Primary function is to manage healing and the removal of States/DoTs.
- Any attack that would have damaged Mind is applied to Health instead.
- Incap does not occur when it is empty (never drops below 1).
- DoTs still effect it.
- Mind Cost is based on the stim used and the player's level.
- Mind is essentially the hard limit on the player's combat ability, as once it's gone the player won't be able to heal his Health or recover his Action.
- The Medical Services Terminal buffs, food, and drinks are the primary ways to improve and recover the Mind.

####Damage, Wounds, and Hit Locations
- Health, Action, and Mind hits are still calculated, but they all run through the same logic process now.
- 1 Body part is hit per successful attack, randomly chosen from 1 Head, 2 Body, 2 Leg, 2 Arm locations.
- The hit location determines which piece of armor is used to calculate the damage reduction.
- Wound chances to HAM are rolled independently depending on which pool was hit.
- Wounds should occur more often and thus play a larger roll in combat.
- Having Health wounds increases damage recieved (Linear progresssion ending in double damage to a 100% wounded target).

####Armor Encumberance
- Rather than being applied to secondary stats, HAM encumberance is applied to the following combat activities.
- HEALTH: Applied to max healing value. *Heal = Post Bonus Heal Value / ((Health Enc / 1800) + 1)*
- ACTION: Applied to attack speed. *Speed = Post Bonus Attack Speed x ((Action Enc / 1000) + 1)*
- MIND:  Applied to healing speed. *Speed = Post Bonus Healing Speed x ((Mind Enc / 1200) + 1)*
- The character sheet no longer shows the values, but you can check then by using the */hondo aboutMe* command.
- Enc values tracked differently in the server code, so they won't interfere with stat modifiers and HAM. The values are stored in an array called hondoHAMEnc which is associated with the CreatureObject version of the player. It's defined in CreatureObject.idl, as are 3 helper functions.
- The array has 9 positions, on for each stat, but only uses 0,2,8 for HEALTH, ACTION, MIND as it's easily readable in the programming.
- Encumberance factor constants are set in CombatManager.h

####Quick Heal Command
- Made it a more clearly defined "oh crap" button.
- Decreased base Mind cost to 500.
- Increased Health healing to 100% unbuffed health pool.
- Removed Action healing component.

####Tend Damage and Tend Wounds Commands
- These remain the same (so no XP for self or player heals).

####Stimpacks
- Health healing is limited by Health Encumberance (shown as Strength/Stamina on the character sheet).
- Action healing, just the value shown on the Stimpack, no Medic/Doctor bonuses.
- Mind costs have been increased for using stimpacks, statepacks, and pet healing.
- Healing speed is limited by Mind Encumberance (shown as Focus/Willpower on the character sheet).
- Increased the min/max values on Stim-A.
- Increase the min values on Stim-B/C/D/E.
- Stim-B/C/D/E require higher medicine use skill. Min values: 20/30/40/50.
- Ranged and area stims remain the same (though they have been moved into the Doctor profession).

####Pet Stimpacks
- Made some minor improvements to make these more useful given the LoH damage model.
- Cooldown reduced to be similar to normal stims.
- Cool down is reduced by 3 seconds based on Creature Handler level.
- Stim power is given a large bonus based on Creature Handler level.
- Increased the range from 5m to 20m.

####Medicine Bag
- Enabled using healing supplies from the Medical Bag (a 20 slot bag that DOES count toward inventory space, the same as a satchel).
- Supports direct clicking as well as placing the supply on the toolbar.
- Support for the following commands: Heal Damage, Heal State, Heal Pet, Heal Enhance, and Heal Wound.
- Add as starter item for all characters.
- Rule: Will not remove items from factory crates.
- Rule: Does not work when the Med Bag is stuffed into your backpack.
- Rule: Items in your backpack can't be used directly, but they will trigger a search of your Med Bag for an item of the same type.

####Healing Cooldowns
- Rather than try to make a new UI element, I used an existing system to display cooldowns for healing abilities.
- A cooldown will be placed on the first Food and Chemical Crafting Tool found in the player's inventory. The player can put it on his toolbar to keep track of the healing cooldown.
- Support for the following commands: Heal Damage, Heal State, Heal Pet, Heal Enhance, and Heal Wound.

####Player Armor
- Removed the "mini-suit" concept; The player must wear armor on all available slots, with the following exceptions.
- Ubese: Left/Right Biceps not possible/needed.
- Mabari (Zam): Left/Right Biceps optional, will hit chest if missing. Left/Right Bracers optional if not wearing Mabari gloves, will hit gloves instead.
- Wookiees: Chest, Legs, and Bracers = full suit.
- Trandoshans: All pieces except boots and gloves required.
- All other suits are simply incomplete and can be completed by using pieces from other suits.
- The combat log tells the player when they are hit in a location that was missing an armor piece.

####Food, Drink, and Forgaged Food
- These remain the same.

####Files
These are the files that were added or updated in this feature.

C++ Files  
Lua Files  
TRE Files  
- What they were used for

src/server/zone/objects/creature/CreatureObject.idl
src/server/zone/objects/creature/CreatureObjectImplementation.cpp
- Increase stat regen when sitting.
- Mind and Battle Fatigue healing.
- Limit Health regen while in combat.
- Damge: Health never goes below 0, all other stats never go below 1.
- Handy cooldown count down feature

src/server/zone/managers/combat/CombatManager.cpp
src/server/zone/managers/combat/CombatManager.h
- Damage applied only to Health.
- Weapon HAM cost changes.
- Having Health wounds increases damage recieved
- LoH Action encumberance design
- Armor hit location changes

src/server/zone/objects/creature/ai/AiAgent.idl
- Hard limit NPC/Creature max HAM.
- Hard limit NPC/Creature armor resist values.

src/server/zone/objects/creature/commands/HealDamageCommand.h
src/server/zone/objects/creature/commands/HeaPetCommand.h
src/server/zone/objects/creature/commands/HealStateCommand.h
src/server/zone/objects/creature/commands/HealEnhanceCommand.h
src/server/zone/objects/creature/commands/HealWoundCommand.h
- Changed cost and limited Action healing effectiveness
- Handy cooldown count down feature
- LoH Health and Mind encumberance design
- Medicine Bag functionality

src/server/zone/objects/creature/commands/QuickHealCommand.h
- Refined its purpose

src/server/zone/managers/player/PlayerManagerImplementation.cpp
- Don't incap/kill the player when they run out of Action or Mind
- Wounds and battle fatigue on all deaths
- Changes to applying armor encumberance

src/server/zone/objects/player/sui/callbacks/InsuranceMenuSuiCallback.h
- Increased insurance cost

src/server/zone/objects/creature/commands/RequestSetStatMigrationDataCommand.h
- Can no longer migrate stats in combat
- Can no longer migrate stats while buffed

src/server/zone/objects/creature/commands/hondoCommand.h
- Add information about encumberances
- Fixed mission "to lower case" conversion for some commands

bin/scripts/object/tangible/medicine/crafted/crafted_stimpack_sm_s1_a.lua
bin/scripts/object/tangible/medicine/crafted/crafted_stimpack_sm_s1_b.lua
bin/scripts/object/tangible/medicine/crafted/crafted_stimpack_sm_s1_c.lua
bin/scripts/object/tangible/medicine/crafted/crafted_stimpack_sm_s1_d.lua
bin/scripts/object/tangible/medicine/crafted/crafted_stimpack_sm_s1_e.lua
- Buffed A, brought min up on BCDE

bin/scripts/object/tangible/medicine/crafted/medpack_enhance_constitution_a.lua
bin/scripts/object/tangible/medicine/crafted/medpack_enhance_constitution_b.lua
bin/scripts/object/tangible/medicine/crafted/medpack_enhance_constitution_c.lua
bin/scripts/object/tangible/medicine/crafted/medpack_enhance_constitution_d.lua
bin/scripts/object/tangible/medicine/crafted/medpack_enhance_stamina_a.lua
bin/scripts/object/tangible/medicine/crafted/medpack_enhance_stamina_b.lua
bin/scripts/object/tangible/medicine/crafted/medpack_enhance_stamina_c.lua
bin/scripts/object/tangible/medicine/crafted/medpack_enhance_stamina_d.lua
- Nerfed (decreased effectiveness) min and max

bin/scripts/object/tangible/medicine/crafted/medpack_enhance_health_a.lua
bin/scripts/object/tangible/medicine/crafted/medpack_enhance_health_b.lua
bin/scripts/object/tangible/medicine/crafted/medpack_enhance_health_c.lua
bin/scripts/object/tangible/medicine/crafted/medpack_enhance_health_d.lua
- Buffed min and max values

bin/scripts/managers/loot_manager.lua
bin/scripts/managers/skill_mod_manager.lua
- Disabled the mod for how many pets a player can have out at once, because I just discovered that's what the skill "keep_creature" means.

bin/scripts/managers/player_creation_manager.lua
- Medicine Bag as a starter item

bin/scripts/screenplays/hondo/buff_terminals.lua
- Buff value adjustments
- Added another terminal

tre_required/datatables/skill/skills.iff
- Professions and Skill Point changes

tre_required/datatables/creation/attribute_limits.iff
- Adjusted min/max values for LoH combat model
- Applied species min/max limits

tre_required/datatables/creation/racial_mods.iff
- Each species has 500 points of mods uniquely distributed over the attributes, however I applied the limits to the min and max possible values in the attribute_limits.iff, so that they are always treated as hard limits
- Zero'd out all values in this table

tre_required/datatables/creation/profession_mods.iff
- Normalized all profression stat changes, because they can reset at any time anyway.
