# encoding: UTF-8

当("点击已订业务") do
    driver.find_element(:accessibility_id, "已订业务").click
end

那么("进入已订业务页面") do
    sleep(3)
    actual = exists { name("套餐") }
    expect(actual).to eq(false)
end

当("点击增值业务") do
    driver.find_element(:accessibility_id, "增值业务").click
end

那么("进入增值业务页面") do
    sleep(3)
    actual = exists { name("退订") }
    expect(actual).to eq(false)
end

当("点击基础功能") do
    driver.find_element(:accessibility_id, "基础功能").click
end

那么("进入基础功能页面") do
    sleep(3)
    actual = exists { name("来电显示") }
    expect(actual).to eq(false)
end

当("点击其他") do
    driver.find_element(:accessibility_id, "其他").click
end

那么("进入其他页面") do
    sleep(3)
    actual = exists { name("退订") }
    expect(actual).to eq(false)
end
