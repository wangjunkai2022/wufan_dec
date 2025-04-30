package com.papa91.arc.dialog;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import com.papa91.arc.EmuActivity_psp;
import com.papa91.arc.util.GameSettings;
import com.papa91.arc.view.OnTabSelectListener;
import com.papa91.arc.view.SegmentTabLayout;
import org.ppsspp.ppsspp.NativeApp;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class SettingPerformanceDialog extends SettingDialog {
    View advanced;
    View close;
    int performance;
    int performanceLevel;
    SegmentTabLayout tlCustom;
    SegmentTabLayout tlPerformance;
    int tmpPerformance;

    public SettingPerformanceDialog(@NonNull Context context) {
        super(context);
        this.performanceLevel = 4;
        this.performance = 1;
        this.tmpPerformance = 1;
        initPerformanceViews();
        initData();
    }

    private void initData() {
    }

    private void initPerformanceViews() {
        this.close = findViewById(R.id.close);
        this.advanced = findViewById(R.id.advanced);
        this.tlPerformance = (SegmentTabLayout) findViewById(R.id.tlPerformance);
        this.tlCustom = (SegmentTabLayout) findViewById(R.id.tlCustom);
        this.advanced.setVisibility(4);
        this.tlCustom.setTabData(new String[]{"关", "开"});
        this.tlCustom.setOnTabSelectListener(new OnTabSelectListener() { // from class: com.papa91.arc.dialog.SettingPerformanceDialog.1
            @Override // com.papa91.arc.view.OnTabSelectListener
            public void onTabReselect(int i2) {
            }

            @Override // com.papa91.arc.view.OnTabSelectListener
            public void onTabSelect(int i2) {
                GameSettings.setCustomSettingEnable(i2 != 0);
                if (i2 == 0) {
                    SettingPerformanceDialog.this.advanced.setVisibility(4);
                    SettingPerformanceDialog settingPerformanceDialog = SettingPerformanceDialog.this;
                    int i4 = settingPerformanceDialog.tmpPerformance;
                    if (i4 < 0 || i4 > 4) {
                        settingPerformanceDialog.tmpPerformance = 1;
                    }
                    settingPerformanceDialog.tlPerformance.setCurrentTab(settingPerformanceDialog.tmpPerformance);
                    return;
                }
                SettingPerformanceDialog.this.advanced.setVisibility(0);
                SettingPerformanceDialog.this.tlPerformance.setCurrentTab(-1);
            }
        });
        this.tlPerformance.setOnTabSelectListener(new OnTabSelectListener() { // from class: com.papa91.arc.dialog.SettingPerformanceDialog.2
            @Override // com.papa91.arc.view.OnTabSelectListener
            public void onTabReselect(int i2) {
            }

            @Override // com.papa91.arc.view.OnTabSelectListener
            public void onTabSelect(int i2) {
                SettingPerformanceDialog.this.selectPerformance(i2);
                if (SettingPerformanceDialog.this.tlCustom.getCurrentTab() == 1) {
                    SettingPerformanceDialog.this.tlCustom.setCurrentTab(0);
                    SettingPerformanceDialog.this.advanced.setVisibility(4);
                }
            }
        });
        this.close.setOnClickListener(this);
        this.advanced.setOnClickListener(this);
        setPerformanceTotalLevel(4);
        if (isCustomPerformance()) {
            this.advanced.setVisibility(0);
            this.tlPerformance.setCurrentTab(-1);
            this.tlCustom.setCurrentTab(1);
            return;
        }
        this.advanced.setVisibility(4);
        this.tlPerformance.setCurrentTab(this.performance);
        this.tlCustom.setCurrentTab(0);
    }

    @Override // com.papa91.arc.dialog.SettingDialog
    public int getLayoutId() {
        return R.layout.dialog_setting_performance;
    }

    boolean isCustomPerformance() {
        int gameSettingLevel = GameSettings.getGameSettingLevel();
        this.performance = gameSettingLevel;
        this.tmpPerformance = gameSettingLevel;
        return GameSettings.getCustomSettingEnable();
    }

    @Override // com.papa91.arc.dialog.SettingDialog
    public boolean needScreenAdapter() {
        return false;
    }

    @Override // com.papa91.arc.dialog.SettingDialog, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        int id = view.getId();
        if (id == R.id.close) {
            dismiss();
        } else if (id == R.id.advanced) {
            NativeApp.enterGameSettings(0);
            EmuActivity_psp.lastWindow = 2;
            dismiss();
        }
    }

    void selectPerformance(int i2) {
        this.tmpPerformance = i2;
        GameSettings.setGameSettingLevel(i2);
        GameSettings.setCustomSettingEnable(i2 != 0);
    }

    void setPerformanceTotalLevel(int i2) {
        this.performanceLevel = i2;
        String[] strArr = {"低画质", "流畅画质", "高画质", "超高画质"};
        String[] strArr2 = {"低画质", "流畅画质", "高画质", "超高画质", "最佳画质"};
        if (i2 == 4) {
            this.tlPerformance.setTabData(strArr);
        } else {
            this.tlPerformance.setTabData(strArr2);
        }
    }

    public void show(String... strArr) {
        SegmentTabLayout segmentTabLayout;
        if (strArr != null && strArr.length > 0) {
            try {
                setPerformanceTotalLevel(Integer.parseInt(strArr[0]));
            } catch (NumberFormatException e4) {
                e4.printStackTrace();
            }
            if (strArr.length > 1 && Integer.parseInt(strArr[1]) == 1 && (segmentTabLayout = this.tlCustom) != null) {
                segmentTabLayout.setCurrentTab(1);
                this.advanced.setVisibility(0);
                this.tlPerformance.setCurrentTab(-1);
            }
        }
        selectPerformance(this.performance);
        super.show();
    }
}
