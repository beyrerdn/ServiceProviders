//
//  ServiceProviderTableViewCell.swift
//  ServiceProviders
//
//  Created by Daniel Nathan Beyrer on 2/25/20.
//  Copyright © 2020 Daniel Nathan Beyrer. All rights reserved.
//

import UIKit

class ServiceProviderTableViewCell: UITableViewCell {
    @IBOutlet weak var city: UILabel?
    @IBOutlet weak var state: UILabel?
    @IBOutlet weak var providerName: UILabel?
    @IBOutlet weak var overallGrade: UILabel?
    @IBOutlet weak var reviewCount: UILabel?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
