import SwiftUI

struct RecommendBookView: View {
    @State private var topNavigationState: Bool = false
    
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Button {
                    topNavigationState = false
                } label: {
                    VStack(spacing: 0) {
                        Text("Novel")
                            .foregroundColor(topNavigationState ? Color.mindway(.gray(.g4)) : Color.mindway(.black(.black)))
                            .padding(.horizontal, 12)
                            .padding(.vertical, 8)
                            .mindWaySemiboldFont(.m1)
                        
                        if topNavigationState == false {
                            Rectangle()
                                .foregroundColor(.mindway(.main(.main)))
                                .frame(width: 80, height: 5)
                                .cornerRadius(8)
                        }
                    }
                }
                
                Button {
                    topNavigationState = true
                } label: {
                    VStack(spacing: 0) {
                        Text("Essay")
                            .foregroundColor(topNavigationState ? Color.mindway(.black(.black)) : Color.mindway(.gray(.g4)))
                            .padding(.horizontal, 12)
                            .padding(.vertical, 8)
                            .mindWaySemiboldFont(.m1)
                        
                        if topNavigationState == true {
                            Rectangle()
                                .foregroundColor(.mindway(.main(.main)))
                                .frame(width: 80, height: 5)
                                .cornerRadius(8)
                        }
                    }
                }
                
                Spacer()
                
                MindWayAsset.Icons.addBlack.swiftUIImage
                    .buttonWrapper {}
            }
            .padding(.horizontal, 24)
            
            TabView(selection: $topNavigationState) {
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 20) {
                        ForEach(1...5, id: \.self) { _ in
                            RecommendBook()
                                .padding(.horizontal, 24)
                        }
                    }
                }
                .tag(false)
                
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 20) {
                        ForEach(1...5, id: \.self) { _ in
                            RecommendBook()
                                .padding(.horizontal, 24)
                        }
                    }
                }
                .tag(true)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .padding(.vertical, 28)
            
        }
        .padding(.vertical, 20)
    }
}
