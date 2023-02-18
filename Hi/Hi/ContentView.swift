//
//  ContentView.swift
//  Hi
//
//  Created by Carl Baltrunas on 2/16/23.
//

import SwiftUI
import Hello

struct ContentView: View {
    init() {
        Hello.Text("Called from swift")
        Hello.Text("Called from swift again")
    }
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
