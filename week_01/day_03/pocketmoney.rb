#[TASK:] Make a hash with a key of a persons name and the value
#as their pocket money. Try updating and deleting items from it.

pocketmoney = {
  "Angelina" => "2",
  "Grant" => "10",
  "Iona" => "20",
  "Louise" => "0"
}

p pocketmoney

#Add person
pocketmoney["Abi"] = "5"
p pocketmoney
#Remove person
pocketmoney.delete("Grant")
p pocketmoney
#Update persons amount
pocketmoney["Iona"] = "3"
p pocketmoney
