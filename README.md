# Machine Learning-Based Prediction of Antimicrobial Resistance and Identification of AMR-Related SNPs in <em>Mycobacterium tuberculosis</em>
Yi Xu 1,3,†, Ying Mao 2,3,†, Xiaoting Hua 1,4, Yan Jiang 1,4, Yi Zou 3, Zhichao Wang 3, Zubi Liu 1,3, Hongrui Zhang 5, Lingling Lu 3* and Yunsong Yu 1,4*

1)Department of Infectious Diseases, Sir Run Run Shaw Hospital, Zhejiang University School of Medicine, Hangzhou, Zhejiang, China, 310016.
2)Institute of Translational Medicine, Zhejiang University School of Medicine, Hangzhou, Zhejiang, China, 310029.
3)Key Laboratory of Digital Technology in Medical Diagnostics of Zhejiang Province, Dian Diagnostics Group Co, Ltd, Hangzhou, China, 310030.
4)Key Laboratory of Microbial Technology and Bioinformatics of Zhejiang Province, Hangzhou, China, 310016.
5)Department of Clinical Laboratory, Zhejiang Hospital, Hangzhou, Zhejiang, China, 310013.

### Brief overview
In this study, we applied this machine learning (ML) framework to predict resistance phenotypes for 12 anti-tuberculosis drugs while outputting SNPs associated with resistance. Then, the SHapley Additive exPlanations (SHAP) framework was used to decipher why and how decisions were made in the optimal algorithm. Lastly, we applied the models to predict the resistance phenotype to rifampicin (RIF) and isoniazid (INH) in an additional independent MTB isolates dataset from India.
### Programming codes
These are the programming codes used in our paper "A Machine Learning Framework to Antimicrobial Resistance Prediction and Characterization of AMR-Related SNPs in *Mycobacterium tuberculosis*". 
### Get Started
Follow these steps to install packages and run the examples.

### Technical Stack
- Language: Python=3.8.15; R=4.0
- Libraries: Pandas, NumPy, Scikit-Learn, Matplotlib, shap, etc.
- Tools: Jupyter Notebook; Rstudio

### Create a virtual environment:
#### Build the Projects 
##### First, clone this repository to your local machine:
```bash
git clone https://github.com/microbial123/MTB-AMR.git
cd MTB-AMR
```

#### Method: 
```bash
cd MTB-AMR/env
conda env create -f MTB_ML_env.yml
conda activate MTB_ML_env
```

### Run the test:
cd example
### main_Input

>. MTB-AMR/Data/rifampicin.csv
. MTB-AMR/Data/rifampicin_to_predict_MTB.csv

```
nohup python  ../main.py -a rifampicin -l 2A -r ../Data/rifampicin.csv -t ../Data/rifampicin_to_predict_MTB.csv &
```

### main_Output

>../example/ML_Plot_MTB_rifampicin_6-fold_CV.tiff
../example/MTB_rifampicin_All_Set_Performance_6-fold_CV.csv
../example/MTB_rifampicin_All_Set_Performance_Training_Performance_6-fold_CV.csv
../example/MTB_rifampicin_All_Set_Test_Area_Under_Precision_Recall_6-fold_CV.csv
../example/MTB_rifampicin_All_Set_Test_Area_Under_ROC_6-fold_CV.csv
../example/MTB_rifampicin_All_Set_Test_Training_Performance_6-fold_CV.csv
../example/MTB_rifampicin_All_Set_Tf_CV_6-fold_CV.csv
../example/MTB_rifampicin_Complete_Results_6-fold_CV.csv
../example/MTB_rifampicin_Consistent_Genes_Per_6-fold_CV.csv
../example/MTB_rifampicin_F1_comparision_6-fold_CV.csv
../example/MTB_rifampicin_Intersect_Set_Performance_Area_Under_Precision_Recall_6-fold_CV.csv
../example/MTB_rifampicin_Intersect_Set_Performance_Area_Under_ROC_6-fold_CV.csv
../example/MTB_rifampicin_Intersect_Set_Performance_Test_Performance_6-fold_CV.csv
../example/MTB_rifampicin_Intersect_Set_Performance_Training_Performance_6-fold_CV.csv
../example/MTB_rifampicin_Intersect_Set_Tf_CV_6-fold_CV.csv
../example/MTB_rifampicin_Intersection_Set_Performance_6-fold_CV.csv
../example/MTB_rifampicin_Random_Set_Performance_6-fold_CV.csv
../example/MTB_rifampicin_Random_Set_Performance_Tf_CV_6-fold_CV.csv
../example/MTB_rifampicin_Random_Set_Performance_Training_Performance_6-fold_CV.csv
../example/MTB_rifampicin_Random_Set_Test_Area_Under_Precision_Recall_6-fold_CV.csv
../example/MTB_rifampicin_Random_Set_Test_Area_Under_ROC_6-fold_CV.csv
../example/MTB_rifampicin_Random_Set_Test_Loo_CV_6-fold_CV.csv
../example/MTB_rifampicin_Random_Set_Test_Training_Performance_6-fold_CV.csv
../example/rifampicin_ABC.sav
../example/rifampicin_BC.sav
../example/rifampicin_DT.sav
../example/rifampicin_ETC.sav
../example/rifampicin_GBC.sav
../example/rifampicin_KNN.sav
../example/rifampicin_LDA.sav
../example/rifampicin_LogR.sav
../example/rifampicin_RF.sav
../example/rifampicin_SVM.sav
../example/rifampicin_gNB.sav
../example/rifampicin_mNB.sav



### Running the Code
Start Jupyter Notebook:
```bash
jupyter notebook
cd MTB-AMR/Figure2
```
### Figure2_Input2
>../Data/rifampicin.csv
../Data/rifampicin_to_predict_MTB.csv
../example/rifampicin_ABC.sav
../example/rifampicin_BC.sav
../example/rifampicin_DT.sav
../example/rifampicin_ETC.sav
../example/rifampicin_GBC.sav
../example/rifampicin_KNN.sav
../example/rifampicin_LDA.sav
../example/rifampicin_LogR.sav
../example/rifampicin_RF.sav
../example/rifampicin_SVM.sav
../example/rifampicin_gNB.sav
../example/rifampicin_mNB.sav


Open the notebook: Navigate to **Figure_2.ipynb**.<br>
Execute the notebook: Run all cells in order.<br>

### Figure2_Output2
../Figure2/Figure_2Bi.png
../Figure2/Figure_2Bii.png
../Figure2/Figure_2Biii.png
../Figure2/Figure_2Biv.png


### Figure3_Input1

### Top15_Trainind data
>../Data/ethambutol_Top15.csv
../Data/isoniazid_Top15.csv
../Data/pyrazinamide_Top15.csv
../Data/rifampicin_Top15.csv

### Top15_To_predict data
>../Data/ethambutol_Top15_to_predict_MTB.csv
../Data/isoniazid_Top15_to_predict_MTB.csv
../Data/pyrazinamide_Top15_to_predict_MTB.csv
../Data/rifampicin_Top15_to_predict_MTB.csv


### Running the Code
```bash
cd MTB-AMR/Figure3
```
Open the notebook: Navigate to **Figure_3.ipynb**.<br>
Execute the notebook: Run all cells in order.<br>

### Figure3_Output1
### Top15_model
>../Figure3/Top15_model/ethambutol_ABC_Top15.sav
../Figure3/Top15_model/ethambutol_BC_Top15.sav
../Figure3/Top15_model/ethambutol_DT_Top15.sav
../Figure3/Top15_model/ethambutol_ETC_Top15.sav
../Figure3/Top15_model/ethambutol_GBC_Top15.sav
../Figure3/Top15_model/ethambutol_KNN_Top15.sav
../Figure3/Top15_model/ethambutol_LDA_Top15.sav
../Figure3/Top15_model/ethambutol_LogR_Top15.sav
../Figure3/Top15_model/ethambutol_RF_Top15.sav
../Figure3/Top15_model/ethambutol_SVM_Top15.sav
../Figure3/Top15_model/ethambutol_gNB_Top15.sav
../Figure3/Top15_model/ethambutol_mNB_Top15.sav
../Figure3/Top15_model/isoniazid_ABC_Top15.sav
../Figure3/Top15_model/isoniazid_BC_Top15.sav
../Figure3/Top15_model/isoniazid_DT_Top15.sav
../Figure3/Top15_model/isoniazid_ETC_Top15.sav
../Figure3/Top15_model/isoniazid_GBC_Top15.sav
../Figure3/Top15_model/isoniazid_KNN_Top15.sav
../Figure3/Top15_model/isoniazid_LDA_Top15.sav
../Figure3/Top15_model/isoniazid_LogR_Top15.sav
../Figure3/Top15_model/isoniazid_RF_Top15.sav
../Figure3/Top15_model/isoniazid_SVM_Top15.sav
../Figure3/Top15_model/isoniazid_gNB_Top15.sav
../Figure3/Top15_model/isoniazid_mNB_Top15.sav
../Figure3/Top15_model/rifampicin_ABC_Top15.sav
../Figure3/Top15_model/rifampicin_BC_Top15.sav
../Figure3/Top15_model/rifampicin_DT_Top15.sav
../Figure3/Top15_model/rifampicin_ETC_Top15.sav
../Figure3/Top15_model/rifampicin_GBC_Top15.sav
../Figure3/Top15_model/rifampicin_KNN_Top15.sav
../Figure3/Top15_model/rifampicin_LDA_Top15.sav
../Figure3/Top15_model/rifampicin_LogR_Top15.sav
../Figure3/Top15_model/rifampicin_RF_Top15.sav
../Figure3/Top15_model/rifampicin_SVM_Top15.sav
../Figure3/Top15_model/rifampicin_gNB_Top15.sav
../Figure3/Top15_model/rifampicin_mNB_Top15.sav
../Figure3/Top15_model/pyrazinamide_ABC_Top15.sav
../Figure3/Top15_model/pyrazinamide_BC_Top15.sav
../Figure3/Top15_model/pyrazinamide_DT_Top15.sav
../Figure3/Top15_model/pyrazinamide_ETC_Top15.sav
../Figure3/Top15_model/pyrazinamide_GBC_Top15.sav
../Figure3/Top15_model/pyrazinamide_KNN_Top15.sav
../Figure3/Top15_model/pyrazinamide_LDA_Top15.sav
../Figure3/Top15_model/pyrazinamide_LogR_Top15.sav
../Figure3/Top15_model/pyrazinamide_RF_Top15.sav
../Figure3/Top15_model/pyrazinamide_SVM_Top15.sav
../Figure3/Top15_model/pyrazinamide_gNB_Top15.sav
../Figure3/Top15_model/pyrazinamide_mNB_Top15.sav

### Figure3_Input2
### India_To_predict_data
>../Figure3/Data_to_predict/India_ethambutol_to_predict_MTB_166.csv
../Figure3/Data_to_predict/India_isoniazid_to_predict_MTB_166.csv
../Figure3/Data_to_predict/India_pyrazinamide_to_predict_MTB_166.csv
../Figure3/Data_to_predict/India_rifampicin_to_predict_MTB_166.csv

>../Figure3/Data_to_predict/India_ethambutol_to_predict_MTB_166_sort.csv
../Figure3/Data_to_predict/India_isoniazid_to_predict_MTB_166_sort.csv
../Figure3/Data_to_predict/India_pyrazinamide_to_predict_MTB_166_sort.csv
../Figure3/Data_to_predict/India_rifampicin_to_predict_MTB_166_sort.csv

### True phenotype of 166 India Isolates
>../Figure3/Data_to_predict/India_ethambutol_Top15_phenotype.txt
../Figure3/Data_to_predict/India_isoniazid_Top15_phenotype.txt
../Figure3/Data_to_predict/India_pyrazinamide_Top15_phenotype.txt
../Figure3/Data_to_predict/India_rifampicin_Top15_phenotype.txt

### Running the Code
```bash
cd MTB-AMR/Figure3
```
Open the notebook: Navigate to **Figure_3.ipynb**.<br>
Execute the notebook: Run all cells in order.<br>

### Figure3_Output2
>../Figure3/Data_to_predict_rst/rst_India_ethambutol_to_predict_MTB.csv
../Figure3/Data_to_predict_rst/rst_India_isoniazid_to_predict_MTB.csv
../Figure3/Data_to_predict_rst/rst_India_pyrazinamide_to_predict_MTB.csv
../Figure3/Data_to_predict_rst/rst_India_rifampicin_to_predict_MTB.csv

>../Figure3/Data_to_predict_rst/ethambutol_predict_rst_12model.csv
../Figure3/Data_to_predict_rst/isoniazid_predict_rst_12model.csv
../Figure3/Data_to_predict_rst/pyrazinamide_predict_rst_12model.csv
../Figure3/Data_to_predict_rst/rifampicin_predict_rst_12model.csv

### merge all predict_rst_12model.csv to Table_S6.xlsx
>../Figure3/Table_S6.xlsx

### Running the Code
```bash
cd MTB-AMR/Figure3
```
Open the Rstudio: Navigate to ** MTB-AMR/Figure3/Figure3A.R**<br>
Execute the Rstudio: Run the scripts.<br>

### Figure3_Output3
> MTB-AMR/Figure3/Figure3A_RIF.png
 MTB-AMR/Figure3/Figure3A_INH.png

Open the Rstudio: Navigate to ** MTB-AMR/Figure3/Figure3C.R** <br>
Execute the Rstudio: Run the scripts.<br>
### Figure3_Output3
> MTB-AMR/Figure3/Figure3C_INH.png
 MTB-AMR/Figure3/Figure3C_RIF.png


#### For any questions or issues, please contact Ying Mao at microbial_research@163.com.<br>
