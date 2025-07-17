import boto3
import os

def lambda_handler(event, context):
    ec2_client = boto3.client('ec2', region_name='ap-south-1')
    instance_id = os.environ['INSTANCE_ID']

    try:
        response = ec2_client.stop_instances(InstanceIds=[instance_id], DryRun=False)
        print(f"Stopping EC2 instance {instance_id}...")
        print(f"Response: {response}")
        return {
            'statusCode': 200,
            'body': f"EC2 instance {instance_id} is being stopped."
        }
    except Exception as e:
        print(f"Error stopping EC2 instance: {e}")
        return {
            'statusCode': 500,
            'body': f"Error stopping EC2 instance: {str(e)}"
        }