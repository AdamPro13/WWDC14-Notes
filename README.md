WWDC14-Notes
============

Notes from WWDC14

# Tuesday 6/3/14
##What's New in Xcode 6

**@IBInspectable (?) **
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
