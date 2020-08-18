Numerical Analysis-I
You will use following data set for the analysis for which the variable description is given in the
table below.
Transaction Data: [TransactionData.xlsx]
Summary: A group of 407 customers are buying in three categories from two distinct retail
chains for 2 year periods.
| #.    | Variable | Description |
| ----- | :-------: | ------- |
| 1. | Customer | Customer number. |
| 2. | Week | Week in which customer makes purchase. |
| 3. | Cat-11 | Buying from retail chain 1 in Category 1. If customer makes purchase it is 1 otherwise 0. |
|4. | Cat-12 | Buying from retail chain 1 in Category 2. If customer makes purchase it is 1 otherwise 0. |
| 5. | Cat-13 | Buying from retail chain 1 in Category 3. If customer makes purchase it is 1 otherwise 0. |
| 6. | Cat-21 | Buying from retail chain 2 in Category 1. If customer makes purchase it is 1 otherwise 0. |
| 7. | Cat-22 | Buying from retail chain 2 in Category 2. If customer makes purchase it is 1 otherwise 0. |
| 8. | Cat-23 | Buying from retail chain 2 in Category 3. If customer makes purchase it is 1 otherwise 0. |
| 9. | UPCat-11 | Unit net price that customers pay for Cat-11.
| 10. | UPCat-12 | Unit net price that customers pay for Cat-12.
| 11. | UPCat-13 | Unit net price that customers pay for Cat-13.
| 12. | UPCat-21 | Unit net price that customers pay for Cat-21.
| 13. | UPCat-22 | Unit net price that customers pay for Cat-22.
| 14. | UPCat-23 | Unit net price that customers pay for Cat-23.
| 15. | UDCat-11 | Unit discount for Cat-11.
| 16. | UDCat-12 | Unit discount for Cat-12.
| 17. | UDCat-13 | Unit discount for Cat-13.
| 18. | UDCat-21 | Unit discount for Cat-21.
| 19. | UDCat-22 | Unit discount for Cat-22.
| 20. | UDCat-23 | Unit discount for Cat-23.
| 21. | Holiday | Whether the purchase occasion was holiday or not. If holiday it is 1 otherwise 0.
| 22. | StoreDist-1 | Store distance travelled by customer to visit retail chain 1. (in miles)
| 23. | StoreDist-1 | Store distance travelled by customer to visit retail chain 2. (in miles)


Customer Demographic Data: [DemographicData.xlsx]
Summary: Demographic information for group of 407 customers who are buying in three categories from two distinct retail chains for 2 year periods.
| #. | Variable | Description| 
| ----- | :-------: | ------- |
| 1. | Customer | Customer number.| 
| 2. | Age | Age of the customer in years.| 
| 3. | HHSize | Total number of household members.| 
| 4. | Education | Education of customer in years.| 
| 5. | Income | Income of customer in dollars. |

After carefully reviewing the data answer the following questions.
1. Tabulate the purchase incidences of each category.

| Category | Incidences | Percent
| ----- | :-------: | -----  |
| Cat-11 |          |   
| Cat-12 |                |  
| Cat-13 |               | 
| Cat-21 |               |  
| Cat-22 |                |  
| Cat-23 |                |        |

Note: Calculate percent as total of all trips made by all customers during the study period.
 

2. Find the market share of each category from purchase incidences.

| Category | Market | Share | (%) |
| ----- | :-------: | ------- | ---- |
| Cat-11   |        |       | 
| Cat-12   |        |       |  
| Cat-13   |        |       |   
| Cat-21   |        |       |   
| Cat-22   |        |       |   
| Cat-23   |        |       |   

Note: Calculate percent as sum total of all purchase incidence across all categories by all
customers during the study period.

3. Cross tabulate the individual category purchase incidences.
<table border="1">
    <tr>
        <td></td>
        <td></td>
        <td colspan="3">Retailer-2</td>
        <td colspan="3">Retailer-3</td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td>Cat-11</td>
        <td>Cat-12</td>
        <td>Cat-13</td>
        <td>Cat-21</td>
        <td>Cat-22</td>
        <td>Cat-23</td>
    </tr>
    <tr>
        <td rowspan="3">Retailer-1</td>
        <td>Cat-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Cat-12</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Cat-13</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td rowspan="3">Retailer-2</td>
        <td>Cat-21</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Cat-22</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Cat-23</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
</table>

Note: Each cell represents sum total of joint purchases.


4. Provide the data descriptive of key marketing variables

<table border="1">
    <tr>
        <td></td>
        <td>Category</td>
        <td colspan="2" align="center">Price</td>
        <td colspan="2" align="center">Discount</td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td>Mean</td>
        <td>S.D.</td>
        <td>Mean</td>
        <td>S.D.</td>
    </tr>
    <tr>
        <td rowspan="3">Retailer-1</td>
        <td>Cat-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Cat-12</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Cat-13</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td rowspan="3">Retailer-2</td>
        <td>Cat-21</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Cat-22</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Cat-23</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
</table>





5. Assuming everyone buys one unit of category, tabulate the sales and calculate the market share.

<table>
    <tr>
        <td>Category</td>
        <td>Sales</td>
        <td>Market Share (%) </td>
    </tr>
    <tr>
        <td>Cat-11</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Cat-12</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Cat-13</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Cat-21</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Cat-22</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Cat-23</td>
        <td></td>
        <td></td>
    </tr>
</table>

Find the correlation between the market shares of retailer 1 and retainer2



6. Find the occassion of purchase indices for each individual category

<table>
    <tr>
        <td></td>
        <td>Category</td>
        <td>Indices</td>
        <td>Percent</td>
    </tr>
    <tr>
        <td rowspan="3">Retailer-1</td>
        <td>Cat-11</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Cat-12</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Cat-13</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td rowspan="3">Retailer-2</td>
        <td>Cat-21</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Cat-22</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Cat-23</td>
        <td></td>
        <td></td>
    </tr>
</table>

Compare this with the overall purchase indices (question 1) and summarize your observation.




7. Find average distance travelled by the customers.
<table>
    <tr>
        <td>Retailer-1</td>
        <td colspan="2">Store Distance</td>
    </tr>
    <tr>
        <td></td>
        <td>Mean</td>
        <td>SD</td>
    </tr>
    <tr>
        <td>1</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>2</td>
        <td></td>
        <td></td>
    </tr>
</table>