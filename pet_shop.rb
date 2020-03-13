#function returns petshop name
def pet_shop_name(shop)
    return shop[:name]
end
#function returns shops total cash value
def total_cash(shop)
    return shop.dig(:admin, :total_cash)
end
#adds or removes cash transaction from total cash
def add_or_remove_cash(shop, cash_amount)
    shop[:admin][:total_cash] += cash_amount
end
#returns amount of pets sold
def pets_sold(shop)
    return shop.dig(:admin, :pets_sold)
end
# adds or subtracts number of pet sale transactions
def increase_pets_sold(shop, sold_amount)
    shop[:admin][:pets_sold] += sold_amount
end
#return current pet stock
def stock_count(shop)
    return shop[:pets].length
end
def pets_by_breed(shop, breed)
    return shop[:pets].keep_if{|v| v[:breed] == "British Shorthair"}
end
