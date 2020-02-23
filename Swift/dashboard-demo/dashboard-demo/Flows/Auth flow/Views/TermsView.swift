//
//  TermsView.swift
//  dashboard-demo
//
//  Created by atikhonov on 21.02.2020.
//  Copyright © 2020 atikhonov. All rights reserved.
//

import Foundation

protocol TermsView: BaseView {
    var confirmed: Bool { get set }
    var onConfirmChanged: ((Bool) -> ())? { get set }
}
