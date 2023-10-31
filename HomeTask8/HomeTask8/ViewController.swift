//
//  ViewController.swift
//  HomeTask8
//
//  Created by Darya on 25.10.23.
//

import UIKit

class Restuarant {
    static let shared = Restuarant()
    private init () {}
    private (set) var count: Int = 0
    func setTotalShift (cost: Int) {
        count += cost
    }
}



class Position {
    var costProduct : Int
    var nameProduct : String
    func printProduct (){}
    init(costProduct: Int, nameProduct: String) {
        self.costProduct = costProduct
        self.nameProduct = nameProduct
    }
}

class Menu {
    var snacks  : Position = Position(costProduct: 25, nameProduct: "beef2")
    var mainMenu : Position = Position(costProduct: 48, nameProduct: "beef")
    var drinks : Position = Position(costProduct: 155, nameProduct: "beef3")
    var dessert : Position = Position(costProduct: 30, nameProduct: "beef4")
}

class Coffee : Position {
}

func chek (product : Position) {
    print ("Цена :",product.costProduct)
    print ("Название :",product.nameProduct)
    
}



class ViewController: UIViewController {
    var parametr = Menu()
    
    let logo = {
        let logo = UITextField()
        logo.text = "PALERMONON"
        return logo
    }()
        
    let buttonStartShift = {
        let buttonStartShift = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 40))
        buttonStartShift.setTitle("Начать смену", for: .normal)
        return buttonStartShift
    }()
    
    let finishOfShift = {
        let finishOfShift = UIButton(frame: CGRect(x: 100, y: 700, width: 200, height: 40))
        finishOfShift.setTitle("ЗАКРЫТЬ СМЕНУ", for: .normal)
        return finishOfShift
    }()
    
    let addToSift = UIButton(type: .system)


    let buttonPlus = {
        let buttonPlus = UIButton(type: .system)
        buttonPlus.setTitle("+", for: .normal)
        return buttonPlus
    }()

    let model = Restuarant.shared
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(logo)
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.widthAnchor.constraint(equalToConstant:360).isActive = true
        logo.heightAnchor.constraint(equalToConstant: 128).isActive = true
        logo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(buttonStartShift)
        buttonStartShift.backgroundColor = .gray
        buttonStartShift.tintColor = .black
        buttonStartShift.layer.cornerRadius = 12
//        buttonStartShift.translatesAutoresizingMaskIntoConstraints = false
//        buttonStartShift.widthAnchor.constraint(equalToConstant: 180).isActive = true
//        buttonStartShift.heightAnchor.constraint(equalToConstant: 100).isActive = true
//        buttonStartShift.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        buttonStartShift.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
    let totalShifts = {
        let totalShifts = UITextField(frame: CGRect(x: 35, y: 600, width: 300, height: 40))
        totalShifts.text = String(model.count)
        return totalShifts
    }()
        
     
        view.addSubview(buttonPlus)
        buttonPlus.backgroundColor = .gray
        buttonPlus.tintColor = .black
        buttonPlus.layer.cornerRadius = 12
        buttonPlus.translatesAutoresizingMaskIntoConstraints = false
        buttonPlus.widthAnchor.constraint(equalToConstant: 180).isActive = true
        buttonPlus.heightAnchor.constraint(equalToConstant: 100).isActive = true
        buttonPlus.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonPlus.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        buttonPlus.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        
        view.backgroundColor = .white
       
        view.addSubview(finishOfShift)
        finishOfShift.backgroundColor = .purple
        finishOfShift.tintColor = .white
        
        view.addSubview(totalShifts)
        

        chek(product: Coffee(costProduct: 10, nameProduct: "Latte"))
   
    }
    
    @IBAction func onClick(_ sender: UIButton) {
        model.setTotalShift(cost: parametr.drinks.costProduct)
    }

}

