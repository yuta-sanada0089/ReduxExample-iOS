//
//  GlobalState.swift
//  Redux
//
//  Created by YutaSanada on 2019/03/17.
//  Copyright © 2019 YutaSanada. All rights reserved.
//

import Foundation
import ReSwift
import API

public struct GlobalState: ReSwift.StateType {
    public typealias ThisState = GlobalState
    public enum AppTab {
        case main
        case favorite
        case setting
        
        public func isSelected(with appTab: AppTab) -> Bool {
            return self == appTab
        }
    }
    public enum ApplicationState {
        case willResignActive
        case didEnterBackground
        case willEnterForeground
        case didBecomeActive
        case willTerminate
    }
    private var appState: ApplicationState = .willTerminate
    private var didBecomeActiveTrigger: ShouldTrigger?
    public private(set) var selectedAddTab: AppTab = .main
}

extension GlobalState {
    public enum Action: ReSwift.Action {
        case changeAppTab(appTab: AppTab)
        case changeApplicationState(appState: ApplicationState)
    }
}

extension GlobalState {
    public static func reducer(action: ReSwift.Action, state: ThisState) -> ThisState {
        guard let action = action as? ThisState.Action else { return state }
        var state = state
        switch action {
        case .changeAppTab(let appTab):
            state.selectedAddTab = appTab
        case .changeApplicationState(let appState):
            state.appState = appState
            switch appState {
            case .didBecomeActive:
                state.didBecomeActiveTrigger = ShouldTrigger()
            default: break
            }
        }
        return state
    }
}
