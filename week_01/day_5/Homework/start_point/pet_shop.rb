# 1st Problem

def pet_shop_name(shop)
  shop[:name]
end

# 2nd Problem

def total_cash(shop)
    shop[:admin][:total_cash]
end

# 3rd and 4th Problem

def add_or_remove_cash(shop,amount)
  shop[:admin][:total_cash] += amount
end

# 5th Problem

def pets_sold(shop)
  shop[:admin][:pets_sold]
end
