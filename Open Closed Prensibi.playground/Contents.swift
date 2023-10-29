/* OPEN CLOSED Prensibi
 
 Bu prensip gereği elimizde bir class yada func olsun.
 Bu prensip ile bu classın gelişime tamamıyla açık olması gerekmekte.
 Fakat bu gelişme sırasında asla davranışının değişmemesi gerekmekte
 
 Bu konuya bir örrnek verecek olursak;
 
 Giriş yapılan bir ekran olacağını varsayalım.
 * Bu ekranda giriş yapılacağı sırada kullanıcı adına göre yetkisel seçimnler yapılsın ve giriş işşlemi tamamlansın
 
 
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
loginAction.login(user: employee)
loginAction.login(user: teamLead)
loginAction.login(user: manager)
