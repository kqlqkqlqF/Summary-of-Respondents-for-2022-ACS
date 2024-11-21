# Summary of Respondents and Doctoral Counts with Estimation by State for 2022 ACS

## Overview

This paper examines state-level population estimates using the 2022 American Community Survey (ACS) data from IPUMS USA. The study applies the ratio estimator method, using the ratio between the number of respondents and doctoral degree in California as a baseline, to estimate the total number of respondents across all states.

## File Structure

The repo is structured as:

-   `data/simulated_ACS_data` contains the simulated 2022 ACS repondent data.
-   `other` contains relevant details about LLM chat histories, and sketches for the figures demonstrated in the paper.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contain the R scripts used to simulate, and test the simulated data or raw data. The raw data was not included in this repo as IPUMS required. 

## Data Retrieval

The respondents data is available on the IPUMS USA website. For more information, see our paper and read the data section.

## Statement on LLM usage

Aspects of the code were written with the help of Chatgpt4.0, the entire chat history is available at other/llm_usage/usage.txt.