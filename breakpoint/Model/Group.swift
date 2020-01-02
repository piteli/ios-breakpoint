//
//  Group.swift
//  breakpoint
//
//  Created by Fitri San on 02/01/2020.
//  Copyright © 2020 Fitri San. All rights reserved.
//

import Foundation

class Group {
    private var _groupTitle : String
    private var _groupDesc : String
    private var _key : String
    private var _memberCount : Int
    private var _members : [String]
    
    var groupTitle : String {
        return _groupTitle
    }
    
    var groupDesc : String {
        return _groupDesc
    }
    
    var key : String {
        return _key
    }
    
    var memberCount : Int {
        return _memberCount
    }
    
    var members : [String] {
        return _members
    }
    
    init(title : String, description : String, key : String, members : [String], memberCount : Int){
        self._groupTitle = title
        self._groupDesc = description
        self._key = key
        self._members = members
        self._memberCount = memberCount
    }
}
