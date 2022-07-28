//
//  ContentView.swift
//  Mphasis Coding Exam
//
//  Created by admin on 7/28/22.
//

import SwiftUI
import CoreData

var test = DataFunction(web: PATH)

struct ContentView: View {
    var body: some View {
        let _ = print(test.getData())
        List (test.fetch){i in
            Text("data should go here")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
