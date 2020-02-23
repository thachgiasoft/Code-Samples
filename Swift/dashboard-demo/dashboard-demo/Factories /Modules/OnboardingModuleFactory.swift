//
//  OnboardingModuleFactory.swift
//  dashboard-demo
//
//  Created by atikhonov on 21.02.2020.
//  Copyright © 2020 atikhonov. All rights reserved.
//

import Foundation

protocol OnboardingModuleFactory {
    func makeOnboarding() -> OnboardingView
    func makeOnboardingFinal() -> OnboardingFinalView
}
