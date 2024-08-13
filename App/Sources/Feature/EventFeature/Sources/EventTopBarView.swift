import SwiftUI

struct EventTopBarView: View {
    @State private var topNavigationState = false
    @State private var detailState = false
    
    private let eventDetailFactory: any EventDetailFactory
    
    init(
        eventDetailFactory: any EventDetailFactory
    ) {
        self.eventDetailFactory = eventDetailFactory
    }
    
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
                                eventTitle: "가을 독서 행사",
                                eventDescription: "독서의 계절, 가을을 맞아 도서관에서 특별한 이벤트를준비했습니다. 랜덤으로 초성 책 제목이 적혀있는 쪽지를 뽑고, 그에 맞는 책을 찾아오면 푸짐한 선물뽑기를 할 수 있습니다. 점심시간마다 진행할 예정이니 많은 관심 바랍니다.",
                                eventTime: "2024년 08월 1일 ~ 2024년 09월 1일",
                                detailState: $detailState
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
            .fullScreenCover(isPresented: $detailState) {
                eventDetailFactory
                    .makeView()
                    .eraseToAnyView()
            }
        }
    }
}

@ViewBuilder
func detailView(
    eventTitle: String,
    eventDescription: String,
    eventTime: String,
    detailState: Binding<Bool>
) -> some View {
    
            VStack(alignment: .leading, spacing: 8) {
                HStack(spacing: 0) {
                    Text(eventTitle)
                        .mindWaySemiboldFont(.m3)
                        .frame(width: 270, height: 24, alignment: .leading)

                    Button {
                        
                    } label: {
                        MindWayAsset.Icons.chevronRight.swiftUIImage
                            .onTapGesture {
                                detailState.wrappedValue = true
                            }
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
