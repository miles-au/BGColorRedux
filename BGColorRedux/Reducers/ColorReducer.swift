//
//  ColorReducer.swift
//  BGColorRedux
//
//  Created by Miles Au on 2020-09-02.
//  Copyright © 2020 Miles Au. All rights reserved.
//

import ReSwift

/**
 The Reducer receives an action, and updates the state. Nobody else should be able to update the state.
 */
func colorReducer(action: Action, state: AppState?) -> AppState{
    var state = state ?? AppState()
    
    switch action {
    case let color as ColorActionChangeRed:
        state.red = color.value
    case let color as ColorActionChangeGreen:
        state.green = color.value
    case let color as ColorActionChangeBlue:
        state.blue = color.value
    default:
        break
    }
    
    return state
}
