# Installation Guidance for Windows

## ScoreREM: A user friendly MATLAB-GUI for rapid eye movement (REM) sleep microstructure annotation and quantification

**Licence:** ScoreREM Copyright (C) 2024 Kiran K G Ravindran. Refer to the License.txt for more details.

For smooth installation, please perform the tasks below as an Administrator.

### MATLAB:

1. Install MATLAB 2023b. 
    - Toolbox required: Signal Processing Toolbox
2. Check if a compatible Python installation is already available by calling `pyenv` in the command window to know the Python version installed.

If no supported Python installation is available, please follow the Python installation instructions below. Further documentation on supported Python installation can be found [here](https://uk.mathworks.com/help/MATLAB/MATLAB_external/install-supported-Python-implementation.html).

The app will also work on other MATLAB versions from 2021a with supported Python installations. Please find the list [here](https://uk.mathworks.com/support/requirements/Python-compatibility.html).

### Python:

1. Download and install Python 3.11.6 from the following link: [Python-3.11.6-amd64.exe](https://www.Python.org/ftp/Python/3.11.6/Python-3.11.6-amd64.exe). 
    - Choose "Add Python.exe to PATH" in the pop-up installer.
2. Open a command prompt by typing `PowerShell` into the search bar in the Start menu and then clicking on PowerShell.
3. Check if the Python version is 3.11.6:
    ```PowerShell
    python --version
    ```
4. For MATLAB to identify Python, it needs to be on the top of the system PATH for MATLAB to use it. If the Python version is not 3.11.6, you can add it following the steps below:

#### Step 1: Find the location of the exe file of Python311 (Usual location: `C:\Users\yourusername\AppData\Local\Programs\Python\Python311`).
- Type `Python.exe` in the Windows search. Right-click on `Python.exe` and choose "Open file location." Copy the path to the folder.

#### Step 2: Add the python path to system environments
1. Type in "system env" and click on "edit system environment variables".
2. Click on the "Advanced" tab at the top.
3. At the bottom, click the button that says "Environment Variables".
4. Now on the "User variables 'your user name'" box at the top of the window, click on "Path".
    - If you have chosen "Add Python to PATH" during installation, you will find `…\Python311` and `…\Python311\Scripts` there. Move them to the top and click OK.
    - If they are not there, click "Edit". This should lead to another window where you want to click "New" and type in the commands:
        ```plaintext
        C:\Users\yourusername\AppData\Local\Programs\Python\Python311
        C:\Users\yourusername\AppData\Local\Programs\Python\Python311\Scripts
        ```
5. Restart the system.
6. Check if Python 3.11.6 is showing up as the Python version:
    ```PowerShell
    python --version
    ```
7. Now install the required packages: numpy, pandas, pytz, mne, yasa
    ```PowerShell
    python -m pip install --upgrade pip
    python -m pip install numpy pandas pytz mne yasa
    ```
8. Once this is successful, please open MATLAB and check the Python environment using `pyenv`. It should show the version as 3.11.
    - If it's not showing up, please restart the computer, open MATLAB, and try again.
