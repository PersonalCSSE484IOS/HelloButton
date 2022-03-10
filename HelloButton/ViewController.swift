//
//  ViewController.swift
//  HelloButton
//
//  Created by Yujie Zhang on 3/10/22.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0;
    
    @IBOutlet weak var counterLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateView()
    }

    @IBAction func pressedButton(_ sender: Any) {
        let button: UIButton = sender as! UIButton
        print(button.tag)
        if(button.tag == -1){
            counter -= 1
        }else if(button.tag==0){
            counter = 0
        }else if(button.tag==1){
            counter += 1
        }else{
            print("Somethings wrong!")
        }
        updateView()
    }
    
    func updateView(){
        counterLabel.text = "Counter = \(counter)"
    }
}
