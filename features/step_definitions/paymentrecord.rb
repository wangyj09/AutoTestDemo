# encoding: UTF-8

当("点击交费记录") do
    find_element_click("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.GridView[1]/android.widget.LinearLayout[6]/android.widget.TextView","交费记录")
    sleep(1)
end

那么("进入交费记录页面") do
    sleep(3)
    actual = exists { name("我要交费") }
    expect(actual).to eq(false)
end

当("点击为他人交费记录") do
    #driver.find_element(:accessibility_id, "为他人交费记录").click
    # 演示时提供一个报错脚本示例
    find_element_click("123","123")
end

那么("进入为他人交费记录页面") do
    sleep(3)
    actual = exists { name("他人号码") }
    expect(actual).to eq(false)
end
