# Installation Guidance for Windows

## ScoreREM: A user friendly MATLAB-GUI for rapid eye movement (REM) sleep microstructure annotation and quantification

**Licence:** ScoreREM Copyright (C) 2024 Kiran K G Ravindran. Refer to the License.txt for more details.

For smooth installation, please perform the tasks below as an Administrator.

### MATLAB:

1. Install MATLAB 2023b. 
    - Toolbox required: Signal Processing Toolbox

2. Check if a compatible Python installation is already available by calling `pyenv` in the command window to know the Python version installed.

![pyenv](https://github.com/KiranKGR/ScoreREMGUI/assets/94359263/7e057645-35c8-44c0-ae85-b09f2938fab6)

3. If there are no supported python packages you will see

![PyEnv_no python](https://github.com/KiranKGR/ScoreREMGUI/assets/94359263/a86da352-8f33-4915-aba7-74fceab7262e)

If no supported Python installation is available, please follow the `Python` installation instructions below. 

Further documentation on supported Python installation can be found [here - Configure Your System to Use Python](https://uk.mathworks.com/help/matlab/matlab_external/install-supported-python-implementation.html).

### Python:

1. Download and install Python 3.11.6 from the following link: [Python-3.11.6-amd64.exe](https://www.python.org/ftp/python/3.11.6/python-3.11.6-amd64.exe). 
    - Choose "Add Python.exe to PATH" in the pop-up installer.

2. Open a command prompt by typing `PowerShell` into the search bar in the Start menu and then clicking on PowerShell.

3. Check if the Python version is 3.11.6:
    ```PowerShell
    python --version
    ```

4. For MATLAB to identify Python, it needs to be on the top of the system PATH for MATLAB to use it. If the Python version is not 3.11.6, you can add it following the steps below:

- Step 1: Find the location of the exe file of Python311 (Usual location: `C:\Users\yourusername\AppData\Local\Programs\Python\Python311`).

![python](https://github.com/KiranKGR/ScoreREMGUI/assets/94359263/f15ce5ce-5235-42aa-83d3-ab4431d81f81)

Type `Python.exe` in the Windows search. Right-click on `Python.exe` and choose "Open file location." Copy the path to the folder (see image below).

![copyfilepath](https://github.com/KiranKGR/ScoreREMGUI/assets/94359263/067edd7b-9fd8-4ee2-9136-ae5467d98e89)

- Step 2: Add the python path to system environments
1. Type in "system env" and click on "edit system environment variables".

![system env](https://github.com/KiranKGR/ScoreREMGUI/assets/94359263/d8c467a4-4c79-4e47-883b-8dec749af6ab)

2. Click on the "Advanced" tab at the top.

3. At the bottom, click the button that says "Environment Variables".

![systemproperties](https://github.com/KiranKGR/ScoreREMGUI/assets/94359263/5a23d94c-ce46-44f0-abe5-b8583d431a29)

4. Now on the "User variables 'your user name'" box at the top of the window, click on "Path".
    - If you have chosen "Add Python to PATH" during installation, you will find `…\Python311` and `…\Python311\Scripts` there. Move them to the top and click OK.

![EditenvVar](https://github.com/KiranKGR/ScoreREMGUI/assets/94359263/90a7b364-e428-43de-8b34-1bab21b05091)
  
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

### After performing the installation and checks, the ScoreREM app can be installed by double clicking on the .mlappinstall file. (Note: When the app is started for the for the first time during a Matlab session, it checks the presence of python packages required which takes several minutes to perform. Further, Please check whether you PC has enough RAM space to perform the data import)
