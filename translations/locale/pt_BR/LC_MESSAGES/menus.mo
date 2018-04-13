��          �               �  O   �  N   �  V   ,  L   �  �   �  �     $   R  *   w  *   �     �  =  �  ?    @   S	     �	  �   �	  >  $
  �  c     U  G   [  �  �  
   d    o  �  w  a   �  S   `  ^   �  O     �   c  �   "  $   �  *     *   ?     j  [  r  �  �  E   i     �  �   �  @  ?    �     �  I   �  �  �     �   �   �    :class:`Gtk.Action`: An action which can be triggered by a menu or toolbar item :class:`Gtk.RadioAction`: An action of which only one in a group can be active :class:`Gtk.RecentAction`: An action of which represents a list of recently used files :class:`Gtk.ToggleAction`: An action which can be toggled between two states :class:`Gtk.UIManager` provides an easy way of creating menus and toolbars using an `XML-like description <http://developer.gnome.org/gtk3/stable/GtkUIManager.html#XML-UI>`_. :class:`Gtk.UIManager`, :class:`Gtk.Action`, and :class:`Gtk.ActionGroup` have been deprecated since GTK+ version 3.10 and should not be used in newly-written code. Use the :ref:`application` framework instead. :meth:`Gtk.ActionGroup.add_actions`, :meth:`Gtk.ActionGroup.add_radio_actions`. :meth:`Gtk.ActionGroup.add_toggle_actions` Actions Actions represent operations that the user can be perform, along with some information how it should be presented in the interface, including its name (not for display), its label (for display), an accelerator, whether a label indicates a tooltip as well as the callback that is called when the action gets activated. Although, there are specific APIs to create menus and toolbars, you should use :class:`Gtk.UIManager` and create :class:`Gtk.Action` instances. Actions are organised into groups. A :class:`Gtk.ActionGroup` is essentially a map from names to :class:`Gtk.Action` objects. All actions that would make sense to use in a particular context should be in a single group. Multiple action groups may be used for a particular user interface. In fact, it is expected that most non-trivial applications will make use of multiple groups. For example, in an application that can edit multiple documents, one group holding global actions (e.g. quit, about, new), and one group per document holding actions that act on that document (eg. save, cut/copy/paste, etc). Each window's menus would be constructed from a combination of two action groups. Different classes representing different types of actions exist: Example Finally, you retrieve the root widget with :meth:`Gtk.UIManager.get_widget` and add the widget to a container such as :class:`Gtk.Box`. First of all, you should add the :class:`Gtk.ActionGroup` to the UI Manager with :meth:`Gtk.UIManager.insert_action_group`. At this point is also a good idea to tell the parent window to respond to the specified keyboard shortcuts, by using :meth:`Gtk.UIManager.get_accel_group` and :meth:`Gtk.Window.add_accel_group`. GTK+ comes with two different types of menus, :class:`Gtk.MenuBar` and :class:`Gtk.Toolbar`. :class:`Gtk.MenuBar` is a standard menu bar which contains one or more :class:`Gtk.MenuItem` instances or one of its subclasses. :class:`Gtk.Toolbar` widgets are used for quick accessibility to commonly used functions of an application. Examples include creating a new document, printing a page or undoing an operation. It contains one or more instances of :class:`Gtk.ToolItem` or one of its subclasses. Menus Note that you must specify actions for sub menus as well as menu items. Then, you can define the actual visible layout of the menus and toolbars, and add the UI layout. This "ui string" uses an XML format, in which you should mention the names of the actions that you have already created. Remember that these names are just the identifiers that we used when creating the actions. They are not the text that the user will see in the menus and toolbars. We provided those human-readable names when we created the actions. UI Manager You can create actions by either calling one of the constructors directly and adding them to a :class:`Gtk.ActionGroup` by calling :meth:`Gtk.ActionGroup.add_action` or :meth:`Gtk.ActionGroup.add_action_with_accel`, or by calling one of the convenience functions: Project-Id-Version: Python GTK+ 3 Tutorial 3.4
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-04-06 06:03-0300
PO-Revision-Date: 2018-04-11 23:07-0300
Last-Translator: Tomaz Cunha <tomazmcn@gmail.com>
Language: pt_BR
Language-Team: 
Plural-Forms: nplurals=2; plural=(n > 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.3
 :class:`Gtk.Action`: Uma ação que pode ser acionada por um item de menu ou barra de ferramentas :class:`Gtk.RadioAction`: Uma ação da qual apenas um em um grupo pode estar ativo :class:`Gtk.RecentAction`: Uma ação que representa uma lista de arquivos usados recentemente :class:`Gtk.ToggleAction`: Uma ação que pode ser alternada entre dois estados :class:`Gtk.UIManager` fornece uma maneira fácil de criar menus e barras de ferramentas usando uma descrição `XML-like <http://developer.gnome.org/gtk3/stable/GtkUIManager.html#XML-UI>`_. :class:`Gtk.UIManager`, :class:`Gtk.Action` e :class:`Gtk.ActionGroup` foram descontinuados desde o GTK+ versão 3.10 e não devem ser usados em código recém-escrito. Use o framework :ref:`application`. :meth:`Gtk.ActionGroup.add_actions`, :meth:`Gtk.ActionGroup.add_radio_actions`. :meth:`Gtk.ActionGroup.add_toggle_actions` Ações Ações representam operações que o usuário pode executar, juntamente com algumas informações sobre como ele deve ser apresentado na interface, incluindo seu nome (não para exibição), seu rótulo (para exibição), um acelerador, se um rótulo também indica uma dica de ferramenta como o retorno que é chamado quando a ação é ativada. Embora existam APIs específicas para criar menus e barras de ferramentas, você deve usar :class:`Gtk.UIManager` e criar instâncias :class:`Gtk.Action`. As ações são organizadas em grupos. A :class:`Gtk.ActionGroup` é essencialmente um mapa de nomes para objetos :class:`Gtk.Action`. Todas as ações que fazem sentido usar em um contexto particular devem estar em um único grupo. Vários grupos de ação podem ser usados para uma interface de usuário específica. Na verdade, espera-se que a maioria dos aplicativos não triviais faça uso de vários grupos. Por exemplo, em um aplicativo que pode editar vários documentos, um grupo mantém ações globais (por exemplo, sair, sobre, novo) e um grupo por documento que contém ações que atuam nesse documento (por exemplo, salvar, recortar/copiar/colar etc. ). Os menus de cada janela seriam construídos a partir de uma combinação de dois grupos de ação. Existem classes diferentes representando diferentes tipos de ações: Exemplo Finalmente, você recupera o widget raiz com :meth:`Gtk.UIManager.get_widget` e adiciona o widget a um container como :class:`Gtk.Box`. Primeiro de tudo, você deve adicionar o :class:`Gtk.ActionGroup` ao UI Manager com :meth:`Gtk.UIManager.insert_action_group`. Neste ponto também é uma boa idéia dizer à janela pai para responder aos atalhos de teclado especificados, usando :meth:`Gtk.UIManager.get_accel_group` e :meth:`Gtk.Window.add_accel_group`. O GTK+ vem com dois tipos diferentes de menus :class:`Gtk.MenuBar` e :class:`Gtk.Toolbar`. :class:`Gtk.MenuBar` é uma barra de menus padrão que contém uma ou mais instâncias :class:`Gtk.MenuItem` ou uma de suas subclasses. Os widgets :class:`Gtk.Toolbar` são usados para acessibilidade rápida às funções comumente usadas de um aplicativo. Exemplos incluem criar um novo documento, imprimir uma página ou desfazer uma operação. Ele contém uma ou mais instâncias de :class:`Gtk.ToolItem` ou uma de suas subclasses. Menus Observe que você deve especificar ações para submenus e itens de menu. Em seguida, você pode definir o layout visível real dos menus e barras de ferramentas e adicionar o layout da interface do usuário. Essa "string ui" usa um formato XML, no qual você deve mencionar os nomes das ações que você já criou. Lembre-se de que esses nomes são apenas os identificadores que usamos ao criar as ações. Eles não são o texto que o usuário verá nos menus e nas barras de ferramentas. Fornecemos esses nomes legíveis quando criamos as ações. Gerenciador de IU Você pode criar ações chamando um dos construtores diretamente e adicionando-os a um :class:`Gtk.ActionGroup` chamando :meth:`Gtk.ActionGroup.add_action` ou :meth:`Gtk.ActionGroup.add_action_with_accel`, ou chamando uma das funções de conveniência: 