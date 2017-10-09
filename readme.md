This is a test for a bug where `.bundle` resources for Pods aren't copied into the build, resulting in missing images/strings. This contains a screen with a single `GIDSignInButton` from the GoogleSignIn pod where the image and text don't render. 

Copying the `.bundle` into `resources` manually fixes the issue. There's a `resources-manual-copy` branch where I've done this to demostrate it works.
