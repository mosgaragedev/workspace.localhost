import vscode

theme = theme = vscode.ColorTheme(name='themes', display_name='Darkest Theme', version='0.0.2')
theme.set_colors(
    background='#000000',
    foreground='#808080',
    accent_colors=['#399EF4', '#DA6771', '#4EB071', '#FFF099']
)
vscode.build_theme(theme)
