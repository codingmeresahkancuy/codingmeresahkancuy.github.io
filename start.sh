set -eu

export PYTHONUNBUFFERED=true

if [ ! -d $VIRTUALENV ]; then
  python3 -m venv $VIRTUALENV
fi

fi [ ! -f $VIRTUALENV/bin/pip ]; then
  curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | $VIRTUALENV/bin/python
fi

$VIRTUALENV/bin/pip install -r requerements.txt

$VIRTUALENV/bin/python3 app.py
Footer