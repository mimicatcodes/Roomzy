//
//  LogInViewController.swift
//  
//
//  Created by Robert Deans on 12/23/16.
//
//

import UIKit
import SnapKit

class LogInViewController: UIViewController {

    let loginView = LogInView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("log in is running")
        
        
        view.addSubview(loginView)
        loginView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
