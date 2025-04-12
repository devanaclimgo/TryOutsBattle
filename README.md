# RPG Fight Simulator - README
![Ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white) 

*A simple turn-based battle simulator between two warriors, written in Ruby!*

## 📌 Overview
This Ruby program simulates a battle between two warriors (`Thor` and `Dracula` by default). Each warrior has:
- **Life points (HP)**
- **Random attack damage**
- **Randomized attack order (who strikes first each round)**
The fight continues until one warrior's HP drops to 0 or below.

## ⚙️ How It Works
### 1. Warrior Class
Each warrior (`Warrior` class) has:
- **name** (e.g., "Thor")
- **height** (e.g., 1.98)
- **age** (e.g., 1500)
- **life** (default: 100 HP)

### 2. Battle Mechanics
- **Attack Damage**: Each attack removes `0..30` HP (randomized).
- **Random Attack Order:**
```bash
if rand(2) == 0  # 50% chance for warrior1 to attack first
  warrior1.battle
  warrior2.battle
else
  warrior2.battle
  warrior1.battle
end
```
*(This ensures fairness—neither warrior always attacks first.)*
- **Winning Condition:** The battle ends when one warrior’s `life <= 0`.

### 3. Example Output
```bash
Thor has 45 points of life  
Dracula has 0 points of life  
Thor won!
```
*(Results vary due to randomness.)*

## 🚀 How to Run
1. **Install Ruby** (if not installed):
   - [Ruby Installation Guide](https://www.ruby-lang.org/en/documentation/installation/)
2. **Save the code** in a file (e.g., `rpg_fight.rb`).
3. **Run it:**
```bash
ruby rpg_fight.rb
```

### 🔧 Possible Improvements
- **Add special attacks** (critical hits, healing).
- **Multiple warriors** (team battles).
- **User input** (custom names, HP adjustments).


##### Enjoy the battle! ⚔️
###### Made with ❤️ by Ana Gomes - 2025
