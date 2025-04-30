package com.join.mgps.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.video_setting_activity)
/* loaded from: classes3.dex */
public class VideoSettingActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f36081a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    View f36082b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    View f36083c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    View f36084d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    ImageView f36085e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    ImageView f36086f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    ImageView f36087g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    View f36088h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    View f36089i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    View f36090j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    ImageView f36091k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    ImageView f36092l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    ImageView f36093m;

    private void H0() {
        this.f36085e.setBackgroundResource(R.drawable.alph);
        this.f36086f.setBackgroundResource(R.drawable.alph);
        this.f36087g.setBackgroundResource(R.drawable.alph);
        this.f36091k.setBackgroundResource(R.drawable.alph);
        this.f36092l.setBackgroundResource(R.drawable.alph);
        this.f36093m.setBackgroundResource(R.drawable.alph);
        int e4 = com.join.mgps.pref.h.n(this).e();
        int z3 = com.join.mgps.pref.h.n(this).z();
        if (e4 == 0) {
            this.f36085e.setBackgroundResource(R.drawable.icon_choice_1);
        } else if (e4 == 1) {
            this.f36086f.setBackgroundResource(R.drawable.icon_choice_1);
        } else if (e4 == 2) {
            this.f36087g.setBackgroundResource(R.drawable.icon_choice_1);
        }
        if (z3 == 0) {
            this.f36091k.setBackgroundResource(R.drawable.icon_choice_1);
        } else if (z3 == 1) {
            this.f36092l.setBackgroundResource(R.drawable.icon_choice_1);
        } else if (z3 != 2) {
        } else {
            this.f36093m.setBackgroundResource(R.drawable.icon_choice_1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        com.join.mgps.pref.h.n(this).n0(0);
        H0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void F0() {
        com.join.mgps.pref.h.n(this).n0(2);
        H0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        com.join.mgps.pref.h.n(this).n0(1);
        H0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void I0() {
        com.join.mgps.pref.h.n(this).T(0);
        H0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void J0() {
        com.join.mgps.pref.h.n(this).T(2);
        H0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void K0() {
        com.join.mgps.pref.h.n(this).T(1);
        H0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f36081a.setText("视频播放设置");
        H0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }
}
