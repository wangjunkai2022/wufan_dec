package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.MApplication;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.album.MyIconActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.HeadPortraitTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountChangeUserinfoRequestBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.HeadPicRequestBean;
import com.join.mgps.dto.UserHeadPortrait;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.mg_choose_layout)
/* loaded from: classes3.dex */
public class MGChooseIconActivity extends FragmentActivity {

    /* renamed from: a  reason: collision with root package name */
    private Context f32951a;

    /* renamed from: b  reason: collision with root package name */
    private com.join.mgps.adapter.d f32952b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    GridView f32953c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f32954d;

    /* renamed from: f  reason: collision with root package name */
    private com.join.mgps.dialog.x0 f32956f;
    @Extra

    /* renamed from: g  reason: collision with root package name */
    AccountBean f32957g;

    /* renamed from: h  reason: collision with root package name */
    com.join.mgps.rpc.b f32958h;

    /* renamed from: i  reason: collision with root package name */
    MApplication f32959i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    LinearLayout f32960j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    LinearLayout f32961k;

    /* renamed from: m  reason: collision with root package name */
    private List<HeadPortraitTable> f32963m;
    @Extra

    /* renamed from: n  reason: collision with root package name */
    int f32964n;

    /* renamed from: e  reason: collision with root package name */
    private List<HeadPortraitTable> f32955e = new ArrayList();

    /* renamed from: l  reason: collision with root package name */
    private boolean f32962l = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements AdapterView.OnItemClickListener {

        /* renamed from: com.join.mgps.activity.MGChooseIconActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0153a implements w2.g<com.tbruyelle.rxpermissions2.b> {
            C0153a() {
            }

            @Override // w2.g
            /* renamed from: a */
            public void accept(com.tbruyelle.rxpermissions2.b bVar) throws Exception {
                if (bVar.f59248b) {
                    Intent intent = new Intent();
                    intent.setClass(MGChooseIconActivity.this.f32951a, MyIconActivity.class);
                    intent.putExtra("from", MGChooseIconActivity.this.f32964n);
                    MGChooseIconActivity.this.f32951a.startActivity(intent);
                } else if (bVar.f59249c) {
                } else {
                    com.join.mgps.Util.a0.c0(MGChooseIconActivity.this.f32951a).W(MGChooseIconActivity.this.f32951a, bVar);
                }
            }
        }

        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            if (i2 != 0) {
                MGChooseIconActivity.this.f32952b.b(i2);
                MGChooseIconActivity mGChooseIconActivity = MGChooseIconActivity.this;
                mGChooseIconActivity.L0(((HeadPortraitTable) mGChooseIconActivity.f32955e.get(i2)).getHead_portrait_pic());
                return;
            }
            new com.tbruyelle.rxpermissions2.c(MGChooseIconActivity.this).r("android.permission.WRITE_EXTERNAL_STORAGE").B5(new C0153a());
        }
    }

    void F0() {
        try {
            String localUserIcon = AccountUtil_.getInstance_(this).getLocalUserIcon();
            if (com.join.mgps.Util.d2.i(localUserIcon)) {
                File file = new File(localUserIcon);
                if (file.exists()) {
                    file.delete();
                    Fresco.getImagePipeline().e(MyImageLoader.F(file));
                }
            }
            AccountUtil_.getInstance_(this).setLocalUserIcon(null);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void G0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                try {
                    HeadPicRequestBean headPicRequestBean = new HeadPicRequestBean();
                    headPicRequestBean.setUid(this.f32957g.getUid());
                    headPicRequestBean.setToken(this.f32957g.getToken());
                    headPicRequestBean.setSign(com.join.mgps.Util.u1.f(headPicRequestBean));
                    AccountResultMainBean<UserHeadPortrait> t3 = this.f32958h.t(headPicRequestBean.getParams());
                    if (t3 != null && t3.getError() == 0 && t3.getData().isIs_success()) {
                        this.f32962l = true;
                        I0(t3.getData().getHead_portrait_pic());
                    }
                    if (this.f32962l) {
                        return;
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    if (this.f32962l) {
                        return;
                    }
                }
                H0();
            } catch (Throwable th) {
                if (!this.f32962l) {
                    H0();
                }
                throw th;
            }
        } else if (this.f32962l) {
        } else {
            H0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H0() {
        this.f32960j.setVisibility(8);
        this.f32961k.setVisibility(0);
        this.f32953c.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0(List<String> list) {
        this.f32960j.setVisibility(8);
        this.f32961k.setVisibility(8);
        this.f32953c.setVisibility(0);
        n1.y.n().a();
        for (int i2 = 0; i2 < list.size(); i2++) {
            HeadPortraitTable headPortraitTable = new HeadPortraitTable();
            headPortraitTable.setHead_portrait_pic(list.get(i2));
            n1.y.n().k(headPortraitTable);
        }
        List<HeadPortraitTable> d4 = n1.y.n().d();
        this.f32955e.removeAll(this.f32963m);
        this.f32955e.addAll(d4);
        this.f32952b.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0() {
        if (this.f32962l) {
            this.f32960j.setVisibility(8);
            this.f32961k.setVisibility(8);
            this.f32953c.setVisibility(0);
            return;
        }
        this.f32960j.setVisibility(0);
        this.f32961k.setVisibility(8);
        this.f32953c.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0(String str) {
        this.f32957g.setAvatarSrc(str);
        AccountUtil_.getInstance_(this.f32951a).saveAccountData(this.f32957g, this);
        com.join.mgps.listener.a.b().c();
        try {
            MyImageLoader.k(str);
            F0();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        setResult(10001);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void L0(String str) {
        if (com.join.android.app.common.utils.f.j(this)) {
            showLoading();
            try {
                AccountChangeUserinfoRequestBean accountChangeUserinfoRequestBean = new AccountChangeUserinfoRequestBean();
                accountChangeUserinfoRequestBean.setGender(this.f32957g.getGender());
                accountChangeUserinfoRequestBean.setAccount(this.f32957g.getAccount());
                accountChangeUserinfoRequestBean.setNick_name(this.f32957g.getNickname());
                accountChangeUserinfoRequestBean.setUid(this.f32957g.getUid());
                accountChangeUserinfoRequestBean.setToken(this.f32957g.getToken());
                accountChangeUserinfoRequestBean.setAvatar_src(str);
                accountChangeUserinfoRequestBean.setSign(com.join.mgps.Util.u1.f(accountChangeUserinfoRequestBean));
                AccountResultMainBean<AccountTokenSuccess> c4 = this.f32958h.c(accountChangeUserinfoRequestBean.getParams());
                if (c4 != null && c4.getError() == 0) {
                    if (c4.getData().is_success()) {
                        K0(str);
                    } else {
                        error(c4.getData().getError_msg());
                    }
                } else {
                    error("连接失败，请稍后再试。");
                }
                showLodingDismis();
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                showLodingDismis();
                error("连接失败，请稍后再试。");
                return;
            }
        }
        error("没有网络，请先检查网络。");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f32958h = com.join.mgps.rpc.impl.a.b0();
        MApplication mApplication = (MApplication) getApplication();
        this.f32959i = mApplication;
        mApplication.k(this);
        this.f32951a = this;
        this.f32956f = com.join.mgps.Util.a0.c0(this).x(this);
        this.f32954d.setText("选择图像");
        this.f32953c.setSelector(new ColorDrawable(0));
        this.f32953c.setOnItemClickListener(new a());
        this.f32963m = n1.y.n().d();
        com.join.mgps.adapter.d dVar = new com.join.mgps.adapter.d(this.f32951a, this.f32955e, this.f32957g.getAvatarSrc(), false);
        this.f32952b = dVar;
        this.f32953c.setAdapter((ListAdapter) dVar);
        HeadPortraitTable headPortraitTable = new HeadPortraitTable();
        headPortraitTable.setId(R.drawable.choose_butn_selector);
        headPortraitTable.setHead_portrait_pic("相机");
        this.f32955e.add(headPortraitTable);
        List<HeadPortraitTable> list = this.f32963m;
        if (list != null && list.size() > 0) {
            this.f32955e.addAll(this.f32963m);
            this.f32952b.notifyDataSetChanged();
            this.f32962l = true;
        }
        J0();
        G0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String str) {
        com.join.mgps.Util.i2.a(this.f32951a).b(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.join.mgps.dialog.x0 x0Var = this.f32956f;
        if (x0Var != null && x0Var.isShowing()) {
            this.f32956f.dismiss();
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        J0();
        G0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoading() {
        this.f32956f.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingDismis() {
        com.join.mgps.dialog.x0 x0Var = this.f32956f;
        if (x0Var == null || !x0Var.isShowing()) {
            return;
        }
        this.f32956f.dismiss();
    }
}
