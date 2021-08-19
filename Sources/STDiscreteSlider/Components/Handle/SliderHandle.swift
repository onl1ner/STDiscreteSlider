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
 Handle used to show user's selection and
 can be moved along the track.
 */
public protocol SliderHandle {
    associatedtype Handle: View
    
    /**
     The width of the slider's handle.
     */
    var width: CGFloat { get }
    
    /**
     The height of the slider's handle.
     */
    var height: CGFloat { get }
    
    /**
     Function that creates a handle of the slider.
     
     Implement this method to represent
     the handle that will be used in your slider.
     
     - Returns:
        Configured handle view.
     */
    func makeHandle() -> Self.Handle
}

extension SliderHandle {
    
    /**
     Function used to type-erase view
     that represents slider's handle.
     
     - Returns:
        Type-erased handle view.
     */
    public func makeHandleErased() -> AnyView {
        return .init(self.makeHandle())
    }
    
}
