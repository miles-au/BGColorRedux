//
//  ColorActions.swift
//  BGColorRedux
//
//  Created by Miles Au on 2020-09-02.
//  Copyright © 2020 Miles Au. All rights reserved.
//

import ReSwift

struct ColorActionChangeRGB: Action{
    let colorNum: Int
    
    init(num: Int) {
        colorNum = num
    }
}
