stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(arr)
    #best_days = [buy_day,sell_day,difference]
    difference = -9999
    buy_day = 0
    sell_day = 0
    best_days = []
    placeholder = 0

        arr.each_with_index do |outer_item,index|
            placeholder = outer_item 

            arr.each_with_index do |inner_item, inner_index|
                buy_day = index
               
                if inner_index == index
                    next
                elsif inner_index < index
                    next
                end
                
                if(inner_item - placeholder) > difference
                    best_days[0] = buy_day
                    sell_day = inner_index
                    difference = inner_item - placeholder
                    best_days[1] = sell_day
                    best_days[2] = difference
                end
            end
            end
    
    return best_days
end

p stock_picker(stock_prices)