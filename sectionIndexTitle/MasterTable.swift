//
//  MasterTable.swift
//  sectionIndexTitle
//
//  Created by Pham Ngoc Hai on 12/13/16.
//  Copyright © 2016 pnh. All rights reserved.
//

import UIKit

class MasterTable: UITableViewController {
    
    var arrayData : NSMutableArray!
    var dictContact = NSMutableDictionary()
    var arrayKey : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayData = NSMutableArray()
        for i in 0..<60 {
            arrayData.addObjects(from: [Person()])
            let person =  arrayData[i] as! Person
        self.tableView.sectionIndexColor = UIColor.blue
            self.tableView.sectionIndexBackgroundColor = UIColor.white
            
            
            }
        for element in arrayData {
            let person = element as! Person
            var firstLetter : String = (person.firstName as NSString).substring(to: 1)
            if firstLetter == "Đ" {
                firstLetter = "D"
            }
            if firstLetter == "Á" {
                firstLetter = "A"
            }
            var arrayforLetter: NSMutableArray!
        
            
            if (dictContact.value(forKey: firstLetter) != nil){
            arrayforLetter = dictContact.value(forKey: firstLetter) as! NSMutableArray
                arrayforLetter.addObjects(from: [person])
            dictContact.setValue(arrayforLetter, forKey: firstLetter)
                
            
            }else{
                arrayforLetter = NSMutableArray(object: person)
             dictContact.setValue(arrayforLetter, forKey: firstLetter)
            }
            //            print(person.fullName)
//                        print(person.mobilePhone)
            
            arrayKey = dictContact.allKeys as! [String]
            arrayKey = arrayKey.sorted()
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return arrayKey.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        let sectionTitle =  arrayKey[section]
        let sectionPersons = dictContact.object(forKey: sectionTitle) as! NSArray
        
        return sectionPersons.count    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrayKey[section]
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return arrayKey 
    }
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        if cell == nil{
            cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Cell")
        }
        
        let sectionTitle =  arrayKey[indexPath.section]
        let sectionPersons = dictContact.object(forKey: sectionTitle) as! NSArray
        
        let person = sectionPersons[indexPath.row] as! Person
        cell?.textLabel?.text = person.fullName
        cell?.detailTextLabel?.text = person.mobilePhone
     // Configure the cell...
     
     return cell!
     }
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = UIColor.lightGray
        let header: UITableViewHeaderFooterView = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.black
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailVC()
        let sectionTitle =  arrayKey[indexPath.section]
        let sectionPersons = dictContact.object(forKey: sectionTitle) as! NSArray
        
        let person = sectionPersons[indexPath.row] as! Person
        
        detailVC.person = person
        self.navigationController?.pushViewController(detailVC, animated: true)
        
        
    }
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
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
