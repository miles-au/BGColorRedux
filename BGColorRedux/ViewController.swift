//
//  ViewController.swift
//  BGColorRedux
//
//  Created by Miles Au on 2020-09-02.
//  Copyright © 2020 Miles Au. All rights reserved.
//

import UIKit
import ReSwift

class ViewController: UIViewController, StoreSubscriber {
    typealias StoreSubscriberStateType = AppState
    
    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainStore.subscribe(self)
    }

    /**
        Gets called when the state is updated. Make updates to the UI in response to changes in the state here.
     */
    func newState(state: AppState) {
        let rgb = state.rgb
        colorLabel.text = "(\(rgb.r),\(rgb.g),\(rgb.b))"
        view.backgroundColor = UIColor(red: CGFloat(rgb.r)/255, green: CGFloat(rgb.g)/255, blue: CGFloat(rgb.b)/255, alpha: CGFloat(1))
    }

    @IBAction func colorSliderValueChanged(_ sender: UISlider) {
        mainStore.dispatch(ColorActionChangeRGB(num: Int(sender.value)))
    }
}

