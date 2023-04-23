if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Apnamovi/HappyHour /HappyHour
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /HappyHour
fi
cd /HappyHour
pip3 install -U -r requirements.txt
echo "Starting JK DEVLOPER Bot...."
python3 bot.py
