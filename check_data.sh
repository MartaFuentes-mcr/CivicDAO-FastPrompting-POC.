#!/bin/bash
if [ -f "data/propuestas_civicdao.csv" ]; then
    echo "✅ El archivo 'data/propuestas_civicdao.csv' existe."
else
    echo "❌ El archivo 'data/propuestas_civicdao.csv' NO existe."
    echo "👉 Creando archivo de ejemplo..."
    mkdir -p data
    cat > data/propuestas_civicdao.csv << 'EOF'
id,titulo,descripcion
1,"Redistribución de fondos comunitarios","Proponemos mover el 20% del fondo operativo a iniciativas de inclusión digital en barrios marginados. Presupuesto: 15k USDC. Duración: 6 meses."
2,"Actualización del contrato de gobernanza","Se propone actualizar el smart contract de votación para incluir umbral de quórum del 10%. Requiere auditoría previa."
3,"Taller de onboarding para nuevos miembros","Organizar un evento mensual para explicar cómo funciona CivicDAO, roles y cómo participar. Presupuesto: 500 USDC/mes."
4,"Integración con Snapshot para votaciones","Conectar nuestro foro con Snapshot para facilitar votaciones en cadena. Requiere desarrollo técnico y validación de seguridad."
EOF
    echo "✅ Archivo creado automáticamente."
fi