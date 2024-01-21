if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Susil25102007/Susil.git /Susil
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Susil
fi
cd /Susil
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
