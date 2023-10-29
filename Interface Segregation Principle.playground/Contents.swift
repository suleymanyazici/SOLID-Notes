//INTERFACE SEGREGATİON PRENSIBI

// Örneğin elimizde a ve b işleri bulunsun b işini kontrol ettiğimiz bi yerde a işi ile ilgili herhangi bir şey çağırmamız işlem yapmamız
// bizim bu prensibe uymadığımız anlamına gelmektedir. burada a işi ile ilgili kısmı bitirip b nin bir işi varsa da onu başka bir işlem içerisinde ele almamız gerekmektedir.


import Foundation

enum TemperatureUnit{
    case celcius
    case fahrenheit
    case kelvin
}

enum SpeedUnit{
    case mph
    case kmh
}

protocol SpeedUserSettingsProtocol : class{
    var speedUnit : SpeedUnit { get set }
}
//Burada bulunan iki protocolü iç içe yazmamız bu prensibe uymaz bu yüzden iki farklı protocol ile bunları ayırdık
protocol TemperatureUserSettingsProtocol : class{
    var temperatureUnit : TemperatureUnit { get set }
}


//Bu class içerisinde ise sadece temperature ile ilgili bilgilere ihtiyacım bulunmakta bu yüzden gereksiz yere ikisini aynı protocole yazıp burada çağırmama gerek kalmadı
class TemperatureController{
    let settings : TemperatureUserSettingsProtocol
    
    init(settings: TemperatureUserSettingsProtocol) {
        self.settings = settings
    }
    
    func toggle(){
        switch settings.temperatureUnit {
        case .celcius:
            print("Derece'ye geçiş yapıldı")
        case .fahrenheit:
            print("Fahrenhayt'a geçiş yapıldı")
        case .kelvin:
            print("Kelvin'e geçiş yapıldı")
        }
    }
}

