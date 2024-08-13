import NeedleFoundation
import Service
import SwiftUI

public final class AppComponent: BootstrapComponent {
    public func makeRootView() -> some View {
        rootComponent.makeView()
    }
    
    var rootComponent: RootComponent {
        RootComponent(parent: self)
    }
    
    public var keychain: Keychain {
        shared {
            KeychainImpl()
        }
    }
}

public extension AppComponent {
    var signinFactory: any SigninFactory {
        SigninComponent(parent: self)
    }
    
    var mainFactory: any MainFactory {
        MainComponent(parent: self)
    }
    
    var tabBarFactory: any TabBarFactory {
        TabBarComponent(parent: self)
    }
    
    var eventFactory: any EventFactory {
        EventComponent(parent: self)
    }
    
    var myPageFactory: any MyPageFactory {
        MyPageComponent(parent: self)
    }
    
    var recommendBookFactory: any RecommendBookFactory {
        RecommendBookComponent(parent: self)
    }
    
    var bookOrderFactory: any BookOrderFactory {
        BookOrderComponent(parent: self)
    }
    
    var mindwayIntroduceFactory: any MindwayIntroduceFactory {
        MindwayIntroduceComponent(parent: self)
    }
    
    var eventDetailFactory: any EventDetailFactory {
        EventDetailComponent(parent: self)
    }
}
