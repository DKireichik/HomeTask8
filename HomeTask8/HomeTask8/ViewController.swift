//
//  ViewController.swift
//  HomeTask8
//
//  Created by Darya on 25.10.23.
//

import UIKit

class Restuarant {
    static let shared = Restuarant()
    private (set) var count: Int = 0
    private (set) var name: String = ""
    private init () {}
    func setTotalShift (cost: Int) {
        count += cost
    }
    
    func setTotalShiftNameProduct (names: String) {
        name += ("\n\(names)")
    }
    func resetCount () {
        count = 0
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
    var snacks  : [Position] = [Position(costProduct: 25, nameProduct: "Чипсы со вкусом сыра   25руб"), Position(costProduct: 38, nameProduct: "Начос с кетчупом   38руб"), Position(costProduct: 10, nameProduct: "Покки с соусом   10руб"), Position(costProduct: 12, nameProduct: "Тахис   12руб"), Position(costProduct: 5, nameProduct: "Читос в ассортименте   5руб")]
    var mainMenu : Position = Position(costProduct: 48, nameProduct: "Pizza")
    var drinks : Position = Position(costProduct: 15, nameProduct: "Coffee")
    var dessert : Position = Position(costProduct: 20, nameProduct: "Cake")
    
}


//func chek (product : Position) {
//    print ("Цена :",product.costProduct)
//    print ("Название :",product.nameProduct)
//    
//}



class ViewController: UIViewController {
    let model = Restuarant.shared
    var parametr = Menu()
    
    let snacks = {
        var snacks = UIButton(type: .system)
        snacks.setTitle("Снэки", for: .normal)
        return snacks
    }()
    let mainMenu = {
        var mainMenu = UIButton(type: .system)
        mainMenu.setTitle("Основное меню", for: .normal)
        return mainMenu
    }()
    
    let drinks = {
        var drinks = UIButton(type: .system)
        drinks.setTitle("Напитки", for: .normal)
        return drinks
    }()
    let dessert = {
        var dessert = UIButton(type: .system)
        dessert.setTitle("Дессерты", for: .normal)
        return dessert
    }()
    
    
    let chips = {
        let chips = UITextField()
        chips.text = "Чипсы со вкусом сыра   25руб"
        return chips
    }()
    let nachos = {
        let nachos = UITextField()
        nachos.text = "Начос с кетчупом   38руб"
        return nachos
    }()
    let pocky = {
        let pocky = UITextField()
        pocky.text = "Покки с соусом   10руб"
        return pocky
    }()
    let taxis = {
        let taxis = UITextField()
        taxis.text = "Тахис   12руб"
        return taxis
    }()
    let chitos = {
        let chitos = UITextField()
        chitos.text = "Читос в ассортименте   5руб"
        return chitos
    }()
    
    
    let result = {
        let result = UITextField()
        result.text = ""
        return result
    }()
    let buttonStartShift = {
        let buttonStartShift = UIButton(type: .system)
        buttonStartShift.setTitle("НАЧАТЬ СМЕНУ", for: .normal)
        return buttonStartShift
    }()
    let finishOfShift = {
        let finishOfShift = UIButton(type: .system)
        finishOfShift.setTitle("ЗАКРЫТЬ СМЕНУ", for: .normal)
        return finishOfShift
    }()
    
    
    let buttonPlusChips = {
        let buttonPlus = UIButton(type: .system)
        buttonPlus.setTitle("+", for: .normal)
        return buttonPlus
    }()
    let buttonPlusNachos = {
        let buttonPlus = UIButton(type: .system)
        buttonPlus.setTitle("+", for: .normal)
        return buttonPlus
    }()
    let buttonPlusPocky = {
        let buttonPlus = UIButton(type: .system)
        buttonPlus.setTitle("+", for: .normal)
        return buttonPlus
    }()
    let buttonPlusTaxis = {
        let buttonPlus = UIButton(type: .system)
        buttonPlus.setTitle("+", for: .normal)
        return buttonPlus
    }()
    let buttonPlusChitos = {
        let buttonPlus = UIButton(type: .system)
        buttonPlus.setTitle("+", for: .normal)
        return buttonPlus
    }()

    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(snacks)
        snacks.translatesAutoresizingMaskIntoConstraints = false
        snacks.tintColor = .black
        snacks.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        snacks.topAnchor.constraint(equalTo: view.topAnchor, constant: 180).isActive = true
        snacks.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        
        view.addSubview(mainMenu)
        mainMenu.translatesAutoresizingMaskIntoConstraints = false
        mainMenu.tintColor = .gray
        mainMenu.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        mainMenu.topAnchor.constraint(equalTo: view.topAnchor, constant: 220).isActive = true
        mainMenu.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        
        view.addSubview(drinks)
        drinks.translatesAutoresizingMaskIntoConstraints = false
        drinks.tintColor = .gray
        drinks.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        drinks.topAnchor.constraint(equalTo: view.topAnchor, constant: 220).isActive = true
        drinks.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 190).isActive = true
        
        view.addSubview(dessert)
        dessert.translatesAutoresizingMaskIntoConstraints = false
        dessert.tintColor = .gray
        dessert.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        dessert.topAnchor.constraint(equalTo: view.topAnchor, constant: 220).isActive = true
        dessert.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        
        view.addSubview(chips)
        chips.translatesAutoresizingMaskIntoConstraints = false
        chips.topAnchor.constraint(equalTo: view.topAnchor, constant: 280).isActive = true
        chips.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
       
        view.addSubview(nachos)
        nachos.translatesAutoresizingMaskIntoConstraints = false
        nachos.topAnchor.constraint(equalTo: view.topAnchor, constant: 340).isActive = true
        nachos.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        
        view.addSubview(pocky)
        pocky.translatesAutoresizingMaskIntoConstraints = false
        pocky.topAnchor.constraint(equalTo: view.topAnchor, constant: 400).isActive = true
        pocky.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        
        view.addSubview(taxis)
        taxis.translatesAutoresizingMaskIntoConstraints = false
        taxis.topAnchor.constraint(equalTo: view.topAnchor, constant: 460).isActive = true
        taxis.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
         
        view.addSubview(chitos)
        chitos.translatesAutoresizingMaskIntoConstraints = false
        chitos.topAnchor.constraint(equalTo: view.topAnchor, constant: 520).isActive = true
        chitos.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        
        
        view.addSubview(result)
        result.translatesAutoresizingMaskIntoConstraints = false
        result.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true
        result.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        
        
        view.addSubview(buttonStartShift)
        buttonStartShift.backgroundColor = .gray
        buttonStartShift.tintColor = .black
        buttonStartShift.layer.cornerRadius = 12
        buttonStartShift.addTarget(self, action: #selector(start), for: .touchUpInside)
        buttonStartShift.translatesAutoresizingMaskIntoConstraints = false
        buttonStartShift.widthAnchor.constraint(equalToConstant: 160).isActive = true
        buttonStartShift.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonStartShift.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonStartShift.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        
        view.addSubview(buttonPlusChips)
        buttonPlusChips.backgroundColor = .gray
        buttonPlusChips.tintColor = .black
        buttonPlusChips.layer.cornerRadius = 12
        buttonPlusChips.translatesAutoresizingMaskIntoConstraints = false
        buttonPlusChips.widthAnchor.constraint(equalToConstant: 40).isActive = true
        buttonPlusChips.heightAnchor.constraint(equalToConstant: 40).isActive = true
        buttonPlusChips.topAnchor.constraint(equalTo: view.topAnchor, constant: 270).isActive = true
        buttonPlusChips.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        buttonPlusChips.addTarget(self, action: #selector(getResult), for: .touchUpInside)
      
        view.addSubview(buttonPlusNachos)
        buttonPlusNachos.backgroundColor = .gray
        buttonPlusNachos.tintColor = .black
        buttonPlusNachos.layer.cornerRadius = 12
        buttonPlusNachos.translatesAutoresizingMaskIntoConstraints = false
        buttonPlusNachos.widthAnchor.constraint(equalToConstant: 40).isActive = true
        buttonPlusNachos.heightAnchor.constraint(equalToConstant: 40).isActive = true
        buttonPlusNachos.topAnchor.constraint(equalTo: view.topAnchor, constant: 330).isActive = true
        buttonPlusNachos.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        buttonPlusNachos.addTarget(self, action: #selector(getResult), for: .touchUpInside)
        
        view.addSubview(buttonPlusPocky)
        buttonPlusPocky.backgroundColor = .gray
        buttonPlusPocky.tintColor = .black
        buttonPlusPocky.layer.cornerRadius = 12
        buttonPlusPocky.translatesAutoresizingMaskIntoConstraints = false
        buttonPlusPocky.widthAnchor.constraint(equalToConstant: 40).isActive = true
        buttonPlusPocky.heightAnchor.constraint(equalToConstant: 40).isActive = true
        buttonPlusPocky.topAnchor.constraint(equalTo: view.topAnchor, constant: 390).isActive = true
        buttonPlusPocky.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        buttonPlusPocky.addTarget(self, action: #selector(getResult), for: .touchUpInside)
       
        view.addSubview(buttonPlusTaxis)
        buttonPlusTaxis.backgroundColor = .gray
        buttonPlusTaxis.tintColor = .black
        buttonPlusTaxis.layer.cornerRadius = 12
        buttonPlusTaxis.translatesAutoresizingMaskIntoConstraints = false
        buttonPlusTaxis.widthAnchor.constraint(equalToConstant: 40).isActive = true
        buttonPlusTaxis.heightAnchor.constraint(equalToConstant: 40).isActive = true
        buttonPlusTaxis.topAnchor.constraint(equalTo: view.topAnchor, constant: 450).isActive = true
        buttonPlusTaxis.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        buttonPlusTaxis.addTarget(self, action: #selector(getResult), for: .touchUpInside)
       
        view.addSubview(buttonPlusChitos)
        buttonPlusChitos.backgroundColor = .gray
        buttonPlusChitos.tintColor = .black
        buttonPlusChitos.layer.cornerRadius = 12
        buttonPlusChitos.translatesAutoresizingMaskIntoConstraints = false
        buttonPlusChitos.widthAnchor.constraint(equalToConstant: 40).isActive = true
        buttonPlusChitos.heightAnchor.constraint(equalToConstant: 40).isActive = true
        buttonPlusChitos.topAnchor.constraint(equalTo: view.topAnchor, constant: 510).isActive = true
        buttonPlusChitos.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        buttonPlusChitos.addTarget(self, action: #selector(getResult), for: .touchUpInside)
        
        
        view.addSubview(finishOfShift)
        finishOfShift.backgroundColor = .purple
        finishOfShift.tintColor = .white
        finishOfShift.translatesAutoresizingMaskIntoConstraints = false
        finishOfShift.widthAnchor.constraint(equalToConstant: 280).isActive = true
        finishOfShift.heightAnchor.constraint(equalToConstant: 50).isActive = true
        finishOfShift.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        finishOfShift.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        finishOfShift.addTarget(self, action: #selector(finish), for: .touchUpInside)

//        chek(product: Coffee(costProduct: 10, nameProduct: "Latte"))
        
    }
    
    @IBAction func getResult(_ sender: UIButton) {
        switch sender {
        case buttonPlusChips :
            model.setTotalShift(cost: parametr.snacks[0].costProduct)
            result.text = "Итого за смену: \(String(model.count)) руб "
            model.setTotalShiftNameProduct(names: parametr.snacks[0].nameProduct)
            
        case buttonPlusNachos :
            model.setTotalShift(cost: parametr.snacks[1].costProduct)
            result.text = "Итого за смену: \(String(model.count)) руб"
            model.setTotalShiftNameProduct(names: parametr.snacks[1].nameProduct)
        case buttonPlusPocky :
            model.setTotalShift(cost: parametr.snacks[2].costProduct)
            result.text = "Итого за смену: \(String(model.count)) руб" 
            model.setTotalShiftNameProduct(names: parametr.snacks[2].nameProduct)
        case buttonPlusTaxis :
            model.setTotalShift(cost: parametr.snacks[3].costProduct)
            result.text = "Итого за смену: \(String(model.count)) руб"
            model.setTotalShiftNameProduct(names: parametr.snacks[3].nameProduct)
        case buttonPlusChitos :
            model.setTotalShift(cost: parametr.snacks[4].costProduct)
            result.text = "Итого за смену: \(String(model.count)) руб"
            model.setTotalShiftNameProduct(names: parametr.snacks[4].nameProduct)
        default:
            return 
        }
        
    }
    @IBAction func start (_ sender: UIButton) {
        model.resetCount()
        result.text = "Итого за смену: \(String(model.count)) руб"
    }
    @IBAction func finish (_ sender: UIButton) {
        print (model.name)
        print ("Итого за смену: \(model.count)")
        result.text = ""
    }

}

