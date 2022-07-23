//
//  LocalState.swift
//  Bankey
//
//  Created by 강민수 on 2022/07/23.
//

import Foundation
public class LocalState {
    private enum Keys: String {
        case hasOnboarded
    }
    
    public static var hasOnboarded: Bool {
        get {
            return UserDefaults.standard.bool(forKey: Keys.hasOnboarded.rawValue)
        }
        set(newValue) {
            UserDefaults.standard.set(newValue, forKey: Keys.hasOnboarded.rawValue)
        }
    
    }
}
