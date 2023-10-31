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
    func totalShift (cost: Int) {
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
    var snacks  : [Position]
    var mainMenu : [Position]
    var drinks : [Position]
    var dessert : [Position]
    
    init(snacks: [Position], mainMenu: [Position], drinks: [Position], dessert: [Position]) {
        self.snacks = snacks
        self.mainMenu = mainMenu
        self.drinks = drinks
        self.dessert = dessert
    }
}

var ab = Menu(snacks: [Position(costProduct: 25, nameProduct: "beef2")], mainMenu: [
    Position(costProduct: 48, nameProduct: "beef"),
    Position(costProduct: 50, nameProduct: "beef5")
], drinks: [Position(costProduct: 155, nameProduct: "beef3")], dessert: [Position(costProduct: 30, nameProduct: "beef4")])




class Coffee : Position {
}

func chek (product : Position) {
    print ("Цена :",product.costProduct)
    print ("Название :",product.nameProduct)
}


class ViewController: UIViewController {
    
   
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
    
    
    let stringTotalValue = String()
    
    let totalShifts = {
        let totalShifts = UITextField(frame: CGRect(x: 35, y: 600, width: 300, height: 40))
        totalShifts.text = ("Итого по смене: ")
        return totalShifts
    }()
    @IBAction func onClick(_ sender: UIButton) {
        model.totalShift(cost: 20)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
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


}

