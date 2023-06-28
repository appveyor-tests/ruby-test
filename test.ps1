$rubies = @(
    @{
        "version" = "Ruby 1.9.3-p551"
        "install_path" = "C:\Ruby193"
        "skip_gems_check" = $true
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
        "version" = "Ruby 2.4.3-1"
        "install_path" = "C:\Ruby24"
    }
    @{
        "version" = "Ruby 2.4.3-1 (x64)"
        "install_path" = "C:\Ruby24-x64"
    }
    @{
        "version" = "Ruby 2.5.0-1"
        "install_path" = "C:\Ruby25"
    }
    @{
        "version" = "Ruby 2.5.0-1 (x64)"
        "install_path" = "C:\Ruby25-x64"
    }
    @{
        "version" = "Ruby 2.6.1-1"
        "install_path" = "C:\Ruby26"
    }
    @{
        "version" = "Ruby 2.6.1-1 (x64)"
        "install_path" = "C:\Ruby26-x64"
    }   
    @{
        "version" = "Ruby 2.7.5-1"
        "install_path" = "C:\Ruby27"
    }
    @{
        "version" = "Ruby 2.7.5-1 (x64)"
        "install_path" = "C:\Ruby27-x64"
    } 
    @{
        "version" = "Ruby 3.1.4-1"
        "install_path" = "C:\Ruby31"
    }
    @{
        "version" = "Ruby 3.1.4-1 (x64)"
        "install_path" = "C:\Ruby31-x64"
    } 
    @{
        "version" = "Ruby 3.2.2-1"
        "install_path" = "C:\Ruby32"
    }
    @{
        "version" = "Ruby 3.2.2-1 (x64)"
        "install_path" = "C:\Ruby32-x64"
    } 
)

# print summary
for($i = 0; $i -lt $rubies.Count; $i++) {
    $ruby = $rubies[$i]
    Write-Host "$($ruby.version)" -ForegroundColor Cyan
    Write-Host "ruby --version: $(cmd /c "$($ruby.install_path)\bin\ruby" --version)"
    
    if(-not $ruby.skip_gems_check) {
        $gem_version = (cmd /c "$($ruby.install_path)\bin\gem" --version);
        Write-Host "gem --version: $gem_version"
        #if (-not $gem_version.contains($env:gem_version)) { throw "Wrong Gem version"; }

        $bundler_version = (cmd /c "$($ruby.install_path)\bin\bundle" --version)
        Write-Host "bundle --version: $bundler_version"
        #if (-not $bundler_version.contains($env:bundler_version)) { throw "Wrong Bundler version"; }
     }
}
