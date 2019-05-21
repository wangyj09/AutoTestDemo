# encoding: UTF-8

当("点击已订业务") do
    find_element_click("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.GridView[1]/android.widget.LinearLayout[5]/android.widget.TextView","已订业务")
end

那么("进入已订业务页面") do
    sleep(3)
    actual = exists { name("套餐") }
    expect(actual).to eq(false)
end

当("点击增值业务") do
    find_element_click("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.widget.RelativeLayout[2]/android.widget.TextView","增值业务")
end

那么("进入增值业务页面") do
    sleep(3)
    actual = exists { name("退订") }
    expect(actual).to eq(false)
end

当("点击基础功能") do
    find_element_click("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.widget.RelativeLayout[3]/android.widget.TextView","基础功能")
end

那么("进入基础功能页面") do
    sleep(3)
    actual = exists { name("来电显示") }
    expect(actual).to eq(false)
end

当("点击其他") do
    find_element_click("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.widget.RelativeLayout[4]/android.widget.TextView","其他")
end

那么("进入其他页面") do
    sleep(3)
    actual = exists { name("退订") }
    expect(actual).to eq(false)
end
