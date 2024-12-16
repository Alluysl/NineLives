# ![](images/pack_026p.png) Nine Lives datapack v0.1

A datapack for protecting tamed cats from harm in toggleable ways,
with some abstractions from the entity type
to more easily extend it to others in the future

Tested on version 1.20.1 with the BCG modpack (shouldn't be required)

## Available options

Potion effects
- Regeneration I
- Water Breathing
- Fire Resistance
- Resistance I
- Highest possible level of resistance

Planned
- Armor (set parameterable from an armor stand)

Considered
- Totems of Undying (count parameterable within reasonable bounds)
- Ability (and requirement) to physically give the totems or armor

## Player "commands"

All accessed through clicks on specific chat messages
or manually with `/trigger`
- Get a report of the current protection policies 
(and toggle [warnings](#for-players) for when they change)
- Check how many [incomplete runs](#technical) – if any – the pack detected

Considered features
- Built-in voting system (easy to abuse if too simple, sadly)

## Admin commands

Feature | Command (`function ninelives:`) | Requires command knowledge
-|-|:-:
Count entities\* | `count_entities_of_interest` | ❎ No
Reset incomplete run detection | `reset_could_not_run_fully_warning` | ❎ No

Other functions are simply an easier access to player "commands"

\* for now, cats, with a second count for tamed ones

## Safeguards

### For players

Warnings when the protection policies change
- Still works if they were changed while they were away
- Can be turned off (or back on) at their choosing

### Technical

- Should – at the very worst – turn off if scoreboards are messed with
- Should recover from any damage on reload if not automatically
- Detects incomplete runs if the remaining command count budget is very limited
