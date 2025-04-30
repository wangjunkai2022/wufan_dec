package com.join.mgps.activity;

import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.now_wufun_activity_layout)
/* loaded from: classes3.dex */
public class NowWufunActivity extends BaseFragmentActivity {
    @Extra

    /* renamed from: a  reason: collision with root package name */
    int f34413a = 0;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    FrameLayout f34414b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f34415c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f34416d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f34417e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f34418f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f34419g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f34420h;

    /* renamed from: i  reason: collision with root package name */
    c2 f34421i;

    /* renamed from: j  reason: collision with root package name */
    c2 f34422j;

    /* renamed from: k  reason: collision with root package name */
    FragmentManager f34423k;

    private void E0(int i2) {
        F0(this.f34416d);
        F0(this.f34417e);
        F0(this.f34418f);
        F0(this.f34419g);
        F0(this.f34420h);
        if (i2 == 0) {
            L0(this.f34416d);
        } else if (i2 == 1) {
            L0(this.f34417e);
        } else if (i2 == 2) {
            L0(this.f34418f);
        } else if (i2 == 3) {
            L0(this.f34419g);
        } else if (i2 != 4) {
        } else {
            L0(this.f34420h);
        }
    }

    private void F0(TextView textView) {
        textView.setTextColor(Color.parseColor("#696969"));
        textView.setBackgroundResource(R.drawable.now_wufun_tab_back);
    }

    private void H0(FragmentTransaction fragmentTransaction) {
        c2 c2Var = this.f34421i;
        if (c2Var != null) {
            fragmentTransaction.hide(c2Var);
        }
        c2 c2Var2 = this.f34422j;
        if (c2Var2 != null) {
            fragmentTransaction.hide(c2Var2);
        }
    }

    private void K0(int i2) {
        E0(i2);
        FragmentTransaction beginTransaction = this.f34423k.beginTransaction();
        H0(beginTransaction);
        if (i2 == 0) {
            Fragment fragment = this.f34421i;
            if (fragment == null) {
                c2 c2Var = new c2();
                this.f34421i = c2Var;
                beginTransaction.add(R.id.fragmentLayout, c2Var);
            } else {
                beginTransaction.show(fragment);
            }
        } else if (i2 == 4) {
            Fragment fragment2 = this.f34422j;
            if (fragment2 == null) {
                this.f34422j = new c2();
                Bundle bundle = new Bundle();
                bundle.putInt("type", 2);
                this.f34422j.setArguments(bundle);
                beginTransaction.add(R.id.fragmentLayout, this.f34422j);
            } else {
                beginTransaction.show(fragment2);
            }
        }
        beginTransaction.commit();
    }

    private void L0(TextView textView) {
        textView.setTextColor(-1);
        textView.setBackgroundResource(R.drawable.now_wufun_tab_back_selected);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void D0() {
        K0(2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        K0(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.intent.nowwufun.everdaytab"})
    public void I0(Intent intent) {
        K0(3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void J0() {
        K0(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void M0() {
        K0(4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void N0() {
        K0(3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterviews() {
        this.f34415c.setText("今日悟饭");
        this.f34423k = getSupportFragmentManager();
        K0(this.f34413a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }
}
