//
//  Category.swift
//  coder-swag
//
//  Created by Philip on 3/3/19.
//  Copyright © 2019 Philip. All rights reserved.
//

import Foundation


struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title:String, imageName:String) {
        self.title = title
        self.imageName = imageName
    }
}
