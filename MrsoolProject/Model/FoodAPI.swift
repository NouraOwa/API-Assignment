////
////  FoodAPI.swift
////  MrsoolProject
////
////  Created by Noura Alowayid on 16/11/1444 AH.
////
//
//import SwiftUI
//struct Meal: Codable, Identifiable {
//    let id: Int
//    let name, description: String
//    let image: String
//    let price, quantity: Int
//}
//
//struct FoodAPI: View {
//    @State private var chickenDishes = [Meal]()
//    //(id: 0, name: "", description: "", image: "", price: 9, quantity: 0)
//    var body: some View {
//        ScrollView{
//            VStack {
//                Text("Chicken Dishes").font(.largeTitle).bold()
//                ForEach (chickenDishes) { item in
//                    VStack {
//                        Text(item.name).font(.title2).bold()
//                        Text(item.description)
//                        Text("\(item.price)")
//                            .frame (maxWidth: .infinity)
//                            .foregroundColor (.black)
//                            .font (.title2)
//                            .padding(.all, 24)
//                            .background (.green.opacity(0.3))
//                            .padding (.bottom, 30)
//                        Image(item.image)
//                            .resizable()
//                            .frame(width: 100, height: 100, alignment: .center)
//                    }.padding()
//                }
//            }
//        }
//        .task {
//            await loadData ()
//        }
//    }
//    func loadData( ) async {
//        do {
//            let url = URL(string: "https://kfc-chickens.p.rapidapi.com/chickens")!
//            var request = URLRequest (url: url)
//            request.setValue("7a426fa361mshe5a681fa501fae6p1a95b9jsn65ca0a543894", forHTTPHeaderField:
//                                "X-RapidAPI-Key")
//            
//            let (data, response) = try await URLSession.shared.data(for: request)
//            let isSuccessful = isSuccessful(response: response as! HTTPURLResponse)
//            print(String(data: data, encoding: .utf8))
//            let serverNews = try JSONDecoder().decode([Meal].self, from: data)
//            chickenDishes = serverNews
//            
//        } catch {
//            print("error \(error)")
//        }
//        isLoading = false
//    }
//    }
//    
//}
//
//func isSuccessful(response: HTTPURLResponse) -> Bool {
//    guard response.statusCode >= 200 && response.statusCode < 300 else {
//        print("Status code is not in the 200s")
//        return false
//    }
//    print("Status code is in the 200s")
//    return true
//}
//struct FoodAPI_Previews: PreviewProvider {
//    static var previews: some View {
//        FoodAPI()
//    }
//}
