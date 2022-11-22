local status, nvim_tree = pcall(require, "nvim-tree")

if not status then
  return
end

nvim_tree.setup({
  sort_by = "case_sensitive",
  update_cwd = true,
  hijack_directories = {
    auto_open = false,
  },
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
    hide_root_folder = true,
  },
  remove_keymaps = { "e", "s", "<C-e>" },
  renderer = {
    group_empty = true,
  },
  update_focused_file = {
    enable = true,
    update_cwd = false,
  },
  filters = {
    dotfiles = false,
  },
})
