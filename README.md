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

##Swift Playgrounds

**Uses:**
- Learning
    - Learn Swift by playing around
    - Interactive learning
- Code development
    - Algorithm development
    - Drawing code development
    - Processing code (value transformers, image filters, etc.)
- Experimentation
    - Try out API
    - No project needed
    - Run code from a standalone doc
    - Keep a playground in your dock for quick access

**Working with Playgrounds**
- *Demo*
- Playgrounds automatically execute
- Many values have quick looks
    - Colors
    - String (plain and attributed)
    - Images
    - VIews
    - Arrays and dictionaries
    - Points, rects, sizes
    - Bezier paths
    - URLs
    - Classes & structs
- Using resources in playgrounds
    1. Show file inspector
    2. Select location for playground resources
        - Absolute
        - Relative to playground
        - Inside playground
- Experimentation
    - UI Development
    - Algorithm development
    - **XCPlayground**
        - XCPCaptureValue 
            - Captures values for manual value histories in teh timeline
            - ```identifier``` identifies a collection of captured values
    - UIView development
    - **XCPShowView**
        - Shows view live as playground executes and records frames for playback
        - Identifier must be unique
        - View can't have superview
    - Timeline slider sets max execution duration
- Prefer to use ```XCPSetExecutionShouldContinueIndefinitely```
- Custom Quick Look support
    - Only possible for NSObject subclasses
    - Implement ```func debugQuickLookObject() -> AnyObject?```

**Limitations**
- Don't use for performance evalutation
    - Instead use XCTest to create performance tests
- Playgrounds currently can't be used for things that require:
    - User interation
    - Entitlements
    - On-Device execution
    - Your app or framework code

**Playgrounds vs. REPL**
- REPL can execute in your process
    - Stop at breakpoint
    - (lldb) repl
- *there was more on playgrounds that I didn't get in time*

##Intermediate Swift

**Optionals**
- Why?
    - EXAMPLE: If user is inputing age, you need to convert to int. If it's not
        convertible, what would it return? Too many nil/null/NSNotFound values

**Non-optional types**
- Strings, ints, floats, etc. can't be ```nil```
```
for (index, value) in enumerate(array) {
}
```
- NOTE: ```enumerate()``` will return a tuple with index & value
- Forcing unwrapping will result in run-time error

**Optional Chaining**
```
addressNumber = paul.residence?.addess?.buildingNumber?.toInt()
```
```
if let addressNumber = paul.residence?.addess?.buildingNumber?.toInt() {
    addToDatabase("Paul", addressNumber)
}
```

**Memory Management**
- Swift built on ARC
- No need for pointer syntax or ```alloc```
- When you create a variable, it +1s a reference count
- Ownership
    - Example: Does renter own apt? Does apt own renter?
        - Reference cycle
    - ```weak``` references for situations like this
    - ```weak``` references are optional values
    - Binding the optional produces a strong reference
    - ```unowned``` references are required for object to live
- Strong
    - What you should use most of the time
- Weak
    - Use among objects with independent lifetimes
- Unowned
    - Use from owned objects with the same lifetime

**Initialization**
- Every value must be initialized before it is used
- Don't have to initialize variable when you declare it but you do have to 
    initialize it before you read from the variable
- *Initializers* handle the responsibility of fylly initializing an instance
- Struct initialization
    - Can't call method on ```self``` in initializer
    - There are memberwise initializers
    - There is always a default initializer
```
struct Color {
    let red, green, blue : Double
    init (grayScale: Double) {
        red = grayScale
        green = grayScale
        blue = grayScale
    }
}
```
- Class initialization
    - In a subclass, set its properties first before calling ```super.init()```
    - Add ```convenience``` before convenience initializers
    - Subclasses don't automatically inherit superclass's initializers
NOTE: This seems tricky. I want to review this again.
- Lazy Initialization
    - You can have lazy properties in swift
    - add ```@lazy``` before property declaration to denote a lazy loaded variable

**Deinitialization**
```
class FileHandle {
    deinit {
        closeFile(file)
    }
}

```
- Most of the time you won't need deinitializers
**Closures**
- There is a single sort method that takes in a closure
```
var client = ["Pestov", "Buenaventura", "Sreeram", "Babbage"]

clients.sort {
    $0 < $1
}
```
- Closures are ARC Objects
    - Can create unowned reference of ```self``` in closure
##Fake it til you make it: Prototyping
Idea -> Prototype -> App
Fake ------> Real
- Two Reasons to prototype:
    1. Test ideas
    2. Get new ideas
- How?
    - Make fake apps
    - Show people
    - Learn from their feedback
- Three questions:
    - What needs to be more real?
    - What can we fake?
    - Where will they use it?
- When showing people:
    - Do you know how to...?
    - Is it easy to...?
    - How can we make this better?
- Who?
    - The people your app is for
- Don't argue with people

Pictures -> Animation -> Interaction
Keynote     Keynote      Core Animation

- Start with drawings

**Make Fake Apps**
- Find an app that uses a similar view
    - Take a screenshot
    - Import that photo into Keynote
    - Use a mask on another photo in order to crop it

**Learn from Feedback**
- What's working?
- What isn't working?

**Three steps for building interactive prototype**
1. Put the picture on device
2. Break up the picture
3. Move the pictures when you touch them

NOTE: I suggest watching this video. There were many examples in Keynote that you would have to watch.

##What's New in Table and Collection Views

**Table View**
- Dynamic Type adoption
    - In settings, allows a user to change the font size across the entire OS
    - Comes free with built-in labels
    ```+ [UIFont preferredFontForTextStle:]``` for custom labels
    - Dynamic Row Heights
        - Property ```rowHeight```
            - This can affect perf
        - Delegate ```tableView:heightForRowAtIndexPath:```
        - Cell 
    - iOS 8 Sizing Flow
        - Create Cell -> Size cell -> Update contentSize -> Display Cell
        - Can use autolayout
        - Manually size using ```- sizeThatFits:```

- Self-sizing cells
    - Set ```tableView.estimatedRowHeight```
    - Set ```rowHeight``` to automatically adjusting

**Collection View**
- Self-sizing cells
    - Available in flow layout
    - Cell sizing strategies:
        - Classic
        - Self-sizing cells
            - Use contraints or ```sizeThatFits:```
        - Full Control
            - Use ```preferredLayoutAttributesFilt...```
    ```@property (nonatomic, strong) CGSize estimatedItemSize;```
        - Equivalent to estimated row height in table views
        - Set it to a non-zero CGSize

- Smart Invalidation
```
- prepareLayout
- collectionViewCOntentSize
- layoutAttributesForElementsInRect:
```
All other calls:
```
- invalidateLayout
- prepareLayout
```
... the cycle continues

- How to build high-performance layouts
    - Be lazy (smart)
    - Recompute only what you !
    - Use colection view invalidation contects
    - New in iOS 7
    - Provide fine-grain info to you layout in invalidation sitatuions
    - Flow layout is already using invalidation contects in rotations
- Invalidation Contexts
    - Define your own invalidation context class
    ```+ (Class)invalidationContextClass```
    - Invalidate with contectual info
    ```- (void)invalidateLayoutWithContext:```
    - Override point for bounds change
    ```- (UICollectionViewLayoutInvalidation)...```
##Core Image Filters

**CIKernel**
- Represents a program written in Core Image's kernel language

**CIFilter**
- Has mutable input parameters
- Uses one or more CIKernels to make a new image based on inputs

**CIImage**
- An IMmutable object that represents the recipe for an image

**CIContext**
-

- Need to create CIFilter subclass

- Create input CIImages
- Subclass CIFilter
- Create Kernel
- 
- Get output CIImage
- Use CICOntext to render output inmage

- 115 existing CoreImage filters (78 purely change color, 7 convolute)

On iOS
- CIColorKernel & CIWarpKernel

*This guy talks extremely fast. I can't keep up with the notes.*