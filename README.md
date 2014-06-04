WWDC14-Notes
============

Notes from WWDC14

# Tuesday 6/3/14
##What's New in Xcode 6

** @IBInspectable (?)**
- add on line above class declaration
- allows UIView to be inspected in storyboard


##What's new in Cocoa Touch

**Adaptive Layout**
- Allows single storyboard to be used for iPhone & iPad

**Size Classes**
- Canvas size vs. interface orientation
- No longer about device (about canvas size)
- *Compact* or *Regular*
    - Compact height, compact width, regular height, regular width
- Trait Collections
    - horizontalSizeClass, verticalSizeClass, displayScale, userInterfaceIdiom
- Adaptive Margins
    - Layout guides tell you of top (below nav bar if there is one) & bottom of screen
    - LeftMargin, RightMargin, LeadingMargin, etc.

**Adaptive View Controllers**
- Rotation - Think of it as animated bounds change
- Existing rotation methods are deprecated

```
- (void)viewWillTransitionToSize:withTransitionController:
```
- Try to use UISplitViewController - available on all devices

**Adaptive Presentations**
- UIPopover now has a presentation style
    - It will render differently depending on canvas size
- UISearchController is replacing UISearchDisplayController
    - Subclass of UIViewController
- UIAlertController replaces UIAlertView and UIActionSheet
- Simulators are resizable during runtime

FYI, sounds like new iPhone height will be same as iPad width or height

**Visual Effecs**
- UIVisualEffectView 
    - UIBlurEffect
    - UIVibrancyEffect
- Condensing bars
    - When user scrolls, nav bar can get smaller
    - When in landscape move, you can shrink nav bar & hide toolbar
- Self-sizing table cells
    - Variable row heights without tableView:heightForRowAtIndexPath:
    - Table cells can encapsulate sizing logic within themselves
    - Cells support AutoLayout

**Notification Updates**
- Local notifications now require user approval
- You can send push notifications to your app without UI that don't need approval
- Reply buttons & others can be pushed with the notification
- Notifications can be location based
- Increased payload push size to 1k

**Document Picker**
- System UI for selecting documents
    - Both local & iCloud scope

**SDK Modernization**
- Noted designated initializers ```NS_DESIGNATED_INITIALIZER```
- Changing ```id``` to ```instancetype```

**Handoff**
- Built in support for UIKit

**CoreLocation**
- API to get the floor a user is one
- Power saving location updates
- Users can now choose to approve location only when they are in the app

##Mastering Modern Media Playback
- MPMediaPlayer is not going to be deprecated but it is suggested devs move to AVKit

AVPlayerViewController -> AVPlayer -> AVPlayerItem -> AVAsset
                        AVQueuePlayer -< AVPlayerItems -> AVAsset

- Use KVO observing to get AVAsset properties
    - Only loads that property, not the entire asset
    - Make sure the request is asynchronous. Failing to do so will cause serious perf issues.
    - Use a completion handler block
- AVPlayer and AVPlayerItem

Sorry, I didn't take very good notes in this session. There was quite a bit of code in the slides.

##Intro to Swift
- See the iBook here: https://itunes.apple.com/us/book/swift-programming-language/id881256329?mt=11

##Taking Core Location Indoors
**Intro**
- Much less accurate in Urban Canyons
    - Use Wi-Fi to help mitigate this
- Not great indoors (gives altitude, not floors)

**Indoor positioning**
- Uses:
    - RF Parametric data
    - Motion sensors
- Turns down GPS when it think you're indoors
- Why Indoors?
    - Directories
    - Venue Maps
    - Some interactivity
    - Way-finding
- Need Wi-fi on, device unlocked
- Uses same Core Location API
    - Floor number property is added to API
- Three coordinates to consider
    - Geographic, floor plan, & ?
- anchor point = latitude/longitude + floorplan pixels
- Scale - we need pixelsPerMeter
- Enabled in:
    - California Academy of Sciences, SF
    - Westfield Centre, SF
    - Mineta San Jose International Airport, SJ
- Discover Your App
    - Advertise at your venue
    - App Store - Near Me
- Continuity
    - If app is installed, it will show up in bottom left corner of lock screen

**Indoor Positioning and iBeacon**
- Use iBeacons to notify users of your app

```
[self.locationManager startMonitoringForRegion:beaconRegion];

- (void)locationManager:didEnterRegion:
```
```
[self.locationManager startRangingBeaconsInRegion:beaconRegion];

- (void)locationManager:didRangeBeacons:inRegion:

beacon.proximity
beacon.major
beacon.minor
```
**Security Guidelines:**
- Strict security and privacy guidelines
    - Request location only as you need it
    - When in Use authorization
    - Have a clear purpose string
NOTE: Go watch "What's new in Core Location"

**Maps Connect**
Indoor Positioning - Sign up
http://capsconnect.apple.com

Q's:
- Does is use Apple Maps to know what building you're in?
- Does it take things like missing floors into account (i.e. floor 13)?

##Designing Intuitive User Experiences
**Top 5 Characteristics of Intuitive Applications**
5. Platform Saavy
    - Be aware of other UX experiences on the platform (swipe to delete, navigation, etc.)
    - Not arbitrary
    - When you break convention, you need to teach your users (Onboarding)
4. Easy to Navigate
    - Tells you where you are
    - Shows you where else you can go
    - Explains what's there
    - TIPS:
        - Progressive disclosure
        - Be predictable
            - Change is good, sometimes
        - Make selection obvious (fill in selected objects)
        - Maximize continuity (flow)
        - Provide hints
        - Less is more
            - Choosing between a lesser number of choices is better
        - **TRY TO STAY AWAY FROM SANDWICH BUTTON**
3. Clear
    - Language
        - No big words
        - Avoid jargon
        - Be descriptiove
        - Be succint
        - Avoid trancation
        - Make text legible
    - Icons
    - Animations
2. Simplified
1. Focused

##Integrating Swift with Objective-C

- This was very example-based. Watch the video online.

##Debugging in Xcode 6
- Back trace will now go across threads
**Why are the Icons Gray?**
- Historical
- No console interaction
- No frame variables
**Pending Blocks**
- Queues will now show what blocks have been added to the queue

NOTE: Most of this had been mentioned in previous sessions