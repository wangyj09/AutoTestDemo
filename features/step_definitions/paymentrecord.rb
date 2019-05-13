# encoding: UTF-8

当("点击交费记录") do
    driver.find_element(:accessibility_id, "交费记录").click
    sleep(1)
end

那么("进入交费记录页面") do
    sleep(3)
    actual = exists { name("我要交费") }
    expect(actual).to eq(false)
end
