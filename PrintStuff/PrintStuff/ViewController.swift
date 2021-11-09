//
//  ViewController.swift
//  PrintStuff
//
//  Created by Aleksandar Matijaca on 2021-07-26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func clickedPrintButton(_ sender: Any) {
                
        // UIPrintInteractionController presents a user interface and manages the printing
        let printController = UIPrintInteractionController.shared

        let printInfo = UIPrintInfo(dictionary: nil)
        printInfo.outputType = .photo
        printInfo.jobName = "Alex's Test Print Job"
        printController.printInfo = printInfo

        let paperWidth = CGFloat(1024)
        let paperHeight = CGFloat(1300)
        let labelWidth = CGFloat(1024)
        let labelHeight = CGFloat(58)
        let detailStartPoint = CGFloat(450)
        let fontSize = CGFloat(42)
        
        let leftOffset = CGFloat(10.0)
        let viewForPrint = UIView(frame: CGRect(x: 0, y: 0, width: paperWidth, height: paperHeight))
        
        let picimage = UIImage.init(named: "coffee")
        let resizedImage = Utilities.resizeImage(image: picimage!, targetSize: CGSize(width: 320.0, height: 320.0))
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 320, height: 320))
        imageView.image = resizedImage
        imageView.sizeToFit()
        viewForPrint.addSubview(imageView)
        
        
        let label = UILabel(frame: CGRect(x: leftOffset, y: 300, width: labelWidth, height: 64))
        label.textAlignment = .left
        label.text = "Some Title"
        label.font = UIFont.boldSystemFont(ofSize: 64)
        viewForPrint.addSubview(label)

        let appName = UILabel(frame: CGRect(x: leftOffset, y: 360, width: labelWidth, height: 64))
        appName.textAlignment = .left
        appName.text = "A subtitle line"
        appName.font = UIFont.boldSystemFont(ofSize: 32)
        viewForPrint.addSubview(appName)

        let name_label = UILabel(frame: CGRect(x: leftOffset, y: detailStartPoint , width: labelWidth, height: labelHeight))
        name_label.textAlignment = .left
        name_label.text = "One More Line"
        name_label.font = UIFont.boldSystemFont(ofSize: fontSize)
        viewForPrint.addSubview(name_label)

        let name_labela = UILabel(frame: CGRect(x: leftOffset, y: detailStartPoint + (CGFloat(1) * labelHeight), width: labelWidth, height: labelHeight))
        name_labela.textAlignment = .left
        name_labela.text = "the best line..."
        name_labela.font = UIFont.boldSystemFont(ofSize: fontSize)
        viewForPrint.addSubview(name_labela)

        let vname_label = UILabel(frame: CGRect(x: leftOffset, y: detailStartPoint + (CGFloat(2) * labelHeight), width: labelWidth, height: labelHeight))
        vname_label.textAlignment = .left
        vname_label.text = "Some more stuff"
        vname_label.font = UIFont.boldSystemFont(ofSize: fontSize)
        viewForPrint.addSubview(vname_label)

        
        
        let date_label = UILabel(frame: CGRect(x: leftOffset, y: detailStartPoint + (CGFloat(3) * labelHeight), width: labelWidth, height: labelHeight))
        date_label.textAlignment = .left
        

        let formatter = DateFormatter()
        formatter.setLocalizedDateFormatFromTemplate("dd-MMM-yyyy")
        let datetime = formatter.string(from: Date())
        
        date_label.text = "Date: \(datetime)"
        date_label.font = UIFont.boldSystemFont(ofSize: fontSize)
        viewForPrint.addSubview(date_label)


        let dose_label = UILabel(frame: CGRect(x: leftOffset, y: detailStartPoint + (CGFloat(5) * labelHeight), width: labelWidth, height: labelHeight))
        dose_label.textAlignment = .left
        dose_label.text = "http://www.ourcoffeeshop.ca/"
        dose_label.font = UIFont.boldSystemFont(ofSize: fontSize)
        viewForPrint.addSubview(dose_label)



        printController.printingItem = viewForPrint.toImage()
        // Present print controller like usual view controller. Also5 completionHandler is available if needed.
        printController.present(animated: true)


    }
}

