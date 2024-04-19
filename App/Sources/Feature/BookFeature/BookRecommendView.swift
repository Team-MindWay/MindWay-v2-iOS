import SwiftUI

struct RecommendBookView: View {
    @State private var navigateTopBarStatus: Bool = false
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
                            Rectangle()
                                .foregroundColor(.mindway(.main(.main)))
                                .frame(width: 80, height: 2)
                                .cornerRadius(8)
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
                            Rectangle()
                                .foregroundColor(.mindway(.main(.main)))
                                .frame(width: 80, height: 2)
                                .cornerRadius(8)
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
        .padding(.vertical, 20)
        .padding(.horizontal, 24)
    }
}
