# Windows Development Environment Setup Guid

This document outlines the steps to setup a Windows Dev Environment using Parallels for macOs.

## Create a Parallels Virtual Machine

First [Install Parallels](https://www.parallels.com/welcome-trial/) and get a Windows 10 machine started.

## Configuring the Environment

1. Open an elevated Powershell shell:

Type `powershell` in the search box, right-click it, and click 'Run as Administrator'.

2. Install Boxstarter

From the elevated shell, run:

```
> Set-ExecutionPolicy RemoteSigned; . { iwr -useb http://boxstarter.org/bootstrapper.ps1 } | iex; get-boxstarter -Force
```

3. Run setup scripts:

```
Install-BoxstarterPackage -PackageName https://gist.githubusercontent.com/gtalarico/d1d18a42ae97ad2d044ca5319bdf6ee5/raw/a9503c1c7a479e1dbd151f2d3f4da43cf422d662/boxstarter.ps1 -DisableReboots
```

## Ok, So WTF is going on?

We know have all tools we need install.

#### CLI

We use *cmder* as our primary shell as that is a much better shell then cmd,
and includes git and other useful unix binaries (ssh, curl, etc)


```
Set-ExecutionPolicy RemoteSigned
. { iwr -useb http://boxstarter.org/bootstrapper.ps1 } | iex; get-boxstarter -Force
```


# More Info

* [Boxstarter](https://boxstarter.org/Learn/WebLauncher)
