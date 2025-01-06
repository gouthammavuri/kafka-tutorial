@echo off

:: Step 1: Create virtual environment
echo Creating virtual environment...
python -m venv .venv

:: Step 2: Activate the virtual environment
echo Activating virtual environment...
call .venv\Scripts\activate

:: Step 3: Install pip-tools
echo Installing pip-tools...
pip install pip-tools

:: Step 4: Compile requirements
echo Compiling requirements...
pip-compile -o requirements.txt requirements.in

:: Step 5: Install dependencies
echo Installing dependencies...
pip-sync requirements.txt

:: Step 6: Deactivate the virtual environment
echo Deactivating virtual environment...
deactivate

echo Setup complete.