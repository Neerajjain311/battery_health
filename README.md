# Synopsis
Battry_Health.sh is a basic shell script to enforce proper charge-discharge battery cycles (MacOS).
The core idea behind the implementation is simple - Ensure that the battery health of the device is maintained properly, i.e., avoid overcharging or undercharging.

## Motivation

We all are well aware of the importance of Charge-Discharge cycle for any rechargeable battery. I have implemented a shell script to address the issue of premature damage to battery health due to lack of these cycles. The script runs every 15 minutes (cron job) and notifies me whenever the charging is above 85% to turn OFF charging or when the battery level falls below 25%, then to turn ON charging.

Although, the idea is really simple, I certainly believe that it is something that most of the working professionals (who usually get too busy in discussions/development/meetings to see the charging level of laptops) should implement and use.

If anyone wants to implement it and is not sure how to go along with it, please feel free to reach out to me. I'll be more than happy to help!

## Installation

Provide code examples and explanations of how to get the project.

## API Reference

Depending on the size of the project, if it is small and simple enough the reference docs can be added to the README. For medium size to larger projects it is important to at least provide a link to where the API reference docs live.

## Tests

Describe and show how to run the tests with code examples.

## Contributors

Let people know how they can dive into the project, include important links to things like issue trackers, irc, twitter accounts if applicable.

## License

A short snippet describing the license (MIT, Apache, etc.)
