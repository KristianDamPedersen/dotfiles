# nix-darwin
Nix configuation for Mac (ARM)

## Usage
Make sure you have nix installed as per the instructions on their website, as well as home-manager. Then simply run:
```bash
nix run nix-darwin -- switch --flake ~/.config/nix-darwin
```
(assuming that this repoitory resides in the .config folder).

From here everything should be installed and any future additions can executed by running:
```bash
darwin-rebuild switch --flake ~/.config/nix-darwin#macbook
```

