//
//  ExperienceViewController.swift
//  Lab02CV
//
//  Created by Johan Kantola on 2019-11-04.
//  Copyright © 2019 Johan Kantola. All rights reserved.
//

import UIKit

class ExperienceViewController: UIViewController {

    @IBOutlet weak var ExperienceView: UITableView!
    
   
    var workList: [ExpObject] = []
    var educationList: [ExpObject] = []
    let sections: [String] = ["Work", "Education"]
    var sectionData: [Int: [ExpObject]] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ExperienceView.delegate = self
        ExperienceView.dataSource = self
        
        workList.append(ExpObject(imageName:"Ericssonimg" ,name: "Ericsson", fromTo: "2005 - 2015", description: "Machine Operator"))
        workList.append(ExpObject(imageName:"Kitronimg", name: "Kitron", fromTo: "2015 - Current", description: "Machine Operator"))
        educationList.append(ExpObject(imageName:"default" ,name: "Viskastrand", fromTo: "2002 - 2005", description: "EL-Programmet"))
        educationList.append(ExpObject(imageName:"JU", name: "Jönköping University", fromTo: "2017 - Current", description: "Software Developer"))
         
        sectionData = [0 : workList, 1 : educationList]
        
        ExperienceView.reloadData()
    }
}

extension ExperienceViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (sectionData[section]?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ExperienceViewCell", for: indexPath) as? ExperienceTableViewCell {
            
            cell.ExperienceImageView?.image = UIImage(named: sectionData[indexPath.section]![indexPath.row].imageName)
            cell.nameLabel?.text = sectionData[indexPath.section]![indexPath.row].name
            cell.FromToLabel?.text = sectionData[indexPath.section]![indexPath.row].fromTo
            return cell
        }
       
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let infoCell: ExpObject? = sectionData[indexPath.section]![indexPath.row]
        performSegue(withIdentifier: "specificCell", sender: infoCell)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationToExpVC = segue.destination as? ExperienceDetailViewController
        let dataToSend: ExpObject? = sender as? ExpObject
        destinationToExpVC?.nameFromPrep = dataToSend?.description ?? "no desc"
        destinationToExpVC?.imageFromPrep = dataToSend?.imageName ?? "asdf"
        
    }
}
