//
//  SelectAccountView.swift
//  4th_HW_SungHoCHO
//
//  Created by  Lucid on 4/9/25.
//

import SwiftUI

struct SelectAccountView: View {
    
    @State private var pickerSelected: PickerSelection = .account
    //    @State private var isSelectedToggle = false
    
    @State private var accountNumber: String = ""
    
    @Binding var path: NavigationPath
    
    var body: some View {
        List {
            VStack(alignment: .leading) {
                Text("어디로 돈을 보낼까요?")
                    .font(.system(size: 24, weight: .bold))
                
                Picker("선택", selection: $pickerSelected) {
                    ForEach(PickerSelection.allCases, id: \.self) { option in
                        Text(option.rawValue).tag(option)
                    }
                }
                .pickerStyle(.segmented)
                .padding(.vertical, 16)
                
                VStack {
                    HStack {
                        TextField("계좌번호 입력", text: $accountNumber)
                            .font(.system(size: 20, weight: .bold))
                            .padding(12)
                        
                        Spacer()
                        
                        Image(systemName: "camera.fill")
                            .font(.system(size: 24))
                            .foregroundColor(.gray)
                            .padding(.trailing, 8)
                    }
                    
                    Divider()
                        .padding(.horizontal, 8)
                }
            }
            .listRowSeparator(.hidden)
            
            Section() {
                VStack {
                    HStack {
                        Text("내 계좌")
                            .font(.system(size: 16))
                        Spacer()
                        Text("+18개")
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                        
                        Image(systemName: "chevron.right")
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                    }
                    .padding(.vertical, 8)
                    
//                    ForEach(SendAccountData.modeling[0]) { item in
//                        SendAccountDataCell(sendAccountData: item)
//                    }
                    
                    ForEach(SendAccountData.modeling[0]) { cell in
                        Button {
                            path.append("SendMoneyView")
                        } label: {
                            SendAccountDataCell(sendAccountData: cell)
                        }
                    }
                }
            }
            .listRowSeparator(.hidden)
            .padding(.vertical, 4)
            
            Section() {
                VStack(alignment: .leading) {
                    Text("최근 보낸 계좌")
                        .font(.system(size: 16, weight: .bold))
                        .padding(.vertical, 8)
                    
                    ForEach(SendAccountData.modeling[1]) { item in
                        SendAccountDataCell(sendAccountData: item)
                    }
                }
            }
            .listRowSeparator(.hidden)
            .padding(.vertical, 4)
        }
        .listStyle(InsetListStyle())
    }
    
    enum PickerSelection: String, CaseIterable {
        case account = "계좌"
        case contact = "연락처"
    }
}


#Preview {
    SelectAccountView(path: .constant(NavigationPath()))
}
