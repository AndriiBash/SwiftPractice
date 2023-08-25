import SwiftUI

struct AuthView: View
{
    @State private var isAuth = true
    @State private var isTabViewShow = false
    
    @State private var login = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View
    {
        VStack(spacing: 1)                                  // vertical stack spacer
        {
            Text(isAuth ? "Авторизація" : "Реєстрація")     // ternar operation
                //.padding(isAuth ? 16 : 24)
                .padding(.vertical, 18)                     // in bg text
                .padding([.horizontal], isAuth ? 40 : 46)
                .font(Font.system(size: 18).bold())         // maybe use .bold after (size: 24)
                .background(Color("customColor"))
                .cornerRadius(14)
                //.cornerRadius(isAuth ? 30 : 50)
            
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
                
                if !isAuth
                {
                    SecureField("Повторіть пароль", text: $confirmPassword)
                        .padding()
                        .background(Color("customColor"))
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal, 12)
                }
                
                Button
                {
                    if isAuth                   // тут проверка авторизации
                    {
                        print("Авторизуватись")
                        isTabViewShow.toggle()
                    }
                    else
                    {
                        print("Реєстрація")
                        self.login = ""
                        self.password = ""
                        self.confirmPassword = ""
                        self.isAuth.toggle()    // после регистрации переходит в состояние авторизации
                    }
                }
                label:
                {
                    Text(isAuth ? "Увійти" : "Зарєструватись")
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
                    isAuth.toggle() // переключатель состояния для булевой isAuth
                }
                label:
                {
                    Text(isAuth ? "Зареєструватись" : "Вже є акаунт")
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
            .padding(isAuth ? 30 : 12)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("backgroundLogin")
                .resizable()
                .ignoresSafeArea()
                .blur(radius: isAuth ? 0 : 6)) // blur эффект при регистрации
            .animation(Animation.easeInOut(duration: 0.25), value: isAuth) // анимация для всего, типа исиИнАут время 0.2 по значению исАутх
            .fullScreenCover(isPresented: $isTabViewShow){ // if isTabViewShow true
                MainTabBar()
            }
    }
}
    
struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        AuthView()
    }
}
