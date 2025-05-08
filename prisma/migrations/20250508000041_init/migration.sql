-- CreateTable
CREATE TABLE `pedidos` (
    `idpedidos` INTEGER NOT NULL AUTO_INCREMENT,
    `id` INTEGER NULL,
    `idproduto` INTEGER NULL,

    INDEX `id`(`id`),
    INDEX `idproduto`(`idproduto`),
    PRIMARY KEY (`idpedidos`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `produtos` (
    `idproduto` INTEGER NOT NULL AUTO_INCREMENT,
    `prodnome` VARCHAR(150) NOT NULL,
    `proddesc` TEXT NOT NULL,
    `prodpreco` DECIMAL(6, 2) NOT NULL,

    PRIMARY KEY (`idproduto`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `usuarios` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(30) NOT NULL,
    `email` VARCHAR(30) NOT NULL,
    `senha` VARCHAR(10) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `pedidos` ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id`) REFERENCES `usuarios`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `pedidos` ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`idproduto`) REFERENCES `produtos`(`idproduto`) ON DELETE NO ACTION ON UPDATE NO ACTION;
