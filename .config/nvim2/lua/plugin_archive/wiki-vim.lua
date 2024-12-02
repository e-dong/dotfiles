return {
	"lervag/wiki.vim",
	config = function()
		vim.g.wiki_root = "~/wiki"
		vim.g.wiki_link_transforms["norg"] = "wiki#link#templates#org"
	end,
}
