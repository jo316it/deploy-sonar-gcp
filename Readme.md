# Sonarqube Gcloud

This project was made to up a new instance of Sonarqube using Terraform and Shell Script to make it. 

You can modify this project how you want, since that can help you. 

Bellow I'd like describe de phases of this little project and how you can work it.

## Whats I make this project?

I decide to make this project  for two reasons: Lear Terraform and Fix what I learned in GCP.
The final result is a instance with Sonarqube totally configured without database. 

Throught the Shell Script I get it to configure same entrances of Sonaqube and Sonar Scanner.
The Terraform call the scripts inside of inputs directory (install.sh) and make upgrade e install packages

## Requeriments




## Environmnet Variables

To run this project you gonna need add the next environment variable on file variable.tf

`project`

`keys`

`region` 

`region`

`zone`

`instance_type`

`os`

`network_ip`

`disk_size`

`connection_user`


## Using

After put all variables that the project need, you have to run:

```bash
    terraform init
```
```bash
    terraform plan
```
```bash
    terraform apply
```







