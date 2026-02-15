terraform {
  
}

locals {
  value = "Hello World"
}

variable "list" {

    type = list(string)
    default = [ "serve1", "serve2", "serve3" ]
  
}

output "name" {
  value = split(" ", local.value)
}




#function studied in class
#    value = lower(local.value)....this functin gives output in small alphabets
#    value = startswith(local.value, "Hello")   checks if ur output strats with Hello.. this is case sensitive as well
#    value = split(" ", local.value)  this splits the the out put we get in local.value " Hello World" ==> "Hello" "World"
#    value = max(1,2,3,5)
#    value = min(1,2,3,5)
#    value = length(var.list).......
#    value = join (":" , var.list)   output of list becomes serve1:serve2:serve3
#    values = toset(var.list) convert list to set so it doesnt show duplicate values
