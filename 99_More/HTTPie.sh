sudo pacman -S python python-pip
mkdir ~/HTTPie
cd ~/HTTPie
python -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install httpie
http --version
deactivate
