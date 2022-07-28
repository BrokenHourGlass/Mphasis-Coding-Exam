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
            VStack(alignment: .leading){
                Text("User Id: \("id")")
                Text("Name: \("firstName") \("LastName")")
                Text("Email: \("email")")
            }.onTapGesture {
                print("go to next page")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
