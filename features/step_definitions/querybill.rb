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
