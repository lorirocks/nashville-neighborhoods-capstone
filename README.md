## **What's Happening in my Neighborhood?**
#### Work In Progress. Scheduled completion date 6/25/2020. Capstone Project for Data Analytics course at Nashville Software School. 

### **Executive Summary**
Nashville is growing and changing rapidly, yet unevenly. Residents find it difficult to stay informed about changes that are being proposed for their neighborhoods. A lot of great information is available in the data that are published daily by Metro Nashville, but the information is spread across several different datasets. Also, growth trends aren’t readily apparent when viewing each dataset individually. Those issues make it difficult for residents who want to stay informed about what’s happening in their neighborhood!   

**How can growth trends be researched at the neighborhood level?**   
I’ll accomplish this by looking at building permits within neighborhood association boundaries throughout Nashville. According to an article about building permits in Investopedia:   
*“Since all related factors associated with the construction of a building are important economic activities (for example, financing and employment), the building permit report can give a major hint as to the state of the economy in the near future.”*  
	https://www.investopedia.com/terms/b/building-permits.asp   

**How can residents find information about current and proposed growth?**  
Providing efficient access to relevant information is a passion of mine. In addition to researching trends, I also want to provide an interactive dashboard prototype, designed to pull information from several datasets simultaneously. The user will be able to input search criteria, such as a zip code or Neighborhood Association, and instantly see key information about zoning change requests, building permit applications, and building permits issued in their area. This is far more efficient than having to search each data source independently.  

### **Motivation**   
I chose this project for two reasons. First, I live next to a 2.3 acre lot which has sold three times within five years – for $60k in 2014, $130k in 2017, and a whopping $219k in 2019. Why would someone pay that much?! The answer to that question came in the form of a zoning change application shortly after the most recent purchase. The lot is currently zoned for a maximum of eight single family homes (it formerly had one home). The new owner tried to get the zoning changed to allow a 24-unit multi-family complex. No way!   

To make things even more interesting, I live near the two mile segment of Clarksville Pike that is being widened from two to four lanes. The project is scheduled to be completed by spring 2023. An interactive dashboard drawing from multiple datasets would be an great way to keep an eye on proposed zoning changes and building permit applications. 

The second reason I’m drawn to this project is that it honors my family legacy. My father had a long career in a small town's building, planning and zoning department and *his* father was the third generation owner of the family lumber company. Building and zoning is in my blood!

### **Data Questions**  
- Which neighborhoods have had the most, and the least, growth during the past three years based on count of building permits by type, and by cost of construction.   
- Do any neighborhoods have recent increases in building permit applications which may signal growth in the near future?   
- In instances where zoning changes are sought, might those be a leading indicator of a subsequent increase in building permit applications? If so, what is the average time lag?    

### **Known Issues and Challenges**   
*Potential duplication of building permit counts:* The building permit data includes many Permit Types which are sometimes used at different stages of building at a particular address. For example, a residence at 1000 Gilmore Ave had a permit issued on 5/9/2018 for Residential-Rehab, and a second permit issued a short time later on 5/20/2018 for Residential-Addition. To prevent double-counting, the address and date of issuance will need to be taken into consideration when counting the number of Residential or Commercial building-related permits.   

*Limited data for planning/zoning:* The data for planning/zoning change applications is only retained for a rolling two months after an application has been completed (i.e., denied or approved). This will limit the ability to explore correlations with subsequent or concurrent building permits.   

*Known irregularities due to recent unique events:* The data may have anomalies caused by the March 3rd tornado, the COVID-19 shutdown that started on March 13th, and the “I Can’t Breathe” protests that started May 29th. These events may cause artificial highs or lows in the data that might skew trendlines.  

### **Data Sources and Tools**   
**Data Sources**   
This project uses data published by data.nashville.gov from two Metro Nashville departments. The data is updated nightly at 2:00 a.m. The Neighborhood Association Boundaries map will be used as well.    
- Building Dept. Permit Applications (rolling three years) 
- Building Dept. Permits Issued (rolling three years) 
- Planning/Zoning Dept. Development Applications (all active applications, and prior two months of completed applications) 
- Neighborhood Assoc. Boundaries (GIS) 

**Tools**
- Python, version 3.7.3 *(default, Apr 24 2019, 15:29:51) [MSC v.1915 64 bit (AMD64)]*   
- Jupyter Notebook, version 6.0.0   
- Power BI or Tableau, version TBD   
- MS Excel, Microsoft 365     

### **Schedule**
5/22/2020 ..... Get the data   
6/08/2020 ..... Clean and explore the data, define the MVPs for the charts and the dashboard   
6/15/2020 ..... Research correlations, create charts and dashboard draft  
6/18/2020 ..... Complete presentation    
6/19/2020 ..... Internal demo  
6/25/2020 ..... Demo Day!  

### **Approach Outline:**    
To track progress on each step I'm using the Project (kanban) board in the GitHub repository. 
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
- Prepare for NSS podcast interview and demo day



