class Home < SitePrism::Page    
    element :menu_toogle, 'li[id=quickcreatetop]'
    element :menu_toogle_create, :xpath,    '//*[@id="quickcreatetop"]/ul/li[7]/a'
    element :menu_toogle_activitie, "a[id='grouptab_3']"
    element :menu_toogle_tasks, :xpath, '//*[@id="moduleTab_6_Tasks"]'
    element :menu_toogle_edit, :xpath,  '//*[@id="edit-102c00a9-ca2f-4bad-f511-59e74f3192d4"]/img'
    element :menu_toogle_delete, "a[id='grouptab_3']"
    element :menu_toogle_dlt, :xpath, '//*[@id="moduleTab_6_Tasks"]'

    def entrar_cadastro 
        menu_toogle.click
        menu_toogle_create.click
    end

    def entrar_editar
        menu_toogle_activitie.click
        menu_toogle_tasks.click
        menu_toogle_edit.click
        
    end

    def entrar_deletar
        menu_toogle_delete.click
        menu_toogle_dlt.click
    end
end