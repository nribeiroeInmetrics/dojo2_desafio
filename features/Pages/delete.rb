class Delete < SitePrism::Page
    element :checkbox_delete, "input[name='mass[]']",match: :first
    element :bulk_action, :xpath, '//*[@id="delete_listview_top"]/label[2]'
    element :delete_button, "a[id='delete_listview_top']", match: :first

    def deletar()
        checkbox_delete.click
        bulk_action.click
        delete_button.click
    end
end


