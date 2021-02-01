//Creado por Aquino Santiago Rogelio Gerardo
//Para la clase de Computo movil
//Fecha: 01/02/2021
import Glibc
import Foundation
/*Clase encargada de crear bebidas, aqui se contendra todo lo relacionado con la bebida, asi como las funciones relevaltes para ella
nombre:Constante que guardara los nombres de las bebidas
cantidad:Guardara la cantidad de bebidas solicitadas
costo:Constante que guarda los costros de las bebidas*/
  class bebidas{
    let nombre:[String]
    var cantidad:[Int]
    let costo:[Int]
    /*Inicializador de la clase bebida*/
    init(){
      self.nombre=["A/Horchata","A/Jamaica","Coca-cola","Boing"]
      self.costo=[30,30,40,35] 
      self.cantidad=[0,0,0,0]
    }
    /*Funcion encargada de añadir bebidas dentro de la orden*/
    func anianir(){
      var name:Int
      print("¿Que tipo de bebida desea?\n",
            "1.-A/Horchata\n",
            "2.-A/Jamaica\n",
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
    /*Funcion encargada de quitar bebidas dentro de la orden*/
    func quitar(){
      var name:Int
      var cant:Int
      print("¿Que bebida desea quitar?")
      print(" 1.-A/Horchata\n",
          "2.-A/Jamaica\n",
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
    /*Funcion encargada de cancelar las bebidas dentro de la orden*/
    func cancela(){
      self.cantidad=[0,0,0,0]
      return
    }
    /*Funcion encargada de imprimir las bebidas solicitadas dentro de la orden*/
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
    /*Funcion encargada de dar el total de las bebidas solicitadas dentro de la orden
    Regresa:
    Int:Total de las bebidas, la suma de los productos correspondiente al costo y cantidad*/
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
/*Clase encargada de crear complementos, aqui se contendra todo lo relacionado con los complementos, asi como las funciones relevaltes para ella
nombre:Constante que guardara los nombres de los complementos
cantidad:Guardara la cantidad de complementos solicitados
costo:Constante que guarda los costros de los complementos*/
  class complementos{

    let nombre:[String]
    var cantidad:[Int]
    let costo:[Int] 
    /*Inicializador de la clase complemento*/
    init(){
      self.nombre=["Limon","Orden de cebolla","Orden de cilantro","Orden de salsa"]
      self.costo=[3,2,2,10] 
      self.cantidad=[0,0,0,0]
    }
    /*Funcion encargada de añadir complementos dentro de la orden*/
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
    /*Funcion encargada de quitar complementos dentro de la orden*/
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
    /*Funcion encargada de cancelar complementos dentro de la orden*/
    func cancela(){
      self.cantidad=[0,0,0,0]
      return
    }
    /*Funcion encargada de imprimir complementos solicitados dentro de la orden*/
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
    /*Funcion encargada de dar el total de complementos solicitados dentro de la orden
    Regresa:
    Int:Total de complementos, la suma de los productos correspondiente al costo y cantidad*/
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
/*Clase encargada de crear tacos, aqui se contendra todo lo relacionado con los tacos, asi como las funciones relevaltes para ella
nombre:Constante que guardara los nombres de los tacos
cantidad:Guardara la cantidad de tacos solicitados
costo:Constante que guarda los costros de los tacos*/
  class tacos{

    let nombre:[String]
    var cantidad:[Int]
    let costo:[Int] 
    /*Inicializador de la clase taco*/
    init(){
      self.nombre=["Carnitas","Suadero","Pastor"]
      self.costo=[15,12,12] 
      self.cantidad=[0,0,0]
    }
    /*Funcion encargada de añadir tacos dentro de la orden*/
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
    /*Funcion encargada de quitar tacos dentro de la orden*/
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
    /*Funcion encargada de cancelar los tacos de la orden*/
    func cancela(){
      self.cantidad=[0,0,0]
      return
    }
    /*Funcion encargada de imprimir los tacos solicitados dentro de la orden*/
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
     /*Funcion encargada de dar el total de los tacos solicitados dentro de la orden
    Regresa:
    Int:Total de los tacos, la suma de los productos correspondiente al costo y cantidad*/
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
/*Clase encargada de crear ordenes, aqui se contendra todo lo relacionado con las ordenes y lo que lo contiene, asi como las funciones relevaltes para ella
numOrden:Numero de orden
estado:Estado de la orden, puede ser "Cancelado", "Haciendo" y "Despachado"
beb:Inicializador de la clase bebidas dentro de las ordenes
tac:Inicializador de la clase tacos dentro de las ordenes
comp:Inicializador de la clase complemento dentro de las ordenes*/
  class orden{
    var numOrden:Int
    var estado:String
    lazy var beb=bebidas()
    lazy var tac=tacos()
    lazy var comp=complementos()
    init(){
      self.numOrden=0-1
      self.estado="Haciendo"
    }
    /*Funcion para añadir tacos, bebidas o complementos de la orden*/
    func aniadir(){
      var seleccion:Int
      print("¿Que desea añadir?",
            "1.-Taco\n",
            "2.-Complemento\n",
            "3.-Bebida\n")
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
    /*Funcion para quitar tacos, bebidas o complementos de la orden*/
    func quitar(){
      var seleccion:Int
      print("¿Que desea quitar?",
            "1.-Taco",
            "2.-Complemento",
            "3.-Bebida")
      seleccion=Int(readLine()!)!
      switch seleccion{
        case 1:
          tac.quitar()
          return
        case 2:
          comp.quitar()
          return
        case 3:
          beb.quitar()
          return
        default:
          print("Respuesta no valida")
          return
      }
    }
    /*Funcion para mostrar tacos, bebidas y complementos de la orden*/
    func mostrarOrden(){
      print("\n\nOrden numero ",self.numOrden,"\n",
            "Se encuentra en estado",self.estado)
      print("Esta orden incluye")
      tac.imprime()
      comp.imprime()
      beb.imprime()
      let total=tac.total()+comp.total()+beb.total()
      print("Con un total de:",total,"\n\n")
      return
    }
    /*Funcion para cancelar tacos, bebidas o complementos de la orden*/
    func cancelarOrden(){
      var seleccion:Int
      print("¿Que desea cancelar?",
            "1.-Taco",
            "2.-Complemento",
            "3.-Bebida")
      seleccion=Int(readLine()!)!
      switch seleccion{
        case 1:
          tac.cancela()
          return
        case 2:
          comp.cancela()
          return
        case 3:
          beb.cancela()
          return
        default:
          print("Respuesta no valida")
          return
      }
    }
    /*Funcion creada para ser el menu de la clase orden, en este menu se puede seleccionar acciones que muestren o afecte a la orden
    Entra:
    numOrden:Numero que, a menos que ya este asignado, hara para darle ese numero a la orden*/
    func mainOrden(numOrden:Int){
      if(self.numOrden==0-1){
        self.numOrden=numOrden
      }
      var loop:Bool=true
      var seleccion:Int
      while loop==true{
        print("Numero de orden ",self.numOrden,"\n",
            "Selecciona su opcion\n",
            "1.-Añadir a la orden\n",
            "2.-Quitar a la orden\n",
            "3.-Mostrar orden\n",
            "4.-Cancelar a la orden\n",
            "5.-Salir")
        seleccion=Int(readLine()!)!
        switch seleccion{
          case 1:
            if(self.estado=="Cancelado"){
              print("Orden candelada, no se puede añadir")
              return
            }
            if(self.estado=="Despachado"){
              print("Orden despachada, no se puede añadir")
            return
            }
            aniadir()
          case 2:
            if(self.estado=="Cancelado"){
              print("Orden candelada, no se puede quitar")
              return
            }
            if(self.estado=="Despachado"){
              print("Orden despachada, no se puede quitar")
            return
            }
            quitar()
          case 3:
            mostrarOrden()
          case 4:
            if(self.estado=="Cancelado"){
              print("Orden candelada, no se puede cancelar")
              return
            }
            if(self.estado=="Despachado"){
              print("Orden despachada, no se puede cancelar")
            return
            }
            cancelarOrden()
          case 5:
          loop=false
            return
          default:
            print("Respuesta no valida, regresando a la   taqueria")
        }
      }
    }
  }
/*Clase encargada de crear la taqueria, aqui se contendra todo lo relacionado con la taqueria y lo que lo contiene, asi como las funciones relevaltes para ella
nombre:Nombre de la taqueria
ordenesHechas:Numero de las ordenes hechas
ordenes:Cadena de ordenes que contendra la taqueria, la orden 0 se usara solamente para inicializarlo y para mostrar el menu*/ 
  class taqueria{
    let nombre:String
    var ordenesHechas:Int
    lazy var ordenes=[orden()]
    init(){
      self.nombre="El si hay"
      self.ordenesHechas=0
    }
    /*Creara una nueva orden y lo encola al arreglo de ordenes*/
    func nuevaOrden(){
      let ordenN=orden()
      self.ordenes.append(ordenN)
      self.ordenesHechas=self.ordenesHechas+1
      print("Iniciando nueva orden")
      self.ordenes[self.ordenesHechas].mainOrden(numOrden:self.ordenesHechas)
    }
    /*Modifica una orden, no se puede modificar en caso de que ya se encuente cancelado o despachado*/
    func modificarOrden(){
      var seleccion:Int
      print("¿Cual orden desea modificar?\n",
            "Ordenes hechas: ",self.ordenesHechas)
      seleccion=Int(readLine()!)!
      if (seleccion>ordenesHechas){
        print("No existe esa orden")
        return
      }
      if(self.ordenes[seleccion].estado=="Cancelado"){
        print("Orden candelada")
        return
      }
      if(self.ordenes[seleccion].estado=="Despachado"){
        print("Orden despachada")
        return
      }
      if (seleccion<=self.ordenesHechas){
        print("Modificando la orden:",seleccion)
        self.ordenes[seleccion].mainOrden(numOrden:seleccion)
      }
      else{
        print("Esa orden no existe")
      }
    }
    /*Cancela una orden entera, no se puede borrar en caso de que ya se encuente cancelado o despachado*/
    func borrarOrden(){
      var seleccion:Int
      print("¿Cual orden desea cancelar?\n",
            "Ordenes hechas: ",self.ordenesHechas)
      seleccion=Int(readLine()!)!
      if (seleccion>ordenesHechas){
        print("No existe esa orden")
        return
      }
      if(self.ordenes[seleccion].estado=="Cancelado"){
        print("Orden candelada")
        return
      }
      if(self.ordenes[seleccion].estado=="Despachado"){
        print("Orden despachada")
        return
      }
      if (seleccion<=self.ordenesHechas){
        print("Cancelando la orden la orden:",seleccion)
        self.ordenes[seleccion].estado="Cancelado"
      }
      else{
        print("Esa orden no existe")
      }
      return
    }
    /*Despacha una orden, no se puede despachar en caso de que ya se encuente cancelado o despachado*/
    func despacharOrden(){
      var seleccion:Int
      print("¿Cual orden desea despachar?\n",
            "Ordenes hechas: ",self.ordenesHechas)
      seleccion=Int(readLine()!)!
      if(self.ordenes[seleccion].estado=="Cancelado"){
        print("Orden candelada")
        return
      }
      if(self.ordenes[seleccion].estado=="Despachado"){
        print("Orden despachada")
        return
      }
      if (seleccion<=self.ordenesHechas){
        print("Despachando la orden la orden:",seleccion)
        self.ordenes[seleccion].estado="Despachado"
        self.ordenes[seleccion].mostrarOrden()
      }
      else{
        print("Esa orden no existe")
      }
      return
    }
    /*Muestra el menu de la taqueria usando la orden 0 como el pibote, ya que siempre estara creado*/
    func menuTaqueria(){
      var i: Int=0
      print("\n\nEl menu actual de la taqueria consiste en:\n",
            "\nTacos:\tPrecio:")
      while (i<self.ordenes[0].tac.nombre.count){
        print(self.ordenes[0].tac.nombre[i],"  \t",
              self.ordenes[0].tac.costo[i])
        i=1+i
      }
      i=0
      print("\nBebidas:\tPrecio:")
      while (i<self.ordenes[0].beb.nombre.count){
        print(self.ordenes[0].beb.nombre[i],"  \t",
              self.ordenes[0].beb.costo[i])
        i=1+i
      }
      i=0
      print("\nBebidas:\tPrecio:")
      while (i<self.ordenes[0].comp.nombre.count){
        print(self.ordenes[0].comp.nombre[i],"  \t",
              self.ordenes[0].comp.costo[i])
        i=1+i
      }
      print("\n\n")
    }
    /*Funcion que crea el menu principal de la taqueria, permite usar las funciones de la taqueria y salir de esta*/
    func mainTaqueria(){
      var seleccion:Int
      print("Bienvenid@ a la taqueria ",self.nombre)
      while true==true{
        print("Pedidos hechos hasta hoy ",self.ordenesHechas)
        print("Selecciona tu opcion\n",
            "1.-Nueva orden\n",
            "2.-Modificar orden\n",
            "3.-cancelar orden\n",
            "4.-Despachar orden\n",
            "5.-Mostrar menú\n",
            "6.-Salir\n")
        seleccion=Int(readLine()!)!
        switch seleccion{
          case 1:
            nuevaOrden()
          case 2:
            modificarOrden()
          case 3:
            borrarOrden()
          case 4:
            despacharOrden()
          case 5:
            menuTaqueria()
          case 6:
            print("Hasta luego...")
            return
          default:
            print("Respuesta no valida, intente otra vez")
        }
      }
    }
  }
/*Funcion principal que crea y entra en la taqueria*/
func main(){
  let taqueros=taqueria()
  taqueros.mainTaqueria()
}
main()