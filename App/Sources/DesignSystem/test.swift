//
//  test.swift
//  MindWay
//
//  Created by 이승화 on 4/3/24.
//  Copyright © 2024 team.mindway. All rights reserved.
//

import SwiftUI

struct test: View {
    @State var text = ""
    var body: some View {
        MindWayTextField("asdf", text: $text, title: "asdf") {
//            placeholder
        }
    }
}

#Preview {
    test()
}
