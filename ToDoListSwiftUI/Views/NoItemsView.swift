//
//  NoItemsView.swift
//  ToDoListSwiftUI
//
//  Created by Oksana on 20.10.2022.
//

import SwiftUI

struct NoItemsView: View {
    
    // MARK: - Properties
    
    @State var animate: Bool = false
    let accentColor = Color("AccentColor")
    let secondaryAccentColor = Color("SecondaryAccentColor")
    
    // MARK: - Body
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("There are no items 😕")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you a productive person? I think you should click the add button and add a bunch of items to your todo list ☺️")
                    .padding(.bottom, 20)
                NavigationLink(destination: AddView(),
                               label: {
                    Text("Add something 🥳")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? secondaryAccentColor : accentColor)
                        .cornerRadius(10)
                })
                .padding(.horizontal, animate ? 30 : 50)
                .shadow(
                    color: animate ? secondaryAccentColor.opacity(0.7) :
                        accentColor.opacity(0.7),
                    radius: animate ? 10 : 10,
                    x: 0,
                    y: animate ? 50 : 30)
                .scaleEffect(animate ? 1.1 : 1.0)
                .offset(y: animate ? -7 : 0)
            }
            .padding(40 )
            .multilineTextAlignment(.center)
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    // MARK: - Functions
    
    private func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                .easeInOut(duration: 2.0)
                .repeatForever()
            ) {
                animate.toggle()
            }
        }
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NoItemsView()
    }
}
