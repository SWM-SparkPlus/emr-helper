#Delete brace
aws emr create-cluster \
--ec2-attributes KeyName={},SubnetIds=['{}'] \ # ex)your_pem_keyname your_subnet_id
--applications Name={} \ # ex)Name=Hadoop Name=Spark Name=Hive
--log-uri {} # ex) s3://your_log_path/
--release-label {} \ # ex) emr-6.4.0
--region {} \ # ex) ap-northeast-2
--use-default-roles \
--instance-type {} \ # ex) r5.xlarge
--instance-count {} \ # ex) 3
--steps Type=CUSTOM_JAR,Name=CustomJAR,ActionOnFailure=CONTINUE,Jar=s3://ap-northeast-2.elasticmapreduce/libs/script-runner/script-runner.jar,Args=["{}"] # ex) s3://your_step.sh