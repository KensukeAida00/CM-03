import Glibc
import Foundation

  class bebidas{

    let nombre:[String]
    var cantidad:[Int]
    let costo:[Int] 

    init(){
      self.nombre=["Agua de horchata","Agua de Jamaica","Coca-cola","Boing"]
      self.costo=[30,30,40,35] 
      self.cantidad=[0,0,0,0]
    }
    func anianir(){
      var name:Int
      print("¿Que tipo de bebida desea?\n",
            "1.-Agua de horchata\n",
            "2.-Agua de Jamaica\n",
            "3.-Coca-cola\n",
            "4.-Boing")
      name=Int(readLine()!)!
      name=name-1
      switch name{
        case 0...3:
          print("¿Cuantos?")
          self.cantidad[name]=Int(readLine()!)!
        default:
        print("Error, no es un numero valido")
        return
      }
    }
    func quitar(){
      var name:Int
      var cant:Int
      print("¿Que bebida desea quitar?")
      print(" 1.-Agua de horchata\n",
          "2.-Agua de Jamaica\n",
          "3.-Coca-cola\n",
          "4.-Boing")
      name=Int(readLine()!)!
      name=name-1
      switch name{
        case 0...3:
        if self.cantidad[name]<1{
          print("No se ha pedido esa bebida, cancelando")
          return
        }
        print("¿Cuantos?")
          cant=Int(readLine()!)!
        if self.cantidad[name]<cant{
          print("No se puede eliminar esa cantidad cancelando")
          return
        }
        self.cantidad[name]=self.cantidad[name]-cant
        default:
        print("Error, no es un numero valido")
        return
        }
    }
    func cancela(){
      self.cantidad=[0,0,0,0]
      return
    }
    func imprime(){
      var i:Int=0
      var sc:Int=4
      print("Bebidas ordenadas:")
      while i<4{
        if self.cantidad[i]>0{
          print(self.nombre[i],"->",self.cantidad[i])
        }
        else{
          sc=sc-1
        }
        i=i+1
      }
      if sc==0{
        print("No hay bebidas ordenadas")
      }
      return
    }
    func total()->Int{
      var total:Int=0
      var i:Int=0
      while i<4{
        total=(self.cantidad[i]*self.costo[i])+total
        i=i+1
      }
      return total
    }
  }
  class complementos{

    let nombre:[String]
    var cantidad:[Int]
    let costo:[Int] 

    init(){
      self.nombre=["Limon","Orden de cebolla","Orden de cilantro","Orden de salsa"]
      self.costo=[3,2,2,10] 
      self.cantidad=[0,0,0,0]
    }
    func anianir(){
      var name:Int
      print("¿Que tipo de bebida desea?\n",
          "1.-Limon\n",
          "2.-Orden de cebolla\n",
          "3.-Orden de cilantro\n",
          "4.-Orden de salsa")
      name=Int(readLine()!)!
      name=name-1
      switch name{
        case 0...3:
          print("¿Cuantos?")
          self.cantidad[name]=Int(readLine()!)!
        default:
        print("Error, no es un numero valido")
        return
      }
    }
    func quitar(){
      var name:Int
      var cant:Int
      print("¿Que complemento desea quitar?")
      print(" 1.-Limon\n",
          "2.-Orden de cebolla\n",
          "3.-Orden de cilantro\n",
          "4.-Orden de salsa")
      name=Int(readLine()!)!
      name=name-1
      switch name{
        case 0...3:
        if self.cantidad[name]<1{
          print("No se ha pedido ese complemento, cancelando")
          return
        }
        print("¿Cuantos?")
          cant=Int(readLine()!)!
        if self.cantidad[name]<cant{
          print("No se puede eliminar esa cantidad, cancelando")
          return
        }
        self.cantidad[name]=self.cantidad[name]-cant
        default:
        print("Error, no es un numero valido")
        return
        }
    }
    func cancela(){
      self.cantidad=[0,0,0,0]
      return
    }
    func imprime(){
      var i:Int=0
      var sc:Int=4
      print("complementos ordenados:")
      while i<4{
        if self.cantidad[i]>0{
          print(self.nombre[i],"->",self.cantidad[i])
        }
        else{
          sc=sc-1
        }
        i=i+1
      }
      if sc==0{
        print("No hay complementos ordenados")
      }
      return
    }
    func total()->Int{
      var total:Int=0
      var i:Int=0
      while i<4{
        total=(self.cantidad[i]*self.costo[i])+total
        i=i+1
      }
      return total
    }
  }
  class tacos{

    let nombre:[String]
    var cantidad:[Int]
    let costo:[Int] 

    init(){
      self.nombre=["Carnitas","Suadero","Pastor"]
      self.costo=[15,12,12] 
      self.cantidad=[0,0,0]
    }
    func anianir(){
      var name:Int
      print("¿Que tipo de taco desea?\n",
          "1.-Carnitas\n",
          "2.-Suadero\n",
          "3.-Pastor")
      name=Int(readLine()!)!
      name=name-1
      switch name{
        case 0...2:
          print("¿Cuantos?")
          self.cantidad[name]=Int(readLine()!)!
        default:
        print("Error, no es un numero valido")
        return
      }
    }
    func quitar(){
      var name:Int
      var cant:Int
      print("¿Que taco desea quitar?")
      print("1.-Carnitas\n",
          "2.-Suadero\n",
          "3.-Pastor")
      name=Int(readLine()!)!
      name=name-1
      switch name{
        case 0...2:
        if self.cantidad[name]<1{
          print("No se ha pedido ese taco, cancelando")
          return
        }
        print("¿Cuantos?")
          cant=Int(readLine()!)!
        if self.cantidad[name]<cant{
          print("No se puede eliminar esa cantidad, cancelando")
          return
        }
        self.cantidad[name]=self.cantidad[name]-cant
        default:
        print("Error, no es un numero valido")
        return
        }
    }
    func cancela(){
      self.cantidad=[0,0,0,0]
      return
    }
    func imprime(){
      var i:Int=0
      var sc:Int=4
      print("Tacos ordenados:")
      while i<3{
        if self.cantidad[i]>0{
          print(self.nombre[i],"->",self.cantidad[i])
        }
        else{
          sc=sc-1
        }
        i=i+1
      }
      if sc==0{
        print("No hay tacos ordenados")
      }
      return
    }
    func total()->Int{
      var total:Int=0
      var i:Int=0
      while i<3{
        total=(self.cantidad[i]*self.costo[i])+total
        i=i+1
      }
      return total
    }
  }
  class orden{
    let numOrden:Int
    var estado:String
    lazy var beb=bebidas()
    lazy var tac=tacos()
    lazy var comp=complementos()
    init(i:Int){
      self.numOrden=i
      self.estado="Haciendo"
    }
    func anadir(){
      var seleccion:Int
      print("¿Que desea añadir?",
            "1.-Taco",
            "2.-Complemento",
            "3.-Bebida")
      seleccion=Int(readLine()!)!
      switch seleccion{
        case 1:
          tac.anianir()
          return
        case 2:
          comp.anianir()
          return
        case 3:
          beb.anianir()
          return
        default:
          print("Respuesta no valida")
          return
      }
    }
    func quitar(){

    }
    func mostrarOrden(){
      print("Esta orden incluye")
      tac.imprime()
      comp.imprime()
      beb.imprime()
      let total=tac.total()+comp.total()+beb.total()
      print("Con un total de:",total)
      return
    }
    func cancelarOrden(){

    }
  }
func main(){
  let orden1=orden(i:16)
  orden1.anadir()
  orden1.anadir()
  orden1.anadir()
  orden1.mostrarOrden()
}
main()