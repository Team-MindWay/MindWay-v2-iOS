import SwiftUI

struct EventTopBarView: View {
    @State private var topNavigationState = false
    @StateObject private var viewmodel = EventViewModel()
    
    var body: some View {
        NavigationView {
            VStack(alignment: topNavigationState ? .trailing : .leading, spacing: 0) {
                HStack(spacing: 0) {
                    Button {
                        topNavigationState = false
                    } label: {
                        Text("진행 중인 이벤트")
                            .mindWaySemiboldFont(.m3)
                            .foregroundColor(topNavigationState ? .mindway(.gray(.g3)) : .black)
                            .padding(.leading, 45)
                            .padding(.bottom, 12)
                    }
                    
                    Spacer()
                    
                    Button {
                        topNavigationState = true
                    } label: {
                        Text("지난 이벤트")
                            .mindWaySemiboldFont(.m3)
                            .foregroundColor(topNavigationState ? .black : .mindway(.gray(.g3)))
                            .padding(.trailing, 61)
                            .padding(.bottom, 12)
                    }
                }
                .padding(.top, 32)

                    Rectangle()
                        .foregroundColor(.mindway(.main(.main)))
                        .frame(width: UIScreen.main.bounds.width / 2, height: 2)
                        .animation(.easeInOut(duration: 0.2), value: topNavigationState)
                        .background(
                            Rectangle()
                                .frame(width: 1000, height: 2)
                                .foregroundStyle(.gray)
                        )
                
                TabView(selection: $topNavigationState) {
                    ScrollView(showsIndicators: false) {
                        ForEach(1...5, id: \.self) { _ in
                            detailView(
                                eventTitle: viewmodel.eventTitle,
                                eventDescription: viewmodel.eventDescription,
                                eventTime: viewmodel.eventTime
                            )
                        }
                    }
                    .tag(false)
                    
                    noneEvent()
                        .tag(true)
                }
                .tabViewStyle(.page)
                
                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

@ViewBuilder
func detailView(
    eventTitle: String,
    eventDescription: String,
    eventTime: String
) -> some View {
            VStack(alignment: .leading, spacing: 8) {
                HStack(spacing: 0) {
                    Text(eventTitle)
                        .mindWaySemiboldFont(.m3)
                        .frame(width: 270, height: 24, alignment: .leading)

                    Button {
                        
                    } label: {
                        MindWayAsset.Icons.chevronRightGray.swiftUIImage
                    }
                }

                Text(eventDescription)
                    .mindWayRegularFont(.m3)
                    .foregroundColor(.mindway(.gray(.g8)))
                    .padding(.trailing, 48)
                    .lineLimit(3)
                    .lineSpacing(5)

                HStack(spacing: 0) {
                    Text(eventTime)
                        .mindWayRegularFont(.label)
                        .foregroundColor(.mindway(.gray(.g4)))
                        .frame(height: 22)
                        .font(.system(size: 14))
                }

                Spacer()
            }
            .padding(.horizontal, 48)
            .padding(.top,20)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(.mindway(.white(.white)))
                    .padding(.horizontal, 20)
                    .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 0)
                
            )
            .padding(.top, 20)
            
}

@ViewBuilder
func noneEvent() -> some View {
    VStack(spacing: 0) {
        MindWayAsset.Images.eventNoneIMG.swiftUIImage
            .padding(.top, 160)
        Text("지난 이벤트가 없습니다")
            .frame(height: 27)
            .mindWayRegularFont(.m2)
            .padding(.top, 9)
            .foregroundColor(.mindway(.gray(.g5)))
        
        Spacer()
    }
}

#Preview {
    EventTopBarView()
}
