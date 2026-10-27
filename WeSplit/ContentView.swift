//
//  ContentView.swift
//  WeSplit
//
//  Created by Andreas Margono on 20/10/26.
//

import SwiftUI

struct ContentView: View {
    @State var tagihan : Double? = nil
    @State var jumlahOrang : Int? = nil
    @State var tip : Double? = nil
    var body: some View {
        NavigationStack{
            VStack(alignment:.leading){
                    VStack(alignment: .leading){
                        Form {
                            Section(header: Text("Tagihan")) {
                                TextField("Nominal Tagihan", value: $tagihan, format: .number).keyboardType(.decimalPad)
                                TextField("Jumlah Orang", value: $jumlahOrang, format: .number).keyboardType(.decimalPad)
                                TextField("Tip(%)",value: $tip, format: .number).keyboardType(.decimalPad)
                            }
                        }
                    }.frame(maxWidth: .infinity,alignment: .leading)
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading).navigationTitle(Text("WeSplit"))
                .navigationSubtitle(Text("We Help you to devide ur split evenly"))
            
        }
        
    }
}

#Preview {
    ContentView()
}
