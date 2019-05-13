# encoding: UTF-8

当("点击 {string}") do |string|
    e = exists { button(string) }
    if e
        btn = button(string)
    else
        btn = driver.find_element(:id, string)
    end
    wait { btn.click }
end

当("输入手机号") do
    driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"移动惠生活\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField").click
    sleep(1)
    driver.find_element(:accessibility_id, "清除文本").click
    sleep(1)
    driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"移动惠生活\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField").send_keys "18756064869"
    sleep(1)
end

当("输入密码") do
    touch = Appium::TouchAction.new
    touch.tap(x: 332, y: 592).perform
    touch.tap(x: 80, y: 537).perform
    touch.tap(x: 79, y: 539).perform
    touch.tap(x: 208, y: 700).perform
    touch.tap(x: 82, y: 594).perform
    touch.tap(x: 80, y: 537).perform
    #driver.find_element(:id, "password").send_keys 611041
end

当("等待 {int} 秒") do |int|
  sleep(int.to_i)
end

那么("进入登入页面") do
    sleep(3)
    actual = exists { id("查看详情") }
    expect(actual).to eq(false)
end
