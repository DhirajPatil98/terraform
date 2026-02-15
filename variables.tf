variable "aws_instance" {

    description = "what is the type of instance"
     validation {
       condition = var.aws_instance=="t3.micro" || var.aws_instance=="t2.micro"
       error_message = "only t2 and t3 is allowed"
     }
  
}

variable "ec2_details" {

    type = object({
      size = number
      type = string
       
    })

    default = {
      size = 20
      type = "gp3"
    }
  
}