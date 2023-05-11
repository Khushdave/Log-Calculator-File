//
//  ExampleViewController.swift
//  LOG CALCULTER
//
//  Created by Khush Dave on 24/02/23.
//

import UIKit
import DLRadioButton
import SkyFloatingLabelTextField

class ExampleViewController: UIViewController,SSRadioButtonControllerDelegate, UIGestureRecognizerDelegate{
    
    
    @IBOutlet weak var btnFormula1: UIButton!
    @IBOutlet weak var btnFormula2: UIButton!
    @IBOutlet weak var btnFormula3: UIButton!
    @IBOutlet weak var btnFormula4: UIButton!
    @IBOutlet weak var btnFormula5: UIButton!
    
    
    @IBOutlet weak var lblFormula1: UILabel!
    @IBOutlet weak var lblFormula2: UILabel!
    @IBOutlet weak var lblFormula3: UILabel!
    @IBOutlet weak var lblFormula4: UILabel!
    @IBOutlet weak var lblFormula5: UILabel!
    
    @IBOutlet weak var lblEnterM: UILabel!
    @IBOutlet weak var lblEnterN: UILabel!
    @IBOutlet weak var lblEnterb: UILabel!
    
    
    @IBOutlet weak var btnCalculate: UIButton!
    @IBOutlet weak var btnClear: UIButton!
    
    @IBOutlet weak var txtEnterM: SkyFloatingLabelTextField!
    @IBOutlet weak var txtEnterN: SkyFloatingLabelTextField!
    @IBOutlet weak var txtEnterb: SkyFloatingLabelTextField!
    
    
    @IBOutlet weak var viewAnswer: UIView!
    
    @IBOutlet weak var lblDisplayAnswer: UILabel!
    @IBOutlet weak var lblAnswer: UILabel!
    
    
    @IBOutlet weak var HeightMCondition: NSLayoutConstraint!
    @IBOutlet weak var HeightNCondition: NSLayoutConstraint!
    @IBOutlet weak var HeightbCondition: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        viewAnswer.isHidden = true
        self.HeightMCondition.constant = 15
        self.HeightNCondition.constant = 15
        self.HeightbCondition.constant = 15
        
        btnFormula1.setImage(UIImage.init(named: "radio-button"), for: .normal)
        btnFormula1.setImage(UIImage.init(named: "radio"), for: .selected)
        
        btnFormula2.setImage(UIImage.init(named: "radio-button"), for: .normal)
        btnFormula2.setImage(UIImage.init(named: "radio"), for: .selected)
        
        btnFormula3.setImage(UIImage.init(named: "radio-button"), for: .normal)
        btnFormula3.setImage(UIImage.init(named: "radio"), for: .selected)
        
        btnFormula4.setImage(UIImage.init(named: "radio-button"), for: .normal)
        btnFormula4.setImage(UIImage.init(named: "radio"), for: .selected)
        
        btnFormula5.setImage(UIImage.init(named: "radio-button"), for: .normal)
        btnFormula5.setImage(UIImage.init(named: "radio"), for: .selected)
        
        let htmlString  = "<html><body><font face=\"Arial\"><h2>log<sub>b</sub>(M<sup>*</sup>N) = log<sub>b</sub>(M) + log<sub>b</sub>(N)</h2></font></body></html>"
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .justified
        paragraphStyle.firstLineHeadIndent = 0.001
        
        
        let attrStr = try!  NSAttributedString(data:  htmlString.data(using: String.Encoding.utf8)!,
                                               options: [.documentType: NSAttributedString.DocumentType.html,
                                                         .characterEncoding: String.Encoding.utf8.rawValue],
                                               documentAttributes: nil)
        
        
        lblFormula1.attributedText = attrStr
        
        let htmlString1  = "<html><body><font face=\"Arial\"><h2>log<sub>b</sub>(M/N) = log<sub>b</sub>(M) - log<sub>b</sub>(N)</h2></font></body></html>"
        let paragraphStyle1 = NSMutableParagraphStyle()
        paragraphStyle.alignment = .justified
        paragraphStyle.firstLineHeadIndent = 0.001
        
        
        let attrStr1 = try!  NSAttributedString(data:  htmlString1.data(using: String.Encoding.utf8)!,
                                                options: [.documentType: NSAttributedString.DocumentType.html,
                                                          .characterEncoding: String.Encoding.utf8.rawValue],
                                                documentAttributes: nil)
        
        
        lblFormula2.attributedText = attrStr1
        
        let htmlString2  = "<html><body><font face=\"Arial\"><h2>log<sub>b</sub>(M<sup>n</sup>) = n(log<sub>b</sub>(M))</h2></font></body></html>"
        let paragraphStyle2 = NSMutableParagraphStyle()
        paragraphStyle.alignment = .justified
        paragraphStyle.firstLineHeadIndent = 0.001
        
        
        let attrStr2 = try!  NSAttributedString(data:  htmlString2.data(using: String.Encoding.utf8)!,
                                                options: [.documentType: NSAttributedString.DocumentType.html,
                                                          .characterEncoding: String.Encoding.utf8.rawValue],
                                                documentAttributes: nil)
        
        
        lblFormula3.attributedText = attrStr2
        
        let htmlString3  = "<html><body><font face=\"Arial\"><h2>log<sub>b</sub>m<span>&#8730;</span>n = 1/m(log<sub>b</sub>n)</h2></font></body></html>"
        let paragraphStyle3 = NSMutableParagraphStyle()
        paragraphStyle.alignment = .justified
        paragraphStyle.firstLineHeadIndent = 0.001
        
        
        let attrStr3 = try!  NSAttributedString(data:  htmlString3.data(using: String.Encoding.utf8)!,
                                                options: [.documentType: NSAttributedString.DocumentType.html,
                                                          .characterEncoding: String.Encoding.utf8.rawValue],
                                                documentAttributes: nil)
        
        
        lblFormula4.attributedText = attrStr3
        
        let htmlString4  = "<html><body><font face=\"Arial\"><h2>log<sub>b</sub>n = log<sub>m</sub>n<sup>*</sup>log<sub>b</sub>m</h2></font></body></html>"
        let paragraphStyle4 = NSMutableParagraphStyle()
        paragraphStyle.alignment = .justified
        paragraphStyle.firstLineHeadIndent = 0.001
        
        
        let attrStr4 = try!  NSAttributedString(data:  htmlString4.data(using: String.Encoding.utf8)!,
                                                options: [.documentType: NSAttributedString.DocumentType.html,
                                                          .characterEncoding: String.Encoding.utf8.rawValue],
                                                documentAttributes: nil)
        
        
        lblFormula5.attributedText = attrStr4
        
        btnFormula1.isSelected = true
        
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(tapGestureSelect))
        lblFormula1.isUserInteractionEnabled = true
        lblFormula1.tag = 1
        lblFormula1.addGestureRecognizer(tap1)
        
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(tapGestureSelect))
        lblFormula2.isUserInteractionEnabled = true
        lblFormula2.tag = 2
        lblFormula2.addGestureRecognizer(tap2)
        
        let tap3 = UITapGestureRecognizer(target: self, action: #selector(tapGestureSelect))
        lblFormula3.isUserInteractionEnabled = true
        lblFormula3.tag = 3
        lblFormula3.addGestureRecognizer(tap3)
        
        let tap4 = UITapGestureRecognizer(target: self, action: #selector(tapGestureSelect))

        lblFormula4.isUserInteractionEnabled = true
        lblFormula4.tag = 4
        lblFormula4.addGestureRecognizer(tap4)
        
        let tap5 = UITapGestureRecognizer(target: self, action: #selector(tapGestureSelect))
        lblFormula5.isUserInteractionEnabled = true
        lblFormula5.tag = 5
        lblFormula5.addGestureRecognizer(tap5)
        
        
        
    }
    
    
    @IBAction func btnSelectFormula(_ sender: UIButton) {
        
        if sender == btnFormula1{
            btnFormula1.isSelected = true
            btnFormula2.isSelected = false
            btnFormula3.isSelected = false
            btnFormula4.isSelected = false
            btnFormula5.isSelected = false
        }
        else if(sender == btnFormula2){
            btnFormula1.isSelected = false
            btnFormula2.isSelected = true
            btnFormula3.isSelected = false
            btnFormula4.isSelected = false
            btnFormula5.isSelected = false
        }
        else if(sender == btnFormula3){
            btnFormula1.isSelected = false
            btnFormula2.isSelected = false
            btnFormula3.isSelected = true
            btnFormula4.isSelected = false
            btnFormula5.isSelected = false
        }
        else if(sender == btnFormula4){
            btnFormula1.isSelected = false
            btnFormula2.isSelected = false
            btnFormula3.isSelected = false
            btnFormula4.isSelected = true
            btnFormula5.isSelected = false
        }
        else if(sender == btnFormula5){
            btnFormula1.isSelected = false
            btnFormula2.isSelected = false
            btnFormula3.isSelected = false
            btnFormula4.isSelected = false
            btnFormula5.isSelected = true
        }
        
    }
    
    @IBAction func tapGestureSelect(_ sender: UITapGestureRecognizer) {
        
        if sender.view?.tag == 1 {
            btnFormula1.isSelected = true
            lblFormula1.backgroundColor = UIColor.init(red: 142, green: 195, blue: 176, alpha: 0)
            btnFormula2.isSelected = false
            btnFormula3.isSelected = false
            btnFormula4.isSelected = false
            btnFormula5.isSelected = false
        }
        else if (sender.view?.tag == 2) {
            btnFormula1.isSelected = false
            btnFormula2.isSelected = true
            lblFormula2.backgroundColor = UIColor.init(red: 142, green: 195, blue: 176, alpha: 0)
            btnFormula3.isSelected = false
            btnFormula4.isSelected = false
            btnFormula5.isSelected = false
        }
        else if (sender.view?.tag == 3) {
            btnFormula1.isSelected = false
            btnFormula2.isSelected = false
            btnFormula3.isSelected = true
            lblFormula3.backgroundColor = UIColor.init(red: 142, green: 195, blue: 176, alpha: 0)
            btnFormula4.isSelected = false
            btnFormula5.isSelected = false
        }
        else if (sender.view?.tag == 4) {
            btnFormula1.isSelected = false
            btnFormula2.isSelected = false
            btnFormula3.isSelected = false
            btnFormula4.isSelected = true
            lblFormula4.backgroundColor = UIColor.init(red: 142, green: 195, blue: 176, alpha: 0)
            btnFormula5.isSelected = false
        }
        else if (sender.view?.tag == 5) {
            btnFormula1.isSelected = false
            btnFormula2.isSelected = false
            btnFormula3.isSelected = false
            btnFormula4.isSelected = false
            btnFormula5.isSelected = true
            lblFormula5.backgroundColor = UIColor.init(red: 142, green: 195, blue: 176, alpha: 0)
        }
        
    }
    
    @IBAction func btnSelect(_ sender: UIButton) {
        
        if btnFormula1.isSelected{
            if let numberM = Double(txtEnterM.text ?? ""){
                if let  numberN  = Double(txtEnterN.text ?? ""){
                    if let numberb = Double(txtEnterb.text ?? "")
                    {
                            
                            
                            let result1 = log10(numberM)
                            let result2 = log10(numberb)
                            let result3 = result1 / result2
                            
                            let result4 = log10(numberN)
                            let result5 = log10(numberb)
                            let result6 = result4 / result5
                            
                            let result7 = result3 + result6
                            lblAnswer.text = String(format:"%.8f",result7)
                            
                            let htmlString  = "<html><body><font face=\"Arial\"><h2 align=\"center\">log<sub>b</sub>(M<sup>*</sup>N) = log<sub>b</sub>(M) + log<sub>b</sub>(N)</h2></font></body></html>"
                            let paragraphStyle = NSMutableParagraphStyle()
                            paragraphStyle.alignment = .justified
                            paragraphStyle.firstLineHeadIndent = 0.001
                            
                            
                            let attrStr = try!  NSAttributedString(data:  htmlString.data(using: String.Encoding.utf8)!,
                                                                   options: [.documentType: NSAttributedString.DocumentType.html,
                                                                             .characterEncoding: String.Encoding.utf8.rawValue],
                                                                   documentAttributes: nil)
                            
                            
                            lblDisplayAnswer.attributedText = attrStr
                            viewAnswer.isHidden = false
                            lblEnterM.text = ""
                            lblEnterN.text = ""
                            lblEnterb.text = ""

                    }
                    else
                    {
                        lblEnterb.text = " Please Enter b"
                        lblEnterb.textColor = UIColor.red
                        self.HeightbCondition.constant = 26
                        self.HeightMCondition.constant = 15
                        self.HeightNCondition.constant = 15
                        lblEnterM.text = ""
                        lblEnterN.text = ""
                        viewAnswer.isHidden = true
//                        lblDisplayAnswer.text = "Please Enter b"
//                        lblDisplayAnswer.textColor = UIColor.red
        //                lblDisplayAnswer.text = ""
                    }
                }
                else
                {
                    lblEnterN.text = " Please Enter N"
                    lblEnterN.textColor = UIColor.red
                    self.HeightNCondition.constant = 26
                    self.HeightMCondition.constant = 15
                    self.HeightbCondition.constant = 15
                    lblEnterM.text = ""
                    lblEnterb.text = ""
                    viewAnswer.isHidden = true
    //                lblDisplayAnswer.text = ""
                }
            }
            else
            {
                lblEnterM.text = " Please Enter M"
                lblEnterM.textColor = UIColor.red
                self.HeightMCondition.constant = 26
                self.HeightbCondition.constant = 15
                self.HeightNCondition.constant = 15
                lblEnterb.text = ""
                lblEnterN.text = ""
                viewAnswer.isHidden = true
//                lblDisplayAnswer.text = ""
            }
        }
        
        if btnFormula2.isSelected{
            if let numberM = Double(txtEnterM.text ?? ""){
                if let  numberN  = Double(txtEnterN.text ?? ""){
                    if let numberb = Double(txtEnterb.text ?? "")
                    {
                        let result1 = log10(numberM)
                        let result2 = log10(numberb)
                        let result3 = result1 / result2
                        
                        let result4 = log10(numberN)
                        let result5 = log10(numberb)
                        let result6 = result4 / result5
                        
                        let result7 = result3 - result6
                        lblAnswer.text = String(format:"%.8f",result7)
                        
                        let htmlString1  = "<html><body><font face=\"Arial\"><h2 align=\"center\">log<sub>b</sub>(M/N) = log<sub>b</sub>(M) - log<sub>b</sub>(N)</h2></font></body></html>"
                        let paragraphStyle1 = NSMutableParagraphStyle()
                        paragraphStyle1.alignment = .justified
                        paragraphStyle1.firstLineHeadIndent = 0.001
                        
                        
                        let attrStr1 = try!  NSAttributedString(data:  htmlString1.data(using: String.Encoding.utf8)!,
                                                                options: [.documentType: NSAttributedString.DocumentType.html,
                                                                          .characterEncoding: String.Encoding.utf8.rawValue],
                                                                documentAttributes: nil)
                        
                        
                        lblDisplayAnswer.attributedText = attrStr1
                        viewAnswer.isHidden = false
                        lblEnterM.text = ""
                        lblEnterN.text = ""
                        lblEnterb.text = ""
                    }
                    else
                    {
                        lblEnterb.text = " Please Enter b"
                        lblEnterb.textColor = UIColor.red
                        self.HeightbCondition.constant = 26
                        self.HeightMCondition.constant = 15
                        self.HeightNCondition.constant = 15
                        lblEnterM.text = ""
                        lblEnterN.text = ""
                        viewAnswer.isHidden = true
        //                lblDisplayAnswer.text = ""
                    }
                    
                }
                else
                {
                    lblEnterN.text = " Please Enter N"
                    lblEnterN.textColor = UIColor.red
                    self.HeightNCondition.constant = 26
                    self.HeightMCondition.constant = 15
                    self.HeightbCondition.constant = 15
                    lblEnterM.text = ""
                    lblEnterb.text = ""
                    viewAnswer.isHidden = true
    //                lblDisplayAnswer.text = ""
                }
            }
            else
            {
                lblEnterM.text = " Please Enter M"
                lblEnterM.textColor = UIColor.red
                self.HeightMCondition.constant = 26
                self.HeightbCondition.constant = 15
                self.HeightNCondition.constant = 15
                lblEnterb.text = ""
                lblEnterN.text = ""
                viewAnswer.isHidden = true
//                lblDisplayAnswer.text = ""
            }
        }
        
        if btnFormula3.isSelected{
            if let numberM = Double(txtEnterM.text ?? ""){
                if let  numberN  = Double(txtEnterN.text ?? ""){
                    if let numberb = Double(txtEnterb.text ?? "")
                    {
                        let result1 = log10(numberM)
                        let result2 = log10(numberb)
                        let result3 = result1 / result2
                        
                        let result4 = numberN * result3
                        lblAnswer.text = String(format:"%.8f",result4)
                        
                        let htmlString2  = "<html><body><font face=\"Arial\"><h2 align=\"center\">log<sub>b</sub>(M<sup>n</sup>) = n(log<sub>b</sub>(M))</h2></font></body></html>"
                        let paragraphStyle2 = NSMutableParagraphStyle()
                        paragraphStyle2.alignment = .justified
                        paragraphStyle2.firstLineHeadIndent = 0.001
                        
                        
                        let attrStr2 = try!  NSAttributedString(data:  htmlString2.data(using: String.Encoding.utf8)!,
                                                                options: [.documentType: NSAttributedString.DocumentType.html,
                                                                          .characterEncoding: String.Encoding.utf8.rawValue],
                                                                documentAttributes: nil)
                        
                        
                        lblDisplayAnswer.attributedText = attrStr2
                        viewAnswer.isHidden = false
                        lblEnterM.text = ""
                        lblEnterN.text = ""
                        lblEnterb.text = ""
                    }
                    else
                    {
                        lblEnterb.text = " Please Enter b"
                        lblEnterb.textColor = UIColor.red
                        self.HeightbCondition.constant = 26
                        self.HeightMCondition.constant = 15
                        self.HeightNCondition.constant = 15
                        lblEnterM.text = ""
                        lblEnterN.text = ""
                        viewAnswer.isHidden = true
        //                lblDisplayAnswer.text = ""
                    }
                }
                else
                {
                    lblEnterN.text = " Please Enter N"
                    lblEnterN.textColor = UIColor.red
                    self.HeightNCondition.constant = 26
                    self.HeightMCondition.constant = 15
                    self.HeightbCondition.constant = 15
                    lblEnterM.text = ""
                    lblEnterb.text = ""
                    viewAnswer.isHidden = true
    //                lblDisplayAnswer.text = ""
                }
            }
            else
            {
                lblEnterM.text = " Please Enter M"
                lblEnterM.textColor = UIColor.red
                self.HeightMCondition.constant = 26
                self.HeightbCondition.constant = 15
                self.HeightNCondition.constant = 15
                lblEnterb.text = ""
                lblEnterN.text = ""
                viewAnswer.isHidden = true
//                lblDisplayAnswer.text = ""
            }
        }
        
        if btnFormula4.isSelected{
            if let numberM = Double(txtEnterM.text ?? ""){
                if let  numberN  = Double(txtEnterN.text ?? ""){
                    if let numberb = Double(txtEnterb.text ?? "")
                    {
                        let result1 = log10(numberN)
                        let result2 = log10(numberb)
                        let result3 = result1 / result2
                        
                        let result4 = numberM * result3
                        
                        
                        let result5 = 1 / result4
                        lblAnswer.text = String(format:"%.8f",result5)
                        
                        let htmlString3  = "<html><body><font face=\"Arial\"><h2 align=\"center\">log<sub>b</sub>m<span>&#8730;</span>n = 1/m(log<sub>b</sub>n)</h2></font></body></html>"
                        let paragraphStyle3 = NSMutableParagraphStyle()
                        paragraphStyle3.alignment = .justified
                        paragraphStyle3.firstLineHeadIndent = 0.001
                        
                        
                        let attrStr3 = try!  NSAttributedString(data:  htmlString3.data(using: String.Encoding.utf8)!,
                                                                options: [.documentType: NSAttributedString.DocumentType.html,
                                                                          .characterEncoding: String.Encoding.utf8.rawValue],
                                                                documentAttributes: nil)
                        
                        
                        lblDisplayAnswer.attributedText = attrStr3
                        viewAnswer.isHidden = false
                        lblEnterM.text = ""
                        lblEnterN.text = ""
                        lblEnterb.text = ""
                        
                    }
                    else
                    {
                        lblEnterb.text = " Please Enter b"
                        lblEnterb.textColor = UIColor.red
                        self.HeightbCondition.constant = 26
                        self.HeightMCondition.constant = 15
                        self.HeightNCondition.constant = 15
                        lblEnterM.text = ""
                        lblEnterN.text = ""
                        viewAnswer.isHidden = true
        //                lblDisplayAnswer.text = ""
                    }
                }
                else
                {
                    lblEnterN.text = " Please Enter N"
                    lblEnterN.textColor = UIColor.red
                    self.HeightNCondition.constant = 26
                    self.HeightMCondition.constant = 15
                    self.HeightbCondition.constant = 15
                    lblEnterM.text = ""
                    lblEnterb.text = ""
                    viewAnswer.isHidden = true
    //                lblDisplayAnswer.text = ""
                }
            }
            else
            {
                lblEnterM.text = " Please Enter M"
                lblEnterM.textColor = UIColor.red
                self.HeightMCondition.constant = 26
                self.HeightbCondition.constant = 15
                self.HeightNCondition.constant = 15
                lblEnterb.text = ""
                lblEnterN.text = ""
                viewAnswer.isHidden = true
//                lblDisplayAnswer.text = ""
            }
        }
        
        if btnFormula5.isSelected{
            if let numberM = Double(txtEnterM.text ?? ""){
                if let  numberN  = Double(txtEnterN.text ?? ""){
                    if let numberb = Double(txtEnterb.text ?? "")
                    {
                        let result1 = log10(numberM)
                        let result2 = log10(numberN)
                        let result3 = result1 / result2
                        
                        let result4 = log10(numberM)
                        let result5 = log10(numberb)
                        let result6 = result4 / result5
                        
                        let result7 = result3 * result6
                        lblAnswer.text = String(format:"%.8f",result7)
                        
                        
                        let htmlString4  = "<html><body><font face=\"Arial\"><h2 align=\"center\">log<sub>b</sub>n = log<sub>m</sub>n<sup>*</sup>log<sub>b</sub>m</h2></font></body></html>"
                        let paragraphStyle4 = NSMutableParagraphStyle()
                        paragraphStyle4.alignment = .justified
                        paragraphStyle4.firstLineHeadIndent = 0.001
                        
                        
                        let attrStr4 = try!  NSAttributedString(data:  htmlString4.data(using: String.Encoding.utf8)!,
                                                                options: [.documentType: NSAttributedString.DocumentType.html,
                                                                          .characterEncoding: String.Encoding.utf8.rawValue],
                                                                documentAttributes: nil)
                        
                        
                        lblDisplayAnswer.attributedText = attrStr4
                        viewAnswer.isHidden = false
                        lblEnterM.text = ""
                        lblEnterN.text = ""
                        lblEnterb.text = ""
                    }
                    else
                    {
                        lblEnterb.text = " Please Enter b"
                        lblEnterb.textColor = UIColor.red
                        self.HeightbCondition.constant = 26
                        self.HeightMCondition.constant = 15
                        self.HeightNCondition.constant = 15
                        lblEnterM.text = ""
                        lblEnterN.text = ""
                        viewAnswer.isHidden = true
        //                lblDisplayAnswer.text = ""
                    }
                }
                else
                {
                    lblEnterN.text = " Please Enter N"
                    lblEnterN.textColor = UIColor.red
                    self.HeightNCondition.constant = 26
                    self.HeightMCondition.constant = 15
                    self.HeightbCondition.constant = 15
                    lblEnterM.text = ""
                    lblEnterb.text = ""
                    viewAnswer.isHidden = true
    //                lblDisplayAnswer.text = ""
                }
            }
            else
            {
                lblEnterM.text = "Please Enter M"
                lblEnterM.textColor = UIColor.red
                self.HeightMCondition.constant = 26
                self.HeightbCondition.constant = 15
                self.HeightNCondition.constant = 15
                lblEnterb.text = ""
                lblEnterN.text = ""
                viewAnswer.isHidden = true
//                lblDisplayAnswer.text = ""
            }
        }
        
//        viewAnswer.isHidden = false
        
    }
    
    @IBAction func btnClear(_ sender: Any) {
        txtEnterM.text = ""
        txtEnterN.text = ""
        txtEnterb.text = ""
        lblAnswer.text = ""
        lblDisplayAnswer.text = ""
        lblEnterM.text = ""
        lblEnterb.text = ""
        lblEnterN.text = ""
        self.HeightMCondition.constant = 15
        self.HeightbCondition.constant = 15
        self.HeightNCondition.constant = 15
        
        
        viewAnswer.isHidden = true
        self.resignFirstResponder()
        
    }
    
    
}
