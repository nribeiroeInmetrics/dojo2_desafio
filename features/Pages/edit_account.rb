class Edit < SitePrism::Page
    element :name_edit, "input[id='name']"
    element :description_field, "textarea[id='description']"
    element :save_button, "input[id='SAVE']",match: :first

    def editar(name,description)
        name_edit.set(name)
        description_field.set(description)
        save_button.click
    end 
end 