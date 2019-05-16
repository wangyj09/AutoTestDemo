# encoding: UTF-8

当("点击交费记录") do
    driver.find_element(:accessibility_id, "交费记录").click
end

那么("进入交费记录页面") do
    sleep(3)
    actual = exists { name("我要交费") }
    expect(actual).to eq(false)
end
当("点击为他人交费记录") do
    #driver.find_element(:accessibility_id, "为他人交费记录").click
    driver.find_element(:accessibility_id, "123").click
end

那么("进入为他人交费记录页面") do
    sleep(3)
    actual = exists { name("他人号码") }
    expect(actual).to eq(false)
end
