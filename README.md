# Pre-work - Propinas

Propinas is a tip calculator application for iOS.

Submitted by: Alexander Roman

Time spent: 6 hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] User can select between tip percentages by tapping different values on the segmented control and the tip value is updated accordingly

The following **optional** features are implemented:

* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] settings page where settings are saved after app restartes
- [x] Defalt Tip settings allows users to set the starting tip rate 
- [x] Implement dark mode: users can now switch between light and dark modes

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<iframe src="https://giphy.com/embed/N7LCvDrZidx08KvZKi" width="236" height="480" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p><a href="https://giphy.com/gifs/N7LCvDrZidx08KvZKi">via GIPHY</a></p>

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes
There were goals to implement a custom keyboard UI that would better match the look and feel of the app, however, there bugs associated with getting user inputs
There was another goal of creating a dynamic settings page that would better scale as features increased, however, there were issues with passing data from table controllers to controled views, and ultimately to the controller swift file
## License

    Copyright [2020] [Alexander Roman]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
