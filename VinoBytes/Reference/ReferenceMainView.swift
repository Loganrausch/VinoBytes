//
//  ReferenceMainView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/2/24.
//

import Foundation

import SwiftUI

struct ReferenceMainView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                NavigationLink(destination: GrapeListView()) {
                    Text("Grapes")
                        .font(.headline)
                        .foregroundColor(.black)
                        .frame(width: 150, height: 150)
                        .background(Color(UIColor.systemBackground))
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color(red: 128/255, green: 0, blue: 0), lineWidth: 2)
                        )
                        .shadow(radius: 10)
                }
                
                Spacer()
                
                NavigationLink(destination: RegionListView()) {
                    Text("Regions")
                        .font(.headline)
                        .foregroundColor(.black)
                        .frame(width: 150, height: 150)
                        .background(Color(UIColor.systemBackground))
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color(red: 128/255, green: 0, blue: 0), lineWidth: 2)
                        )
                        .shadow(radius: 10)
                }
                
                Spacer()
                
                NavigationLink(destination: WineGlossaryListView()) {
                                       Text("Glossary")
                                           .font(.headline)
                                           .foregroundColor(.black)
                                           .frame(width: 150, height: 150)
                                           .background(Color(UIColor.systemBackground))
                                           .clipShape(Circle())
                                           .overlay(
                                               Circle().stroke(Color(red: 128/255, green: 0, blue: 0), lineWidth: 2)
                                           )
                                           .shadow(radius: 10)
                                   }
                                   
                                   Spacer()
                
                
                
                
                
                
            }
            
            
            
            
            .navigationTitle("Wine Reference")
        }
    }
    
}


struct ReferenceMainView_Previews: PreviewProvider {
    static var previews: some View {
        ReferenceMainView()
    }
}
