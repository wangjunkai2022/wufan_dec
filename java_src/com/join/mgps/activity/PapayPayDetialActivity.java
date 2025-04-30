package com.join.mgps.activity;

import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.PapayHistoryInfo;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.activity_papay_detial)
/* loaded from: classes3.dex */
public class PapayPayDetialActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f34848a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f34849b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f34850c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f34851d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f34852e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f34853f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f34854g;
    @Extra

    /* renamed from: h  reason: collision with root package name */
    PapayHistoryInfo f34855h;

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f34848a.setText("交易详情");
        this.f34849b.setText(this.f34855h.getOrder_id());
        this.f34854g.setText(this.f34855h.getMoney());
        this.f34850c.setText(this.f34855h.getOrder_type());
        this.f34853f.setText(this.f34855h.getTitle());
        this.f34851d.setText(this.f34855h.getPay_time());
        this.f34852e.setText(this.f34855h.getPay_type());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }
}
