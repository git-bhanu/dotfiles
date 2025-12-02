# Dotfiles: A Developer's Paradise

*Because life's too short for default configurations*

Welcome to my meticulously crafted development environment. These aren't just dotfiles—they're a love letter to productivity, aesthetics, and the fine art of not having to configure the same things twice.

## What's Inside This Digital Masterpiece

### **Ghostty** - Terminal That Actually Matters

- Modern GPU-accelerated terminal that makes your old terminal jealous
- Menlo font at size 15 because we have standards
- Adventure theme for that perfect aesthetic

### **Neovim + LazyVim** - Editor of Champions

- LazyVim distribution because why reinvent the wheel when you can turbo-charge it
- Rose Pine colorscheme for those cozy coding vibes
- Smear cursor with animations because smooth is life
- Undotree plugin for when you need to time-travel through your mistakes
- Language support for TypeScript, Vue, Docker, Helm, JSON, and Markdown

### **Zsh + Powerlevel10k** - Shell Game Strong

- Instant prompt because waiting is for mortals
- NVM and pnpm integration for the Node.js lifestyle
- Custom SonicWall host aliases because corporate life has its perks
- AWS Bedrock integration with Claude Code because AI is the future

### **Atuin** - Shell History That Remembers Everything

- Searchable, syncable shell history
- Because `ctrl+r` was invented in the stone age
- Enter to accept because efficiency matters

### **AWS + Claude Code Integration**

- Pre-configured for ai-sandbox environment
- Custom model ARNs for maximum AI assistance
- 4096 max output tokens because go big or go home

## Installation (The Stow Way)

Because you're obviously using GNU Stow like a civilized person:

```bash
# Clone this masterpiece
git clone <your-repo-url> ~/dotfiles
cd ~/dotfiles

# Deploy individual configurations (pick and choose your weapons)
stow zsh      # Shell configuration
stow nvim     # Neovim setup
stow ghostty  # Terminal config
stow atuin    # Shell history magic

# Or go nuclear and deploy everything
stow */
```

### Prerequisites for the Full Experience

```bash
# Install the essentials
brew install neovim stow atuin ghostty
brew install --cask font-menlo-for-powerline  # or your preferred Menlo variant

# Get that Powerlevel10k goodness
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Node.js ecosystem (because who doesn't need 47 package managers)
brew install nvm pnpm
```

## The Philosophy

1. **Speed** - Everything loads instantly or it doesn't belong here
2. **Beauty** - If it doesn't look good, it doesn't feel good
3. **Power** - Why use 10% of a tool when you can use 110%?

## Customization Notes

- Powerlevel10k config lives in `~/.p10k.zsh` (run `p10k configure` to remake it)
- Ghostty shaders are there when you're feeling fancy - just uncomment `custom-shader` in the config
- Atuin syncs across machines if you're into that distributed lifestyle
- LazyVim updates itself because it respects your time

## Fair Warning

Using this setup may cause:

- Increased productivity
- Uncontrollable urges to show off your terminal to coworkers
- Difficulty using other people's "basic" development environments
- An inexplicable sense of superiority when pair programming

---
**Pro tip**: These dotfiles are like a fine wine - they get better with age and the occasional commit.

