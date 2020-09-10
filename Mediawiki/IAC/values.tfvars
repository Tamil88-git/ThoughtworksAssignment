### CONFIG BASED ON REGION ###
#variable VPCId {
#    type    = map
#	default = {
#	    us-west-1      = "vpc-0c83cfd063c041a36"
#	    ap-southeast-1 = "vpc-0ca177a0aa5302c5f"
#	}
#}
RoleArn = "arn:aws:iam::128270211494:role/npiam_ec2_role"

VPCId = {
	    us-west-1      = "vpc-0c83cfd063c041a36"
	    ap-southeast-1 = "vpc-0ca177a0aa5302c5f"
}
AS_ALBName =  {
	    us-west-1      = "TW-AS-US-UAT-ALB"
	    ap-southeast-1 = "TW-AS-SG-UAT-ALB"
}
AS_ALBTargetGroupName = {
	    us-west-1      = "TW-AS-US-UAT-TG"
	    ap-southeast-1 = "TW-AS-SG-UAT-TG"
}
AS_ASGName = {
	    us-west-1      = "TW-AS-US-UAT-ASG"
	    ap-southeast-1 = "TW-AS-SG-UAT-ASG"
}
Subnets = {
	    us-west-1      = ["subnet-08635bbb17acc6c0a","subnet-0eeb6cb716a5d503b"]
	    ap-southeast-1 = ["subnet-0af0b5d68f555edcc","subnet-0a628418cbebdfd15"]
}
AS_LaunchTemplateName = {
	    us-west-1      = "TW-AS-US-UAT-LT"
	    ap-southeast-1 = "TW-AS-SG-UAT-LT"
}
AMIValue = {
	    us-west-1      = "ami-0d2f24be22e628b76"
	    ap-southeast-1 = "ami-086e09061dfe83ad5"
}
KMSKeyId = {
	    us-west-1      = "arn:aws:kms:us-west-1:128270211494:key/97f969d1-41db-4f70-9ad8-e1e9d6a0626c"
	    ap-southeast-1 = "arn:aws:kms:ap-southeast-1:128270211494:key/75779075-e8c7-4b33-b380-c4454c26d725"	 					
}
AS_ALB_SecurityGroupName = {
	    us-west-1      = "TW-AS-US-UAT-ALB-SG"
	    ap-southeast-1 = "TW-AS-SG-UAT-ALB-SG"
}
AS_ALB_SecurityGroupTagName  =  {
	    us-west-1      = "TW-AS-US-UAT-ALB-SG"					
	    ap-southeast-1 = "TW-AS-SG-UAT-ALB-SG"					
}
AS_ASG_SecurityGroupName = {
	    us-west-1      = "TW-AS-US-UAT-ASG-SG"
	    ap-southeast-1 = "TW-AS-SG-UAT-ASG-SG"
}
AS_ASG_SecurityGroupTagName = {
	    us-west-1      = "TW-AS-US-UAT-ASG-SG"
	    ap-southeast-1 = "TW-AS-SG-UAT-ASG-SG"
}
AS_EFS_SecurityGroupName = {
	    us-west-1      = "TW-AS-US-UAT-EFS-SG"
	    ap-southeast-1 = "TW-AS-SG-UAT-EFS-SG"
}
AS_EFS_SecurityGroupTagName = {
	    us-west-1      = "TW-AS-US-UAT-EFS-SG"
	    ap-southeast-1 = "TW-AS-SG-UAT-EFS-SG"
}
AS_EC2InstanceName = {
	    us-west-1      = "TW-AS-US-UAT-EC2"
	    ap-southeast-1 = "TW-AS-SG-UAT-EC2"
}
EfsToken = {
	    us-west-1      = "TW-AS-US-UAT-EFS"
	    ap-southeast-1 = "TW-AS-SG-UAT-EFS"
}
EfsTagName = {
	    us-west-1      = "TW-AS-US-UAT-EFS"
	    ap-southeast-1 = "TW-AS-SG-UAT-EFS"
}
Subnet_1 = {
	    us-west-1      = "subnet-08635bbb17acc6c0a"
	    ap-southeast-1 = "subnet-0af0b5d68f555edcc"
}
Subnet_2 = {
	    us-west-1      = "subnet-0eeb6cb716a5d503b"
	    ap-southeast-1 = "subnet-0a628418cbebdfd15"
}


### COMMON CONFIG ### 
### ALB CONFIG ###
InternalLB									= "true"
AlbType                                     = "application"
Env                                         = "UAT"

### ALB TARGET GROUP CONFIG ### 
ALBTargetGroupPort                          = "80"
ALBTargetGroupProtocol                      = "HTTP"
ALBHealthCheckEnablingStatus                = "true"
AlbHealthCheckInterval                      = "30"
AlbHealthCheckPath                          = "/"
AlbHealthCheckPort                          = "traffic-port"
AlbHealthCheckProtocol                      = "HTTP"
ALBHealthCheckTimeOutPeriod                 = "5"
HealthCheckHealthyCount                     = "3"
HealthCheckUnhealthyCount                   = "3"
AlbHelathCheckResultCode                    = "200"

### ALB LISTENER CONFIG ###
ALBListenerPort                             = "80"
ALBProtocol                                 = "HTTP"

### ASG CONFIG ### 
AS_ASGMinSize                               = "6"
AS_ASGMaxSize                               = "6"
AS_ASGDesiredCapacity                       = "6"
ASGHelthCheckGracePeriod                    = "300"
ASGHelathCheckType                          = "EC2"

### LT CONFIG ###							
AS_InstanceType                             = "m5.4xlarge"
AS_Userdata                                 = "as"
Tenancy                                     = "host"
EbsSecondarySize                            = "100"
												
### ALB SG CONFIG ###						
AS_ALB_EgressFromPort                       = 0
AS_ALB_EgressToPort                         = 0
AS_ALB_EgressProtocol                       = -1
AS_ALB_EgressCIDR                           = ["0.0.0.0/0"]
AS_ALB_IngressRule = [
        {
          from_port   = 22
          to_port     = 22
          protocol    = "tcp"
          cidr_blocks  = "10.193.0.0/16"
          description = "test"
        },
        {
          from_port   = 80
          to_port     = 80
          protocol    = "tcp"
          cidr_blocks  = "10.193.0.0/16"
          description = "test"
        },
    ]
				
### ASG SG CONFIG ###			 
AS_ASG_EgressFromPort                       = 0
AS_ASG_EgressToPort                         = 0
AS_ASG_EgressProtocol                       = -1
AS_ASG_EgressCIDR                           = ["0.0.0.0/0"]
AS_ASG_IngressRule = [
        {
          from_port   = 22
          to_port     = 22
          protocol    = "tcp"
          cidr_blocks  = "10.193.0.0/16"
          description = "test"
        },
        {
          from_port   = 80
          to_port     = 80
          protocol    = "tcp"
          cidr_blocks  = "10.193.0.0/16"
          description = "test"
        },
    ]
	
### EFS SG CONFIG ###				 
AS_EFS_EgressFromPort                       = 0
AS_EFS_EgressToPort                         = 0 
AS_EFS_EgressProtocol                       = -1
AS_EFS_EgressCIDR                           = ["0.0.0.0/0"]	
AS_EFS_IngressRule = [
        {
          from_port   = 22
          to_port     = 22
          protocol    = "tcp"
          cidr_blocks  = "10.193.0.0/16"
          description = "test"
        },
        {
          from_port   = 80
          to_port     = 80
          protocol    = "tcp"
          cidr_blocks  = "10.193.0.0/16"
          description = "test"
        },
    ]
	

EMS_LaunchTemplateName = {
	    us-west-1      = "TW-EMS-US-UAT-LT"
	    ap-southeast-1 = "TW-EMS-SG-UAT-LT"
  }
EMS_EC2InstanceName = {
	    us-west-1      = "TW-EMS-US-UAT-EC2"
	    ap-southeast-1 = "TW-EMS-SG-UAT-EC2"
  }
EMS_ASG_SecurityGroupName = {
	    us-west-1      = "TW-EMS-US-UAT-ALB-SG"
	    ap-southeast-1 = "TW-EMS-SG-UAT-ALB-SG"
  }
EMS_ASG_SecurityGroupTagName = {
	    us-west-1      = "TW-EMS-US-UAT-ALB-SG"					
	    ap-southeast-1 = "TW-EMS-SG-UAT-ALB-SG"	
  }

EMS_ASGName = {
	    us-west-1      = "TW-EMS-US-UAT-ASG"
	    ap-southeast-1 = "TW-EMS-SG-UAT-ASG"
}
EMS_ASGMinSize                               = 2
EMS_ASGMaxSize                               = 2 
EMS_ASGDesiredCapacity                       = 2 
EMS_InstanceType                             = "m5.xlarge"
EMS_Userdata                                 = "ems"
EMS_ASG_EgressFromPort                       = 0
EMS_ASG_EgressToPort                         = 0
EMS_ASG_EgressProtocol                       = -1
EMS_ASG_EgressCIDR                           = ["0.0.0.0/0"]
EMS_ASG_IngressRule = [
        {
          from_port   = 22
          to_port     = 22
          protocol    = "tcp"
          cidr_blocks  = "10.193.0.0/16"
          description = "test"
        },
        {
          from_port   = 80
          to_port     = 80
          protocol    = "tcp"
          cidr_blocks  = "10.193.0.0/16"
          description = "test"
        },
    ]


### CDC Values  ###

CDC_LaunchTemplateName = {
	    us-west-1      = "TW-CDC-US-UAT-LT"
	    ap-southeast-1 = "TW-CDC-SG-UAT-LT"
  }
CDC_EC2InstanceName = {
	    us-west-1      = "TW-CDC-US-UAT-EC2"
	    ap-southeast-1 = "TW-CDC-SG-UAT-EC2"
  }
CDC_ASG_SecurityGroupName = {
	    us-west-1      = "TW-CDC-US-UAT-ALB-SG"
	    ap-southeast-1 = "TW-CDC-SG-UAT-ALB-SG"
  }
CDC_ASG_SecurityGroupTagName = {
	    us-west-1      = "TW-CDC-US-UAT-ALB-SG"					
	    ap-southeast-1 = "TW-CDC-SG-UAT-ALB-SG"	
  }
CDC_ASGName = {
	    us-west-1      = "TW-CDC-US-UAT-ASG"
	    ap-southeast-1 = "TW-CDC-SG-UAT-ASG"
}
CDC_ASGMinSize                               = 2
CDC_ASGMaxSize                               = 2 
CDC_ASGDesiredCapacity                       = 2 
CDC_InstanceType                             = "m5.2xlarge"
CDC_Userdata                                 = "cdc"
CDC_ASG_EgressFromPort                       = 0
CDC_ASG_EgressToPort                         = 0
CDC_ASG_EgressProtocol                       = -1
CDC_ASG_EgressCIDR                           = ["0.0.0.0/0"]
CDC_ASG_IngressRule = [
        {
          from_port   = 22
          to_port     = 22
          protocol    = "tcp"
          cidr_blocks  = "10.193.0.0/16"
          description = "test"
        },
        {
          from_port   = 80
          to_port     = 80
          protocol    = "tcp"
          cidr_blocks  = "10.193.0.0/16"
          description = "test"
        },
    ]

### KAFKA Values  ###

KF_LaunchTemplateName = {
	    us-west-1      = "TW-KF-US-UAT-LT"
	    ap-southeast-1 = "TW-KF-SG-UAT-LT"
  }
KF_EC2InstanceName = {
	    us-west-1      = "TW-KF-US-UAT-EC2"
	    ap-southeast-1 = "TW-KF-SG-UAT-EC2"
  }
KF_ASG_SecurityGroupName = {
	    us-west-1      = "TW-KF-US-UAT-ALB-SG"
	    ap-southeast-1 = "TW-KF-SG-UAT-ALB-SG"
  }
KF_ASG_SecurityGroupTagName = {
	    us-west-1      = "TW-KF-US-UAT-ALB-SG"					
	    ap-southeast-1 = "TW-KF-SG-UAT-ALB-SG"	
  }
KF_ASGName = {
	    us-west-1      = "TW-KF-US-UAT-ASG"
	    ap-southeast-1 = "TW-KF-SG-UAT-ASG"
}
KF_ASGMinSize                                = 5
KF_ASGMaxSize                                = 5 
KF_ASGDesiredCapacity                        = 5 
KF_InstanceType                              = "m5.2xlarge"
KF_Userdata                                  = "kf"
KF_ASG_EgressFromPort                        = 0
KF_ASG_EgressToPort                          = 0
KF_ASG_EgressProtocol                        = -1
KF_ASG_EgressCIDR                            = ["0.0.0.0/0"]
KF_ASG_IngressRule = [
        {
          from_port    = 22
          to_port      = 22
          protocol     = "tcp"
          cidr_blocks  = "10.193.0.0/16"
          description  = "test"
        },
        {
          from_port    = 80
          to_port      = 80
          protocol     = "tcp"
          cidr_blocks  = "10.193.0.0/16"
          description  = "test"
        },
    ]
