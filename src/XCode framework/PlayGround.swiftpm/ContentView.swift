import SwiftUI

struct ContentView: View
{
    @State private var login = ""
    @State private var password = ""
    
    var body: some View
    {
        VStack(spacing: 5)                             // vertical stack
        {
            Text("Авторизація")
                .padding(.vertical, 18)                 // in bg text
                .padding(.horizontal, 40)
                .font(Font.system(size: 18).bold())     // maybe use .bold after (size: 24)
                .background(Color("customColor"))
                .cornerRadius(14)
            
            VStack
            {
                TextField("Введіть логін", text: $login)
                    .padding()
                     .background(Color("customColor"))
                    .cornerRadius(12)
                    .padding(8)
                    .padding(.horizontal, 12)
                
                SecureField("Введіть пароль", text: $password)
                    .padding()
                    .background(Color("customColor"))
                    .cornerRadius(12)
                    .padding(8)
                    .padding(.horizontal, 12)
                
                Button
                {
                    print("Авторизуватись")
                }
                label:
                {
                    Text("Увійти")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(LinearGradient(colors: [Color("gradientColor1"), Color("gradientColor2")],startPoint: .leading,  endPoint: .trailing ))
                        .foregroundColor(Color.black)
                        .font(Font.system(size: 16).bold())
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal, 12)
                }
                
                Button
                {
                    print("Реєстрація!!!!!!")
                }
                label:
                {
                    Text("Зареєструватись")
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal, 12)
                        .foregroundColor(Color("darkBrown"))
                        .font(Font.system(size: 16).bold())
                }
            }
            .padding()
            .padding(.top, 15)
            .background(Color("customColor"))
            .cornerRadius(24)
            .padding(30)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("backgroundLogin").resizable().ignoresSafeArea())
    }
}
    
struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}
