package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class CloudDownButn extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    TextView f45124a;

    /* loaded from: classes3.dex */
    public class a {

        /* renamed from: b  reason: collision with root package name */
        public static final int f45125b = 0;

        /* renamed from: c  reason: collision with root package name */
        public static final int f45126c = 2;

        /* renamed from: d  reason: collision with root package name */
        public static final int f45127d = 3;

        /* renamed from: e  reason: collision with root package name */
        public static final int f45128e = 4;

        /* renamed from: f  reason: collision with root package name */
        public static final int f45129f = 5;

        /* renamed from: g  reason: collision with root package name */
        public static final int f45130g = 6;

        /* renamed from: h  reason: collision with root package name */
        public static final int f45131h = 7;

        /* renamed from: i  reason: collision with root package name */
        public static final int f45132i = 8;

        public a() {
        }
    }

    public CloudDownButn(Context context) {
        super(context);
        a(context);
    }

    private void a(Context context) {
        this.f45124a = (TextView) LayoutInflater.from(context).inflate(getLayoutId(), this).findViewById(R.id.downView);
    }

    protected int getLayoutId() {
        return R.layout.cloud_down_butn;
    }

    public void setStatu(int i2) {
        if (i2 != 0) {
            switch (i2) {
                case 2:
                    this.f45124a.setText("上传中");
                    return;
                case 3:
                    this.f45124a.setText("下载中");
                    return;
                case 4:
                    this.f45124a.setText("备份");
                    return;
                case 5:
                    this.f45124a.setText("已备份");
                    return;
                case 6:
                    this.f45124a.setText("下载");
                    return;
                case 7:
                    this.f45124a.setText("备份中");
                    return;
                default:
                    return;
            }
        }
        this.f45124a.setText("启动");
    }

    public void setTextColor(int i2) {
        this.f45124a.setTextColor(i2);
    }

    public CloudDownButn(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public CloudDownButn(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context);
    }
}
