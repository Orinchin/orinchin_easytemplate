Config = {}

Config.Templates = {
    ['police'] = {
        ChatTemplate = '<div class="chat-message police"><i class="fas fa-bullhorn"></i> <b><span style="color: #4a6cfd">[POLICE] {0}</span>&nbsp;<span style="font-size: 14px; color: #e1e1e1;">{2}</span></b><div style="margin-top: 5px; font-weight: 300;">{1}</div></div>',
        Categories = {
            {
                id = "1",
                Title = 'Category 1',
                Description = 'Description 1',
                templates = {
                    { Title = 'Police Title 1', Message = 'Police Message 1' },
                    { Title = 'Police Title 2', Message = 'Police Message 2' }
                }
            },
            {
                id = "2",
                Title = 'Category 2',
                Description = 'Description 2',
                templates = {
                    { Title = 'Police Title 1', Message = 'Police Message 1' },
                    { Title = 'Police Title 2', Message = 'Police Message 2' }
                }
            }
        }
    },
    ['ambulance'] = {
        ChatTemplate = '<div class="chat-message ambulance"><i class="fas fa-ambulance"></i> <b><span style="color: #e3221b">[EMS] {0}</span>&nbsp;<span style="font-size: 14px; color: #e1e1e1;">{2}</span></b><div style="margin-top: 5px; font-weight: 300;">{1}</div></div>',
        Categories = {
            {
                id = "1",
                Title = 'Category 1',
                Description = 'Description 1',
                templates = {
                    { Title = 'EMS Title 1', Message = 'EMS Message 1' },
                    { Title = 'EMS Title 2', Message = 'EMS Message 2' }
                }
            },
            {
                id = "2",
                Title = 'Category 2',
                Description = 'Description 2',
                templates = {
                    { Title = 'EMS Title 1', Message = 'EMS Message 1' },
                    { Title = 'EMS Title 2', Message = 'EMS Message 2' }
                }
            }
        }
    }
}