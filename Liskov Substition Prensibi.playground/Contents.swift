/* LİSKOV SUBSTİTİON Prensibi
 
 Bu prensip gereği bir A class'ından B classı ve C classı türetilmiş olsun.
 Burada B sınıfı  A da bulunan özelliklerin tamamını karşılıyor olsun.
 Fakat C ise A da bulunan bütün özellikleri karşılamıyor olsun.
 Burada B nin karşılayıp C nin karşılayamadıklarını bir seçenek gibi sunmak gerek aksi taktirde Liskov İkame prensibine uymuyor oluruz.
 
 
 Örnek verecek olursak
 *Çeşitli rütbede çalışanlar olduğunu varsayalım
 *Bu çalışanların bir kısmı türk bir kısmı yabancı olsun
 *Türklerden ekstra olarak tckn istensin fakat yabancılardan istenmesin
 *Burada istenen tckn yi user kategorisine yazarsak Bu prensibe uymamış oluruz bu yüzden seçilebilir bir şekilde kullanılması gerekmekte
 
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
    
    func selectAciton(){
        
    }
}

class TurkishEmployee:User{
    var tckn : Int
    
    init(name: String, surname: String, mail: String, password: String,tckn: Int) {
        self.tckn = tckn
        super.init(name: name, surname: surname, mail: mail, password: password)
    }
    
    
}


class Employee : User{
    override func selectAciton() {
        //Çalışan için tanımlanması gerekn yetkiler
        print("\(name) işçi olarak çalışıyor.")

        }
}

class TeamLead : User{
    override func selectAciton() {
            // Takım Kaptanına özgü davranış
            print("\(name) takım kaptanı olarak takımı yönlendiriyor.")
        }
}

class Manager : User{
    override func selectAciton() {
            // Yöneticiye özgü davranış
            print("\(name) yönetici olarak yönetim görevlerini yürütüyor.")
        }
}

class Login{
    func login(user:User){
        user.selectAciton()
    }
}

let loginAction = Login()

let employee = Employee(name: "Ahmet",
                        surname: "Mehmet",
                        mail: "ahmet@deneme.com",
                        password: "123456789")
let teamLead = TeamLead(name: "Ali",
                        surname: "Veli",
                        mail: "ali@deneme.com",
                        password: "12345678")
let manager = Manager(name: "Burak",
                      surname: "Suleyman",
                      mail: "burak@gmail.com",
                      password: "123456789")
let turkishEmployee = TurkishEmployee(name: "Aslı",
                                      surname: "Beyza",
                                      mail: "aslı@deneme.com",
                                      password: "12345678",
                                      tckn: 7712638127312)
loginAction.login(user: employee)
loginAction.login(user: teamLead)
loginAction.login(user: manager)
loginAction.login(user: turkishEmployee)

