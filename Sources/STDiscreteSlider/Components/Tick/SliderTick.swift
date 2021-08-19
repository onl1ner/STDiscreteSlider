//
//  MIT License
//
//  Copyright (c) 2021 Tamerlan Satualdypov
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import SwiftUI

/**
 Tick marks are placed along a track and
 represent predetermined values that the
 user can move the slider to.
 */
public protocol SliderTick {
    associatedtype Tick: View
    
    /**
     The width of the tick view.
     */
    var width: CGFloat { get }
    
    /**
     The height of the tick view.
     */
    var height: CGFloat { get }
    
    /**
     Function that creates a tick for the slider.
     
     Implement this method to represent
     the ticks that will be used in your slider.
     
     - Returns:
        Configured tick view.
     */
    func makeTick() -> Self.Tick
}

extension SliderTick {
    
    /**
     Function used to type-erase view
     that represents slider's tick.
     
     - Returns:
        Type-erased tick view.
     */
    public func makeTickErased() -> AnyView {
        return .init(self.makeTick())
    }
    
}
