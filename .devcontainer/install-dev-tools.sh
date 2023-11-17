pypi_source="https://pypi.tuna.tsinghua.edu.cn/simple/"
apt update
apt upgrade -y
apt install wget curl git -y
python3 -m pip install --upgrade pip -i ${pypi_source}
pip3 install -r .devcontainer/requirements.txt -i ${pypi_source}
pip3 cache purge
apt autoremove -y
apt clean