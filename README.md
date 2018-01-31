# UA Libraries Reformation Events Website - Static Archive

> This website is a static version of http://reformation.arizona.edu, preserved for archival purposes.

![screenshot](screenshot.jpg)

## Building

This static website was built by running `./build.sh`. The build script runs wget:

```sh
wget \
  --mirror \
  --page-requisites \
  --continue \
  --convert-links \
  --adjust-extension \
  --directory-prefix=public \
  http://reformation.arizona.edu
```

You can test locally by running `./serve.sh`. The script uses PHP to start a webserver at localhost:8888.

```sh
php -S 127.0.0.1:8888 -t public/reformation.arizona.edu
```

The static website is located in `public/reformation.arizona.edu`.

## Deploying

You can deploy the project by running `./deploy.sh`. You might need to specify an AWS profile like this: `./deploy.sh --profile=<profile name>`.

`deploy.sh` uses [AWS CLI](https://aws.amazon.com/cli/) to deploy to an AWS S3 bucket.

```sh
aws s3 sync public/reformation.arizona.edu s3://ualibr-reformation-arizona-edu --delete
```

View at http://ualibr-reformation-arizona-edu.s3-website-us-west-2.amazonaws.com

## License

See the `LICENSE` file.
