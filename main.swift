class Pai {
    var nome: String
    var idade: Int
    var interesses: [String] = []

    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }

    var descricao: String {
        return "Meu nome é \(nome) e tenho \(idade) anos."
    }

    func saudacao() {
        print("Olá, eu sou o Pai!")
    }
}

class Filha: Pai {
    var atividades: [String] = ["Natação", "Leitura"]

    override var descricao: String {
        return super.descricao + " Sou a Filha!"
    }

    override func saudacao() {
        print("Olá, eu sou a Filha!")
    }

    func filtrarAtividades(inicioCom letra: Character) -> [String] {
        let atividadesFiltradas = atividades.filter { atividade in
            if let firstChar = atividade.first {
                return firstChar == letra
            }
            return false
        }
        return atividadesFiltradas
    }
}

// Uso do programa
let pai = Pai(nome: "Bernardo", idade: 24)
print(pai.descricao)
pai.saudacao()

let filha = Filha(nome: "Sarah", idade: 2)
print(filha.descricao)
filha.saudacao()

let atividadesComA = filha.filtrarAtividades(inicioCom: "N")
print("Atividades que começam com 'N': \(atividadesComA)")
