## Purpose

Mostly to give me a reason to care at all about other foods beyond chicken, beef, and golden vegetables. However, its implemented in a way that improves the game in multiple ways imo:

- Gameplay reason to try new foods
- Gameplay reason to avoid unnecessary damage
- Harder survival (without being too restrictive or annoying)

In my playthroughs, I find this challenge to not outright change the way I approach the game. But it does get me to play less recklessly and pause to consider the risks while adventuring. If I'm careless, I might have to turn back to go to a safe location sooner than I would in vanilla, but I still feel like I'm not discouraged by the challenge from going on all the explorations I normally would in vanilla.

By mid-game, I typically have most of the red hearts available, which feels very comfortable and close to the vanilla experience, but still with some incentive to go out of my way to obtain new foods and not take unnecessary damage.

This is about what I wanted. Some extra incentive and challenge, but nothing brutal or tedious that would take over the game or demand attention all the time.

## Details

A new advancement tab will be unlocked that shows which foods you have and haven't eaten for the "A Balanced Diet" advancement (full overview in Gallery).

<center><img src=https://imgur.com/JRuNu2i.png width="500"></center>

<br/>

<br/>

The datapack as two modes:
- **Challenge mode:** Challenge with gameplay progression as you complete "A Balanced Diet" advancement
- **Tracker mode:** Vanilla gameplay with only the tracker of foods eaten for "A Balanced Diet" advancement

The two modes can be freely switched between during gameplay using the following commands:

```
/function balanced_diet:mode/tracker
```
```
/function balanced_diet:mode/challenge
```

All progress towards the advancement will continue regardless of which mode you're in. Each player is tracked individually and doesn't have to be in the same mode as other players.


## Challenge Mode

(enabled by default)

### Progression

You start the game with a total of 10 hearts, as normal. However, only 1 heart is a normal red heart, the other 9 are yellow absorption hearts:

<center><img src="https://imgur.com/WS1NiZ3.png"/></center>

<br />

<br />

For each 4 unique foods you eat, you will permanently gain 1 red heart:

<center><img src="https://imgur.com/CLoqlek.png"/></center>

### Absorption Regeneration

Adsorption hearts are regenerated everyday at dawn to fill all 10 heart slots, regardless of whether or not the player sleeps. Extra absorption hearts are never removed though, so permanent overhealth is possible if you eat many unique foods without taking damage.

Absorption hearts are also regenerated when you respawn after dying.

### Completion Details

Due to rounding, the final 2 hearts require 6 foods, not 4.

<p>
<details>
<summary>Table of food needed for red hearts</summary>
<center>

| Unique Food      |  Red Hearts|
| :-----------: | :-----------: |
| 0  |  1  |
| 4  | 2   |
| 8  | 3   |
| 12  | 4   |
| 16  | 5   |
| 20  | 6   |
| 24  | 7   |
| 28  | 8   |
| 34  | 9   |
| 40  | 10   |

</center>
</details>
</p>

## Perfomance

No detectable performance impact. All of the tracking happens via advancements, the same way its tracked in the vanilla game. Only a few simple functions are ran on ticks.

## Limitations

- If added to a pre-existing world, the datapack will not recognize any foods you've eaten before you added it.

- Absorption can only be given in 2 heart increments. When only 1 heart is needed, 1 heart of damage will automatically be dealt to balance it. Checks are in place to ensure the damage is not dealt when it is not necessary.

- The player will continuously be under the absorption effect. While particles are disabled on it, you can still see the effect active while in the inventory.

## Uninstall

To uninstall and remove all traces of the datapack, run the following command:

```
/function balanced_diet:uninstall
```
