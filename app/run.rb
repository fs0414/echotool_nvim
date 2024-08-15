require 'neovim'

Neovim.plugin do |plug|
  plug.command(:MyCommand, nargs: 0) do |nvim|
    nvim.command('echo "Hello from Ruby!"')
  end

  plug.function(:MyFunction, nargs: 1) do |nvim, arg|
    nvim.command("echo 'You passed: #{arg}'")
  end

  plug.autocmd(:BufWritePost, pattern: "*.rb") do |nvim|
    nvim.command('echo "Ruby file saved!"')
  end
end
