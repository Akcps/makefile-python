# makefile-python
This is a Makefile script which takes of activation the virtualenv and installing the requirement and running the python script.<br>

## prerequisite
- python3 and pip

## commands
**make initialise_venv** - to initialize the virtualenv <br>
**make install_dependency** - to install the dependency from requirements file <br>
**make freeze_dependency** - to freeze the dependencies <br>
**make delete_venv** - to clean the virtual env <br>
**make all** - to initialize the virtualenv and install the package dependencies <br>
**make migrate** - django apply migrations <br>
**make makemigrations** - django create migrations <br>
**make syncdb** - django create migrations and apply them <br>
**make run** - to run the python script (this should be executed after make all) <br>


## sample 
**make all <br>
make run**
