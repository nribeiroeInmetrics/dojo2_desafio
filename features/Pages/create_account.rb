class Account <  SitePrism::Page
    element :name_field, "input[id='name']"
    element :status_field, "select[id='status']"
    element :priority_field, "select[id='priority']"
    element :save_button, "input[id='SAVE']",match: :first

    def cadastrar(name,status,priority)
        name_field.set(name)
        status_field.select status
        priority_field.select priority
        save_button.click
    end
end
