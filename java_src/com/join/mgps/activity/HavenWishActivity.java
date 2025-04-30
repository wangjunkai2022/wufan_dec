package com.join.mgps.activity;

import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.HavenWishResultBean;
import java.util.HashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.haven_wish_acitivity)
/* loaded from: classes3.dex */
public class HavenWishActivity extends BaseAppCompatActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    ImageView f32650a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f32651b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    EditText f32652c;

    /* renamed from: d  reason: collision with root package name */
    com.join.mgps.rpc.h f32653d;
    @Extra

    /* renamed from: e  reason: collision with root package name */
    DownloadTask f32654e;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void D0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            String obj = this.f32652c.getText().toString();
            if (com.join.mgps.Util.d2.i(obj.trim())) {
                E0(obj);
                return;
            } else {
                com.join.mgps.Util.i2.a(this).b("请输入你的愿望");
                return;
            }
        }
        com.join.mgps.Util.i2.a(this).b("请检查网络");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void E0(String str) {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
            HashMap hashMap = new HashMap();
            hashMap.put("uid", Integer.valueOf(accountData.getUid()));
            hashMap.put("token", accountData.getToken());
            hashMap.put("message", str);
            hashMap.put("game_id", this.f32654e.getCrc_link_type_val());
            G0(this.f32653d.g0(hashMap).getData());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 300)
    public void F0() {
        ((InputMethodManager) getSystemService("input_method")).showSoftInput(this.f32652c, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void G0(HavenWishResultBean havenWishResultBean) {
        if (havenWishResultBean.isResult()) {
            finish();
            com.join.mgps.Util.i2.a(this).b("许愿成功");
            return;
        }
        com.join.mgps.Util.i2.a(this).b(havenWishResultBean.getMsg());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterviews() {
        this.f32653d = com.join.mgps.rpc.impl.f.A0();
        EditText editText = this.f32652c;
        editText.setText("求大神告诉我哪里可以下载" + this.f32654e.getShowName() + "？");
        this.f32652c.requestFocus();
        EditText editText2 = this.f32652c;
        editText2.setSelection(editText2.getText().length());
        F0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back() {
        finish();
    }
}
