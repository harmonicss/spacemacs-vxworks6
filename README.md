# VxWorks version 6 Layer for Spacemacs

Install with `git clone https://github.com/harmonicss/spacemacs-vxworks6 ~/.emacs.d/private/vxworks6`

Then enable in your ~/.spacemacs by adding vxworks6 to dotspacemacs-configuration-layers

## ABOUT

VxWorks is a Real Time Operating System developed by Wind River. Wind River
ships the Eclipse development environment (called Workbench) which configures
and builds the VxWorks Source Build (VSB) and VxWorks Image Project (VIP) to
produce a single VxWorks executable for a target system.

This code is specific to VxWorks-6 and uses vxprj instead of wrtool. 

By providing an emacs library, it becomes possible to build and configure
vxworks code from the touch of a button, rather than dragging the mouse
and wasting valuable time.

As a plus, combining with helm, gtags and semantic, it
is possible to quickly navigate through the vxworks source code.

## INSTALLATION for SPACEMACS

1. Edit .spacemacs

    enable in your ~/.spacemacs by adding vxworks6 to dotspacemacs-configuration-layers

2. Restart Spacemacs to load the new config

3. Create the vxworks6env.el script from wrenv.

   * NOTE * This only needs to be done once for each VxWorks install.

   `SPC : execute-wrenv`

    This will prompt for the vxworks-install-dir, which should be set to your
    vxworks installation directory, e.g. c:\WindRiver_vxw6.9

    The vxworks6env.el file will be auto created in this directory, by executing
    wrenv and parsing into emacs lisp environment varibles.

4. Call the setup to use 

    `SPC : setup-vxworks6-env`

 if you dont set vxworks-install-dir you will be asked for it at startup
