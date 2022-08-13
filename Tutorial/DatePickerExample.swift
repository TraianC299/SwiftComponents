//
//  DatePickerExample.swift
//  Tutorial
//
//  Created by Traian on 12.08.2022.
//

import SwiftUI

struct DatePickerExample: View {
    
    @State var selectedDate: Date = Date()
    var body: some View {
        DatePicker("Choose date", selection: $selectedDate, displayedComponents: [
            .date,
            .hourAndMinute
        ])
            .datePickerStyle(
                CompactDatePickerStyle()
                //GraphicalDatePickerStyle()
            )
    }
}

struct DatePickerExample_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerExample()
    }
}
