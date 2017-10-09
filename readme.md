This is a test for a bug where `.bundle` resources for Pods aren't copied into the build, resulting in missing images/strings. The app contains a screen with a `GIDSignInButton` from the GoogleSignIn pod where the image and text don't render. 

Copying the `.bundle` into `resources` manually fixes the issue. There's a [`resources-manual-copy`](https://github.com/jgritman/motion-pods-test/tree/resources-manual-copy) branch where I've made that modification to demostrate it works with only that change.
