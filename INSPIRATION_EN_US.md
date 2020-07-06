## Inspiration

One day I was browsing the GitHub of a reference in Java [Rafa Bene](https://github.com/rafabene), and i came across a repository called [dotfiles](https://github.com/rafabene/dotfiles). 

The name caught my attention and when I entered I noticed a link to a post on your [blog](http://rafabene.com/2015/10/06/do-you-dotfiles/), which detail the way of your dotfiles organizations.

In that same post he link to  [website/repository](https://dotfiles.github.io/)  on GitHub, that contains a *unofficial* guide to dotfiles organization.

I found my self facing an organized and detailed world about dotfiles, until then unknown for me.

I spent a few days reading articles (_most of then from very old times, how to only discover that this type of organization existed only now?!_ ) more some days surfing on community repositories and finally testing some tools.

So, i decided init my own repository like a mvp. 





## Articles

#### These were the articles that I read and helped me a lot to understand how these organizations are made.

1. https://www.anishathalye.com/2014/08/03/managing-your-dotfiles/

   > This article gives an overview of dotfile management, emphasizing the importance of not forking a ready-made one, versioning using git, idempotent installation script, git submodules to use tool dotfiles manager, local repository for customization and your proprietary tool without external dependencies: dotbot.
   >
   > Dotfile repo: https://github.com/anishathalye/dotfiles

   

2. https://driesvints.com/blog/getting-started-with-dotfiles/

   > This article starts with a motivation to have the entire system (macOS) and dev tools configured in dotfiles, prioritizing top-level organizations, that is, simpler. It mentions macOS settings, homebrew file, Zsh shell and oh-my-zsh framework.
   >
   > Dotfile repo: https://github.com/driesvints/dotfiles

   

3. https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789

   > This article gives an overview of the author's particular organization that divides the dotfiles into each function: .bash_profile, .inputrc, .alias, .functions, .env, .prompt. Mention the macOS and homebrew settings.
   >
   > Dotfile repo: https://github.com/webpro/dotfiles 
   >
   > The author keep an repositoriy doing some article curators and tutorials:  https://github.com/webpro/awesome-dotfiles

   

4. http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/

   > This article gives an overview on how to use git (branchs, commits etc) to manage dotfiles, giving tips on how to organize folders internally in the dotfiles repository, building the installation script.
   >
   > Dotfile repo: https://github.com/michaeljsmalley/dotfiles

   

5. https://www.atlassian.com/git/tutorials/dotfiles

   > This article gives an overview on how use git to manage your dotfiles.
   >
   > Dotfile repo: https://www.atlassian.com/git/tutorials/dotfiles







## Arquivos

1. File example with macOS preferences

   [https://github.com/mathiasbynens/dotfiles/blob/master/.macos](https://github.com/mathiasbynens/dotfiles/blob/master/.macos)

2. Brewfile example for Homebrew Bundler install all apps indicated

   [https://github.com/driesvints/dotfiles/blob/master/Brewfile](https://github.com/driesvints/dotfiles/blob/master/Brewfile)

3. Init configurations example to add on .bash_profile file

   [https://github.com/mathiasbynens/dotfiles/blob/master/.bash_profile](https://github.com/mathiasbynens/dotfiles/blob/master/.bash_profile)

4. Simple Shell scripts to install dotfiles manager example

   [https://github.com/michaeljsmalley/dotfiles/blob/master/makesymlinks.sh](https://github.com/michaeljsmalley/dotfiles/blob/master/makesymlinks.sh)

   [https://github.com/skwp/dotfiles/blob/32c099214fb586d674a47f2c3f5f23b59532e83a/Rakefile](https://github.com/skwp/dotfiles/blob/32c099214fb586d674a47f2c3f5f23b59532e83a/Rakefile)

   [https://github.com/mathiasbynens/dotfiles/blob/3b4eb3efb692aa4d19a1e2c30c2ed9a65e9c7d8c/bootstrap.sh](https://github.com/mathiasbynens/dotfiles/blob/3b4eb3efb692aa4d19a1e2c30c2ed9a65e9c7d8c/bootstrap.sh)

   [https://github.com/holman/dotfiles/blob/afd926917a607b5b0fb4d9998ac0e635454e1f8e/script/bootstrap](https://github.com/holman/dotfiles/blob/afd926917a607b5b0fb4d9998ac0e635454e1f8e/script/bootstrap)

   

## Dicas Extras

1. Use a local private repository to override the configs, so you can store them via internal shortcuts and private data
2. Use branchs to separate files from different environments in a local repository
3. Extra dotfiles example repositories
   1. [https://github.com/ryanb/dotfiles](https://github.com/ryanb/dotfiles)
   2. [https://github.com/holman/dotfiles](https://github.com/holman/dotfiles)
   3. [https://github.com/mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)

