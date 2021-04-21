# Synopsis
Battry_Health.sh is a basic shell script to enforce proper charge-discharge battery cycles (MacOS).
The core idea behind the implementation is simple - Ensure that the battery health of the device is maintained properly, i.e., avoid overcharging or undercharging.

## Motivation

We all are well aware of the importance of Charge-Discharge cycle for any rechargeable battery. I have implemented a shell script to address the issue of premature damage to battery health due to lack of these cycles. The script runs every 15 minutes (cron job) and notifies me whenever the charging is above 85% to turn OFF charging or when the battery level falls below 25%, then to turn ON charging.

Although, the idea is really simple, I certainly believe that it is something that most of the working professionals (who usually get too busy in discussions/development/meetings to see the charging level of laptops) should implement and use.

If anyone wants to implement it and is not sure how to go along with it, please feel free to reach out to me. I'll be more than happy to help!

## Installation and Implementation

If you're a MacOS user and want to use the same script, just clone the repo, extract the shell script, and then go ahead and place it in the list of CronJobs configuring the time interval after which you want to run it (15 min / 30 min / 1 hour / or whatever suits you best).
That's it, you're good to go!

## Demo Video
A video demonstrating the working of the same can be found at the following link-
https://www.linkedin.com/feed/update/urn:li:activity:6746676043995787264/
