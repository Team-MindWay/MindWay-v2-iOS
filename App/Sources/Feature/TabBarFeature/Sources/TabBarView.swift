import SwiftUI

struct TabBarView: View {
    @State var selection: TabFlow = .home
    
    private let mainFactory: any MainFactory
    private let eventFactory: any EventFactory
    private let recommendBookFactory: any RecommendBookFactory
    private let myPageFactory: any MyPageFactory
    
    init(
        mainFactory: any MainFactory,
        eventFactory: any EventFactory,
        recommendBookFactory: any RecommendBookFactory,
        myPageFactory: any MyPageFactory
    ) {
        self.mainFactory = mainFactory
        self.eventFactory = eventFactory
        self.recommendBookFactory = recommendBookFactory
        self.myPageFactory = myPageFactory
    }
    
    var body: some View {
        TabView(selection: $selection) {
            mainFactory.makeView()
                .eraseToAnyView()
                .tag(TabFlow.home)
                .tabItem {
                    Image(selection == .home ? "home_fill" : "home")
                    Text("홈")
                }
            
            eventFactory.makeView()
                .eraseToAnyView()
                .tag(TabFlow.event)
                .tabItem {
                    Image(selection == .event ? "heart_fill" : "heart")
                    Text("이벤트")
                }
            
            recommendBookFactory.makeView()
                .eraseToAnyView()
                .tag(TabFlow.book)
                .tabItem {
                    Image(selection == .book ? "book_fill" : "book")
                    Text("도서")
                }
            
            myPageFactory.makeView()
                .eraseToAnyView()
                .tag(TabFlow.my)
                .tabItem {
                    Image(selection == .my ? "profile_fill" : "profile")
                    Text("마이")
                }
        }
        .accentColor(.black)
    }
}


