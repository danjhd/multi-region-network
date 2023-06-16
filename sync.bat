@ECHO OFF
for %%r in (
    us-east-1
    us-west-2
    eu-west-1
    eu-west-2
    eu-central-1
    ) do (
        aws s3 rm s3://409650071325-%%r/templates --recursive --quiet
        aws s3 sync templates s3://409650071325-%%r/templates/
    )
