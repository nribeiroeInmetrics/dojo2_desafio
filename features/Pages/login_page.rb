class Login < SitePrism::Page
    set_url "/index.php?module=Users&action=Login"

    element :username_field, "input[id='user_name']"
    element :password_field, "input[id='user_password']"
    element :login_button, "input[id='bigbutton']"

    def entrar(user,password)
        username_field.set(user)
        password_field.set(password)
        login_button.click
    end
end

