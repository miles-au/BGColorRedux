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
        colorLabel.text = "(\(state.red),\(state.green),\(state.blue))"
        view.backgroundColor = UIColor(red: CGFloat(state.red)/255, green: CGFloat(state.green)/255, blue: CGFloat(state.blue)/255, alpha: CGFloat(1))
    }

    @IBAction func redSliderValueChanged(_ sender: UISlider) {
        mainStore.dispatch(ColorActionChangeRed(value: Int(sender.value)))
    }
    
    @IBAction func blueSliderValueChanged(_ sender: UISlider) {
        mainStore.dispatch(ColorActionChangeGreen(value: Int(sender.value)))
    }
    
    @IBAction func greenSliderValueChanged(_ sender: UISlider) {
        mainStore.dispatch(ColorActionChangeBlue(value: Int(sender.value)))
    }
}

