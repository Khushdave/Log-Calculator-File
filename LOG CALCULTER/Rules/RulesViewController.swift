//
//  RulesViewController.swift
//  LOG CALCULTER
//
//  Created by Khush Dave on 24/02/23.
//

import UIKit

class RulesViewController: UIViewController {

    @IBOutlet weak var lblHeaderProduct: UILabel!
    @IBOutlet weak var lblHeaderQuotient: UILabel!
    @IBOutlet weak var lblHeaderLogofpower: UILabel!
    @IBOutlet weak var lblHeaderLogofroot: UILabel!
    @IBOutlet weak var lblHeaderChangeofBase: UILabel!
    @IBOutlet weak var lblHeaderLogofe: UILabel!
    @IBOutlet weak var lblHeaderLogofone: UILabel!
    @IBOutlet weak var lblHeaderLogofreciprocal: UILabel!
    
    
    
    
    
    @IBOutlet weak var lblProductRule: UILabel!
    @IBOutlet weak var lblQuotientRule: UILabel!
    @IBOutlet weak var lblLogofpower: UILabel!
    @IBOutlet weak var lblLogofroot: UILabel!
    @IBOutlet weak var lblChangeofBase: UILabel!
    @IBOutlet weak var lblLogofe: UILabel!
    @IBOutlet weak var lblLogofone: UILabel!
    @IBOutlet weak var lblLogofreciprocal: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let htmlString  = "<html><body><font face=\"Arial\"><h2>log<sub>b</sub>(M<sup>*</sup>N) = log<sub>b</sub>(M) + log<sub>b</sub>(N)</h2></font></body></html>"
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .justified
        paragraphStyle.firstLineHeadIndent = 0.001
        
        
        let attrStr = try!  NSAttributedString(data:  htmlString.data(using: String.Encoding.utf8)!,
                                               options: [.documentType: NSAttributedString.DocumentType.html,
                                                         .characterEncoding: String.Encoding.utf8.rawValue],
                                               documentAttributes: nil)
        
        
        lblProductRule.attributedText = attrStr
        
        let htmlString1  = "<html><body><font face=\"Arial\"><h2>log<sub>b</sub>(M/N) = log<sub>b</sub>(M) - log<sub>b</sub>(N)</h2></font></body></html>"
        let paragraphStyle1 = NSMutableParagraphStyle()
        paragraphStyle.alignment = .justified
        paragraphStyle.firstLineHeadIndent = 0.001
        
        
        let attrStr1 = try!  NSAttributedString(data:  htmlString1.data(using: String.Encoding.utf8)!,
                                               options: [.documentType: NSAttributedString.DocumentType.html,
                                                         .characterEncoding: String.Encoding.utf8.rawValue],
                                               documentAttributes: nil)
        
        
        lblQuotientRule.attributedText = attrStr1
        
        let htmlString2  = "<html><body><font face=\"Arial\"><h2>log<sub>b</sub>(M<sup>n</sup>) = n(log<sub>b</sub>(M))</h2></font></body></html>"
        let paragraphStyle2 = NSMutableParagraphStyle()
        paragraphStyle.alignment = .justified
        paragraphStyle.firstLineHeadIndent = 0.001
        
        
        let attrStr2 = try!  NSAttributedString(data:  htmlString2.data(using: String.Encoding.utf8)!,
                                               options: [.documentType: NSAttributedString.DocumentType.html,
                                                         .characterEncoding: String.Encoding.utf8.rawValue],
                                               documentAttributes: nil)
        
        
        lblLogofpower.attributedText = attrStr2
        
        let htmlString3  = "<html><body><font face=\"Arial\"><h2>log<sub>b</sub>m<span>&#8730;</span>n = 1/m(log<sub>b</sub>n)</h2></font></body></html>"
        let paragraphStyle3 = NSMutableParagraphStyle()
        paragraphStyle.alignment = .justified
        paragraphStyle.firstLineHeadIndent = 0.001
        
        
        let attrStr3 = try!  NSAttributedString(data:  htmlString3.data(using: String.Encoding.utf8)!,
                                               options: [.documentType: NSAttributedString.DocumentType.html,
                                                         .characterEncoding: String.Encoding.utf8.rawValue],
                                               documentAttributes: nil)
        
        
        lblLogofroot.attributedText = attrStr3
        
        
        let htmlString4  = "<html><body><font face=\"Arial\"><h2>log<sub>b</sub>n = log<sub>m</sub>n<sup>*</sup>log<sub>b</sub>m</h2></font></body></html>"
        let paragraphStyle4 = NSMutableParagraphStyle()
        paragraphStyle.alignment = .justified
        paragraphStyle.firstLineHeadIndent = 0.001
        
        
        let attrStr4 = try!  NSAttributedString(data:  htmlString4.data(using: String.Encoding.utf8)!,
                                               options: [.documentType: NSAttributedString.DocumentType.html,
                                                         .characterEncoding: String.Encoding.utf8.rawValue],
                                               documentAttributes: nil)
        
        
       lblChangeofBase.attributedText = attrStr4
        
        
        let htmlString5  = "<html><body><font face=\"Arial\"><h2>log(e) = 1</h2></font></body></html>"
        let paragraphStyle5 = NSMutableParagraphStyle()
        paragraphStyle.alignment = .justified
        paragraphStyle.firstLineHeadIndent = 0.001
        
        
        let attrStr5 = try!  NSAttributedString(data:  htmlString5.data(using: String.Encoding.utf8)!,
                                               options: [.documentType: NSAttributedString.DocumentType.html,
                                                         .characterEncoding: String.Encoding.utf8.rawValue],
                                               documentAttributes: nil)
        
        
       lblLogofe.attributedText = attrStr5
        
        
        let htmlString6  = "<html><body><font face=\"Arial\"><h2>log(1) = 0</h2></font></body></html>"
        let paragraphStyle6 = NSMutableParagraphStyle()
        paragraphStyle.alignment = .justified
        paragraphStyle.firstLineHeadIndent = 0.001
        
        
        let attrStr6 = try!  NSAttributedString(data:  htmlString6.data(using: String.Encoding.utf8)!,
                                               options: [.documentType: NSAttributedString.DocumentType.html,
                                                         .characterEncoding: String.Encoding.utf8.rawValue],
                                               documentAttributes: nil)
        
        
       lblLogofone.attributedText = attrStr6
        
        
        let htmlString7  = "<html><body><font face=\"Arial\"><h2>log(1/M) = -log(M)</h2></font></body></html>"
        let paragraphStyle7 = NSMutableParagraphStyle()
        paragraphStyle.alignment = .justified
        paragraphStyle.firstLineHeadIndent = 0.001
        
        
        let attrStr7 = try!  NSAttributedString(data:  htmlString7.data(using: String.Encoding.utf8)!,
                                               options: [.documentType: NSAttributedString.DocumentType.html,
                                                         .characterEncoding: String.Encoding.utf8.rawValue],
                                               documentAttributes: nil)
        
        
       lblLogofreciprocal.attributedText = attrStr7
        
    }
    


}
