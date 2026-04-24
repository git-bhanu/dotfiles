# Dotfiles: A Developer's Paradise

*Because life's too short for default configurations*

Welcome to my meticulously crafted development environment. These aren't just dotfiles—they're a love letter to productivity, aesthetics, and the fine art of not having to configure the same things twice.

## What's Inside This Digital Masterpiece

### **Ghostty** - Terminal That Actually Matters

- Modern GPU-accelerated terminal that makes your old terminal jealous
- Maple Mono NF at size 16 with Nerd Font glyphs
- Adventure theme for that perfect aesthetic

### **Neovim + LazyVim** - Editor of Champions

- LazyVim distribution because why reinvent the wheel when you can turbo-charge it
- Catppuccin Mocha as the default colorscheme
- Smear cursor with animations because smooth is life
- Undotree plugin for when you need to time-travel through your mistakes
- Language support for TypeScript, Vue, Docker, Helm, JSON, Markdown, CSS, and HTML
- Tailwind-aware color previews and Emmet/CSS/HTML LSP setup

### **Zsh + Powerlevel10k** - Shell Game Strong

- Instant prompt because waiting is for mortals
- NVM and pnpm integration for the Node.js lifestyle
- Better defaults for history, completion, navigation, and aliases
- AWS Bedrock integration with Claude Code because AI is the future

### **Atuin** - Shell History That Remembers Everything

- Searchable, syncable shell history
- Because `ctrl+r` was invented in the stone age
- Enter to accept because efficiency matters

### **AWS + Claude Code Integration**

- Bedrock-backed Claude Code environment variables are pre-set in `zsh/.zshrc`
- 4096 max output tokens and 1024 thinking tokens because go big or go home

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
brew install neovim stow atuin ghostty zoxide

# Install a Nerd Font compatible Maple Mono build, or change the Ghostty font in the config.
# Example Homebrew cask name on many setups:
# brew install --cask font-maple-mono-nf

# Node.js ecosystem (because who doesn't need 47 package managers)
brew install nvm pnpm
```

### Fresh Clone Notes

- `zsh/.p10k.zsh` is included in this repo and expects `zsh/powerlevel10k` to exist beside it.
- This repository currently tracks `zsh/powerlevel10k` as a gitlink, so make sure that directory is present after cloning. If it is missing, clone `https://github.com/romkatv/powerlevel10k.git` into `zsh/powerlevel10k`.
- Ghostty shaders are optional. The sample shader line in `ghostty/.config/ghostty/config` is commented out and expects `ghostty/.config/ghostty/shaders/ghostty-shaders` only if you want that extra effect.

## The Philosophy

1. **Speed** - Everything loads instantly or it doesn't belong here
2. **Beauty** - If it doesn't look good, it doesn't feel good
3. **Power** - Why use 10% of a tool when you can use 110%?

## Customization Notes

- Powerlevel10k config lives in `zsh/.p10k.zsh` and is sourced relative to the stowed file
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
