//
//  lightsProblemController.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 17/09/24.
//

import UIKit

class lightsProblemController: UIViewController {
    
    @IBAction func singleThread(_ sender: UIButton) {
        DispatchQueue.main.async {
            self.semaforo()
        }
    }
    
    @IBAction func miltiThread(_ sender: UIButton) {
        DispatchQueue.global().async { [weak self] in
            self?.semaforo()
        }
    }
    
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var view3: UIView!
    
    @IBOutlet weak var view4: UIView!
    
    @IBOutlet weak var view5: UIView!
    
    @IBOutlet weak var view6: UIView!
    
    @IBOutlet weak var view7: UIView!
    
    @IBOutlet weak var view8: UIView!
    
    @IBOutlet weak var view9: UIView!
    
    @IBOutlet weak var view10: UIView!
    
    @IBOutlet weak var view11: UIView!
    
    @IBOutlet weak var view12: UIView!
    
    @IBOutlet weak var view13: UIView!
    
    @IBOutlet weak var view14: UIView!
    
    @IBOutlet weak var view15: UIView!
    
    @IBOutlet weak var view16: UIView!
    
    @IBOutlet weak var view17: UIView!
    
    @IBOutlet weak var view18: UIView!
    
    func setView1Color(color:  UIColor) {
        DispatchQueue.main.async { [weak self] in
            self?.view1.backgroundColor = color
        }
    }
    
    func setView2Color(color:  UIColor) {
        DispatchQueue.main.async { [weak self] in
            self?.view2.backgroundColor = color
        }
    }
    
    func setView3Color(color:  UIColor) {
        DispatchQueue.main.async { [weak self] in
            self?.view3.backgroundColor = color
        }
    }
    
    func setView4Color(color:  UIColor) {
        DispatchQueue.main.async { [weak self] in
            self?.view4.backgroundColor = color
        }
    }
    
    func setView5Color(color:  UIColor) {
        DispatchQueue.main.async { [weak self] in
            self?.view5.backgroundColor = color
        }
    }
    
    func setView6Color(color:  UIColor) {
        DispatchQueue.main.async { [weak self] in
            self?.view6.backgroundColor = color
        }
    }
    
    func setView7Color(color:  UIColor) {
        DispatchQueue.main.async { [weak self] in
            self?.view7.backgroundColor = color
        }
    }
    
    func setView8Color(color:  UIColor) {
        DispatchQueue.main.async { [weak self] in
            self?.view8.backgroundColor = color
        }
    }
    
    func setView9Color(color:  UIColor) {
        DispatchQueue.main.async { [weak self] in
            self?.view9.backgroundColor = color
        }
    }
    
    func setView10Color(color:  UIColor) {
        DispatchQueue.main.async { [weak self] in
            self?.view10.backgroundColor = color
        }
    }
    
    func setView11Color(color:  UIColor) {
        DispatchQueue.main.async { [weak self] in
            self?.view11.backgroundColor = color
        }
    }
    
    func setView12Color(color:  UIColor) {
        DispatchQueue.main.async {
            self.view12.backgroundColor = color
        }
    }
    
    func setView13Color(color:  UIColor) {
        DispatchQueue.main.async {
            self.view13.backgroundColor = color
        }
    }
    
    func setView14Color(color:  UIColor) {
        DispatchQueue.main.async {
            self.view14.backgroundColor = color
        }
    }
    
    func setView15Color(color:  UIColor) {
        DispatchQueue.main.async {
            self.view15.backgroundColor = color
        }
    }
    
    func setView16Color(color:  UIColor) {
        DispatchQueue.main.async {
            self.view16.backgroundColor = color
        }
    }
    
    func setView17Color(color:  UIColor) {
        DispatchQueue.main.async {
            self.view17.backgroundColor = color
        }
    }
    
    func setView18Color(color:  UIColor) {
        DispatchQueue.main.async {
            self.view18.backgroundColor = color
        }
    }
    func semaforo() {
        self.setView1Color(color: .green)
        Thread.sleep(forTimeInterval: 0.2)
        self.setView1Color(color: .black)
        self.setView2Color(color: .green)
        Thread.sleep(forTimeInterval: 0.2)
        self.setView2Color(color: .black)
        self.setView3Color(color: .green)
        Thread.sleep(forTimeInterval: 0.2)
        self.setView3Color(color: .black)
        self.setView4Color(color: .green)
        Thread.sleep(forTimeInterval: 0.2)
        self.setView4Color(color: .black)
        self.setView5Color(color: .green)
        Thread.sleep(forTimeInterval: 0.2)
        self.setView5Color(color: .black)
        self.setView6Color(color: .green)
        Thread.sleep(forTimeInterval: 0.2)
        self.setView6Color(color: .black)
        self.setView7Color(color: .green)
        Thread.sleep(forTimeInterval: 0.2)
        self.setView7Color(color: .black)
        self.setView8Color(color: .green)
        Thread.sleep(forTimeInterval: 0.2)
        self.setView8Color(color: .black)
        self.setView9Color(color: .green)
        Thread.sleep(forTimeInterval: 0.2)
        self.setView9Color(color: .black)
        self.setView10Color(color: .green)
        Thread.sleep(forTimeInterval: 0.2)
        self.setView10Color(color: .black)
        self.setView11Color(color: .green)
        Thread.sleep(forTimeInterval: 0.2)
        self.setView11Color(color: .black)
        self.setView12Color(color: .green)
        Thread.sleep(forTimeInterval: 0.2)
        self.setView12Color(color: .black)
        self.setView13Color(color: .green)
        Thread.sleep(forTimeInterval: 0.2)
        self.setView13Color(color: .black)
        self.setView14Color(color: .green)
        Thread.sleep(forTimeInterval: 0.2)
        self.setView14Color(color: .black)
        self.setView15Color(color: .green)
        Thread.sleep(forTimeInterval: 0.2)
        self.setView15Color(color: .black)
        self.setView16Color(color: .green)
        Thread.sleep(forTimeInterval: 0.2)
        self.setView16Color(color: .black)
        self.setView17Color(color: .green)
        Thread.sleep(forTimeInterval: 0.2)
        self.setView17Color(color: .black)
        self.setView18Color(color: .green)
        Thread.sleep(forTimeInterval: 0.2)
        self.setView18Color(color: .black)
        
    }
    
}
