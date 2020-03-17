import SwiftUI

struct ListElementView: View {
    
    var item: ListElement
    
    var body: some View {
        HStack {
            Image(item.icon)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.headline)
                    .fontWeight(.bold)
                Text(item.text)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                    .lineLimit(2)
            }
        }
    }
}

struct ListElementView_Previews: PreviewProvider {
    static var previews: some View {
        ListElementView(item: ListElement(icon: "", image: "", title: "", text: ""))
    }
}
