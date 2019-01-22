# Windows Development Environment Setup Guid

This document outlines the steps to setup a Windows Dev Environment. It was tested using [Parallels](https://www.parallels.com/welcome-trial/) on a fresh Windows 10 install.

## Configuring the Environment

1. Open an elevated Powershell shell:

Type `powershell` in the search box, right-click it, and click 'Run as Administrator'.

2. Install Boxstarter

From the elevated shell, run the command below to install boxstarter.

```
> Set-ExecutionPolicy RemoteSigned; . { iwr -useb http://boxstarter.org/bootstrapper.ps1 } | iex; get-boxstarter -Force
```

3. Run setup scripts

Run the command below, replacing the url with your boxstarter boxstar script raw url. The example below uses a GIST.

```
Install-BoxstarterPackage -PackageName https://gist.githubusercontent.com/gtalarico/d1d18a42ae97ad2d044ca5319bdf6ee5/raw/a9503c1c7a479e1dbd151f2d3f4da43cf422d662/boxstarter.ps1 -DisableReboots
```

## Ok, So WTF is going on?

We know have all tools we need install. The boxstar script sets up some basic Windows config, removes bloatware, and installs a few apps using `choco`. 

#### What's next

We use *cmder* as our primary shell as that is a much better shell then cmd,
and includes git and other useful unix binaries (ssh, curl, etc)

Cmder should already be installed by the boxstar scrit. If you can't search for it look in `C:\tools`.


# More Info

* [Boxstarter](https://boxstarter.org/Learn/WebLauncher)
