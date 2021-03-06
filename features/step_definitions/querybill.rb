# encoding: UTF-8

当("点击账单") do
    if $device == "IOS"
        find_element_click("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.GridView[1]/android.widget.LinearLayout[1]/android.widget.TextView","账单")
    elsif $device  == "Android"
        driver.find_element(:xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.GridView[1]/android.widget.LinearLayout[1]/android.widget.TextView").click
    else
        raise "设备类型错误"
    end
    sleep(3)
end

那么("进入账单页面") do
    sleep(3)
    actual = exists { id("去充值") }
    expect(actual).to eq(false)
end

当("点击往月账单") do
    if $device == "IOS"
        today = Time.new
        mouth = today.strftime("%m").to_i
        find_element_click(" ","0" + (mouth - 1).to_s + "月")
        sleep(1)
        find_element_click(" ","0" + (mouth - 2).to_s + "月")
        sleep(1)
        find_element_click(" ","0" + (mouth - 3).to_s + "月")
        sleep(1)
    elsif $device  == "Android"
        driver.find_element(:xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.widget.RelativeLayout[6]/android.widget.TextView").click
        sleep(1)
        driver.find_element(:xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.widget.RelativeLayout[5]/android.widget.TextView").click
        sleep(1)
        driver.find_element(:xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.widget.RelativeLayout[4]/android.widget.TextView").click
        sleep(1)
    else
        raise "设备类型错误"
    end

end

当("进入往月账单页面") do
    sleep(3)
    actual = exists { id("当月可用") }
    expect(actual).to eq(false)
end
