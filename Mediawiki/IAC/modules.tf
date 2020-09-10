module "ActiveSpace" {
    source 								 = "./activespace"
	
    ALBName                              = var.AS_ALBName[var.Region]	                      
    InternalLB                           = var.InternalLB                   
    AlbType                              = var.AlbType                                           
    Env                                  = var.Env                          
    ALBTargetGroupName                   = var.AS_ALBTargetGroupName[var.Region]
    ALBTargetGroupPort                   = var.ALBTargetGroupPort           
    ALBTargetGroupProtocol               = var.ALBTargetGroupProtocol       
    VPCId                                = var.VPCId[var.Region]                   
    ALBHealthCheckEnablingStatus         = var.ALBHealthCheckEnablingStatus 
    AlbHealthCheckInterval               = var.AlbHealthCheckInterval       
    AlbHealthCheckPath                   = var.AlbHealthCheckPath           
    AlbHealthCheckPort                   = var.AlbHealthCheckPort           
    AlbHealthCheckProtocol               = var.AlbHealthCheckProtocol       
    ALBHealthCheckTimeOutPeriod          = var.ALBHealthCheckTimeOutPeriod  
    HealthCheckHealthyCount              = var.HealthCheckHealthyCount      
    HealthCheckUnhealthyCount            = var.HealthCheckUnhealthyCount    
    AlbHelathCheckResultCode             = var.AlbHelathCheckResultCode     
    ALBListenerPort                      = var.ALBListenerPort              
    ALBProtocol                          = var.ALBProtocol                  
    ASGName                              = var.AS_ASGName[var.Region]
    Subnets                              = var.Subnets[var.Region]
    ASGMinSize                           = var.AS_ASGMinSize                   
    ASGMaxSize                           = var.AS_ASGMaxSize                   
    ASGDesiredCapacity                   = var.AS_ASGDesiredCapacity           
    ASGHelthCheckGracePeriod             = var.ASGHelthCheckGracePeriod     
    ASGHelathCheckType                   = var.ASGHelathCheckType              

    LaunchTemplateName                   = var.AS_LaunchTemplateName[var.Region]
    AMIValue                             = var.AMIValue[var.Region]
    InstanceType                         = var.AS_InstanceType       
    Userdata                             = var.AS_Userdata           
    Tenancy                              = var.Tenancy            
    EbsSecondarySize                     = var.EbsSecondarySize   
    KMSKeyId                             = var.KMSKeyId[var.Region]
	EC2InstanceName                      = var.AS_EC2InstanceName[var.Region]
									     
    ALB_SecurityGroupName                = var.AS_ALB_SecurityGroupName[var.Region]
    ALB_IngressRule				         = var.AS_ALB_IngressRule                 
    ALB_EgressFromPort                   = var.AS_ALB_EgressFromPort              
    ALB_EgressToPort                     = var.AS_ALB_EgressToPort                
    ALB_EgressProtocol                   = var.AS_ALB_EgressProtocol
    ALB_EgressCIDR                       = var.AS_ALB_EgressCIDR                  
    ALB_SecurityGroupTagName             = var.AS_ALB_SecurityGroupTagName[var.Region]
									     
    ASG_SecurityGroupName                = var.AS_ASG_SecurityGroupName[var.Region]
    ASG_IngressRule				         = var.AS_ASG_IngressRule				                
    ASG_EgressFromPort                   = var.AS_ASG_EgressFromPort              
    ASG_EgressToPort                     = var.AS_ASG_EgressToPort                
    ASG_EgressProtocol                   = var.AS_ASG_EgressProtocol
    ASG_EgressCIDR                       = var.AS_ASG_EgressCIDR                  
    ASG_SecurityGroupTagName             = var.AS_ASG_SecurityGroupTagName[var.Region]
									     
    EFS_SecurityGroupName                = var.AS_EFS_SecurityGroupName[var.Region]
    EFS_IngressRule                      = var.AS_EFS_IngressRule                             
    EFS_EgressFromPort                   = var.AS_EFS_EgressFromPort              
    EFS_EgressToPort                     = var.AS_EFS_EgressToPort                
    EFS_EgressProtocol                   = var.AS_EFS_EgressProtocol
    EFS_EgressCIDR                       = var.AS_EFS_EgressCIDR         
    EFS_SecurityGroupTagName             = var.AS_EFS_SecurityGroupTagName[var.Region]

    EfsToken                             = var.EfsToken[var.Region]
    Subnet_1                             = var.Subnet_1[var.Region]
    Subnet_2                             = var.Subnet_2[var.Region]
	EfsTagName                           = var.EfsTagName[var.Region] 
}
