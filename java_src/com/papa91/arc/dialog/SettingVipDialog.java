package com.papa91.arc.dialog;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.Group;
import androidx.viewpager.widget.ViewPager;
import com.papa91.arc.MarketUtil;
import com.papa91.arc.bean.SubBean;
import com.papa91.arc.bean.VipBean;
import com.papa91.arc.view.GlideImageLoader;
import com.youth.banner.Banner;
import com.youth.banner.view.BannerViewPager;
import java.util.ArrayList;
import java.util.List;
import m.framework.ui.widget.asyncview.AsyncImageView;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class SettingVipDialog extends SettingDialog implements v2.b {
    Banner banner;
    BannerViewPager bannerViewPager;
    View close;
    int from;
    Group group;
    List<String> images;
    ImageView vipBattle;
    List<VipBean> vipBeans;
    ImageView vipCheating;
    ImageView vipSelectScene;
    ImageView vipSlot;
    ImageView vipSp;

    public SettingVipDialog(@NonNull Context context) {
        super(context);
        this.images = new ArrayList();
        this.vipBeans = new ArrayList();
        initVipViews();
        initData();
        setBackgroundDimEnabled(false);
    }

    private void initData() {
    }

    private void initVipViews() {
        this.banner = (Banner) findViewById(R.id.banner);
        this.bannerViewPager = (BannerViewPager) findViewById(R.id.bannerViewPager);
        this.vipSp = (ImageView) findViewById(R.id.vipSp);
        this.vipCheating = (ImageView) findViewById(R.id.vipCheating);
        this.vipSlot = (ImageView) findViewById(R.id.vipSlot);
        this.vipSelectScene = (ImageView) findViewById(R.id.vipSelectScene);
        this.vipBattle = (ImageView) findViewById(R.id.vipBattle);
        this.close = findViewById(R.id.close);
        this.group = (Group) findViewById(R.id.group);
        setOnListener(this.close, this.vipSp, this.vipCheating, this.vipSlot, this.vipSelectScene, this.vipBattle);
        this.banner.setOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.papa91.arc.dialog.SettingVipDialog.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i2) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i2, float f4, int i4) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i2) {
                SettingVipDialog.this.select(i2);
            }
        });
    }

    @Override // v2.b
    public void OnBannerClick(int i2) {
        SubBean sub;
        if (i2 >= this.vipBeans.size() || (sub = this.vipBeans.get(i2).getSub()) == null) {
            return;
        }
        MarketUtil.intent(getContext(), sub.getLink_type(), sub.getJump_type(), sub.getLink_type_val(), sub.getCrc_link_type_val(), sub.getTpl_type());
    }

    @Override // com.papa91.arc.dialog.SettingDialog
    public int getLayoutId() {
        return R.layout.dialog_setting_vip;
    }

    @Override // com.papa91.arc.dialog.SettingDialog, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        int id = view.getId();
        if (id == R.id.close) {
            dismissOnly();
        } else if (id == R.id.vipSp) {
            this.bannerViewPager.setCurrentItem(1);
        } else if (id == R.id.vipCheating) {
            this.bannerViewPager.setCurrentItem(2);
        } else if (id == R.id.vipSlot) {
            this.bannerViewPager.setCurrentItem(3);
        } else if (id == R.id.vipSelectScene) {
            this.bannerViewPager.setCurrentItem(4);
        } else if (id == R.id.vipBattle) {
            this.bannerViewPager.setCurrentItem(5);
        }
    }

    void resetButtonState() {
        setVipTabSelect(this.vipSp, this.from == 0, R.drawable.vip_tab_sp_selected, R.drawable.vip_tab_sp_default);
        setVipTabSelect(this.vipCheating, this.from == 1, R.drawable.vip_tab_cheating_selected, R.drawable.vip_tab_cheating_default);
        setVipTabSelect(this.vipSlot, this.from == 2, R.drawable.vip_tab_slot_selected, R.drawable.vip_tab_slot_default);
        setVipTabSelect(this.vipSelectScene, this.from == 3, R.drawable.vip_tab_select_sence_selected, R.drawable.vip_tab_select_sence_default);
        setVipTabSelect(this.vipBattle, this.from == 4, R.drawable.vip_tab_battle_selected, R.drawable.vip_tab_battle_default);
    }

    void select(int i2) {
        this.from = i2;
        resetButtonState();
    }

    void setVipTabSelect(ImageView imageView, boolean z3, int i2, int i4) {
        if (imageView == null || imageView.isSelected() == z3) {
            return;
        }
        if (z3) {
            if (Build.VERSION.SDK_INT >= 16) {
                imageView.setBackground(getContext().getResources().getDrawable(R.drawable.vip_btn_selected));
            } else {
                imageView.setBackgroundResource(R.drawable.vip_btn_selected);
            }
            imageView.setImageResource(i2);
        } else {
            if (Build.VERSION.SDK_INT >= 16) {
                imageView.setBackground(null);
            } else {
                imageView.setBackgroundResource(AsyncImageView.DEFAULT_TRANSPARENT);
            }
            imageView.setImageResource(i4);
        }
        imageView.setSelected(z3);
    }

    public void show(String... strArr) {
        if (strArr != null && strArr.length > 0) {
            this.from = Integer.parseInt(strArr[0]);
        }
        show();
        BannerViewPager bannerViewPager = this.bannerViewPager;
        if (bannerViewPager != null) {
            bannerViewPager.setCurrentItem(this.from + 1);
        }
    }

    public void updateVipDatas(List<VipBean> list) {
        if (list == null) {
            return;
        }
        this.vipBeans.clear();
        this.vipBeans.addAll(list);
        this.images.clear();
        for (int i2 = 0; i2 < 5; i2++) {
            if (i2 < list.size()) {
                this.images.add(list.get(i2).getMain().getPic_remote());
            } else {
                this.images.add("");
            }
        }
        this.banner.z(this.images).y(new GlideImageLoader()).D(this).I();
        this.bannerViewPager.setCurrentItem(this.from + 1);
    }
}
