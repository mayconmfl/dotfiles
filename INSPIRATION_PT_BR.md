## Inspiração



Certo dia estava eu navegando no GitHub de uma referência em Java o [Rafa Bene](https://github.com/rafabene), e me deparei com um repositório chamado [dotfiles](https://github.com/rafabene/dotfiles).

O nome me chamou atenção e ao navegar neste repositório, o Rafa, linkou um post do seu [blog](http://rafabene.com/2015/10/06/do-you-dotfiles/) em que detalha como foi feita a organização dos seus "dotfiles".

Nesse mesmo post ele fez um link para um [site/repositório](https://dotfiles.github.io/) no GitHub que contém um guia não oficial para organização de dotfiles.

Bom, me vi diante de um mundo, detalhado e organizado, sobre dotfiles, até então desconhecido para mim.

Passei alguns dias lendo muitos artigos (vários de muitos anos atrás, como que só descobrir que existia essa organização toda agora?! :O) e mais um bocado navegando pelos repositórios da comunidade e mais um outro bocado testando ferramentas para essa finalidade.

Então resolvi iniciar a organização do meu repositório de forma bem simples e incremental.




## Artigos

#### Esses foram os artigos que li e me ajudaram bastante a entender como essas organizações são feitas.

1. https://www.anishathalye.com/2014/08/03/managing-your-dotfiles/

   > Esse artigo dá uma panorama geral sobre o gerenciamento dos dotfiles, ressaltando a importância de não fazer um fork de um já pronto, versionamento usando git, script de instalação idempotente, git submódulos para usar sua ferramenta, repositório local para customização e sua ferramenta proprietária sem dependências externas: dotbot.
   >
   > Dotfile repo: https://github.com/anishathalye/dotfiles
   
   
   
2. https://driesvints.com/blog/getting-started-with-dotfiles/

   > Esse artigo inicia com uma motivação para ter todo o sistema (macOS) e ferramentas de dev configurado em dotfiles, prioriza as organizações top-level, ou seja, mais simples, menciona as configurações do macOS, arquivo do homebrew, shell Zsh e framework oh-my-zsh. 
   >
   > Dotfile repo: https://github.com/driesvints/dotfiles

   

3. https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789

   > Esse artigo dá uma panorama geral sobre a organização em particular do autor que divide  os dotfiles em cada função: .bash_profile, .inputrc, .alias, .functions, .env, .prompt. Menciona as configurações do macOS e homebrew. 
   >
   > Dotfile repo: https://github.com/webpro/dotfiles 
   >
   > O Autor mantém um repositório com uma curadoria de artigos, tutoriais:  https://github.com/webpro/awesome-dotfiles

   

4. http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/

   > Esse artigo dá uma panorama geral sobre como utilizar o git (branchs, commits etc) para gerenciar os dotfiles, dando dicas de como organizar as pastas internamente do repositório de dotfiles, construção do script de instalação.
   >
   > Dotfile repo: https://github.com/michaeljsmalley/dotfiles
   
   
   
5. https://www.atlassian.com/git/tutorials/dotfiles

   > Esse artigo dá uma panorama geral sobre como utilizar o git para gerenciar os dotfile.
   >
   > Dotfile repo: https://www.atlassian.com/git/tutorials/dotfiles




## Arquivos

1. Exemplo de arquivo com as preferencias do macOS

    [https://github.com/mathiasbynens/dotfiles/blob/master/.macos](https://github.com/mathiasbynens/dotfiles/blob/master/.macos)

2. Exemplo de arquivo Brewfile para que o Homebrew Bundler instale todas as aplicações que for indicado

    [https://github.com/driesvints/dotfiles/blob/master/Brewfile](https://github.com/driesvints/dotfiles/blob/master/Brewfile)

3. Exemplos de configurações inicias que coloca no arquivo .bash_profile

    [https://github.com/mathiasbynens/dotfiles/blob/master/.bash_profile](https://github.com/mathiasbynens/dotfiles/blob/master/.bash_profile)

4. Exemplos de scripts shell para instalação dos dotfiles simples 

    [https://github.com/michaeljsmalley/dotfiles/blob/master/makesymlinks.sh](https://github.com/michaeljsmalley/dotfiles/blob/master/makesymlinks.sh)

    [https://github.com/skwp/dotfiles/blob/32c099214fb586d674a47f2c3f5f23b59532e83a/Rakefile](https://github.com/skwp/dotfiles/blob/32c099214fb586d674a47f2c3f5f23b59532e83a/Rakefile)

    [https://github.com/mathiasbynens/dotfiles/blob/3b4eb3efb692aa4d19a1e2c30c2ed9a65e9c7d8c/bootstrap.sh](https://github.com/mathiasbynens/dotfiles/blob/3b4eb3efb692aa4d19a1e2c30c2ed9a65e9c7d8c/bootstrap.sh)

    [https://github.com/holman/dotfiles/blob/afd926917a607b5b0fb4d9998ac0e635454e1f8e/script/bootstrap](https://github.com/holman/dotfiles/blob/afd926917a607b5b0fb4d9998ac0e635454e1f8e/script/bootstrap)
    
    


## Dicas Extras

1. Usar um repositório local privado para fazer o override das configs, para vc consegui armazenar por atalhos internos e dados privados 
2. Usar branchs para separar arquivos de ambientes diferentes em um repositório local
3. Repositórios de exemplos extras de dotfiles
    1. [https://github.com/ryanb/dotfiles](https://github.com/ryanb/dotfiles)
    2. [https://github.com/holman/dotfiles](https://github.com/holman/dotfiles)
    3. [https://github.com/mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
