insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Continuum Syndicate'), 'Synthetic Wrinkle in Time', 'All Continuum Syndicate soldiers and specialists sustain their base movement and initiative values as long as the warband’s alpha is alive. If the warband’s alpha is eliminated, however, then all soldiers and specialists immediately lose -2 movement and -2 initiative to their base values for the rest of the battle.');
insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Continuum Syndicate'), 'Second Chance', 'When a Chronomancer, Looper or Clairvoyant reaches a health value of 0 for the first time, before being eliminated from play, the Continuum Syndicate player rolls a D6. On a roll of 3 or less, the soldier/specialist dies and is eliminated. On a roll of 4+, the soldier is not eliminated, but rather warps back to the present battle from the past. The soldier model is moved up to 12” on the board from their current location and their health value is reset to 4. This soldier must execute a Down Order immediately, without the ability to use an item, and, if they have not already done so, they cannot take a special action this turn.');

insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Corrupted L’Orani'), 'Ancient Decay', 'The first time, and only the first time, a Corrupted L’Orani soldier or specialist loses health down to a value of 3 or less, they instantly regain 3 health. This does not apply if the soldier or specialist reaches a health value of 0, in which case, they are killed and eliminated from play.');
insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Corrupted L’Orani'), 'Shadow Step', 'When declared as a target for ranged attacks, a Corrupted L’Orani soldier or specialist may immediately make a special move of 2” in any direction of the player’s choice, as long as the move does not cause close combat. This may include any movement that would render the ranged attack impossibly out of line-of-sight, in which case, the opposing player may choose a new target for their attack or new order altogether.');

insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Coven Empire'), 'EMP Barrage', 'At the beginning of a battle, before the first order die is drawn, the player rolls a D6 for every enemy soldier and specialist on the table. On a roll of 1-3, nothing happens. On a 4-6, the enemy soldier cannot execute any ranged attacks of any kind during the first full turn.');
insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Coven Empire'), 'Death Before Dishonor', 'Coven soldiers and specialists never apply the -2 initiative modifier for losing a round of close combat. Also, if a Coven soldier or specialist kills an enemy in close combat, the victorious soldier will gain +1 to their base initiative value for the rest of the game (once per soldier).');

insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Hive Cult'), 'Gene Splicing', 'The Hive Cult player may decrease the base health value of any of their soldiers (not specialists) in order to equally increase the soldier’s movement or initiative value at a 1:1 ratio. For example: -1 health base value to add a +1 to the soldier’s movement value. The maximum movement and initiative values for each soldier are listed in parenthesis next to the base value.');
insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Hive Cult'), 'Unification', 'When any Hive Cult soldier or specialist wins close-combat and eliminates the enemy soldier, the Hive Cult soldier regains all of its health value back to full.');

insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Hunters'), 'Hunting Party', 'Hunters are a unique warband in that they do not have any typical soldiers or specialists within their warband list. That is because every hunter is considered an Alpha in their own respect. These Alphas, however, are acquired at a cost to the player and are not FREE to take. Because of this, when a Hunter Alpha is eliminated from battle, they are worth 55vps to the opposing player like any Alpha. When a player assembles a Hunters’ warband, they may add as many Alphas to the list as the battle’s total UC limit allows. Also, they may take multiples of any Alpha type.');
insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Hunters'), 'Prize Fighters', 'For every single Hunter Alpha in a warband roster, the player must bring three order dice to a battle. (For example: if a player has three Hunter Alphas in their roster, they should have nine order dice in total in the dice bag at the start of a game.) Throughout the Order Dice Phase of every turn, a single Hunter Alpha will be assigned and execute three orders. When an order die is drawn for the Hunter Warband, the player may assign an order to any one of their Alphas up to three times, in any sequence of their choice (such as giving one Alpha three orders in a row, or skipping around to different Alphas and assigning them each their three orders in no particular arrangement). A Hunters Alpha may be assigned any order in any sequence, however, out of the three order dice available, each Alpha may only execute one order type per turn (such as a Run Order, Mend Order, and Cover Fire Order, but never two alike orders such as a Run Order and two Mend Orders). When a Hunter Alpha dies and is eliminated from play, be sure that their three corresponding order dice are also removed from play, whether they be on the table or still in the dice bag. During the Special Actions Phase, Hunter Alphas may always take one special action, regardless of the orders previously executed in the Order Dice Phase.');

insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Intergalactic Marshals'), 'I am the Law', 'Once per turn, when a single order die is blindly drawn, the Intergalactic Marshal player may choose to have the die mixed back into the bag and the order die draw happen again.');
insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Intergalactic Marshals'), 'Infamous Reputation', 'All enemy soldiers and specialists who are within 18” and line-of-sight of an Intergalactic Marshals’ Alpha (at any given moment within the battle) must apply a -2 initiative modifier when making attack rolls and close combat rolls against any member of the Alpha’s warband.');

insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'L’Orani Empire'), 'Ancient Spring', 'When executing a Mend Order, all L’Orani soldiers and specialists automatically regain up to +4 health, with no need to roll a D6.');
insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'L’Orani Empire'), 'Starfire Dance', 'When executing an Assault Order or Special Action, all L’Orani soldiers and specialists ignore the “difficult terrain” and “higher ground” rules. Further, the assaulting soldier cannot be targeted by a sprung Ambush order and an enemy soldier or specialist executing a Fire response order to the assault must apply an additional -1 initiative modifier to their attack roll.');

insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Legion of Mankind'), 'Overwatch', 'Once per turn, when a soldier or specialist is assigned and executes a Fire Order during the Order Dice phase, one additional friendly soldier within 6”—and who has not already executed an order—may also be assigned, and immediately execute, a Fire Order. This rule may also apply when executing a Fire Order in response to an Assault Order.');
insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Legion of Mankind'), 'Fire and Movement', 'Legion of Mankind soldiers and specialists do not suffer a -1 initiative modifier for moving and shooting (and for psychic abilities) due to executing an Advance Order');

insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Machine Cult'), 'Computed Precision', 'Once per round, the Machine Cult player may change any single die rolled (of their own dice rolls) to a value of their choice.');
insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Machine Cult'), 'Synthetic Blessing', 'Once per game, the Machine Cult player may reroll for a failed psychic ability attempt.');

insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Nomadic Raiders'), 'Thick as Thieves', 'While within 12” and line-of-sight of the Captain, the 1 st Mate soldier possesses, and may use, any of the Alpha Skills the Captain possesses. Also, the 1 st Mate is FREE of cost at base value (but worth 25uc to the opposing warband if eliminated from a battle).');
insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Nomadic Raiders'), 'Black Market Goods', 'When building their warband, all Nomadic Raider soldiers and specialists with a base initiative value of 4 or better may each take their weapons and relics (but not grenades) from either the “Legion of Mankind”, “Coven Empire” or “L’Orani Empire” lists, FREE of listed costs.  Also, all soldiers with an initiative value of 3 or less, may take any relics from those same lists, but they must pay the listed cost. Except for the weapons listed in the Nomadic Raiders Weaponry, no two soldiers or specialists may ever be equipped with the same weapons and/or relics.');

insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Terror Cult'), 'Worthy Sacrifice', 'All Terror Cult soldiers and specialists immediately gain +2 initiative value for the rest of the battle if the warband’s Alpha is at any point eliminated from the battle.');
insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Terror Cult'), 'Abaddon’s Favor', 'All enemy psychic abilities must add +2 to their power levels when fighting against Terror Cultists.');
insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Terror Cult'), 'Specter', 'Specialists with “Specter” in the name also benefit from the Terrors of Abaddon Warband Special Rules: “Ethereal Presence” and “Soul Leech”.');

insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Terror Legion'), 'Unnatural armor', 'When Terror Legion soldiers and specialists reach 3 health or less remaining, they gain +1 to their armor value for the remainder of the battle, even after mending back to a higher health value.');
insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Terror Legion'), 'Numb', 'All Terror Legion soldiers and specialist ignore the “walking wounded” rule and perform normally even at low health. Terror Legion Mechs are also unaffected by low health and disregard the Mech Malfunction Chart.');

insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Terrors of Abaddon'), 'Ethereal Presence', 'Instead of adding their initiative value to a dodge roll, all Terrors of Abaddon soldiers and specialists add their current movement value. However, they do not ever gain initiative modifiers for partial cover or being Down. Furthermore, when hit by a ranged attack or in close combat, the difference in dice rolls is irrelevant, and only the weapon’s damage modifier value and an additional +1 point of damage (or simply the special rule damage without a +1) is applied against the armor and health value of the Terrors of Abaddon soldier or specialist. If the weapon has no damage modifier, then only the +1 point of damage is applied.');
insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'Terrors of Abaddon'), 'Soul Leech', 'When an enemy soldier is removed as a casualty for any reason during the battle, all Terrors of Abaddon soldiers and specialist within 6” of the death instantly gain +2 health. In addition, Terrors of Abaddon soldiers and specialists ignore the “walking wounded” rule.');

insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'The Ancient Machine'), 'Plasma Shielding', 'When Ancient Machine soldiers and specialists apply damage, instead of applying the total damage count against armor first and then health, the damage total is simply halved (rounding up) and then applied against health. If the Ancient Machine Alpha dies, then this shield connection is broken and all soldiers and specialist are left with an armor value of 2. If a soldier with the “Plasma Shielding” rule has the opportunity to add an armor value (from a skill or relic), then damage against the soldier is first applied against this armor value, and then halved (rounding up) before damage are applied to their health.');
insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'The Ancient Machine'), 'Auto-Mend Protocol', 'When executing a Mend Order, any Ancient Machine soldier or specialist automatically gains +4 health, with no D6 roll necessary.');

insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'The Dark Path'), 'Shadow of the Path', 'Once per turn, at the very beginning of the turn before any order dice are drawn from the dice bag, The Dark Path player blindly draws three order dice from the dice bag and puts them aside. These dice must be the last order dice assigned at the end of the Order Dice phase, and when it is time to assign them (meaning there are no more dice in the bag to draw), the player chooses in which sequence the order dice will be played. All players must follow this sequence');
insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'The Dark Path'), 'Disturbing Lack of Faith', 'Once per game, if either a Knight of the Dark Path or Dark Acolyte can attempt to cast a Psychic Counter and the player chooses to do so, the counter automatically happens and the opposing psychic’s ability is countered, causing the ability to fail, and the opposing psychic to automatically lose 4 health value, to a minimum of 1. This special counter is limited to once per game, regardless if it is enacted by either the Knight of the Dark Path or the Dark Acolyte.');

insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'The Hive'), 'Hivemind', 'As long as The Hive’s warband Alpha is alive, Hive soldiers and specialists may use the base initiative value listed in their profiles. When The Hive Alpha is killed, however, then all soldier and specialist initiative values are instantly and permanently dropped to a base value of 1.');
insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'The Hive'), 'Scuttering Horde', 'All Hive soldiers and specialists ignore difficult terrain for movement and freefall at any height without applying damage. Similarly, they can climb up and over any vertical surface (measuring for upward movement). In addition, at the beginning of every turn, before any order dice are drawn, The Hive player may immediately and freely move any three of their soldiers and/or specialists up to 3” in any direction.');

insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'The Inquisition'), 'Psychic Resistance', 'Every soldier and specialist in an Inquisition warband has the ability to attempt a Psychic Block, even if the soldier or specialist is not marked (psychic). However, no soldier or specialist may attempt a Psychic Counter, even if the soldier or specialist is marked (psychic).');
insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'The Inquisition'), 'Divine Shielding', 'Once per Phase, when making a dodge roll—and after the opposing attack roll is made—The Inquisition player may choose to roll 3D6 instead of 2D6 and use the sum of the two highest dice towards their total dodge roll.');

insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'The Path'), 'Light of the Path', 'Once per turn, whenever it may be time to pull an order die, The Path player may choose to blindly pull three order dice from the dice bag instead of only one. After pulling the dice, the player then selects the order in which the dice will be played and both players must abide by this order. If The Path Alpha dies, then this ability is lost for the warband.');
insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'The Path'), 'The Art of War', 'At the beginning of the Special Actions Phase, The Path player may choose any 4 soldiers to take special actions, instead of only 3, and regardless of whether they are specialists, alphas, or soldiers.');
insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'The Path'), 'Peacetime/Wartime Selector', 'When building a warband for The Path, the player may choose to run either a “peacetime” list or a “wartime” list. If the player builds a peacetime list, they may only choose soldiers and specialists who are either untagged or tagged with (Peace), and the warband alpha’s base initiative value is raised to I7. If the player builds a wartime list, they may only choose soldiers and specialists who are either untagged or tagged (War), and the warband alpha’s base armor is raised to A4.');

insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'The Resistance'), 'Bleeding Hearts', 'During the first two turns of any battle, all Resistance soldiers and specialists add +1 to their movement value and +1 to their initiative value. From turn three onward, the values are dropped back down to their original, normal values.');
insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'The Resistance'), 'Weapons of Rebellion', 'All Resistance soldiers and specialist with an I4 or better may take their weapons or grenades from either the “Legion of Mankind”, “Coven Empire” or “L’Orani Empire” lists at cost. When a weapon from another warband list says “FREE” in the cost, consider it as costing 1uc for your soldier to acquire, unless the weapon is also listed as “FREE” in The Resistance weaponry below.');

insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'U’rak Warlords'), 'Armed to the Teeth', 'All U’rak Warlord soldiers and specialists with a base initiative value of 3 or higher, when executing any ranged attack, may execute one additional ranged attack immediately after resolving their initial attack. This special additional ranged attack is worked out like a normal Fire order, may be aimed at the same target or a new target, and may be executed with any weapon currently equipped.”');
insert into warband_special_rules (warband_id, rule_name, rule_text) values ((select id from warband where name = 'U’rak Warlords'), 'Brawlers', 'All U’rak Warlord soldiers and specialists fight in close combat with a +2 modifier to their base initiative value.');
