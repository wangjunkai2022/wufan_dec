package com.join.mgps.activity;

import android.content.Context;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.mg_tips_activity)
/* loaded from: classes3.dex */
public class MGTipsActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private Context f33550a;

    /* renamed from: b  reason: collision with root package name */
    private String f33551b = getClass().getSimpleName();
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f33552c;

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void E0() {
        this.f33550a = this;
        F0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0() {
        this.f33552c.setText("温馨提示");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }
}
