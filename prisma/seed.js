const { PrismaClient } = require('@prisma/client')
const prisma = new PrismaClient()

async function main() {
  await prisma.role.createMany({
    data: [
      { id: 1, name: 'Usuario' },
      { id: 2, name: 'Administrador' }
    ],
    skipDuplicates: true, // evita error si ya existen
  })
}

main()
  .then(() => {
    console.log('Datos de roles insertados correctamente.')
  })
  .catch((e) => {
    console.error('Error al insertar roles:', e)
    process.exit(1)
  })
  .finally(async () => {
    await prisma.$disconnect()
  })
