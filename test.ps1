$rubies = @(
    @{
        "version" = "Ruby 1.9.3-p551"
        "install_path" = "C:\Ruby193"
    }
    @{
        "version" = "Ruby 2.0.0-p648"
        "install_path" = "C:\Ruby200"
    }
    @{
        "version" = "Ruby 2.0.0-p648 (x64)"
        "install_path" = "C:\Ruby200-x64"
    }
    @{
        "version" = "Ruby 2.2.6"
        "install_path" = "C:\Ruby22"
    }
    @{
        "version" = "Ruby 2.2.6 (x64)"
        "install_path" = "C:\Ruby22-x64"
    }
    @{
        "version" = "Ruby 2.1.9"
        "install_path" = "C:\Ruby21"
    }
    @{
        "version" = "Ruby 2.1.9 (x64)"
        "install_path" = "C:\Ruby21-x64"
    }
    @{
        "version" = "Ruby 2.3.3"
        "install_path" = "C:\Ruby23"
    }
    @{
        "version" = "Ruby 2.3.3 (x64)"
        "install_path" = "C:\Ruby23-x64"
    }
    @{
        "version" = "Ruby 2.4.1-1"
        "install_path" = "C:\Ruby24"
    }
    @{
        "version" = "Ruby 2.4.1-1 (x64)"
        "install_path" = "C:\Ruby24-x64"
    }
)

# print summary
for($i = 0; $i -lt $rubies.Count; $i++) {
    $ruby = $rubies[$i]
    Write-Host "$($ruby.version)" -ForegroundColor Cyan
    Write-Host "ruby --version: $(cmd /c "$($ruby.install_path)\bin\ruby" --version)"
    Write-Host "gem --version: $(cmd /c "$($ruby.install_path)\bin\gem" --version)"
    Write-Host "bundler --version: $(cmd /c "$($ruby.install_path)\bin\bundler" --version)"
}
