//
//  ViewController.swift
//  Wordnote
//
//  Created by aluno on 25/06/2018.
//  Copyright © 2018 aluno. All rights reserved.
//

import UIKit
struct Nota{
    let titulo: String
    let nota: String
    let data: String
    let local: String
}
class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    let titulo = "Nota 1";
    let nota = "Me nota";
    let data = "25/06/18";
    let local = "UFC-Virtual"
    var n1 = Nota(titulo: "Nota 1", nota: "nota1", data: "25/05/19", local: "Bem ali")
    var n2 = Nota(titulo: "Nota 2", nota: "nota2", data: "25/05/19", local: "ali")
    var n3 = Nota(titulo: "Nota 3", nota: "nota3", data: "26/05/19", local: "Nao sei")
    var n4 = Nota(titulo: "Nota 4", nota: "nota4", data: "27/05/19", local: "nem eu")
    
    var notas = Array<Nota>()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for:indexPath) as! ViewControllerTableViewCell
        cell.titulo.text = notas[indexPath.row].titulo
        cell.nota.text = notas[indexPath.row].nota
        cell.data.text = notas[indexPath.row].data
        cell.local.text = notas[indexPath.row].local
        return (cell)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        notas.append(n1)
        notas.append(n2)
        notas.append(n3)
        notas.append(n4)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}

