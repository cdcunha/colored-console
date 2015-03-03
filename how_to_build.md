# How to build

These instructions are *only* for building with Bau, including compilation, tests and packaging. This is the simplest way to build.

You can also build with Visual Studio 2012 or later but you'll have to run the tests yourself and packaging will not take place.

*Don't be put off by the prerequisites!* It only takes a few minutes to set them up and only needs to be done once. If you haven't used Bau before then you're in for a real treat!

After the build has completed, the build artifacts will be located in `artifacts`.

## Windows

1. Ensure you have .NET framework 4.5 installed.

1. Ensure you have [scriptcs 0.13.3 or later](http://chocolatey.org/packages/ScriptCs) installed.

1. Using a command prompt, navigate to your clone root folder and execute:

    `build.bat`

## Linux

1. Ensure you have Mono development tools 3.0 or later installed.

    `sudo apt-get install mono-devel`

1. Ensure your mono instance has root SSL certificates

    `mozroots --import --sync`

1. Using a terminal, navigate to your clone root folder and execute:

    `bash build.sh`
