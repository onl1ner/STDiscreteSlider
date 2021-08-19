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
 Track shows the range that can be used by a user.
 */
public protocol SliderTrack {
    associatedtype Track: View
    associatedtype FillTrack: View
    
    /**
     The height of the slider's track.
     */
    var height: CGFloat { get }
    
    /**
     Function that builds a track for the slider.
     
     Implement this method to create your track
     that will be used in the slider.
     
     - Returns:
        Your configured track.
     */
    func makeTrack() -> Self.Track
    
    /**
     Function that builds a track for the filled
     width of the track.
     
     - Returns:
        Your configured fill track.
     */
    func makeFillTrack() -> Self.FillTrack
}

extension SliderTrack {
    
    /**
     Function used to type-erase view
     that represents slider's track.
     
     - Returns:
        Type-erased track view.
     */
    public func makeTrackErased() -> AnyView {
        return .init(self.makeTrack())
    }
    
    /**
     Function used to type-erase view
     that represents slider's filled width.
     
     - Returns:
        Type-erased view.
     */
    public func makeFillTrackErased() -> AnyView {
        return .init(self.makeFillTrack())
    }
}
