#  EasyLocalizedStrings

## Installation
* Available via CocoaPods `pod 'EasyLocalizedStrings'`


## Info
* Allows easy use of localized strings no matter if you create your UI in IB or in code.
* Contains a collection of UI component subclasses that contain an `@IBInspectable localizedKey` property.
* Set the key in IB or code and the localized string will be loaded in.

## Requirements
* Localized strings must live in a `Localizable.strings` file in your app bundle.
* If, for example, a label is displaying the key you passed in instead of the localized string, it is becuase NSLocalizedString couldn't find the string in question. Check the name of the .strings file and also make sure the formatting inside the file is correct.e.g. `"file_key" = "value";` 

## Limitations
* localizedKey works for localized strings that don't need placeholders. A method will be added to create formatted localized strings with reduced boilerplate. 
* You won't be able to see the string in IB. You'll have to run the app to see it working.

