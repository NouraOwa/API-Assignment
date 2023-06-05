//
//  MrsoolView.swift
//  MrsoolProject
//
//  Created by Noura Alowayid on 13/11/1444 AH.
//

import SwiftUI

struct MrsoolView: View {
    @ObservedObject var viewModel = RestaurantViewModel()
    @State var isLoading = false
    @State private var showingAlert = false
    
    var body: some View {
        ScrollView{
            VStack{
                if (isLoading) {
                    ProgressView()
                }
                HStack{
                    Image(systemName: "chevron.backward")
                        .frame(maxWidth: .infinity)
                        .font(.title2)
                    SearchBar(text: .constant(""))
                    Button() {
                        isLoading = true
                        showingAlert = true
                    } label: {
                        Label("", systemImage: "arrow.counterclockwise")
                            .foregroundColor(Color(.black))
                    }.alert("Your Data is up to Date", isPresented: $showingAlert) {
                        Button("OK", role: .cancel) {
                            isLoading = false
                        }
                    }
                    
                }
                
                HStack{
                    ForEach(allCategorise) { item in
                        VStack(spacing: 0){
                            Image(item.cateIcon)
                                .resizable()
                                .frame(width:50, height: 50)
                            Text(item.cateName)
                                .font(.subheadline)
                                .frame(maxWidth: .infinity)
                        }
                    }.padding(.bottom)
                }
                VStack(alignment: .leading){
                    HStack{
                        
                        ForEach(allPrices) { item in
                            ZStack{
                                Rectangle()
                                    .frame(width:100, height: 40).foregroundColor(Color.gray.opacity(0.1))
                                    .cornerRadius(50)
                                HStack{
                                    Text(item.price)
                                    Image(item.priceIcon)
                                        .resizable()
                                    .frame(width: 20,height: 20)}
                            }
                        }
                    }.padding(.trailing,50)
                }
                HStack{
                    Text("List of Food & Beverage").bold().padding(.top).padding(.trailing,90)
                    Image("menu")
                        .resizable()
                        .frame(width: 80,height: 40)
                        .padding(.top)
                }
                ForEach(viewModel.restaurant) { item in
                    ZStack(alignment: .leading){
                        Rectangle()
                            .frame(width: 350,height: 100)
                            .foregroundColor(Color.gray.opacity(0.1))
                            .cornerRadius(20)
                        
                        HStack(spacing: 25){
                            Image(item.itemImage)
                                .resizable().frame(width:70, height: 70).clipShape(Circle()).padding(.leading)
                            VStack(alignment: .leading, spacing: 4){
                                HStack(spacing: 0){
                                    Text(item.itemName).bold().padding(.trailing,75)
                                    Image(systemName: "mappin")
                                    Text(item.itemLocation)
                                        .font(.subheadline)
                                }
                                Text(item.itemRate).font(.caption)
                                Text(item.itemPrice).font(.subheadline).padding(5).background(Color.blue.opacity(0.2)) .border(Color.blue.opacity(0.2), width: 3)
                                
                            }
                        }
                    }
                }
                Menu("Menu".uppercased()) {
                    Button("Reverse", action: { viewModel.reverseOrder() })
                    Button("Shuffle", action: { viewModel.shuffleOrder() })
                    Button("Remove last", action: { viewModel.removeLastRestaurant() })
                    Button("Remove first", action: { viewModel.removeFirstRestaurant() })
                }
                
            }
        }
    }
}
struct MrsoolView_Previews: PreviewProvider {
    static var previews: some View {
        MrsoolView()
    }
}
