//
//  TabBar.swift
//  MrsoolProject
//
//  Created by Noura Alowayid on 13/11/1444 AH.
//

import SwiftUI

struct TabBar: View {
    @State var selectedTab = 0
    var body: some View {
        NavigationStack{
            VStack {
                TabView {
                    // First tab
                    MrsoolView()
                        .tabItem {
                            Image(systemName:"homekit")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 10, height: 10)
                            Text("Stores")
                        }
                    
                    // Second tab
                    OrdersView()
                        .tabItem {
                            Image(systemName: "menubar.dock.rectangle.badge.record")
                            Text("Orders")
                        }
                    
                    // Third tab
                    NotificationView()
                        .tabItem {
                            Image(systemName: "bell.badge")
                            Text("Notifications")
                        }
                    
                    // Fourth tab
                    ProfileView()
                        .tabItem {
                            Image(systemName: "person.circle.fill")
                            Text("Profile")
                            
                        }
                }
            }
        }
    }
}
struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
