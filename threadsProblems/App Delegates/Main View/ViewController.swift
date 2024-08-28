//
//  ViewController.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 27/08/24.
//

import UIKit

protocol ViewControllerProtocol: AnyObject {
    var controller: ControllerProtocol? {get set}
    func setLabel1(Text: String)
    func setLabel2(Text: String)
    func setLabel3(Text: String)
    func setBackground(color: UIColor)
}

protocol ControllerProtocol: AnyObject {
    var view: ViewControllerProtocol? {get set}
    func button1Tapped()
    func button2Tapped()
    func button3Tapped()
}

class ViewController: UIViewController, ViewControllerProtocol {
    
    var controller: ControllerProtocol?
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet var background: UIView!
    
    @IBAction func button1(_ sender: UIButton) {
        controller?.button1Tapped()
    }
    
    @IBAction func button2(_ sender: Any) {
        controller?.button2Tapped()
    }
    
    @IBAction func button3(_ sender: Any) {
        controller?.button3Tapped()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    func setLabel1(Text: String) {
        DispatchQueue.main.async { [weak self] in
            self?.label1.text = Text
        }
    }
    
    func setLabel2(Text: String) {
        DispatchQueue.main.async { [weak self] in
            self?.label2.text = Text
        }
    }
    
    func setLabel3(Text: String) {
        DispatchQueue.main.async { [weak self] in
            self?.label3.text = Text
        }
    }
    
    func setBackground(color: UIColor) {
        DispatchQueue.main.async { [weak self] in
            self?.background.backgroundColor = color
        }
    }
}

