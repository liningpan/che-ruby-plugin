# Ruby Language Server plugin for Eclipse Che Theia editor

The sidecar container is now maintained by the Che plugin group [che-sidecar-ruby](https://github.com/che-dockerfiles/che-sidecar-ruby.git)
The plugin registry entry is merged into [che-plugin-registry](https://github.com/eclipse/che-plugin-registry.git)

Add following settings to devfile
```
components:
  - id: castwide/solargraph/latest
    type: chePlugin
    preferences:
      solargraph.bundlerPath: /usr/local/bin/bundle
      solargraph.commandPath: /usr/local/bundle/bin/solargraph
```
You may also need to run following commands in the sidecar container
```
bundle install
solargraph bundle
```
to setup solargraph documentation after spinning up a new workspace.
