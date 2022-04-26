from talon import Context, Module, actions, app
ctx = Context()
mod = Module()

mod.apps.chrome = "app.name: Google Chrome"
mod.apps.chrome = """
os: windows
and app.exe: Bitwarden.exe
"""
mod.apps.chrome = """
os: mac
and app.bundle: com.bitwarden.desktop
"""
# mod.apps.chrome = """
# os: linux
# and app.name: Google-chrome
# """

ctx.matches = r"""
app: bitwarden
"""

@ctx.action_class('user')
class UserActions:
    # def password_fill():
    #     actions.key('cmd-\\')
    # def password_show():
    #     actions.key('cmd-alt-\\')
    def password_new():
        actions.key('{platform_modifier()}-n')
    # def password_duplicate()10:
    #     actions.key('cmd-d')
    # def password_edit():
    #     actions.key('cmd-e')
    # def password_delete():
    #     actions.key('cmd-backspace')
    def platform_modifier():
        if app.platform == "mac":
            return "cmd"
        else:
            return "ctrl"
