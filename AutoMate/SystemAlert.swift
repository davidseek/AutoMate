//
//  SystemAlert.swift
//  AutoMate
//
//  Created by Ewelina Cyło on 20/01/2017.
//  Copyright © 2017 PGS Software. All rights reserved.
//

import Foundation
import XCTest

/// System alert allow element.
public protocol SystemAlertAllow {
    /// Allow messages
    static var allow: [String] { get }
    /// Allow element
    var allowElement: XCUIElement { get }
}

/// System alert deny element.
public protocol SystemAlertDeny {
    /// Deny messages
    static var deny: [String] { get }
    /// Deny element
    var denyElement: XCUIElement { get }
}

/// System service request alert.
public protocol SystemAlert {
    /// Collection of messages possible to receive due to system service request
    static var messages: [String] { get }
    /// Alert element
    var alert: XCUIElement { get set }

    // MARK: - Initializers
    init?(element: XCUIElement)
}

extension SystemAlertAllow where Self: SystemAlert {
    public var allowElement: XCUIElement {
        // TODO: Provide implementation
        return XCUIElement()
    }
}

extension SystemAlertDeny where Self: SystemAlert {
    public var denyElement: XCUIElement {
        // TODO: Provide implementation
        return XCUIElement()
    }
}