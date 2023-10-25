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
        
        //Проектирование меню:
        //Надо сделать класс/cтруктуру Меню, в свойствах которого будет несколько категорий (закуски, основное меню, напитки, десерты) содержащие абстрактный продукт. У каждого конкретного продукта будет название и стоимость (Например: Название: кофе латте, Стоимость: 10руб)
        //Сделаем функцию(надеюсь вы помните чем отличается метод от функции) которая при получении абстрактного продукта выводит его название и стоимость в консоль

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
        func chek (Position : String) {
            if(Position == "coffee with milk") {
                let coffeeLatte = Coffee(costProduct: 10, nameProduct: "Lattee")
                coffeeLatte.printProduct()
                return;
            }
            if(Position == "black coffee") {
                    let blackcofee = Coffee(costProduct: 6, nameProduct: "Espresso")
                    blackcofee.printProduct()
                    return;
                }
            }
        chek(Position: "coffee with milk")

        // Do any additional setup after loading the view.
    }


}

