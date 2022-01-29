//
//  Extension.swift
//  Follow
//
//  Created by Amol Kumar on 2022-01-29.
//

import UIKit

//MARK: Extensions

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


// MARK: Javascript

// JavaScript String for cleaner project
let checkToggle = """
document
.getElementsByClassName('navbar-toggler svg-svg-20-hamburger svg-image d-lg-none')[0]
.getAttribute('aria-expanded')
"""

let closeMenu = """
document
.getElementsByClassName('close-button')[0]
.click()
"""

let openMenu = """
document
.getElementsByClassName('navbar-toggler svg-svg-20-hamburger svg-image d-lg-none')[0]
.click()
"""
