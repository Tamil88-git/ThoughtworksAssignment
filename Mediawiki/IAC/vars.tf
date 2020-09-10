variable "Region"                               {  }  ## This parameter will be passed in the command line which has highest priority in taking variable value

variable "RoleArn"                              {  }

variable VPCId 									{
    type = map
  }
variable "AS_EC2InstanceName"                   {
    type = map
  }
variable "AS_ALBName"                           {
    type = map
  }
variable "AS_ALBTargetGroupName"                {
    type = map
  }
variable "AS_ASGName"                           {
    type = map
  }
variable "Subnets"                              {
    type = map
  }
variable "AS_LaunchTemplateName"                {
    type = map
  }
variable "AMIValue"                             {
    type = map
  }
variable "KMSKeyId"                             {
    type = map
  }
variable "AS_ALB_SecurityGroupName"             {
    type = map
  }
variable "AS_ALB_SecurityGroupTagName"          {
    type = map
  }
variable "AS_ASG_SecurityGroupName"             {
    type = map
  }
variable "AS_ASG_SecurityGroupTagName"          {
    type = map
  }
variable "AS_EFS_SecurityGroupName"             {
    type = map
  }
variable "AS_EFS_SecurityGroupTagName"          {
    type = map
  }
variable "EfsToken"                             { 
    type = map
  }
variable "EfsTagName"                             { 
    type = map
  }  
variable "Subnet_1"                             {
    type = map
  }
variable "Subnet_2"                             {
    type = map
  }

variable "InternalLB"                           {  }
variable "AlbType"                              {  }
variable "Env"                                  {  }
variable "ALBTargetGroupPort"                   {  }
variable "ALBTargetGroupProtocol"               {  }
variable "ALBHealthCheckEnablingStatus"         {  }
variable "AlbHealthCheckInterval"               {  }
variable "AlbHealthCheckPath"                   {  }
variable "AlbHealthCheckPort"                   {  }
variable "AlbHealthCheckProtocol"               {  }
variable "ALBHealthCheckTimeOutPeriod"          {  }
variable "HealthCheckHealthyCount"              {  }
variable "HealthCheckUnhealthyCount"            {  }
variable "AlbHelathCheckResultCode"             {  }
variable "ALBListenerPort"                      {  }
variable "ALBProtocol"                          {  }
variable "AS_ASGMinSize"                        {  }
variable "AS_ASGMaxSize"                        {  }
variable "AS_ASGDesiredCapacity"                {  }
variable "ASGHelthCheckGracePeriod"             {  }
variable "ASGHelathCheckType"                   {  }

variable "AS_InstanceType"                      {  }
variable "AS_Userdata"                          {  }
variable "Tenancy"                              {  }
variable "EbsSecondarySize"                     {  }

variable "AS_ALB_EgressFromPort"                {  }
variable "AS_ALB_EgressToPort"                  {  }
variable "AS_ALB_EgressProtocol"                {  }
variable "AS_ALB_EgressCIDR"                    {  }
variable "AS_ALB_IngressRule" {
    type = list(object({
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks  = string
      description = string
    })) 
	}

variable "AS_ASG_EgressFromPort"                {  }
variable "AS_ASG_EgressToPort"                  {  }
variable "AS_ASG_EgressProtocol"                {  }
variable "AS_ASG_EgressCIDR"                    {  }
variable "AS_ASG_IngressRule" {
    type = list(object({
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks  = string
      description = string
    })) 
	}

variable "AS_EFS_EgressFromPort"                {  }
variable "AS_EFS_EgressToPort"                  {  }
variable "AS_EFS_EgressProtocol"                {  }
variable "AS_EFS_EgressCIDR"                    {  }
variable "AS_EFS_IngressRule" {
    type = list(object({
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks  = string
      description = string
    })) 
	}


variable "BW_EC2InstanceName"                   {
    type = map
  }
variable "BW_ALBName"                           {
    type = map
  }
variable "BW_ALBTargetGroupName"                {
    type = map
  }
variable "BW_ASGName"                           {
    type = map
  }
variable "BW_LaunchTemplateName"                {
    type = map
  }
variable "BW_ALB_SecurityGroupName"             {
    type = map
  }
variable "BW_ALB_SecurityGroupTagName"          {
    type = map
  }
variable "BW_ASG_SecurityGroupName"             {
    type = map
  }
variable "BW_ASG_SecurityGroupTagName"          {
    type = map
  }
variable "BW_EFS_SecurityGroupName"             {
    type = map
  }
variable "BW_EFS_SecurityGroupTagName"          {
    type = map
  }
  
variable "BW_ASGMinSize"                           {  }
variable "BW_ASGMaxSize"                           {  }
variable "BW_ASGDesiredCapacity"                   {  }

variable "BW_InstanceType"                         {  }
variable "BW_Userdata"                             {  }

variable "BW_ALB_EgressFromPort"                   {  }
variable "BW_ALB_EgressToPort"                     {  }
variable "BW_ALB_EgressProtocol"                   {  }
variable "BW_ALB_EgressCIDR"                       {  }
variable "BW_ALB_IngressRule" {
    type = list(object({
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks  = string
      description = string
    }))
	}

variable "BW_ASG_EgressFromPort"                   {  }
variable "BW_ASG_EgressToPort"                     {  }
variable "BW_ASG_EgressProtocol"                   {  }
variable "BW_ASG_EgressCIDR"                       {  }
variable "BW_ASG_IngressRule" {
    type = list(object({
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks  = string
      description = string
    }))
	}

variable "BW_EFS_EgressFromPort"                   {  }
variable "BW_EFS_EgressToPort"                     {  }
variable "BW_EFS_EgressProtocol"                   {  }
variable "BW_EFS_EgressCIDR"                       {  }
variable "BW_EFS_IngressRule" {
    type = list(object({
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks  = string
      description = string
    }))
	}

#EMS Section

variable "EMS_ASGName"                           {
    type = map
  }
variable "EMS_ASGMinSize"                        {  }
variable "EMS_ASGMaxSize"                        {  }
variable "EMS_ASGDesiredCapacity"                {  }

variable "EMS_LaunchTemplateName"                {
    type = map
  }
variable "EMS_EC2InstanceName"                   {
    type = map
  }
variable "EMS_ASG_SecurityGroupName"             {
    type = map
  }
variable "EMS_ASG_SecurityGroupTagName"          {
    type = map
  }
variable "EMS_ASG_IngressRule"                   {  }          
variable "EMS_ASG_EgressFromPort"                {  }
variable "EMS_ASG_EgressToPort"                  {  }
variable "EMS_ASG_EgressProtocol"                {  }
variable "EMS_ASG_EgressCIDR"                    {  }
variable "EMS_InstanceType"                      {  }
variable "EMS_Userdata"                          {  }


#CDC Section
variable "CDC_ASGName"                           {
    type = map
  }
variable "CDC_ASGMinSize"                        {  }
variable "CDC_ASGMaxSize"                        {  }
variable "CDC_ASGDesiredCapacity"                {  }

variable "CDC_LaunchTemplateName"                {
    type = map
  }
variable "CDC_EC2InstanceName"                   {
    type = map
  }
variable "CDC_ASG_SecurityGroupName"             {
    type = map
  }
variable "CDC_ASG_SecurityGroupTagName"          {
    type = map
  }
variable "CDC_ASG_IngressRule"                   {  }          
variable "CDC_ASG_EgressFromPort"                {  }
variable "CDC_ASG_EgressToPort"                  {  }
variable "CDC_ASG_EgressProtocol"                {  }
variable "CDC_ASG_EgressCIDR"                    {  }
variable "CDC_InstanceType"                      {  }
variable "CDC_Userdata"                          {  }


#KAFKA Section
variable "KF_ASGName"                           {
    type = map
  }
variable "KF_ASGMinSize"                        {  }
variable "KF_ASGMaxSize"                        {  }
variable "KF_ASGDesiredCapacity"                {  }

variable "KF_LaunchTemplateName"                {
    type = map
  }
variable "KF_EC2InstanceName"                   {
    type = map
  }
variable "KF_ASG_SecurityGroupName"             {
    type = map
  }
variable "KF_ASG_SecurityGroupTagName"          {
    type = map
  }
variable "KF_ASG_IngressRule"                   {  }          
variable "KF_ASG_EgressFromPort"                {  }
variable "KF_ASG_EgressToPort"                  {  }
variable "KF_ASG_EgressProtocol"                {  }
variable "KF_ASG_EgressCIDR"                    {  }
variable "KF_InstanceType"                      {  }
variable "KF_Userdata"                          {  }
