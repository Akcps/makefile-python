.PHONY: clean-pyc clean-build initialise_venv install_dependency freeze_dependency delete_venv

initialise_venv:
	if [ ! -e "venv/bin/activate.py" ] ; then python3 -m venv venv; source venv/bin/activate; else source venv/bin/activate;  fi

install_dependency:
	PYTHONPATH=venv ; . venv/bin/activate && venv/bin/pip3 install -U -r requirements.txt && if [ "$(ls requirements)" ] ; then venv/bin/pip3 install -U -r requirements/* ; fi

freeze_dependency:
	. venv/bin/activate && venv/bin/pip freeze > requirements.txt

delete_venv:
	rm -rf venv

all: initialise_venv install_dependency
	PYTHONPATH=venv ; . venv/bin/activate

run:
	venv/bin/python manage.py runserver
	
migrate:
	venv/bin/python manage.py migrate
