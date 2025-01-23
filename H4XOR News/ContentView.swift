//
//  ContentView.swift
//  H4XOR News
//
//  Created by 이재영 on 1/22/25.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()

    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            }
            .navigationBarTitle("H4XOR NEWS")
        }
        .onAppear() {
            self.networkManager.fetchData()
        }
    }
    
}


//struct SimplePost: Identifiable {
//    
//    let id: Int  // Hasable
//    let title: String
//    
//}


//let posts = [
//    SimplePost(id: 1, title: "Hello"),
//    SimplePost(id: 2, title: "Bonjour"),
//    SimplePost(id: 3, title: "Hola")
//]


#Preview {
    ContentView()
}
