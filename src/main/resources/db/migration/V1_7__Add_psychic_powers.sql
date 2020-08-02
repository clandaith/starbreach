insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Order'), 'Mend', 9, 'If this psychic ability is cast successfully, select one friendly soldier within 12” and line-ofsight of the psychic (including the psychic as well) to regain up to 4 health value, up to their initial maximum health value.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Order'),  'Push', 10, 'If this psychic ability is cast successfully, select any other soldier within 18” and line-of-sight of the psychic and move them up to 8” in any direction, even if the direction places the soldier out of line-of-sight. This movement is free, but it cannot be used to place soldiers into close combat. Also, this movement cannot be directly up into the air.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Order'),  'Dismantle', 11, 'If this psychic ability is cast successfully, select any enemy soldier within 18” and line-ofsight of the psychic and immediately destroy their primary weapon and any grenades they may have. The soldier may no longer execute ranged attacks or fight in close combat with their primary weapon or grenades for the remainder of the battle.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Order'),  'Heal', 12, 'If this psychic ability is cast successfully, select one friendly soldier within 18” and line-ofsight of the psychic (including the psychic as well) to regain full health value.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Order'),  'Halt', 13, 'If this psychic ability is cast successfully, select any enemy soldier within 18” and line-ofsight of the psychic and set their movement value to 1 and initiative value to 2 for the remainder of this turn and the next.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Order'),  'Disremember', 14, 'If this psychic ability is cast successfully, select any one enemy soldier within line-of-sight who possesses an Alpha skill or psychic ability. The enemy soldier may no longer utilize one skill or psychic ability, of the casting player’s choice, for the remainder of the battle. This ability may only be cast on the same enemy soldier once per battle.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Order'),  'Thrive', 15, 'If this psychic ability is cast successfully, all friendly soldiers within 12” of the psychic (including the psychic as well) regain 4 health value, up to their initial maximum health value.');



insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Disorder'),  'Decay', 9, 'If this psychic ability is cast successfully, select any enemy soldier within 18” and line-ofsight of the psychic and automatically subtract 3 health value from the soldier, regardless of the soldier’s armor value.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Disorder'),  'Wither', 10, 'If this psychic ability is cast successfully, select an area 4” in diameter—like a Cover Fire Order—any where within 18” and line-of-sight of the psychic and automatically subtract 3 health value from every soldier standing within the target area, regardless of the soldier’s armor value.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Disorder'),  'Scar', 11, 'If this psychic ability is cast successfully, select any friendly soldier within line-of-sight (including the psychic as well) and apply to them +2 armor value and -1 movement value for the remainder of the battle. This psychic ability cannot be cast more than once on the same soldier.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Disorder'),  'Choke', 12, 'If this psychic ability is cast successfully, select any enemy soldier within line-of-sight and 18” of the psychic and set their movement value and initiative value to the value of 2 for the remainder of the this turn and the next. At the end of both turns, the targeted soldier subtracts 2 health value, regardless of the soldier’s armor value. This ability may only be successfully cast once on one enemy soldier at a time.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Disorder'),  'Blast', 13, 'If this psychic ability is cast successfully, all soldiers within 6” of the psychic are moved directly away from the psychic, in a straight line and up to 6” or until they collide with a piece of terrain. If a soldier collides with a piece of terrain, even partially, they immediately and automatically subtract 5 health value, regardless of the soldier’s armor value.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Disorder'),  'Leech', 14, 'If this psychic ability is cast successfully, select any enemy soldier within 24” and line-ofsight and automatically subtract 4 health value the soldier, regardless of the soldiers’ armor value. Simultaneously, select any friendly soldier within line-of-sight to regain 4 health value, up to their initial maximum. This friendly soldier may also be the psychic himself.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Disorder'),  'Possess', 15, 'If this psychic ability is cast successfully, select any enemy soldier within 24” and line-ofsight, draw an order die for the soldier (from the opposing player’s order dice) and assign them any order of the psychic player’s choice. This order may include executing a ranged attack towards a friendly soldier or assaulting a friendly soldier.');




insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Time'),  'Stride', 9, 'If this psychic ability is cast successfully, select any friendly soldier within 12” and line-ofsight of the psychic (includ-ing the psychic as well). This soldier immediately executes a free Run Order up to 8”, drawing no order die to execute the free action, as well as taking the free action even if an order was previously executed. If the soldier selects to Assault as part of the Run, the targeted enemy may not respond with a Fire Order. However, a soldier in Ambush may still select to spring the Ambush Action against the moving soldier.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Time'),  'Crumble', 10, 'If this psychic ability is cast successfully, select any flat surface of full cover on the battlefield (such as a wall, ceiling or floor) that is within line-of-sight of the psychic. On this surface, specify a circular area 4” in diameter—like a Cover Fire Order. This target area instantly crumbles in a wrinkle of time and no longer exists for the remainder of the game, giving soldiers full line-of-sight and freedom to pass through (or even immediately fall through) the area.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Time'),  'Swap', 11, 'If this psychic ability is cast successfully, select any two soldiers within line-of-sight of the psychic, one of them possi-bly being the psychic as well. Immediately swap the battlefield positions of these two soldiers.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Time'),  'Teleport', 12, 'If this psychic ability is cast successfully, select any friendly soldier within line-of-sight of the psychic who is currently Down, including the psychic as well. This soldier immediately and instantly teleports to any new location on the battle-field of the player’s choice.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Time'),  'Rearm', 13, 'If this psychic ability is cast successfully, select any friendly soldier within line-of-sight of the psychic (including the psychic as well) and give them a new weapon of the player’s choice for both the soldier’s primary and secondary weapon choice. Select any weapons listed in the Warbands Anthology. This ability may only be cast once per friendly soldier');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Time'),  'Retry', 14, 'If this psychic ability is cast successfully, the controlling player commands both players to replay the entire sequence of the last executed order or special action. The assigned order or action still stands, but the sequence of resulting events is replayed. Move soldiers back to their previous locations as necessary, regain lost wounds as necessary, re-roll D6 rolls as necessary: everything as if the first sequence of events never happened. This ability may only be cast on an order or special action if 1) all the soldiers of the event are still alive and 2) if the action was not already previ-ously “retried” once before.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Time'),  'Recall', 15, 'If this psychic ability is cast successfully, the controlling player selects one soldier—but not a “mech” from their warband who has been previously eliminated from the battle. Roll a D6. On the result of a 1 or 2, nothing happens. On the result of a 3-6, the soldier warps back to the present from the past and is redeployed anywhere within the player’s deployment zone with full health. (For the sake of VP, the opposing player still gains full points for killing the soldier the first time and could potentially gain further victory points for eliminating the soldier again).');




insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Bio-Instinct'),  'Burrow', 9, 'If this psychic ability is cast successfully, select one friendly soldier within 12” of the psychic, a soldier who has al-ready executed an order, and cause them to “burrow” into the ground. The soldier model is removed and replaced with a “burrow” token, which cannot be interacted with whatsoever. During the following turn, when the player wish-es to assign an order to the “burrowed” soldier, they place the soldier model back onto the battlefield anywhere within 6” of the token and then remove the token. The player then assigns the soldier any order they wish, per usual game play.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Bio-Instinct'),  'Hunt', 10, 'If this psychic ability is cast successfully, select one enemy soldier within 18” and line-of-sight of the psychic and place a token next to the model. For the remainder of the game, when a soldier from the psychic’s warband executes a ranged attack against this soldier, the enemy soldier never gains any initiative modifiers of any kind for dodge rolls. This ability may only be cast on the same enemy soldier once per battle.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Bio-Instinct'),  'Adapt', 11, 'If this psychic ability is cast successfully, select one friendly soldier within line-of-sight of the psychic (including the psychic as well) and select one ranged weapon carried by any enemy soldier which has already caused wounds to one or more friendly soldiers. The friendly soldier selected is immediately immune to attacks from this weapon type until the end of the battle and cannot be hit by ranged attacks from this weapon type whatsoever. This psychic ability may only be successfully cast once per battle.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Bio-Instinct'),  'Evolve', 12, 'If this psychic ability is cast successfully, select one friendly soldier within line-of-sight of the psychic (including the psychic as well). This soldier immediately gains +1 movement, +1 initiative and +1 armor values until the end of the battle. This psychic ability may only be successfully cast on the same friendly soldier once per battle.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Bio-Instinct'),  'Roar', 13, 'If this psychic ability is cast successfully, the psychic unleashes a sub-sonic roar that acts like an EMP burst from the psychic’s position. All enemy soldiers within 12” of the psychic model lose 2 movement value and cannot fire ranged attacks for the remainder of the turn.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Bio-Instinct'),  'Screech', 14, 'If this psychic ability is cast successfully, all enemy soldiers within 12” of the psychic must immediately subtract 3 from their health value, regardless of their armor values.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'School of Bio-Instinct'),  'Frenzy', 15, 'If this psychic ability is cast successfully, all friendly soldiers—regardless of their positions on the battlefield—immediately gain +2 movement value and +1 initiative value until the end of the turn.');



insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'Plasmids'),  'Hack', 9, 'If this psychic ability is cast successfully, select one enemy mech within 24” of the psychic model (no line-of-sight needed) and force it to immediately execute a free ranged attack with one of its weapons towards any one of its friendly soldiers within its line-of-sight. If the mech does not have ranged weapons, then simply subtract 3 health value from the mech, regardless of its armor value.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'Plasmids'),  'Bullseye', 10, 'If this psychic ability is cast successfully, select one enemy soldier within 24” and line-of-sight of the psychic and place a token next to this model. Until the end of the turn, when a soldier from the psychic’s warband executes a ranged attack against the specially marked enemy soldier, they do not add any initiative modifiers of any kind to their dodge rolls.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'Plasmids'),  'Freeze', 11, 'If this psychic ability is cast successfully, select any enemy soldier within line-of-sight and 18” of the psychic and set their movement and initiative values to 1 for the remainder of the turn.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'Plasmids'),  'Enrage', 12, 'If this psychic ability is cast successfully, select any friendly mech within line-of-sight of the psychic and add +2 movement value and +2 initiative value to the mech for the remainder of the turn.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'Plasmids'),  'Incinerate', 13, 'If this psychic ability is cast successfully, select an area 4” in diameter—like a Cover Fire Order—anywhere within 18” of the psychic and automatically subtract 3 health value from all soldiers who stand within the target area, regardless of the soldiers’ armor values.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'Plasmids'),  'Collide', 14, 'If this psychic ability is cast successfully, select a single point anywhere on the battlefield grounds within 24” and line-of-sight of the psychic. This point becomes a gravity well, violently pulling all soldiers within 4” of the point towards the center of the point and thus colliding with one another. All soldiers pulled together by the gravity well instantly move into a clump surrounding the point and each immediately loses 3 health value, regardless of their armor value. If a friendly soldier is caught in the well, they are pulled to the clump of soldiers and takes wounds just as well, but when repositioned, they are placed 1” away from all enemy models (and thus not entering close combat). Falling dam-age may also apply.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'Plasmids'),  'Electro-Bolt', 15, 'If this psychic ability is cast successfully, the psychic sends a bolt of electricity through the nearest enemy soldier within 24” and line-of-sight. The soldier instantly loses 5 health value, regardless of their armor value. The bolt then jumps to the nearest soldier within line-of-sight and 6” of the original target (friend or foe, but never to the psychic as well) and this new soldier now instantly loses 4 health value. Then the bolt moves on to the next nearest solider with-in line-of-sight and 6” and this soldier instantly lose 3 health value, and thus the bolt moves on in this manner until a fifth soldier is hit and loses 1 health value or the bolt as no more viable targets. No soldier may be electrocuted by the same bolt more than once.');


insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'Psychic Block'),  'Psychic Block', 0, 'The psychic attempts to block the enemy psychic’s ability by meeting the ability’s base power level. The controlling player rolls 2D6 and adds their psychic’s current initiative value. If the total meets or exceeds the ability’s base power level, then the ability has been successfully blocked and nothing happens. If the total is less than the power level, the block has failed, the ability is enacted, and the psychic who attempted the block loses 1 health value.');
insert into psychic_powers (psychic_school_id, name, level, text) values ((select id from  psychic_schools where psychic_name = 'Psychic Counter'),  'Psychic Counter', 0, 'The psychic attempts to not only block the opposing psychic’s ability but also harm the opposing psychic with telekinetic feedback by matching the opposing psychic’s power level roll. The controlling player rolls 2D6 and adds their psychic’s current initiative value. If the total meets or exceeds the roll which the opposing psychic used to cast their ability, then the ability has been successfully blocked and the opposing psychic immediately loses 4 health value, to a minimum of 1 health remaining. If the total fails to match the opposing psychic’s roll, then the counter fails, the ability enacted, and the psychic who attempted the counter loses 4 health value, to a minimum of 1 health remaining.');