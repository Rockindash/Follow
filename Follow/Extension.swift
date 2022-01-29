//
//  Extension.swift
//  Follow
//
//  Created by Amol Kumar on 2022-01-29.
//

import UIKit

// To convert value fetched from 'aria-expanded' to a Bool
extension String {
    func toBool() -> Bool {
        switch self {
            case "true":
                return true
            default:
                return false
        }
    }
}
