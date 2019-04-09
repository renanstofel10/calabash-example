require 'calabash-android/abase'

# Class Login
class LoginPage < Calabash::ABase
  def loginpage_view
    query("* id:'login_form'")
  end

  def homepage_view
    query("* id:'view_homepage'")
  end

  def usuario_text
    query("* id:'user'")
  end

  def senha_text
    query("* id:'password'")
  end

  def element_view(texto)
    query("* text:'#{texto}'")
  end

  def wait_element(element)
    wait_for do
      element.count > 0
    end
  end

  def load_loginpage(tempo)
    wait_for do
      loginpage_view.count > 0
    end
    sleep(tempo)
  end

  def load_homepage(tempo)
    wait_for do
      homepage_view.count > 0
    end
    sleep(tempo)
  end

  def load_message(mensagem)
    fail "Erro: mensagem #{mensagem} não exibida!" unless element_view(mensagem).count > 0
  end

  def click_element(texto)
    wait_element(element_view(texto))
    touch(element_view(texto))
  end

  def preencher_login(usuario, senha)
    for i in 0..1
      if i.zero?
        touch(usuario_text)
        wait_for_keyboard
        keyboard_enter_text(usuario)
      else
        touch(senha_text)
        wait_for_keyboard
        keyboard_enter_text(senha)
      end
    end
  end
end
