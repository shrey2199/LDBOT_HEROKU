cd /usr/src/app

git clone https://github.com/shrey2199/LD_Meta_bot.git
cp -r LD_Meta_bot/helpers/ .
cp -r LD_Meta_bot/bot.py .
cp -r LD_Meta_bot/config.py .
cp -r LD_Meta_bot/requirements.txt ./botreq.txt
pip3 install -r botreq.txt
python3 bot.py
