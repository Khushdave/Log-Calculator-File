//
//  HistoryViewController.swift
//  LOG CALCULTER
//
//  Created by Khush Dave on 01/04/23.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var lblHistory: UILabel!
    
    @IBOutlet weak var LogAntilogSegment: UISegmentedControl!
    
    @IBOutlet weak var lblDisplayNumber: UILabel!
    @IBOutlet weak var lblDisplayBase: UILabel!
    @IBOutlet weak var lblDisplayResult: UILabel!
    
    @IBOutlet weak var btnDelete: UIButton!
    
    
    @IBOutlet weak var viewNoHistory: UIView!
    @IBOutlet weak var HistoryTableView: UITableView!
    
    
    var SelectHistory:String = "Log"
    var history:[History] = []
//    var loghistory:[History] = []
//    var antilogHistory:[History] = []
    var h:History = History()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        viewNoHistory.isHidden = true
        HistoryTableView.isHidden = true
        
        // Do any additional setup after loading the view.
        
//        LogAntilogSegment.selectedSegmentIndex = 0;
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        loadData()
        
    }

    func loadData(){

        if (LogAntilogSegment.selectedSegmentIndex == 0) {
            
            history = HistoryDAL.getLog()
            
            if(history.count == 0){
                viewNoHistory.isHidden = false
                HistoryTableView.isHidden = true
            }
            else{
                HistoryTableView.isHidden = false
                viewNoHistory.isHidden = true
            }
            
            
        }
        else{
            
            history = HistoryDAL.getAntilog()
            
            if(history.count == 0){
                viewNoHistory.isHidden = false
                HistoryTableView.isHidden = true
            }
            else{
                HistoryTableView.isHidden = false
                viewNoHistory.isHidden = true
            }
            
           
        }
        
        HistoryTableView.reloadData()
    
    }
    
    @IBAction func LogAntilog(_ sender: UISegmentedControl) {
        switch LogAntilogSegment.selectedSegmentIndex
        {
        case 0:
            SelectHistory = "Log"
        case 1:
            SelectHistory = "Antilog"
        default:
            SelectHistory = "Log"
        }
        
        if (SelectHistory == "Log"){
//                var history = HistoryDAL.getLog();
            
            history = HistoryDAL.getLog()
            
            if(history.count == 0){
                viewNoHistory.isHidden = false
                HistoryTableView.isHidden = true
            }
            else{
                HistoryTableView.isHidden = false
                viewNoHistory.isHidden = true
            }
            
            
        }
        else if (SelectHistory == "Antilog"){
//                var history = HistoryDAL.getAntilog();
            
            history = HistoryDAL.getAntilog()
            
            if(history.count == 0){
                viewNoHistory.isHidden = false
                HistoryTableView.isHidden = true
            }
            else{
                HistoryTableView.isHidden = false
                viewNoHistory.isHidden = true
            }
           
        }
        HistoryTableView.reloadData()
    }
        
        
    func numberOfSections(in tableView: UITableView) -> Int {
            return 1
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }
        
    
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell: HistoryTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HistoryTableViewCell
            
            let h:History = history[indexPath.row]
           
            if h.Result == 0{
                cell.lblResult.text = "Enter Proper Details"
            }
            else{
                cell.lblResult.text = String(h.Result)
            }
            
            if h.Base == 2.718281828459045 {
                cell.lblBase.text = "e"
            }
            else if h.Base == 10
            {
                cell.lblBase.text = "10"
            }
            else if h.Base == 0{
                cell.lblBase.text = "No Base"
            }
            else{
                cell.lblBase.text = String(h.Base)
            }
            
            if h.Number == 0{
                cell.lblNumber.text = "No Number"
            }
            else{
                cell.lblNumber.text = String(h.Number)
            }
            
            
            return cell
        }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let delete = UITableViewRowAction(style: .default, title: "Delete") { UITableViewRowAction , IndexPath in
            
            let h:History = self.history[indexPath.row]
            let alert = UIAlertController(title: "History", message: "Are you sure you want to delete this History", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default,handler: { UIAlertAction in
                
                let status = HistoryDAL.deleteIndividualHistory(h: h)
                if status
                {
                    self.loadData()
                }
            }))
            
            alert.addAction(UIAlertAction(title: "Cancel", style: .default))
            
            self.present(alert,animated: true)
            
        }
        return[delete]
    }
    
    @IBAction func btnDeleteclick(_ sender: Any) {
        
//        let h:History = self.history[]
        let alert = UIAlertController(title: "History", message: "Are you sure that you want to Delete Log and Antilog History", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Yes", style: .default,handler: { [self] UIAlertAction in
            
            let status = HistoryDAL.deleteHistory(h: h)
            if status
            {
                self.loadData()
            }
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .default))
        
        self.present(alert,animated: true)
        
    }
    
    }


    
    


