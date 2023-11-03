User.create!([
  {name: nil, lastname: nil, email: "profe@senati.pe", encrypted_password: "$2a$12$ihVbeaG0Lx/DvTCzq5lqHO4yXza03jEQvTystR8G5w/RvxL9fZe2.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil},
  {name: "charlie", lastname: nil, email: "aa@senati.pe", encrypted_password: "$2a$12$A8afYDdGCnr2bZW9hyah1.FR8ZQ3o4zXY/Zr3EtV5LqZqQrTfnzEu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil},
  {name: "demo", lastname: "master", email: "demo@senati.pe", encrypted_password: "$2a$12$tlh925So5zzLHyMjeWpRvORFbRMej9UXHRDPJ33U6S8bJzDGEvqIC", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil},
  {name: "Reynoso", lastname: "Fuera", email: "reynoso@senati.pe", encrypted_password: "$2a$12$QprHZVwI6aKxihCCgM3JPu7k53haihQAStlH2VhKLBJPtwrqZGHZe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil}
])
Cart.create!([
  {deleted: nil},
  {deleted: nil},
  {deleted: nil},
  {deleted: nil},
  {deleted: nil},
  {deleted: 1},
  {deleted: 1},
  {deleted: 1},
  {deleted: 1},
  {deleted: 1},
  {deleted: 1},
  {deleted: 1},
  {deleted: 1},
  {deleted: 1}
])
Category.create!([
  {name: "Cables y Conductores", image: "cat1.jpg", slider: nil, slider_mobile: nil, deleted: 0},
  {name: "Control Industrial", image: "cat2.jpg", slider: nil, slider_mobile: nil, deleted: 0},
  {name: "Distribución Eléctrica", image: "cat3.jpg", slider: nil, slider_mobile: nil, deleted: 0},
  {name: "Equipos Neumáticos", image: "cat4.jpg", slider: nil, slider_mobile: nil, deleted: 0},
  {name: "Gestión Calidad de Energía", image: "cat5.jpg", slider: nil, slider_mobile: nil, deleted: 0},
  {name: "Iluminación", image: "cat6.jpg", slider: nil, slider_mobile: nil, deleted: 0},
  {name: "Instrumentos de Medición", image: "cat7.jpg", slider: nil, slider_mobile: nil, deleted: 0},
  {name: "Materiales para Instalaciones Eléctricas", image: "cat8.jpg", slider: nil, slider_mobile: nil, deleted: 0},
  {name: "Protección y Control en BT", image: "cat9.jpg", slider: nil, slider_mobile: nil, deleted: 0},
  {name: "Seguridad Eléctrica e Industrial", image: "cat10.jpg", slider: nil, slider_mobile: nil, deleted: 0},
  {name: "Sistema de puesta a tierra", image: "cat11.jpg", slider: nil, slider_mobile: nil, deleted: 0},
  {name: "Tuberías y accesorios", image: "cat12.jpg", slider: "cat12.jpg", slider_mobile: nil, deleted: 0}
])
Country.create!([
  {name: "Peru", short_name: "PE", address: "Lima", deleted: 0}
])
Product.create!([
  {category_id: 1, mark_id: 1, name: "UNION EN T QST-10", description: "[153131]UNION EN T TUBERIA OD 10MM QST-10", image: "1.webp", list_price: 42.84, discount: 20.0, price: 34.27, ranked: 1, stock: 10, technical_info: "Aplicacion\r\n\tIndustrial\r\nRecomendaciones\r\n\tRevisar el catallogo general para la selección correcta\r\nTipo\r\n\tNeumatico\r\nAncho\r\n\t5.1 mm\r\nModelo\r\n\t153131\r\nAltura\r\n\t2 mm\r\nObservaciones\r\n\tDiseñado para instalaciones Neumaticas\r\nProfundidad\r\n\t3.5 mm\r\nAdvertencia\r\n\tDebe ser instalado por el personal calificado\r\nMarca\r\n\tFESTO\r\nMaterial\r\n\tFESTO\r\nPeso\r\n\t24 g", attach: nil, deleted: 0},
  {category_id: 2, mark_id: 2, name: "\"RACOR RAPIDO ROSCADO ROSCA 1/8\"\" X TUBERIA OD 6MM QS-1/8-6\"", description: "[153002]RACOR RAPIDO ROSCADO ROSCA 1/8\" X TUBERIA OD 6MM QS-1/8-6", image: "2.webp", list_price: 10.41, discount: 20.0, price: 8.33, ranked: 2, stock: 20, technical_info: "Aplicacion\r\n\tIndustrial\r\nRecomendaciones\r\n\tRevisar el catalogo general para la selección correcta\r\nTipo\r\n\tNeumatico\r\nAncho\r\n\t25 mm\r\nModelo\r\n\t153002\r\nAltura\r\n\t40 mm\r\nObservaciones\r\n\tDiseñado para instalaciones Neumaticas\r\nProfundidad\r\n\t25 mm\r\nAdvertencia\r\n\tDebe ser instalado por el personal calificado\r\nMarca\r\n\tFESTO\r\nMaterial\r\n\tFESTO\r\nPeso\r\n\t44 g", attach: nil, deleted: 0},
  {category_id: 3, mark_id: 3, name: "PUNTAS D/PRUEBAS, CONECTOR BANANA, 10A, CAT III-100V/CAT IV-600V, CSA", description: "[TL75]PUNTAS D/PRUEBAS, CONECTOR BANANA, 10A, CAT III-1000V/CAT IV-600V, CSA", image: "3.webp", list_price: 160.06, discount: 0.0, price: 160.06, ranked: 3, stock: 30, technical_info: "Tipo\r\n\tEquipo de Medición\r\nAdvertencia\r\n\tRevisar las instrucciones de uso\r\nMarca\r\n\tFLUKE\r\nModelo\r\n\tTL75\r\nRango\r\n\tCAT III 1000 V-CAT IV 600 V\r\nAncho\r\n\t20.32 mm\r\nAplicacion\r\n\tIndustrial\r\nRecomendaciones\r\n\tUsar el equipo de acuerdo a las normas de fabrica\r\nProfundidad\r\n\t12.7 mm\r\nObservaciones\r\n\tEquipo diseñado para uso Industrial y residencial\r\nAltura\r\n\t12.7 mm\r\nPeso\r\n\t910.0197 g", attach: nil, deleted: 0},
  {category_id: 4, mark_id: 4, name: "MEDIDOR DIGITAL MULTIFUNCION PM5330, DISPLAY GRAFICO Y PUERTO DE COMUNICACION RS-485", description: "[METSEPM5330]MEDIDOR DIGITAL MULTIFUNCION PM5330, DISPLAY GRAFICO Y PUERTO DE COMUNICACION RS-485", image: "4.webp", list_price: 1245.5, discount: 10.0, price: 1210.5, ranked: 4, stock: 40, technical_info: "Aplicacion\r\n\tIndustrial\r\nPeso\r\n\t550 g\r\nProfundidad\r\n\t12.6 mm\r\nAltura\r\n\t11 mm\r\nAdvertencia\r\n\tDebe ser instalado por el personal calificado\r\nCapacidad\r\n\tPM5330\r\nModelo\r\n\tMETSEPM5330\r\nMarca\r\n\tSCHNEIDER\r\nObservaciones\r\n\tDiseñado para instalaciones electricas\r\nRecomendaciones\r\n\tRevisar el catallogo general para la selección correcta\r\nTipo\r\n\tMedidor Multifuncion\r\nAncho\r\n\t12.6 mm", attach: nil, deleted: 0},
  {category_id: 5, mark_id: 5, name: "PINZA AMPERIMETRICA, 1000A AC/DC, 1000 V AC/DC, 60KO, 1000 ΜF, CAT IV-600V, TRUE RMS, C/SOND", description: "[FLUKE-376 FC]PINZA AMPERIMETR.,1000A AC/DC,1000 V AC/DC,60KO,1000 ΜF,CAT IV-600V,TRUE RMS, C/SOND", image: "5.webp", list_price: 1200.9, discount: 20.0, price: 1000.5, ranked: 5, stock: 50, technical_info: "Tipo\r\n\tEquipo de Medición\r\nMarca\r\n\tFLUKE\r\nAplicacion\r\n\tIndustrial\r\nPeso\r\n\t395 g\r\nRango\r\n\t1000A AC/DC-1000VAC/DC\r\nProfundidad\r\n\t4.5 mm\r\nAdvertencia\r\n\tRevisar las instrucciones de uso\r\nObservaciones\r\n\tEquipo diseñado para uso Industrial y residencial\r\nRecomendaciones\r\n\tUsar el equipo de acuerdo a las normas de fabrica\r\nModelo\r\n\tFLUKE-376 FC\r\nAltura\r\n\t24.9 mm\r\nAncho\r\n\t8.5 mm", attach: nil, deleted: 0},
  {category_id: 6, mark_id: 6, name: "TOMACORRIENTE P/EMPOTRAR DE 3P+LT DE 16 AMP 250V. AZUL 9H IP67", description: "[1478]TOMACORRIENTE P/EMPOTRAR DE 3P+LT DE 16 AMP 250V. AZUL 9H IP67", image: "6.webp", list_price: 60.99, discount: 5.0, price: 54.99, ranked: 6, stock: 60, technical_info: "Modelo\r\n\t1478\r\nObservaciones\r\n\tDiseñado para instalaciones electricas\r\nCapacidad\r\n\t16AMP\r\nTipo\r\n\tTomacorriente Industrial\r\nProfundidad\r\n\t9.5 mm\r\nAltura\r\n\t8.4 mm\r\nMarca\r\n\tMENNEKES\r\nRecomendaciones\r\n\tRevisar el catallogo general para la selección correcta\r\nAdvertencia\r\n\tDebe ser instalado por el personal calificado\r\nVoltaje\r\n\t250V\r\nPeso\r\n\t203 g\r\nAncho\r\n\t6.4 mm", attach: nil, deleted: 0}
])
Slider.create!([
  {name: "Slider 1", image: "slider1.jpg", image_mobile: "slide1w.jpg", remark: 0, deleted: 0},
  {name: "Slider 2", image: "slider2.jpg", image_mobile: "slider2w.jpg", remark: 0, deleted: 0},
  {name: "Slider 3", image: "slider3.jpg", image_mobile: nil, remark: 0, deleted: 0},
  {name: "Slider 4", image: "slider4.jpg", image_mobile: nil, remark: 0, deleted: 0},
  {name: "Slider 5", image: "slider5.jpg", image_mobile: nil, remark: 0, deleted: 1}
])
Mark.create!([
  {name: "Centelsa", image: "", deleted: 0},
  {name: "Festo", image: "", deleted: 0},
  {name: "Schneider", image: "", deleted: 0},
  {name: "Legrand", image: "", deleted: nil},
  {name: "Bender", image: "", deleted: 0},
  {name: "Bticino", image: "", deleted: 0},
  {name: "Phillips", image: "", deleted: nil}
])
