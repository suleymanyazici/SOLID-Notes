// DEPENDENCY INVERSION PRINCIPLE
/*
 Bir objeyi bir interface arkasına saklayıp obje yerine interface kullanmmamız isteniyor.
 Bu sayede örneğin a objesinden referans alınmış a interfacesi herzaman orada duracaktır ve ister başka bir b yada c objesi a interfacesine uygun ise istenildiği şekilde inherit edilebilir özelliği kazanacaktır.
 */
import Foundation

protocol CarViewModelProtocol{
    var make : String { get }
    var model : String { get }
}

class PorscheViewModel : CarViewModelProtocol{
    let make = "Porsche"
    let model = "911"
}
// Burada görüleceği üzere bizim elimizde CarViewModel var ve istediğimiz marka arabayı buna uyarlayabiliyoruz bu sayede bir çok prensiple birlikte sonuncu prensibimiz olan Dependency incversion prensibinede uyum sağlıyoruz notlardaki gibi objeyi interface kullanarak referans verdik başka biryerden kullanmak istediğimizde bu interface ile inherit edilebilecek konuma geldi
class OpelCarViewModel : CarViewModelProtocol{
    let make = "Opel"
    let model = "Astra"
}


