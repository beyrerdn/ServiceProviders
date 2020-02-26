//
//  MasterViewController.swift
//  ServiceProviders
//
//  Created by Daniel Nathan Beyrer on 2/25/20.
//  Copyright © 2020 Daniel Nathan Beyrer. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class MasterViewController: UITableViewController {
    
    var service:ServiceProviderService? = nil;
    var detailViewController: DetailViewController? = nil
    var objects = [[String:Any]]()
    var url = "http://private-895ba-angieslistcodingchallenge.apiary-mock.com/angieslist/codingChallenge/serviceproviders";


    override func viewDidLoad() {
        super.viewDidLoad()
        AF.request(url).responseJSON { (response) in
            if let resData = response.value as! [String:Any]? {
                if let responseProviders = resData["serviceproviders"] as! [[String:Any]]? {
                    debugPrint("responseProviders:", responseProviders)
                    self.objects = responseProviders;
//                    self.objects = responseProviders.sorted(by: {
//                        $0["name"] < $1["name"]
//                    })
                    self.tableView?.reloadData();
                }

            }
        };
    }

    override func viewWillAppear(_ animated: Bool) {
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ServiceProviderTableViewCell", for: indexPath) as! ServiceProviderTableViewCell;
        if (self.objects.count > 0) {
            let provider = objects[indexPath.row]
            cell.providerName?.text = provider["name"] as? String
            cell.reviewCount?.text = provider["reviewCount"] as? String
        }
        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            objects.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }


}

