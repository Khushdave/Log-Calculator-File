//
//  CalculateViewController.swift
//  LOG CALCULTER
//
//  Created by Khush Dave on 24/02/23.
//

import UIKit
import SkyFloatingLabelTextField
import DLRadioButton

class CalculateViewController: UIViewController,SSRadioButtonControllerDelegate{

    
    @IBOutlet weak var txtNumber: SkyFloatingLabelTextField!
    @IBOutlet weak var txtBasenumber: SkyFloatingLabelTextField!
    
    
    @IBOutlet weak var lblDisplayanswer: UILabel!
    @IBOutlet weak var lblAnswer: UILabel!
    
    @IBOutlet weak var lblCalculate: UILabel!
    @IBOutlet weak var lblCondition: UILabel!
    @IBOutlet weak var lblBaseCondition: UILabel!
    @IBOutlet weak var lblChoosebase: UILabel!
    
    
    @IBOutlet weak var btnLog: UIButton!
    @IBOutlet weak var btnAntilog: UIButton!
    @IBOutlet weak var btnHistory: UIButton!
    
    
    @IBOutlet weak var btnnumber: SSRadioButton!
    @IBOutlet weak var btnbase10: SSRadioButton!
    @IBOutlet weak var btnbasee: SSRadioButton!
    
    @IBOutlet weak var btnAbout: UIBarButtonItem!
    
    @IBOutlet weak var viewtextnumber: UIView!
    @IBOutlet weak var viewanswer: UIView!
    
    @IBOutlet weak var HeightOfbasenumber: NSLayoutConstraint!
    @IBOutlet weak var HeightofCondition: NSLayoutConstraint!
    
    
    var history:[History] = []
    var h:History = History()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        btnbasee.isSelected = true
        viewtextnumber.isHidden = true
        viewanswer.isHidden = true
        self.HeightOfbasenumber.constant = 0
//        txtBasenumber.isUserInteractionEnabled = false
//        btnLog.isUserInteractionEnabled = false
//        btnAntilog.isUserInteractionEnabled = false
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        txtNumber.text = ""
        txtBasenumber.text = ""
    }
    
    

    @IBAction func btnSelectbase(_ sender: SSRadioButton) {
        
        if sender == btnbasee{
            btnbasee.isSelected = true
            btnbase10.isSelected = false
            btnnumber.isSelected = false
            
//          txtBasenumber.isUserInteractionEnabled = false
            self.HeightOfbasenumber.constant = 0
            
            
            viewtextnumber.isHidden = true
            
        }
        else if(sender == btnbase10){
            btnbasee.isSelected = false
            btnbase10.isSelected = true
            btnnumber.isSelected = false
            
//            txtBasenumber.isUserInteractionEnabled = false
            self.HeightOfbasenumber.constant = 0
            
            viewtextnumber.isHidden = true
        }
        else{
            btnbasee.isSelected = false
            btnbase10.isSelected = false
            btnnumber.isSelected = true
            
//            txtBasenumber.isUserInteractionEnabled = true
            self.HeightOfbasenumber.constant = 90
//            self.HeightofCondition.constant = 0
            
            viewtextnumber.isHidden = false
        }
        
    }
    
    
    @IBAction func btnSelectedanswer(_ sender: UIButton) {
        
//        if sender == btnbasee
        if btnbasee.isSelected
        {
            h.Base = 2.718281828459045
            if sender == btnLog
            {  //Log to the base e
                if let number = Double(txtNumber.text ?? ""){
                    h.Number = number
                    let result = log(number)
                    lblAnswer.text! = String(format:"%.8f",result)
                    h.Result = result
                    lblDisplayanswer.text! = String("ln(\(number))")
                    lblCondition.text = "    *If Calculate Log(N>0)"
                    viewanswer.isHidden = false
                    lblDisplayanswer.textColor = UIColor.black
                    lblAnswer.textColor = UIColor.black
                    
                }
                else
                {
                    lblCondition.text = " Please Enter Number"
                    lblCondition.textColor = UIColor.red
                    viewanswer.isHidden = true
//                    lblDisplayanswer.text = "Please Enter"
//                    lblAnswer.text = "Number"
//                    lblDisplayanswer.textColor = UIColor.red
//                    lblAnswer.textColor = UIColor.red
                }
                
            }
            else if sender == btnAntilog{  //Antilog to the base e
                if let number = Double(txtNumber.text ?? "")
                {
                    h.Number = number
                    let result = exp(number)
                    lblAnswer.text = String(format:"%.8f",result)
                    h.Result = result
                    lblDisplayanswer.text! = String("Antilog(\(number))")
                    lblCondition.text = "    *If Calculate Log(N>0)"
                    viewanswer.isHidden = false
                    lblDisplayanswer.textColor = UIColor.black
                    lblAnswer.textColor = UIColor.black
                }
                else
                {
                    lblCondition.text = " Please Enter Number"
                    lblCondition.textColor = UIColor.red
                    viewanswer.isHidden = true
                }
                
            }
        }
        
//        if sender == btnbase10
        else if btnbase10.isSelected
        {
            h.Base = 10
            if sender == btnLog{   //Log to the base 10
                if let number = Double(txtNumber.text ?? ""){
                    h.Number = number
                    let result = log10(number)
                    lblAnswer.text = String(format:"%.8f",result)
                    h.Result = result
                    lblDisplayanswer.text = String("Log(\(number))")
                    lblCondition.text = "    *If Calculate Log(N>0)"
                    viewanswer.isHidden = false
                    lblDisplayanswer.textColor = UIColor.black
                    lblAnswer.textColor = UIColor.black
                }
                else
                {
                    lblCondition.text = " Please Enter Number"
                    lblCondition.textColor = UIColor.red
                    viewanswer.isHidden = true
//                    lblDisplayanswer.text = "Please Enter"
//                    lblAnswer.text = "Number"
//                    lblDisplayanswer.textColor = UIColor.red
//                    lblAnswer.textColor = UIColor.red
                }
            }
            
            else if sender == btnAntilog{  //Antilog to the base 10
                if let number = Double(txtNumber.text ?? ""){
                    h.Number = number
                    let result = pow(10.0,number)
                    lblAnswer.text = String(format:"%.8f",result)
                    h.Result = result
                    lblDisplayanswer.text = String("Antilog(\(number))")
                    lblCondition.text = "    *If Calculate Log(N>0)"
                    viewanswer.isHidden = false
                    lblDisplayanswer.textColor = UIColor.black
                    lblAnswer.textColor = UIColor.black
                }
                else
                {
                    lblCondition.text = " Please Enter Number"
                    lblCondition.textColor = UIColor.red
                    viewanswer.isHidden = true
//                    lblDisplayanswer.text = "Please Enter"
//                    lblAnswer.text = "Number"
//                    lblDisplayanswer.textColor = UIColor.red
//                    lblAnswer.textColor = UIColor.red
                }
            }
            
        }
        
//        if sender == btnnumber
        else if btnnumber.isSelected
        {
            self.HeightofCondition.constant = 0
            if sender == btnLog{   //Log to the Any base Number
                
                if let number1 = Double(txtNumber.text ?? ""){
                    h.Number = number1
                    if let number2 = Double(txtBasenumber.text ?? "")
                    {
                        h.Base = number2
                        let result1 = log10(number1)
                        let result2 = log10(number2)
                        let result3 = result1 / result2
                        lblAnswer.text = String(format:"%.8f",result3)
                        h.Result = result3
                        lblDisplayanswer.text = String("Log(\(number1))")
                        lblCondition.text = "    *If Calculate Log(N>0)"
                        lblBaseCondition.text = ""
                        viewanswer.isHidden = false
                        lblDisplayanswer.textColor = UIColor.black
                        lblAnswer.textColor = UIColor.black
                    }
                    else
                    {
                        lblBaseCondition.text = " Please Enter Base Number"
                        lblCondition.text = "    *If Calculate Log(N>0)"
                        lblBaseCondition.textColor = UIColor.red
                        self.HeightofCondition.constant = 35
                        viewanswer.isHidden = true
//                        lblDisplayanswer.text = "Please Enter"
//                        lblAnswer.text = "Base Number"
//                        lblDisplayanswer.textColor = UIColor.red
//                        lblAnswer.textColor = UIColor.red
                    }
                }
                else
                {
                    lblCondition.text = " Please Enter Number"
                    lblCondition.textColor = UIColor.red
                    viewanswer.isHidden = true
//                    lblDisplayanswer.text = "Please Enter"
//                    lblAnswer.text = "Number"
//                    lblDisplayanswer.textColor = UIColor.red
//                    lblAnswer.textColor = UIColor.red
                }
            }

            else if sender == btnAntilog{//Antilog to the any base number
//                self.HeightofCondition.constant = 0
                if let number1 = Double(txtNumber.text ?? ""){
                    h.Number = number1
                    if let number2 = Double(txtBasenumber.text ?? "")
                    {
                        h.Base = number2
                        let result = pow(number2,number1)
                        lblAnswer.text = String(format:"%.8f",result)
                        h.Result = result
                        lblDisplayanswer.text = String("Antilog(\(number1))")
                        lblCondition.text = "    *If Calculate Log(N>0)"
                        lblBaseCondition.text = ""
                        viewanswer.isHidden = false
                        lblDisplayanswer.textColor = UIColor.black
                        lblAnswer.textColor = UIColor.black
                    }
                    else
                    {
                        lblBaseCondition.text = " Please Enter Base Number"
                        lblCondition.text = "    *If Calculate Log(N>0)"
                        lblBaseCondition.textColor = UIColor.red
                        self.HeightofCondition.constant = 35
                        viewanswer.isHidden = true
//                        lblDisplayanswer.text = "Please Enter"
//                        lblAnswer.text = "Base Number"
//                        lblDisplayanswer.textColor = UIColor.red
//                        lblAnswer.textColor = UIColor.red
                    }
                }
                else
                {
                    lblCondition.text = " Please Enter Number"
                    lblCondition.textColor = UIColor.red
                    viewanswer.isHidden = true
//                    lblDisplayanswer.text = "Please Enter"
//                    lblAnswer.text = "Number"
//                    lblDisplayanswer.textColor = UIColor.red
//                    lblAnswer.textColor = UIColor.red
                }
            }
        }
        
//        viewanswer.isHidden = false
        
        
        
        if sender == btnLog
        {
            h.Log = 1;
            h.Antilog = 0;
//            var status = HistoryDAL.addHistory(h: h)
        }
        else if sender == btnAntilog
        {
            h.Log = 0;
            h.Antilog = 1;
//            var status = HistoryDAL.addHistory1(h: h)
        }
        
       var status = HistoryDAL.addHistory(h: h)
        
    }
    
    @IBAction func btnHistory(_ sender: UIButton) {
    
        let hvc : HistoryViewController = storyboard?.instantiateViewController(withIdentifier: "HistoryViewController") as! HistoryViewController
        
        self.navigationController?.pushViewController(hvc, animated: true)
        
        viewanswer.isHidden = true
    }
    
    @IBAction func btnAboutAction(_ sender: Any) {
        
        let alertoverall = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let aboutUs = UIAlertAction(title: "About US", style: .default) {
            (action:UIAlertAction) in
            
            let dvc : DeveloperViewController = self.storyboard?.instantiateViewController(withIdentifier: "DeveloperViewController") as! DeveloperViewController
            self.navigationController?.pushViewController(dvc, animated: true)
        }
        
        let Feedback = UIAlertAction(title: "FeedBack", style: .default){
            (action:UIAlertAction) in
            
            let fvc : FeedBackViewController = self.storyboard?.instantiateViewController(withIdentifier: "FeedBackViewController") as! FeedBackViewController
            self.navigationController?.pushViewController(fvc, animated: true)
        }
        
        let Cancel = UIAlertAction(title: "Cancel", style: .cancel,handler: nil)
        alertoverall.addAction(aboutUs)
        alertoverall.addAction(Feedback)
        alertoverall.view.tintColor = UIColor(red:0/255, green:0/255, blue:0/255, alpha: 1)
        alertoverall.view.layer.cornerRadius = 40
        self.present(alertoverall, animated: true, completion: nil)

    }
    
    
}
