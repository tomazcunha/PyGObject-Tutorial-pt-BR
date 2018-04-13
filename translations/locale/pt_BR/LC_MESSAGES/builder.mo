��          �               �     �  �   �     l  $     =   �  �   �     q  U  y  $  �     �  5   
  �   @     �  �   �  �   �  �   �	  �  �
  ^   �     �  U     �   Z  �   �  #   �  B     @   \  �  �     $  �   6     �  %   �  W     �   r        f    0  o     �  <   �  �   �  "   �  �   �  �   �    e  $  �  _   �     	  X   $  �   }    9  &   O  S   v  |   �   Accessing widgets An alternative approach is to create a class which has methods that are called like the signals. In our example the last code snippet could be rewritten as: Connecting Signals Creating and loading the .glade file Designers without programming skills can create and edit UIs. Every widget can be retrieved from the builder by the :meth:`Gtk.Builder.get_object` method and the widget's *id*. It is really *that* simple. Example First of all you have to download and install Glade. There are `several tutorials <https://wiki.gnome.org/action/show/Apps/Glade/Tutorials>`_ about Glade, so this is not explained here in detail. Let's start by creating a window with a button in it and saving it to a file named *example.glade*. The resulting XML file should look like this. Glade also makes it possible to define signals which you can connect to handlers in your code without extracting every object from the builder and connecting to the signals manually. The first thing to do is to declare the signal names in Glade. For this example we will act when the window is closed and when the button was pressed, so we give the name "onDestroy" to the callback handling the "destroy" signal of the window and "onButtonPressed" to the callback handling the "pressed" signal of the button. Now the XML file should look like this. Glade and Gtk.Builder It is also possible to get a list of all objects with It is also possible to load only some of the objects. The following line would add only the objects (and their child objects) given in the tuple. Less code needs to be written. Next, we have to connect the signals and the handler functions. The easiest way to do this is to define a *dict* with a mapping from the names to the handlers and then pass it to the :meth:`Gtk.Builder.connect_signals` method. Now that the window and the button are loaded we also want to show them. Therefore the :meth:`Gtk.Window.show_all` method has to be called on the window. But how do we access the associated object? Now we have to define the handler functions in our code. The *onDestroy* should simply result in a call to :meth:`Gtk.main_quit`. When the button is pressed we would like to print the string "Hello World!", so we define the handler as follows The :class:`Gtk.Builder` class offers you the opportunity to design user interfaces without writing a single line of code. This is possible through describing the interface by a XML file and then loading the XML description at runtime and create the objects automatically, which the Builder class does for you. For the purpose of not needing to write the XML manually the `Glade <https://glade.gnome.org/>`_ application lets you create the user interface in a WYSIWYG (what you see is what you get) manner The description of the user interface is independent from the programming language being used. The final code of the example The second line loads all objects defined in *example.glade* into the Builder object. There is still code required for handling interface changes triggered by the user, but :class:`Gtk.Builder` allows you to focus on implementing that functionality. These two methods exist also for loading from a string rather than a file. Their corresponding names are :meth:`Gtk.Builder.add_from_string` and :meth:`Gtk.Builder.add_objects_from_string` and they simply take a XML string instead of a file name. This method has several advantages: To load this file in Python we need a :class:`Gtk.Builder` object. UI changes can be seen more quickly, so UIs are able to improve. Project-Id-Version: Python GTK+ 3 Tutorial 3.4
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-04-11 22:50-0300
PO-Revision-Date: 2018-04-11 22:57-0300
Last-Translator: Tomaz Cunha <tomazmcn@gmail.com>
Language: pt_BR
Language-Team: 
Plural-Forms: nplurals=2; plural=(n > 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.3
 Acessando Widgets Uma abordagem alternativa é criar uma classe que tenha métodos que sejam chamados como os sinais. Em nosso exemplo, o último snippet de código pode ser reescrito como: Conectando Sinais Criando e carregando o arquivo .glade Designers sem habilidades de programação podem criar e editar interfaces de usuário. Cada widget pode ser recuperado do construtor pelo método :meth:`Gtk.Builder.get_object` e pelo *id* do widget. É realmente *isso* simples. Exemplo Primeiro de tudo você tem que baixar e instalar o Glade. Existem `vários tutoriais <https://wiki.gnome.org/action/show/Apps/Glade/Tutorials>`_ sobre o Glade, então isso não é explicado aqui em detalhes. Vamos começar criando uma janela com um botão e salvando-a em um arquivo chamado *example.glade*. O arquivo XML resultante deve se parecer com isso. O Glade também permite definir sinais que você pode conectar a manipuladores em seu código sem extrair todos os objetos do construtor e conectar-se aos sinais manualmente. A primeira coisa a fazer é declarar os nomes dos sinais no Glade. Para este exemplo, vamos agir quando a janela é fechada e quando o botão foi pressionado, então damos o nome "onDestroy" para o retorno de chamada manipulando o sinal "destroy" da janela e "onButtonPressed" para o retorno de chamada manipulando o "pressionado" sinal do botão. Agora o arquivo XML deve ficar assim. Glade e Gtk.Builder Também é possível obter uma lista de todos os objetos com Também é possível carregar apenas alguns dos objetos. A linha a seguir adicionaria apenas os objetos (e seus objetos filhos) fornecidos na tupla. Menos código precisa ser escrito. Em seguida, temos que conectar os sinais e as funções do manipulador. A maneira mais fácil de fazer isso é definir um *dict* com um mapeamento dos nomes para os manipuladores e então passá-lo para o método :meth:`Gtk.Builder.connect_signals`. Agora que a janela e o botão estão carregados, também queremos mostrá-los. Portanto, o método :meth:`Gtk.Window.show_all` deve ser chamado na janela. Mas como acessamos o objeto associado? Agora temos que definir as funções do manipulador em nosso código. O *onDestroy* deve simplesmente resultar em uma chamada para :meth:`Gtk.main_quit`. Quando o botão é pressionado, gostaríamos de imprimir a string "Hello World!", Então definimos o manipulador da seguinte maneira A classe :class:`Gtk.Builder` oferece a você a oportunidade de projetar interfaces de usuário sem escrever uma única linha de código. Isso é possível descrevendo a interface por um arquivo XML e, em seguida, carregando a descrição XML em tempo de execução e criando os objetos automaticamente, o que a classe Builder faz por você. Para o propósito de não precisar escrever o XML manualmente, o aplicativo `Glade <https://glade.gnome.org/>`_ permite criar a interface do usuário de uma maneira WYSIWYG (o que você vê é o que obtém) A descrição da interface do usuário é independente da linguagem de programação utilizada. O código final do exemplo A segunda linha carrega todos os objetos definidos em *example.glade* no objeto Builder. Ainda existe código necessário para lidar com mudanças de interface acionadas pelo usuário, mas :class:`Gtk.Builder` permite que você se concentre em implementar essa funcionalidade. Esses dois métodos também existem para o carregamento de uma string, em vez de um arquivo. Seus nomes correspondentes são :meth:`Gtk.Builder.add_from_string` e :meth:`Gtk.Builder.add_objects_from_string` e eles simplesmente pegam uma string XML em vez de um nome de arquivo. Esse método possui várias vantagens: Para carregar este arquivo em Python, precisamos de um objeto :class:`Gtk.Builder`. As mudanças da interface do usuário podem ser vistas mais rapidamente, para que as interfaces de usuário possam melhorar. 