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
                Title()
                Menu()
                RestaurantFooter()
            }
        }
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
            Spacer()
            Image(systemName: "cart.fill")
        }
        .padding(.horizontal, 30)
        .font(.system(size: 25))
    }
}

struct Title: View {
    var body: some View {
        VStack {
            ZStack {
                Text("Crabs and Burgers")
                    .font(.custom("Noteworthy", size: 45))
                    .foregroundColor(.black)
                    .offset(x: 1, y: 1)
                Text("Crabs and Burgers")
                    .font(.custom("Noteworthy", size: 45))
                    .foregroundColor(.red.opacity(0.7))
                        }
            Text("The best sea food in town")
                .font(.custom("Rockwell", size: 16))
        }
        .padding(.top, 5)
    }
}

struct Menu: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Image("Burger")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .shadow(radius: 3)
                    Buttons()
                }
                Spacer().frame(width: 15)
                VStack {
                    Image("Fish")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .shadow(radius: 3)
                    Buttons()
                }
            }
            HStack {
                VStack {
                    Image("Shrimp")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .shadow(radius: 3)
                    Buttons()
                }
                Spacer().frame(width: 15)
                VStack {
                    Image("Lobster")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .shadow(radius: 3)
                    Buttons()
                }
            }
            HStack {
                VStack {
                    Image("Taco")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .shadow(radius: 3)
                    Buttons()
                }
                Spacer().frame(width: 15)
                VStack {
                    Image("Pasta")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .shadow(radius: 3)
                    Buttons()
                }
            }
        }
        .padding(.horizontal, 25)
        .padding(.top, 15)
        .padding(.bottom, 22)
    }
}

struct Buttons: View {
    var body: some View {
        HStack {
            Button(action: {
                print("Added to shopping cart")
            }) {
                Text("Add")
                    .font(.custom("Andale Mono", size: 15))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 3)
                    .foregroundColor(.white)
                    .background(Color.orange)
                    .cornerRadius(15)
            }
            Button(action: {
                print("Added to favorite")
            }) {
                Text("Favorite")
                    .font(.custom("Andale Mono", size: 15))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 3)
                    .foregroundColor(.white)
                    .background(Color.blue.opacity(0.7))
                    .cornerRadius(15)
            }
        }
    }
}

struct RestaurantFooter: View {
    var body: some View {
        HStack {
            Text("All rights reserved")
            Text("2025")
        }
        .font(.custom("Arial", size: 13))
    }
}

#Preview {
    ContentView()
}
