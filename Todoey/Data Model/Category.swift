//
//  Category.swift
//  Todoey
//
//  Created by Pavel on 11/07/2019.
//  Copyright © 2019 Pavel. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name : String = ""
    let items = List<Item>()
}
