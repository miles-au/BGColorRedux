//
//  ColorActions.swift
//  BGColorRedux
//
//  Created by Miles Au on 2020-09-02.
//  Copyright © 2020 Miles Au. All rights reserved.
//

import ReSwift

class ColorAction: Action{
    let value: Int
    
    init(value: Int) {
        self.value = value
    }
}

class ColorActionChangeRed: ColorAction{}
class ColorActionChangeGreen: ColorAction{}
class ColorActionChangeBlue: ColorAction{}
