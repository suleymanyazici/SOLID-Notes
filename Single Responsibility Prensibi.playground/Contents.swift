/* SINGLE RESPONSIBILITY
 
 - Bu prensib bence işin temelinde olan bir prensib
 - Prensip gereği bir class ın sadece bir işi olabileceğine değiniyor
 
 Bu konuya örnek verecek olursak
 
 * Bir kullanıcı kayıt işlemi
 * Bir giriş işlemi
 * Bir çıkış işlemi
 
 
 
 */


    
class User{
    var name : String
    var surname : String
    var mail : String
    var password : String
    
    init(name: String, surname: String, mail: String, password: String) {
        self.name = name
        self.surname = surname
        self.mail = mail
        self.password = password
    }
}

class Register{
    func registiration(name:String,surname:String,mail:String,password:String){
        User.init(name: name, surname: surname, mail: mail, password: password)
    }
}

class Login{
    func login(){
        print("Giriş Başarılıss")
    }
    
    func logOut(){
       print("Çıkış yapıldı")
    }
}


/*
 Yukarıdaki örnekte görüldüğü üzere burada her bir classın belirli bir görevi bulunmakta.
 Bu sayede her classın tek sorumluluğu bulunduğu için okunabilirlik, sadelik ve bakımı kolay bir hal almış olur.
 */
