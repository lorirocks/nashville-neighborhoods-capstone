## **What's Happening in my Neighborhood?**
*Capstone Project for Daytime Data Analytics Cohort #1 program at Nashville Software School.* 

### **Contents**  
- [Motivation](#Motivation)
- [Data Questions](#Data-Questions)
- [Known Issues and Challenges](#Known-Issues-and-Challenges)
- [Data Sources and Tools](#Data-Sources-and-Tools)
- [Links to Tableau Public and Video](#Links-to-Tableau-Public-and-Video)
- [Schedule](#Schedule)
- [Approach Outline](#Approach-Outline)
- [Acknowledgements](#Acknowledgements)

**Nashville is growing and changing rapidly, yet unevenly.** Where is the growth happening, and where is it heading? Great information is published daily by Metro Nashville, but the information is spread across several different datasets making it cumbersome to know what is being proposed. Also, growth trends aren’t readily apparent when viewing each dataset individually.  

### **Motivation**   
I live next to a 2.3 acre lot which has sold three times within five years – for $60k in 2014, $130k in 2017, and a whopping $219k in 2019. Why would someone pay that much?! The answer to that question came in the form of a zoning change application shortly after the most recent purchase. The lot is currently zoned for a maximum of eight single family homes (it formerly had one home). The new owner tried to get approval for a 24-unit multi-family complex. No way!   

To make things even more interesting, I also live near the two mile segment of Clarksville Pike that is being widened from two to four lanes. The project is scheduled to be completed by spring 2023. Change is coming.

I’m also drawn to this project because it honors my family legacy. My father had a long career in a small town's building, planning and zoning department and *his* father was the third generation owner of the family lumber company. Building and zoning is in my blood!  (My mother was trained as a registered nurse, so I'm hoping to do health-care related projects in the future as well, either professionally or personally)   
*Back to [Contents](#Contents)*


### **Data Questions**  
- Which neighborhoods have had the most, and the least, growth during the past three years based on count of building permits by type, and what is the cost of construction for the most popular ones?  
- Do any neighborhoods have recent increases in building permit applications which may signal growth in the near future?   
   

**How can growth trends be researched at the neighborhood level?**   
Growth trends are visible through building permits:  
*“Since all related factors associated with the construction of a building are important economic activities (for example, financing and employment), the building permit report can give a major hint as to the state of the economy in the near future.”*  
 https://www.investopedia.com/terms/b/building-permits.asp 


### **Known Issues and Challenges**   
**Issues with Latitude / Longitude Coordinates** 
- About 5% were outside Nashville/Davidson County  
- Coordinates mixed in with address in mapped_location field; extracted using regex  
- Removed homes with "0" house numbers, which have no lat/lon (e.g., in new subdivisions)
![Regex code](./assets/regex_code.PNG)


**Permit Applications Limitations**
- Limited data - records are removed after a permit is issued, rejected, or withdrawn ...but there are applications dating back to 2004(?!)

**Permits Issued - Duplicates**  
- Additional permits sometimes issued for a single address and single project, many months later with new permit number. I chose to retain duplicates to avoid corrupting valid data
![Duplicate Example](./assets/duplicate_example.PNG)

    
*Back to [Contents](#Contents)*

### **Data Sources and Tools**   
**Data Sources**   
This project uses data published by data.nashville.gov from two Metro Nashville departments. The data is updated nightly at 2:00 a.m. The Neighborhood Association Boundaries map will be used as well.    
- Building Dept. Permit Applications (From application through issuance, rejection or withdrawal). Doesn't contain data for estimated construction costs.
- Building Dept. Permits Issued (rolling three years). No overlap with permit application data.
- Davidson County  Border (GIS)     
*Back to [Contents](#Contents)*

**Tools**
- `Python`, version 3.7.3 *(default, Apr 24 2019, 15:29:51) [MSC v.1915 64 bit (AMD64)]*   
- `Jupyter Notebook`, version 6.0.0   
- `Tableau`, version 2020.1.4
- `MS Excel`, Microsoft 365       
*Back to [Contents](#Contents)*

### **Links to Tableau Public and Video**
- Video Presentation (7 minutes):  https://www.loom.com/share/8d10d5b408dd48d6925f22b7d6a006f2 
- Tableau Public: https://public.tableau.com/profile/loributler#!/vizhome/Whats_Happening_in_my_Neighborhood_an_Exploration_into_Nashvilles_Growth/Story1?publish=yes  
*Back to [Contents](#Contents)*

### **Schedule**
5/22/2020 ..... Get the data   
6/08/2020 ..... Clean and explore the data, define the MVPs for the charts and the dashboard   
6/15/2020 ..... Research correlations, create charts and dashboard draft  
6/24/2020 ..... Internal demo  
6/25/2020 ..... Demo Day!     
*Back to [Contents](#Contents)*

### **Approach Outline:**    
To track progress on each step I'm using the Project (Kanban) board in the GitHub repository. 
- **ETL** to extract the data from data.nashville.gov; examine it to determine what transformation may be needed (if any), and then load it into Python
- Determine what the **MVP** (minimum viable product) looks like for charts and for the intaractive dashboard
- **EDA** (exploratory data analysis). Outline of primary steps (not a comprehensive list of *all* steps)  
    - Examine data types (esp. dates and geography/location/lat&lng)  
    - Look for nulls  
    - Understand what unique values are in each column and seeing which ones are most prevelant and most relevant to answering the data questions
    - Examine statistics for each series with numerical values  
- Determine the best methods for either merging and/or subsetting the data to facilitate creating the charts and creating the dashboard, and explore the answers to the data questions
- Validate that the charts are showing information correctly, with no *irrelevant* data included, and no *relevant* data inadvertently excluded
- Create charts and graphs
- Create dashboard
- Prepare presentation and record demo    
*Back to [Contents](#Contents)*


### **Acknowledgements**
It is challenging to find powerful enough words to describe my gratitude for the instructors and staff at  **Nashville Software School.** 
- Unending thanks to our superb instructors - the inimitable **Mary van Valkenburg,** Program Mgr/Instructor and **Mahesh Rao,** Instructor. 
    - They embraced the challenge of designing NSS's first-ever full time data analytics course - squeezing an impossible amount of training into 15 short weeks. 
    - Then on the third day of class they had to pivot to 100% remote learning due to the novel coronavirus pandemic... and they did so brilliantly! 
- I am indebted to **John Wark,** Founder and CEO, and **all staff** of NSS for their commitment to providing opportunities to those who are underrepresented in technology fields. They have created an incredible organization. 
- **Kristin McKinney,** Partner Development Mgr., has provided an amazing amount of support for our upcoming job search: Three rounds of resume reviews, several mock interviews, panel discussions with local data analysts and hiring managers, demo day, and so much more. You rock!
- **My classmates** were awesome! Each person provided great examples of perseverence, patient collaboration, and the value of having Friday Zoom background themes. 

My career transition was inspired by my husband, **Landry Butler.** It's great to be on this journey together! We are both graduating from NSS's data analytics courses on June 25, 2020 - him from the part time/evening course, and me from the full time/day course. I'm continually inpired by Landry's patience, creativity and easy laughter. Fun times ahead!    
*Back to [Contents](#Contents)*