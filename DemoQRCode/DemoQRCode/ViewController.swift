//
//  ViewController.swift
//  DemoQRCode
//
//  Created by Susim Samanta on 16/02/16.
//  Copyright © 2016 Susim Samanta. All rights reserved.
//

import UIKit
import SSQRCodeScanner

class ViewController: UIViewController {
    var qrScanner : SSQRScanner?
    @IBOutlet weak var scannerView : UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadQRCodeScanner()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func loadQRCodeScanner() {
        self.qrScanner = SSQRScanner()
        self.qrScanner!.createQRScannerOnCompletion(inView: self.scannerView, scannerHandler: {[weak self] (obj, error) -> Void in
            if((obj) != nil) {
                if self != nil {
                    let result = obj as! String
                    print(result)
                }
            }
            if((error) != nil) {
                print(error ?? "")
            }
            })
    }

}

