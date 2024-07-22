import SwiftUI

struct RecommendBookView: View {
    @State var navigateTopBarStatus: Bool = false
    @State var isBookOrder: Bool = false

    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Button {
                    navigateTopBarStatus = false
                } label: {
                    VStack(spacing: 0) {
                        Text("Novel")
                            .foregroundColor(navigateTopBarStatus ? Color.mindway(.gray(.g4)) : Color.mindway(.black(.black)))
                            .padding(.horizontal, 12)
                            .padding(.vertical, 8)
                            .mindWaySemiboldFont(.m1)

                        if navigateTopBarStatus == false {
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(.mindway(.main(.main)))
                                .frame(width: 80, height: 2)
                        }
                    }
                }

                Button {
                    navigateTopBarStatus = true
                } label: {
                    VStack(spacing: 0) {
                        Text("Essay")
                            .foregroundColor(navigateTopBarStatus ? Color.mindway(.black(.black)) : Color.mindway(.gray(.g4)))
                            .padding(.horizontal, 12)
                            .padding(.vertical, 8)
                            .mindWaySemiboldFont(.m1)

                        if navigateTopBarStatus == true {
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(.mindway(.main(.main)))
                                .frame(width: 80, height: 2)
                        }
                    }
                }

                Spacer()

                MindWayAsset.Icons.addBlack.swiftUIImage
                    .buttonWrapper {
                        isBookOrder = true
                    }
                    .fullScreenCover(
                        isPresented: $isBookOrder
                    ) {
                        BookOrderView()
                    }
            }
            .padding(.horizontal, 24)

            TabView(selection: $navigateTopBarStatus) {
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 20) {
                        ForEach(1...5, id: \.self) { _ in
                            RecommendBook()
                        }
                    }
                }
                .tag(false)

                ScrollView(showsIndicators: false) {
                    VStack(spacing: 20) {
                        ForEach(1...5, id: \.self) { _ in
                            RecommendBook()
                        }
                    }
                }
                .tag(true)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .padding(.vertical, 28)
        }
    }
}
