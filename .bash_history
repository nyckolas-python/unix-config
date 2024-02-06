sudo  apt-get install python3.9-dev python3.9-venv
sudo apt install postgresql postgresql-contrib
sudo systemctl start postgresql.service
ls -lsa /etc/postgresql/
sudo nano /etc/postgresql/12/main/pg_hba.conf
sudo service postgresql restart
sudo su postgres
sudo service postgresql status
sudo apt install zsh
sudo chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
nano ~/.zshrc
