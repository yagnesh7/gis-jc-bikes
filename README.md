# gis-jc-bikes
Code and paper belonging to an university assignment, contains code to perform geocoding in python

This repository belongs to a project that analyized current (2022) bike infrastructure of Jersey City, NJ. This was done in collaboration with Ananya Rajesh and Zijun Zhou. The code available here contains an R script utilizing the `njtr` package to pull motor vehicle collision data from the NJ Department of Transportation, and then further code in Jupyter Notebooks to combine data, some minor EDA, and text cleaning to prepare addresses to be geocoded using `geopy.geocoders`. The most interesting notebook will be `04_geocode.ipynb`. 

The major takeaway of the papers are that while Jersey City continues to improve access to bike lanes and the residents of Jersey City are enjoying increasing Citi Bike coverage, there are areas, especially in the south west, where bike infrastructure is currently lacking. Additionally, we found that areas with a larger share of Black and Hispanic residents tend to have less access than White residents. We also identify popular bike routes by analyzing motor vehicle collisions involving a bicycle, but lack bike lanes, and that certain areas of Jersey City could boost multimodal transportation between public transit stations by adding both bike lanes and Citi Bike locations.   

The paper is uploaded to this repository with the name `Jersey City Bike Infrastructure Analysis - 2022.pdf`.
