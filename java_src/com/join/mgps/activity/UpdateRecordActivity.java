package com.join.mgps.activity;

import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.update_record_layout)
/* loaded from: classes3.dex */
public class UpdateRecordActivity extends BaseActivity {

    /* renamed from: d  reason: collision with root package name */
    private static final String f35997d = "UpdateRecordActivity";
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f35998a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f35999b;
    @Extra

    /* renamed from: c  reason: collision with root package name */
    String f36000c;

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f35999b.setText("更新记录");
        this.f35998a.setText(this.f36000c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }
}
