from talon import app, Context, Module

mod = Module()

mod = Module()
# this declares a tag in the user namespace (i.e. 'user.tabs')
mod.tag("password_manager", desc="basic commands for working with password managers")


@mod.action_class
class Actions:
    def password_fill():
        """fill the password"""

    def password_show():
        """show the password"""

    def password_new():
        """New password"""

    def password_duplicate():
        """Duplicate password"""

    def password_edit():
        """Edit password"""

    def password_delete():
        """Delete password"""

from talon import Module
