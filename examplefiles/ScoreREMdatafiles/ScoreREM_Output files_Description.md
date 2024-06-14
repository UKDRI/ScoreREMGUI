# Example ScoreREM Output files

## ScoreREM: A user friendly MATLAB-GUI for rapid eye movement (REM) sleep microstructure annotation and quantification

**Licence:** ScoreREM Copyright (C) 2024 Kiran K G Ravindran. Refer to the License.txt for more details.

For further details on the functionalities of ScoreREM and how to use refer to the Citation and the associated Supplementary materials

The default name of output folder of ScoreREM is 'ScoreREMdatafiles'

### Description of an example ScoreREMdatafiles:
* The Sleep EDF file used to generate the output was: https://physionet.org/content/hmc-sleep-staging/1.1/recordings/SN001.edf 
* EDF Only, Scenario 1 in the Supplementary files. 
    a. Segment length = 1 s 
    b. Default filter settings
    c. AutoREM - Yes
    d. Wake as Artefact - Yes
#### File list and overview : Total 10 files
1. "SN001_scoredREMlabels_2024-06-14T121927.mat" 
    Scored annotations with the time and date of scoring. Contains the annotations/labels in the format used by ScoreREM. The user can use the file to reload (using reload button) the labels and start from the location they left off. 
2. "SN001_ScoreREMOutput.xlsx"
    Total 6 sheets, 
    "Hypnogram" - Contains the hypnogram and label definition    
    "Summary" - Contains the sleep summary measures with Phasic and Tonic measures as well. The estimates are between the recording start and end while its computed over the lights off period if a Marker file is used. 
    "EOG-L-NUM"	"EOG-R-NUM" - Annotated labels in numerical format	
    "EOG-L-STR"	"EOG-R-STR" - Annotated labels in string format 
3. "SN001_ScoreREM_FullPSD_EEG C3-M2.xlsx"; "SN001_ScoreREM_FullPSD_EEG C4-M1.xlsx"; "SN001_ScoreREM_FullPSD_EEG F4-M1.xlsx"; "SN001_ScoreREM_FullPSD_EEG O2-M1.xlsx"
    Contains the epoch wise Power spectral density of artefact free microepochs. The micro epochs are averaged over an epoch excluding the ones scored as Artefacts. 
4. "SN001_ScoreREM_REMPSD_EEG C3-M2.xlsx"; "SN001_ScoreREM_REMPSD_EEG C4-M1.xlsx"; "SN001_ScoreREM_REMPSD_EEG F4-M1.xlsx"; "SN001_ScoreREM_REMPSD_EEG O2-M1.xlsx"
    Contains the epoch wise Power spectral density of Tonic, Phasic and Artefact microepochs. The Tonic, Phasic and Artefact micro epochs are averaged over an epoch. 