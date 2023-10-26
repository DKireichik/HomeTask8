//
//  ViewController.swift
//  HomeTask8
//
//  Created by Darya on 25.10.23.
//

import UIKit




class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

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
        class Coffee : Position {
              override  func printProduct () {
                print ("Название : \(nameProduct)")
                print ("Цена : \(costProduct)")
            }
        }
        
        func chek (product : Position) {
            print ("Цена :",product.costProduct)
            print ("Название :",product.nameProduct)
        }
        
        chek(product: Coffee(costProduct: 10, nameProduct: "Latte"))
       
        // Do any additional setup after loading the view.
    }


}

