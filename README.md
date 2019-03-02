# Gaia

On the dawn of time, we need to host a lot of landing pages, but I don't like to spin up a new service for each page like these! So I decided to make a tool that helps me with a multi application configuration through a single NGINX server, and that's why Gaia is here among us!

Written mostly with Shell script and the real core with GNU AWK, this little tool intends to help you manage a lot of configuration files and HTTPS stuff with not only landing pages, but with applications too.

# Installation?

You just need to grab the source code hahaha, it's so simple and lightweight that almost every UNIX-like distribution can run it! The only requirement beyond `git` is `awk`(This guy you can easily grab from almost every package manager) and `bash`, just because I don't know if it will run in a common `sh`. If it do, please [open an issue](https://github.com/Horaddrim/gaia/issues/new) and let me know! :sparkling_heart:
To help this process, I've made a script (Another one hahaha)

After that, the `gaia` command should be available to you, and running only:

 - `gaia`

You'll have a complete help output to guide you through the first steps :ram:

# Why Shell Script and AWK and not a regular language?
First of all, re-read the name, `Gaia` is the mother of all titans! Who is the mother of all computer titans? Okay, it's maybe `LISP` or `C` so, don't worry about it, but, the UNIX revolution, and all the impact that Linux have in all the ecossystem  so, Shell will always have a big space on this kind of task! :D
