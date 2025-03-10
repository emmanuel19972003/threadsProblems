//
//  ViewController.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 27/08/24.
//

import UIKit

protocol ControllerExtendedProtocol: ControllerProtocol {
    func button4Tapped()
    func button5Tapped()
}

protocol ViewControllerProtocol: AnyObject {
    var controller: ControllerProtocol? {get set}
    func setLabel1(Text: String)
    func setLabel2(Text: String)
    func setLabel3(Text: String)
    func setButton1Label(label: String)
    func setButton2Label(label: String)
    func setButton3Label(label: String)
    func setButton4Label(label: String)
    func setButton5Label(label: String)
    func setLabel1Color(color: UIColor)
    func setLabel2Color(color: UIColor)
    func setLabel3Color(color: UIColor)
    func setBackground(color: UIColor)
}

protocol ControllerProtocol: AnyObject {
    var view: ViewControllerProtocol? {get set}
    func button1Tapped()
    func button2Tapped()
    func button3Tapped()
}

final class ViewController: UIViewController, ViewControllerProtocol {
    
    var controller: ControllerProtocol?
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    @IBOutlet private weak var label1: UILabel! {
        didSet {
            label1.layer.cornerRadius = 5
            label1.layer.borderColor = UIColor.black.cgColor
            label1.layer.borderWidth = 0.5
        }
    }
    
    @IBOutlet private weak var label2: UILabel! {
        didSet {
            label2.layer.cornerRadius = 5
            label2.layer.borderColor = UIColor.black.cgColor
            label2.layer.borderWidth = 0.5
        }
    }
    
    @IBOutlet private weak var label3: UILabel! {
        didSet {
            label3.layer.cornerRadius = 5
            label3.layer.borderColor = UIColor.black.cgColor
            label3.layer.borderWidth = 0.5
        }
    }
    
    
    @IBOutlet weak var btn1: UIButton!
    
    @IBOutlet weak var btn2: UIButton!
    
    @IBOutlet weak var btn3: UIButton!
    
    @IBOutlet weak var btn4: UIButton!
    
    @IBOutlet weak var btn5: UIButton!
    
    @IBOutlet private var background: UIView!
    
    @IBAction func button1(_ sender: UIButton) {
        controller?.button1Tapped()
    }
    
    @IBAction func button2(_ sender: Any) {
        controller?.button2Tapped()
    }
    
    @IBAction func button3(_ sender: Any) {
        controller?.button3Tapped()
    }
    
    
    @IBAction func button4(_ sender: Any) {
        guard let controller = controller as? ControllerExtendedProtocol else {
            setLabel1(Text: "Action not set use ControllerExtendedProtocol")
            return
        }
        controller.button4Tapped()
    }
    
    
    @IBAction func button5(_ sender: Any) {
        guard let controller = controller as? ControllerExtendedProtocol else {
            setLabel2(Text: "Action not set use ControllerExtendedProtocol")
            return
        }
        controller.button5Tapped()
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
    
    func setLabel1Color(color: UIColor) {
        DispatchQueue.main.async { [weak self] in
            self?.label1.backgroundColor = color
        }
    }
    
    func setLabel2Color(color: UIColor) {
        DispatchQueue.main.async { [weak self] in
            self?.label2.backgroundColor = color
        }
    }
    
    func setLabel3Color(color: UIColor) {
        DispatchQueue.main.async { [weak self] in
            self?.label3.backgroundColor = color
        }
    }
    
    func setBackground(color: UIColor) {
        DispatchQueue.main.async { [weak self] in
            self?.background.backgroundColor = color
        }
    }
    
    func setButton1Label(label: String) {
        btn1.setTitle(label, for: .normal)
    }
    
    func setButton2Label(label: String) {
        btn2.setTitle(label, for: .normal)
    }
    
    func setButton3Label(label: String) {
        btn3.setTitle(label, for: .normal)
    }
    
    func setButton4Label(label: String) {
        btn4.setTitle(label, for: .normal)
    }
    
    func setButton5Label(label: String) {
        btn5.setTitle(label, for: .normal)
    }
}

