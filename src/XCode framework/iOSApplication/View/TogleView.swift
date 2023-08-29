//
//  TogleView.swift
//  iOSApplication
//
//  Created by Андрiй on 29.08.2023.
//

import SwiftUI

struct TogleView: View
{
    @ObservedObject var viewModel: ToggleViewModel
    
    var body: some View
    {
        VStack
        {
            Toggle("SwitchView (add one tabView in navigation)", isOn: $viewModel.isToogler)
                .padding(.horizontal, 24)
            
            Text("Status toogle: \(viewModel.isToogler ? "True" : "False")")
             
        }
        .padding(.bottom, 20)
    }
}

struct TogleView_Previews: PreviewProvider
{
    static var previews: some View
    {
        TogleView(viewModel: ToggleViewModel())
    }
}
