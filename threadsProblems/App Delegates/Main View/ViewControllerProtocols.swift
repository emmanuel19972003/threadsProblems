//
//  ViewControllerProtocols.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 1/05/25.
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
