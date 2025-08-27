-- On définit notre touche leader sur espace
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Raccourci pour la fonction set
local keymap = vim.keymap.set

-- on efface le surlignage de la recherche
keymap("n", "<leader>nh", ":nohl<CR>", { desc = "Effacer le surlignage de la recherche" })

--close all buffer from this one
keymap("n", "<leader>ba", ":%bd|e<CR>", { desc = "Fermer tous les buffers sauf celui en cours d’édition." })

-- I déplace le texte sélectionné vers le haut en mode visuel (activé avec v)
--
-- keymap("v", "<S-i>", ":m .-2<CR>==", { desc = "Déplace le texte sélectionné vers le haut en mode visuel" })
-- -- K déplace le texte sélectionné vers le bas en mode visuel (activé avec v)
-- keymap("v", "<S-k>", ":m .+1<CR>==", { desc = "Déplace le texte sélectionné vers le bas en mode visuel" })

-- I déplace le texte sélectionné vers le haut en mode visuel bloc (activé avec V)
-- keymap(
-- 	"x",
-- 	"<S-i>",
-- 	":move '<-2<CR>gv-gv",
-- 	{ desc = "Déplace le texte sélectionné vers le haut en mode visuel bloc" }
-- )
-- K déplace le texte sélectionné vers le bas en mode visuel (activé avec V)
-- keymap(
-- 	"x",
-- 	"<S-k>",
-- 	":move '>+1<CR>gv-gv",
-- 	{ desc = "Déplace le texte sélectionné vers le bas en mode visuel bloc" }
-- )

-- save
keymap("n", "<leader>w", "<CMD>w<CR>", { desc = "write file" })

-- closebuffer
keymap("n", "<leader>bd", "<CMD>bd<CR>", { desc = "close file" })

-- the keymap for oil (trying instead of the nvim-tree lua)
keymap("n", "<leader>e", "<CMD>Yazi<CR>", { desc = "Open parent directory" })

keymap("n", "<leader>O", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- keymap("n", "<leader>N", "<CMD>new<CR>", { desc = "Open parent directory" })

-- Changement de fenêtre avec Ctrl + déplacement uniquement au lieu de Ctrl-w + déplacement
-- keymap("n", "<C-h>", "<C-w>h", { desc = "Déplace le curseur dans la fenêtre de gauche" })
-- keymap("n", "<C-j>", "<C-w>j", { desc = "Déplace le curseur dans la fenêtre du bas" })
-- keymap("n", "<C-k>", "<C-w>k", { desc = "Déplace le curseur dans la fenêtre du haut" })
-- keymap("n", "<C-l>", "<C-w>l", { desc = "Déplace le curseur dans la fenêtre droite" })

-- move from buffer to buffer
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- // to move in wrapdf
keymap("n", "k", "gk", opts)
keymap("n", "j", "gj", opts)
keymap("n", "<Up>", "gk", opts)
keymap("n", "<Down>", "gj", opts)

keymap("n", "<leader>Y", "<cmd>set columns=70<cr>")
keymap("n", "<leader>z", "<cmd>NoNeckPain<cr>", { silent = true, noremap = true })
