import boto3
import os
from base64 import b64decode

ENCRYPTED = os.environ['mypassword']
# Decrypt code should run once and variables stored outside of the function
# handler so that these are decrypted once per container
DECRYPTED = boto3.client('kms').decrypt(CiphertextBlob=b64decode(ENCRYPTED))['Plaintext'].decode('utf-8')

def lambda_handler(event, context):
    
    print("---------output-------------------")
    print('ENCRYPTED :',ENCRYPTED)
    print('DECRYPTED :',DECRYPTED)
    # TODO handle the event here
    print("---------output-------------------")
    return  {'ENCRYPTED':ENCRYPTED, 'DECRYPTED ': DECRYPTED }
