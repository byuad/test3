//
//  ContactsTableViewController.swift
//  test3
//
//  Created by Adam Robinson on 2/18/19.
//  Copyright © 2019 Adam Robinson. All rights reserved.
//

import UIKit


class TableViewCell: UITableViewCell, UITextViewDelegate {
    
    @IBOutlet weak var column1: UILabel!
    @IBOutlet weak var column2: UITextView!
    
    @IBOutlet weak var column3: UITextView!
    

  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        column2.font = UIFont(name: "Rockwell", size: 14);
        column2.textColor = UIColor.black
        
        column3.font = UIFont(name: "Rockwell", size: 14)
        column3.textColor = UIColor.black
       
    }
        
        override func prepareForReuse() {
            super.prepareForReuse()
        }
//
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
}

struct Contacts {
    
    var name : String
    var cellPhone : String
    var pager : String
    
}


class ContactsTableViewController: UITableViewController, UITextViewDelegate {

    @IBOutlet var contactsTableView: UITableView!
    
    var contacts = [[
        Contacts(name: "Dr. Desa", cellPhone: "402-639-8598", pager: "402-888-0009"),
        Contacts(name: "Dr. Untrauer", cellPhone: "402-917-8556", pager: "402-888-1528"),
        Contacts(name: "Dr. Ruskin", cellPhone: "352-672-1200", pager: "402-888-2468"),
        Contacts(name: "Dr. Chandra", cellPhone: "408-386-4849", pager: "402-888-"),
        Contacts(name: "Dr. Gardner", cellPhone: "712-259-4799", pager: "402-888-0183"),
        Contacts(name: "Dr. Rae", cellPhone: "248-606-6925", pager: "402-888-6717"),
        Contacts(name: "Dr. Holley", cellPhone: "561-289-3012", pager: "402-888-0181"),
        Contacts(name: "Dr. Keenan", cellPhone: "603-661-2479", pager: "402-888-1873"),
        Contacts(name: "Dr. Kimbler", cellPhone: "605-380-9238", pager: "402-888-2639"),
        Contacts(name: "Dr. Racker", cellPhone: "801-660-9300", pager: "402-888-0179"),
        Contacts(name: "Dr. Robinson", cellPhone: "801-361-5829", pager: "402-888-1502"),
        Contacts(name: "Dr. Anggelis", cellPhone: "502-640-1059", pager: "402-888-7117"),
        Contacts(name: "Dr. Varner", cellPhone: "801-673-6003", pager: "402-888-1458"),
        Contacts(name: "Dr. Treinen", cellPhone: "712-470-6291", pager: "402-888-2494"),
        Contacts(name: "Dr. Faraj", cellPhone: "708-717-9082", pager: "402-888-2494"),
        Contacts(name: "Dr. Sloan", cellPhone: "801-362-9334", pager: "402-888-5430"),
        Contacts(name: "Resident Room @ SSP", cellPhone: "", pager: "402-559-6830"),
        Contacts(name: "Head/Neck Pager", cellPhone: "", pager: "402-888-3567")
        
    ],
        
        [Contacts(name: "OMFS LOC Clinic", cellPhone: "", pager: "402-559-5999"),
        Contacts(name: "Nurse Line LOC", cellPhone: "", pager: "402-559-5024"),
        Contacts(name: "Nurse Line VP", cellPhone: "", pager: "402-596-3174"),
        Contacts(name: "Monica VP", cellPhone: "Fax: 3171", pager: "402-596-3172"),
        Contacts(name: "Jan Baxter", cellPhone: "", pager: "402-559-8740"),
        Contacts(name: "Front Desk VP", cellPhone: "", pager: "402-596-3165"),
        Contacts(name: "Trish LOC", cellPhone: "", pager: "402-559-4330"),
        Contacts(name: "Kelly LOC", cellPhone: "", pager: "402-559-7527"),
        Contacts(name: "MD phone LOC", cellPhone: "", pager: "402-559-7571"),
        Contacts(name: "MD phone VP", cellPhone: "", pager: "402-596-3173"),
        Contacts(name: "LOC Fax", cellPhone: "", pager: "402-559-3499"),
        Contacts(name: "Presurgical Screening Fax", cellPhone: "", pager: "402-552-3267"),
        Contacts(name: "Dr. Markt", cellPhone: "", pager: "402-559-9200"),
        Contacts(name: "Shannon", cellPhone: "", pager: "402-559-9201"),
        Contacts(name: "AGD Clinic/Priti", cellPhone: "402-559-3627", pager: "402-559-6000"),
    ],
        
        [Contacts(name: "HL Charge Nurse", cellPhone: "", pager: "402-889-0931"),
        Contacts(name: "Charge Nurse after-hours", cellPhone: "", pager: "402-507-3738"),
        Contacts(name: "Observation 2OP", cellPhone: "", pager: "402-552-9627"),
        Contacts(name: "OR scheduling ", cellPhone: "", pager: "402-559-9900"),
        Contacts(name: "HL Preop Charge Nurse ", cellPhone: "", pager: "402-889-7402"),
        Contacts(name: "HL PACU Charge Nurse", cellPhone: "", pager: "402-889-7275"),
        Contacts(name: "Fritch OR Charge Nurse", cellPhone: "", pager: "402-507-2018"),
        Contacts(name: "HL OR (room#)", cellPhone: "", pager: "402-552-63__"),
        Contacts(name: "Trauma Service", cellPhone: "", pager: "402-888-1938"),
        Contacts(name: "Radiology", cellPhone: "", pager: "402-888-1898"),
        Contacts(name: "Anesthesia On-Call", cellPhone: "", pager: "402-507-7777"),
        Contacts(name: "Hospitalist On-call", cellPhone: "", pager: "402-888-1712"),
        Contacts(name: "Inpatient Pharmacy", cellPhone: "", pager: "402-559-7235"),
        Contacts(name: "Outpatient(DOC) Pharmacy ", cellPhone: "", pager: "402-559-5215"),
        Contacts(name: "UNMC Interpretive Services", cellPhone: "", pager: "844-212-7629"),
        Contacts(name: "UNMC Hospital Operator", cellPhone: "", pager: "402-552-2000"),
     
        
        ]]
    
    let myTitles = ["Attending/Residents (Cell & Pager)", "Clinic Numbers", "Hospital Numbers"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       tableView.dataSource = self
        tableView.delegate = self
        
     
         self.tableView.sectionHeaderHeight = UITableView.automaticDimension

        self.navigationController?.navigationBar.setBackgroundImage(nil, for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = nil
        self.navigationController?.navigationBar.isTranslucent = true
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.tintColor = UIColor.black
    
        
    }

   
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return myTitles.count
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return contacts[section].count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! TableViewCell
       
    

        cell.column1.text = contacts[indexPath.section][indexPath.row].name   // fill in your value for column 1 (e.g. from an array)
        cell.column2.text = contacts[indexPath.section][indexPath.row].cellPhone
//            + " " + contacts[indexPath.row].pager
        
        // fill in your value for column 2
        cell.column3.text = contacts[indexPath.section][indexPath.row].pager
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return myTitles[section]
    }
    
//    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//
//        let title = UILabel(frame: CGRect(x:10, y:5, width:tableView.frame.size.width, height:18))
//        title.font = UIFont(name: "Rockwell", size: 16)!
//        title.textColor = UIColor.white
//
//        let header = view as! UITableViewHeaderFooterView
//        header.textLabel!.font=title.font
//        header.textLabel!.textColor=title.textColor
//        header.contentView.backgroundColor = UIColor.darkGray
//
//        self.tableView.sectionHeaderHeight = UITableView.automaticDimension
//    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view = UIView(frame: CGRect(x:0, y:0, width:tableView.frame.size.width, height:30))
        let label = UILabel(frame: CGRect(x:20, y:10, width:tableView.frame.size.width, height:30))
        label.font = UIFont(name: "Rockwell", size: 18)!
        label.text = myTitles[section]
        label.textColor = UIColor.white
        view.addSubview(label);
        view.backgroundColor = UIColor.darkGray;
         self.tableView.sectionHeaderHeight = UITableView.automaticDimension
        return view

    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
//    {
//        if let url = URL(string: "tel://" + contacts[indexPath.row].cellPhone)
//        {
//            UIApplication.shared.open(url)
//        }
//    }
    
    

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


