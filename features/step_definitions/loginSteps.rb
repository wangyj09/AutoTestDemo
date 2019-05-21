# encoding: UTF-8

当("点击我的移动") do
    sleep(5)
    find_element_click("com.sitech.ac:id/tab_5","我的移动")
end

当("点击请点击登录") do
    find_element_click("com.sitech.ac:id/mine_phone_name","请点击登录")
end


当("点击 {string}") do |string|
    find_element_click(string,string)
end

当("输入手机号") do
    if $device == "IOS"
        find_element_click("com.sitech.ac:id/phone_number","//XCUIElementTypeApplication[@name=\"移动惠生活\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField")
        find_element_click(" ","清除文本")
        driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"移动惠生活\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField").send_keys $phone_no_ios
    elsif $device == "Android"
        driver.find_element(:id,"com.sitech.ac:id/phone_number").send_keys $phone_no_android
    else
        raise "device设备类型错误"
    end
end

当("输入密码") do
    if $device == "IOS"
        touch = Appium::TouchAction.new
        touch.tap(x: 332, y: 592).perform
        touch.tap(x: 80, y: 537).perform
        touch.tap(x: 79, y: 539).perform
        touch.tap(x: 208, y: 700).perform
        touch.tap(x: 82, y: 594).perform
        touch.tap(x: 80, y: 537).perform
    elsif $device == "Android"
        driver.find_element(:id, "com.sitech.ac:id/key").send_keys $phone_no_android_pwd
    else
        raise "device设备类型错误"
    end
end

当("点击服务密码登录") do
    find_element_click("com.sitech.ac:id/login_btn","服务密码登录")
end

当("等待 {int} 秒") do |int|
  sleep(int.to_i)
end

那么("进入登入页面") do
    sleep(3)
    actual = exists { id("查看详情") }
    expect(actual).to eq(false)
end
