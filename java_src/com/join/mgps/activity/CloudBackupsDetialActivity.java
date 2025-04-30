package com.join.mgps.activity;

import android.content.Context;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CloudBackupsCanUseBean;
import java.sql.Date;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.cloud_backups_detial_layout)
/* loaded from: classes3.dex */
public class CloudBackupsDetialActivity extends BaseActivity {
    @Extra

    /* renamed from: a  reason: collision with root package name */
    CloudBackupsCanUseBean f28691a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f28692b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f28693c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f28694d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f28695e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f28696f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f28697g;

    /* renamed from: h  reason: collision with root package name */
    com.join.mgps.rpc.b f28698h;

    /* renamed from: i  reason: collision with root package name */
    private Context f28699i;

    /* renamed from: j  reason: collision with root package name */
    private AccountBean f28700j;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void F0() {
        CloudRecodingActivity_.H0(this.f28699i).b(true).a(this.f28691a).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f28698h = com.join.mgps.rpc.impl.a.b0();
        this.f28699i = this;
        this.f28692b.setText("备份数据详情");
        this.f28693c.setText(this.f28691a.getBrand_name());
        this.f28694d.setText(com.join.mgps.Util.x.e(new Date(Long.parseLong(this.f28691a.getAdd_time()) * 1000), "yyyy-MM.dd HH:mm"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }
}
