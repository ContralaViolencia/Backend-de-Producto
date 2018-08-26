# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Parametro.destroy_all
Pagina.destroy_all
=begin
parametros=Parametro.create!([
                {
                    id:1, 
                    tipo:"pagina", 
                    nombre:"caballerosidad" , 
                    activo: 1
                },
                {
                    id:2, 
                    tipo:"pagina", 
                    nombre:"informacion", 
                    activo: 1
                }
                
            ])

p "Created #{Parametro.count} parametros"

Pagina.create([
    {
        id:1,
        titulo:"Actua Como Tal",
        ruta:"../../assets/img/correcto.jpg",
        subTitulo:"No es tan Dificil",
        parametros_id: 1
      },
      {
        id:2,
        titulo:"Usa un Lenguaje Adecuado",
        subTitulo:"No escupas tonterias",
        ruta:"../../assets/img/lenguaje.jpg",
        parametros_id: 1
      },
      {
        id:3,
        titulo:"No todo es realmente correcto",
        subTitulo:"Hay cosas que simplemente son de mal gusto",
        ruta:"../../assets/img/bien-mal.jpg",
        parametros_id: 1
    }

])
=end

Pagina.create!([
            {
                id:1, 
                titulo:"pagina", 
                subTitulo:"informacion", 
                ruta: "fdsfsd",
                parametros_id: Parametro.find(1)
            }

        ])



p "Created #{Pagina.count}paginas"


