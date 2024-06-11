//
//  ReferenceMainView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/2/24.
//

import SwiftUI

struct ReferenceMainView: View {
    @State private var fillPercentageGrapes: CGFloat = 0
    @State private var fillPercentageRegions: CGFloat = 0
    @State private var fillPercentageGlossary: CGFloat = 0
    @State private var fillPercentageWineLaw: CGFloat = 0

    @State private var navigateTo: String? = nil

    var body: some View {
        NavigationView {
            HStack(spacing: 40) {
                VStack(spacing: 50) {
                    animatedButton(title: "Grapes", fillPercentage: $fillPercentageGrapes, destination: "GrapeListView")
                    animatedButton(title: "Regions", fillPercentage: $fillPercentageRegions, destination: "RegionListView")
                }

                VStack(spacing: 50) {
                    animatedButton(title: "Glossary", fillPercentage: $fillPercentageGlossary, destination: "WineGlossaryListView")
                    animatedButton(title: "Wine Law", fillPercentage: $fillPercentageWineLaw, destination: "WineLawListView")
                }
            }
            .padding(.horizontal, 40)
            .padding(.top, -200)
            .navigationTitle("Wine Reference")
            .background(NavigationLink(destination: destinationView(), tag: "GrapeListView", selection: $navigateTo) { EmptyView() })
            .background(NavigationLink(destination: destinationView(), tag: "RegionListView", selection: $navigateTo) { EmptyView() })
            .background(NavigationLink(destination: destinationView(), tag: "WineGlossaryListView", selection: $navigateTo) { EmptyView() })
            .background(NavigationLink(destination: destinationView(), tag: "WineLawListView", selection: $navigateTo) { EmptyView() })
        }
    }

    func animatedButton(title: String, fillPercentage: Binding<CGFloat>, destination: String) -> some View {
        Button(action: {
            withAnimation(.easeInOut(duration: 0.4)) {  // Speed up the animation from 1.5 to 1.0 seconds
                fillPercentage.wrappedValue = 1
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {  // Adjust time to match the animation speed
                    self.navigateTo = destination
                    fillPercentage.wrappedValue = 0
                }
            }
        }) {
            ZStack {
                Circle()
                    .fill(Color.white)
                    .frame(width: 150, height: 150)
                    .overlay(
                        LinearGradient(gradient: Gradient(colors: [Color(red: 128/255, green: 0, blue: 0), Color(red: 128/255, green: 0, blue: 0).opacity(0)]),
                                       startPoint: .bottom,
                                       endPoint: .top)
                            .mask(Circle())
                            .scaleEffect(CGSize(width: 1, height: fillPercentage.wrappedValue), anchor: .bottom)
                    )
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color(red: 128/255, green: 0, blue: 0), lineWidth: 2)
                    )
                    .shadow(radius: 10)
                
                Text(title)
                    .font(.headline)
                    .foregroundColor(.black)
            }
        }
    }

    @ViewBuilder
    func destinationView() -> some View {
        switch navigateTo {
        case "GrapeListView":
            GrapeListView()
        case "RegionListView":
            RegionListView()
        case "WineGlossaryListView":
            WineGlossaryListView()
        case "WineLawListView":
            WineLawListView()
        default:
            Text("Navigation Error")
        }
    }
}

struct ReferenceMainView_Previews: PreviewProvider {
    static var previews: some View {
        ReferenceMainView()
    }
}
