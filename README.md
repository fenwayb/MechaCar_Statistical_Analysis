# <h1 align=center> MechaCar Statistical Analysis </h1>

## Linear Regression to Predict MPG

![Screenshot 2022-10-06 134558](https://user-images.githubusercontent.com/106105597/194382966-e398214a-0442-4b60-b799-ac4a806b9491.png)

<p> The linear regression model answers the following questions: <br>

***
* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  * Vehicle weight, spoiler angle, and AWD provide a non-random amount of variance for the MPG values
* Is the slope of the linear model considered to be zero? Why or why not?
  * With a P-value of less then .05 the slope is considered non-zero
* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? 
  * The R-squared value of .71 shows that the model predicts 71% of the MPG values effectively. 71% is fairly effective for a test that can have some slack such as this one. Capturing 71% of the MPG variable effects is still good enough to direct the engineering staff towards the "ideal" MPG car build. If this were a "higher-stake" test like a serious medical test we would likely want a higher R-squared value
***
</p>

## Summary Statistics on Suspension Coils
<h3> Total Summary Statistics </h3>

![Screenshot 2022-10-06 134741](https://user-images.githubusercontent.com/106105597/194383199-241dd779-8946-4d54-afa9-b08b44473aa5.png)

<h3> Lot Summary Statistics </h3>

![Screenshot 2022-10-06 134805](https://user-images.githubusercontent.com/106105597/194383254-928eebb6-88c4-401d-8288-20dee50bc435.png)

<p> 

***
* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  * All together the suspension coils do meet this "less than 100lb variance" requirement however lot 3 does not. As this requirement is likely for safety reasons we would not want any lot falling outside of these specifications so lot 3 should be addressed.

***
</p>

## T-Tests on Suspension Coils

<h3> T-Test of All Lots </h3>

![Screenshot 2022-10-06 134853](https://user-images.githubusercontent.com/106105597/194383433-2b4ca6b0-f158-498d-9ce7-40aa2cb876d6.png)

<h3> T-Test of Lot 1 </h3>

![Screenshot 2022-10-06 134914](https://user-images.githubusercontent.com/106105597/194383497-9c14e8bc-778b-4f52-bdf5-4dab633c14b1.png)

<h3> T-Test of Lot 2 </h3>

![Screenshot 2022-10-06 134927](https://user-images.githubusercontent.com/106105597/194383520-110374bb-f409-437a-a42b-4cbefbf2dd9d.png)

<h3> T-Test of Lot 3 </h3>

![Screenshot 2022-10-06 134940](https://user-images.githubusercontent.com/106105597/194383553-f71b9a8e-9269-4920-aae9-9ab42a7799c8.png)

<p> The all lot T-test as well as lots 1 and 2 have P-values above .05 which means there is not a statistically significant difference between the sample mean and the true mean. Lot 3 however has a P-value of .04 which proves the alternative hypothesis of the true mean not equaling 1500. </p>

## Study Design: MechaCar vs Competition

<p> One study that could build on top of this one would be comparing the performance of the MechaCar versus the competition 

***
* What metric or metrics are you going to test?
  * to compare the MechaCar to the competition we could look at:
    * Initial Cost
    * Long Term Costs
    * City MPG
    * Highway MPG
    * Power
    * Safety rating
    * Seats
    * Drivetrains
    * Size
    
* What is the null hypothesis or alternative hypothesis?
  * With the focus on MPG already shown in this study my alternative hypothesis would be that the MechaCar has more than a 5% improvement on both MPG categories than the competitors. The null hypothesis would be that it has less than a 5% improvement in either category over the competition
* What statistical test would you use to test the hypothesis? And why?
  * As we are comparing multiple populations the best test here would be a one sample t-test with the MechaCar being the sample population. To confirm the alternative hypothesis we would want to see the sample mean be above the true mean (therefore have a high p-value)
* What data is needed to run the statistical test?
  * For the MPG study the additional data we would need would be the MPG of both the MechaCar and all the other cars on the market.
  
</p>
