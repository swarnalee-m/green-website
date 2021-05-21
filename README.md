# Digital garden Jekyll template
## meew.xyz

Github --> DeployHQ --> Dreamhost

- Need to force `.html` extension for this to work on Dreamhost
  - I chose not to pursue the `.htaccess` option here, since it requires `link rel=canonical` on every page. As a result, I removed all canonical metadata from note headers.
- Renamed all links and pages to follow `.html` scheme
- Removed relative permalinks due to error I got in [my GH Pages repo](https://github.com/meewgumi/digital-garden-ghpages/commits/main)
- Renamed `notes-graph` for the same reason as above
- Added `.htaccess` for 404
- Added timezone to `_config.yml` for Last Modified plugin to work
- Forked Last Modified plugin to my own account & deleted stale branches
- Configured [Jekyll Build Commands](https://www.deployhq.com/guides/jekyll) and vendor caching on DeployHQ

With these changes, this template would work on any Apache host via DeployHQ. I chose DeployHQ because it's owned by Krystal UK and runs on 100% renewable energy.

## License
[Original Jekyll template](https://github.com/maximevaillancourt/digital-garden-jekyll-template) is available under the [MIT license](LICENSE.md).
