<img align="right" src="https://github.com/onl1ner/onl1ner/blob/master/Resources/STDiscreteSlider/logo.png?raw=true" width="256"/>

# STDiscreteSlider

![](https://img.shields.io/badge/platform-iOS-lightgrey)
![](https://img.shields.io/badge/iOS-13.0%2B-blue)
![](https://cocoapod-badges.herokuapp.com/v/STDiscreteSlider/badge.png)
![](https://cocoapod-badges.herokuapp.com/l/STDiscreteSlider/badge.(png|svg))
![](https://img.shields.io/badge/Swift-5-orange?logo=Swift&logoColor=white)
![](https://img.shields.io/github/last-commit/onl1ner/STDiscreteSlider)

**STDiscreteSlider** – slider which allows user to choose value only from predefined set of data. Slider may receive any types of options, you may pass set of integers or strings, or any other type. Written using `SwiftUI`.

## Table of contents

* [Requirements](#requirements)
* [Installation](#installation)
    * [CocoaPods](#cocoapods)
    * [Swift Package Manager](#swift-package-manager)
* [Usage](#usage)
    * [Quick start](#quick-start)
    * [Customization](#customization)
* [Contribution](#contribution)
* [License](#license)

## Requirements

- SwiftUI
- iOS 13.0 or above

## Installation

**STDiscreteSlider** is available through [CocoaPods](https://cocoapods.org) and [Swift Package Manager](https://github.com/apple/swift-package-manager)

### CocoaPods
- Add the following line into your Podfile:

  ```ruby
  pod 'STDiscreteSlider'
  ```

- Then run this command in your terminal:

  ```bash
  $ pod install
  ```
  
### Swift Package Manager
- In Xcode select: 

  ```
  File > Swift Packages > Add Package Dependency...
  ```
  
- Then paste this URL: 

  ```
  https://github.com/onl1ner/STDiscreteSlider.git
  ```

## Usage

**STDiscreteSlider** is highly customizable, you could use it with it's default appearance or create your own.

### Quick start

To create a slider simply instantiate `STDiscreteSlider` class:

```swift
STDiscreteSlider(
    options: [20, 40, 60, 80, 100], // Options that is used as a data source for the slider.
    selectedItem: $mySelectedItem   // Binding to the property that will store the selected item.
)
```

This action will create a slider with default appearance.

### Customization

Customization of a slider is not a big deal. **STDiscreteSlider** provides three protocols that is used to represent the components of a slider: `SliderTrack`, `SliderTick`, `SliderHandle`. By implementing each of the protocol you will be able to build your custom slider.

Some examples of what you can achieve by customizing slider: 

![](https://github.com/onl1ner/onl1ner/blob/master/Resources/STDiscreteSlider/Examples.png?raw=true)

*Source code of these sliders provided in examples.*

## Contribution

If you struggle with something feel free to [open an issue](https://github.com/onl1ner/STDiscreteSlider/issues/new). Pull requests are also appreciated.

## License

**STDiscreteSlider** is under the terms and conditions of the MIT license.

```
MIT License

Copyright (c) 2021 Tamerlan Satualdypov

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
