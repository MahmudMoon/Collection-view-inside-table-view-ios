//
//  ViewController.swift
//  CollectionInsideTable
//
//  Created by BJIT on 13/1/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myTableView: UITableView!
    var aryOfCars = [Car]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aryOfCars.append(Car(image: UIImage(named: "car")!, name: "car"))
        aryOfCars.append(Car(image: UIImage(named: "car1")!, name: "car1"))
        aryOfCars.append(Car(image: UIImage(named: "car2")!, name: "car2"))
        aryOfCars.append(Car(image: UIImage(named: "car3")!, name: "car3"))
        aryOfCars.append(Car(image: UIImage(named: "car4")!, name: "car4"))
        aryOfCars.append(Car(image: UIImage(named: "car2")!, name: "car2"))
        aryOfCars.append(Car(image: UIImage(named: "car")!, name: "car"))
        aryOfCars.append(Car(image: UIImage(named: "car1")!, name: "car1"))
        aryOfCars.append(Car(image: UIImage(named: "car2")!, name: "car2"))
        aryOfCars.append(Car(image: UIImage(named: "car3")!, name: "car3"))
        
        myTableView.register(MyTableViewCell.nib(), forCellReuseIdentifier: MyTableViewCell.identifier)
        myTableView.dataSource = self
        myTableView.delegate = self
    }
}

extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as! MyTableViewCell
        cell.configureTableCell(with: aryOfCars)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("selected")
    }
}

