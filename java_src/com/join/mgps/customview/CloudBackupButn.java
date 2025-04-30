package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class CloudBackupButn extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    TextView f45115a;

    /* loaded from: classes3.dex */
    public class a {

        /* renamed from: b  reason: collision with root package name */
        public static final int f45116b = 1;

        /* renamed from: c  reason: collision with root package name */
        public static final int f45117c = 2;

        /* renamed from: d  reason: collision with root package name */
        public static final int f45118d = 3;

        /* renamed from: e  reason: collision with root package name */
        public static final int f45119e = 4;

        /* renamed from: f  reason: collision with root package name */
        public static final int f45120f = 5;

        /* renamed from: g  reason: collision with root package name */
        public static final int f45121g = 6;

        /* renamed from: h  reason: collision with root package name */
        public static final int f45122h = 7;

        public a() {
        }
    }

    public CloudBackupButn(Context context) {
        super(context);
        a(context);
    }

    private void a(Context context) {
        this.f45115a = (TextView) LayoutInflater.from(context).inflate(R.layout.cloud_down_butn, this).findViewById(R.id.downView);
    }

    public void setStatu(int i2) {
        switch (i2) {
            case 1:
                this.f45115a.setText("启动");
                return;
            case 2:
                this.f45115a.setText("上传中");
                return;
            case 3:
                this.f45115a.setText("下载中");
                return;
            case 4:
                this.f45115a.setText("备份");
                return;
            case 5:
                this.f45115a.setText("已备份");
                return;
            case 6:
                this.f45115a.setText("下载");
                return;
            case 7:
                this.f45115a.setText("备份中");
                return;
            default:
                return;
        }
    }

    public CloudBackupButn(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public CloudBackupButn(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context);
    }
}
