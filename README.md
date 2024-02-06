# Initial Unix Configuration for Python Development

## Initial system update for Python Development

```bash
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update && sudo apt upgrade -y
sudo apt install python3.9
sudo  apt-get install python3.9-dev python3.9-venv
```

## Install and Run PostgreSQL

```bash
sudo apt install postgresql postgresql-contrib
sudo systemctl start postgresql.service
```

- Check which postgresql version is installed

```bash
ls -lsa /etc/postgresql/
```

- Open postgres pg_hba.conf with correct version.
- Find the line which says:`local all all peer`
and edit to: `local all all md5`

```bash
sudo nano /etc/postgresql/12/main/pg_hba.conf
```

- Restart the PostgreSQL service

```bash
sudo service postgresql restart
```

- Check the status of the PostgreSQL service

```bash
sudo service postgresql status
```

- Check `postgres` user

```bash
sudo su postgres
```

## Install the Zsh shell and Oh My Zsh

```bash
sudo apt install zsh
sudo chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Install ligatures fonts

- Run the `fonts_install.sh` script to copy ligatures fonts to your home directory

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/nyckolas-python/unix-config/main/fonts_install.sh)"
```

## Clone the Powerlevel10k Zsh theme

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

## Install Zsh plugins

```bash
sudo apt install zsh-autosuggestions zsh-syntax-highlighting
```

- autosuggestions plugin

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

- syntax highlighting plugin

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

- fast syntax highlighting plugin

```bash
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
```

- Open the `.zshrc` file for editing

```bash
nano ~/.zshrc
```

- Find the line which says `plugins=(git)`.
- Replace that line with

```bash
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting)`
```

- Reload Zsh shell

```bash
exec zsh
```

- Configure Powerlevel10k theme

```bash
p10k configure
```

## Copy existing .ssh configurations from your old system or create new ones

```bash
lsa .ssh
```

- Generate SSH key-pair using the ed25519 algorithm.

```bash
ssh-keygen -t ed25519 -C "nyckolas.python@gmail.com"
```

- Start the SSH agent.

```bash
eval "$(ssh-agent -s)"
```

- Add the private SSH key to the SSH agent.

```bash
ssh-add ~/.ssh/id_ed25519
```
