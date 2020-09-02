//
//  RGB.swift
//  BGColorRedux
//
//  Created by Miles Au on 2020-09-02.
//  Copyright © 2020 Miles Au. All rights reserved.
//

import Foundation

struct RGB {
    let r: Int
    let g: Int
    let b: Int
    
    init(r: Int, g: Int, b: Int) {
        let valid = r >= 0 && r <= 255 && g >= 0 && g <= 255 && b >= 0 && b <= 255
        assert(valid, "Invalid color")
        self.r = r
        self.g = g
        self.b = b
    }
    
    static func from(number: Int) -> RGB{
        var numerator = 255 * number
        var denominator = Int(pow(255.0, 3.0))
        
        var colors = Array(repeating: 0, count: 3)
        
        for i in 0..<3{
            colors[i] = Int(numerator / denominator)
            numerator = numerator % denominator
            denominator = Int(denominator / 255)
        }
        
        return RGB(r: colors[2], g: colors[1], b: colors[0])
    }
}
