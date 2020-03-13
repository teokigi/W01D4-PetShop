#function returns petshop name
def pet_shop_name(shop)
    return shop[:name]
end
#function returns shops total cash value
def total_cash(shop)
    return shop.dig(:admin, :total_cash)
end

def add_or_remove_cash(shop, cash_amount)
    shop[:admin][:total_cash] += cash_amount
end
