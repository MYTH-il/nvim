if true then return {} end
return {
  "simrat39/rust-tools.nvim",
  config = function()
    require("rust-tools").setup {
      server = {
        on_attach = function(_, bufnr)
          -- Hover actions
          vim.keymap.set("n", "<C-space>", require("rust-tools").hover_actions.hover_actions, { buffer = bufnr })
          -- Code action groups
          vim.keymap.set(
            "n",
            "<Leader>a",
            require("rust-tools").code_action_group.code_action_group,
            { buffer = bufnr }
          )
        end,
        -- Inlay hints
        inlay_hints = {
          show_parameter_hints = true,
        },
        -- Hover on mouse over
        hover = {
          auto_focus = true,
        },
      },
    }
  end,
}
