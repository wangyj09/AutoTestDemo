# encoding: UTF-8

当("点击账单") do
    driver.find_element(:accessibility_id, "账单").click
    sleep(1)
end

那么("进入账单页面") do
    sleep(3)
    actual = exists { id("去充值") }
    expect(actual).to eq(false)
end

当("点击往月账单") do
     today = Time.new
     mouth = today.strftime("%m").to_i
     #puts mouth
     driver.find_element(:accessibility_id, "0" + (mouth - 1).to_s + "月").click
     sleep(1)
     driver.find_element(:accessibility_id, "0" + (mouth - 2).to_s + "月").click
     sleep(1)
     driver.find_element(:accessibility_id, "0" + (mouth - 3).to_s + "月").click
end

当("进入往月账单页面") do
    sleep(3)
    actual = exists { id("当月可用") }
    expect(actual).to eq(false)
end
