//
//  ContentView.swift
//  SimpleMenu
//
//  Created by Francisco Jean on 04/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.yellow.opacity(0.1).ignoresSafeArea(.all)
            VStack {
                Header()
                Menu()
            }
        }
    }
}

struct Header: View {
    var body: some View {
        VStack {
            Text("Crabs and Burgers")
                .font(.system(size: 45))
            Text("The best sea food in town")
                .font(.system(size: 20))
        }
        .padding()
        .cornerRadius(10)
        .frame(maxWidth: .infinity)
    }
}

struct Menu: View {
    var body: some View {
        VStack {
            HStack {
                Image("Burger")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .shadow(radius: 3)
                Spacer().frame(width: 15)
                Image("Fish")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .shadow(radius: 3)
            }
            HStack {
                Image("Shrimp")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .shadow(radius: 3)
                Spacer().frame(width: 15)
                Image("Lobster")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .shadow(radius: 3)
            }
            HStack {
                Image("Taco")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .shadow(radius: 3)
                Spacer().frame(width: 15)
                Image("Pasta")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .shadow(radius: 3)
            }
        }
        .padding(25)
    }
}

#Preview {
    ContentView()
}
