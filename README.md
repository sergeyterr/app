# [init](https://init.wp-pro.club/)
WordPress init like a PRO

## CLI commands:
* `--self-update` - Update the WPI from github to latest version

## Copy and update config variables in the `custom-config.yml`:

* setup
  * `workflow` - Set project workflow: bedrock; cdk-comp/bedrock; cdkrock; wp-cli;
  * `wordpress` - Set custom WordPress version to install
  * `env` - Enable .env file init
  * `shell` - Enable before_install/after_install shell scripts running
  * `mu_plugins` - Enable mu plugins install
  * `plugins` - Enable plugins install
  * `theme` - Enable theme install
  * `child_theme` - Enable child theme install/generate
  * `settings` - Enable WordPress setup
  * `extra` - Enable extra scripts running for license etc

* env
  * `db_name` - Database name
  * `db_user` - Database user
  * `db_pass` - Database password
  * `app_host` - Database host
  * `db_prefix` - Database prefix

* shell
  * `before_install` - Install custom scripts via url
  * `after_install` - Install custom scripts via url

* mu_plugins
  * `name` - Plugin name for rename
  * `zip` - Set URL for plugin file

* plugins_single
  * `name` - Plugin name in: WordPress repository; wpackagist repository; git repository;
  * `package` - Install plugin via: wp-cli; wpackagist; wp-pro-club;
  * `ver` - Set plugin version
  * `zip` - Set URL for plugin zip dist
  * `branch` - (only for package=composer) Set git branch, the `ver` must be dev-master

* theme
  * `name` - Theme name in: WordPress repository; wpackagist repository; git repository;
  * `rename` - Rename the theme - supported only with composer_bitbucket, remove if not used;
  * `package` - Install theme via: wp-cli; wpackagist; composer_bitbucket;
  * `ver` - Set theme version
  * `branch` - Set theme git branch, the `ver` must be dev-master
  * `zip` - Set URL for theme zip dist

* child-theme
  * `generate_scaffold` - Generate child theme via wp cli scaffold
  * `name` - Child theme name in: WordPress repository; wpackagist repository; git repository;
  * `package` - Install theme via: wp-cli; wpackagist; composer_bitbucket;
  * `ver` - Set theme version
  * `zip` - Set URL for theme zip dist

* settings - for more details take a look - [WP-CLI](https://codex.wordpress.org/Option_Reference)
  * `comment_moderation`
  * `comment_registration`
  * `default_comment_status`
  * `default_pingback_flag`
  * `default_ping_status`
  * `blogdescription`
  * `date_format`
  * `time_format`
  * `timezone_string`
  * `start_of_week`
  * `site_switch_language`
  * `large_size_h`
  * `large_size_w`
  * `medium_size_h`
  * `medium_size_w`
  * `thumbnail_crop`
  * `thumbnail_size_h`
  * `thumbnail_size_w`
  * `convert_smilies`
  * `uploads_use_yearmonth_folders`
  * `permalink_structure`
  * `blog_public`
  * `frontpage_name`
  * `page_on_front`
  * `show_on_front`
  * `admin_email`
  * `admin_password`
  * `admin_user`
  * `first_name`
  * `last_name`
