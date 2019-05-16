# encoding: UTF-8

当("点击套餐余量") do
    driver.find_element(:accessibility_id, "套餐余量").click
end

那么("进入套餐余量页面") do
    sleep(3)
    actual = exists { name("退订") }
    expect(actual).to eq(false)
end

当("点击语音") do
    #driver.find_element(:accessibility_id, "语音").click
    driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"移动惠生活\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeButton[1]").click
    sleep(3)
end

当("点击数据流量") do
    driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"移动惠生活\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeButton[2]").click
    sleep(3)
end

当("点击短信") do
    driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"移动惠生活\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeButton[3]").click
    sleep(3)
end
