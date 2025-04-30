package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ScrollView;
import android.widget.TextView;
import com.BaseActivity;
import com.MApplication;
import com.join.android.app.component.album.MyIconActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MyGridView;
import com.join.mgps.db.tables.HeadPortraitTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountChangeUserinfoRequestBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.HeadPicRequestBean;
import com.join.mgps.dto.UserHeadPortrait;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.my_account_reginfinish_layout)
/* loaded from: classes3.dex */
public class MYAccountReginFinishActivity extends BaseActivity {

    /* renamed from: u  reason: collision with root package name */
    private static final String f33660u = "MYAccountReginFinishActivity";

    /* renamed from: a  reason: collision with root package name */
    MApplication f33661a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    MyGridView f33662b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f33663c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f33664d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f33665e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    ScrollView f33666f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    Button f33667g;

    /* renamed from: h  reason: collision with root package name */
    com.join.mgps.rpc.b f33668h;

    /* renamed from: i  reason: collision with root package name */
    private com.join.mgps.adapter.d f33669i;

    /* renamed from: k  reason: collision with root package name */
    private com.join.mgps.dialog.x0 f33671k;
    @Extra

    /* renamed from: l  reason: collision with root package name */
    AccountBean f33672l;
    @Extra

    /* renamed from: m  reason: collision with root package name */
    int f33673m;

    /* renamed from: n  reason: collision with root package name */
    private long f33674n;

    /* renamed from: p  reason: collision with root package name */
    private Context f33676p;

    /* renamed from: t  reason: collision with root package name */
    private String f33680t;

    /* renamed from: j  reason: collision with root package name */
    private int f33670j = 0;

    /* renamed from: o  reason: collision with root package name */
    private boolean f33675o = false;

    /* renamed from: q  reason: collision with root package name */
    private List<HeadPortraitTable> f33677q = new ArrayList();

    /* renamed from: r  reason: collision with root package name */
    private List<HeadPortraitTable> f33678r = new ArrayList();

    /* renamed from: s  reason: collision with root package name */
    private boolean f33679s = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements AdapterView.OnItemClickListener {

        /* renamed from: com.join.mgps.activity.MYAccountReginFinishActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0154a implements w2.g<com.tbruyelle.rxpermissions2.b> {
            C0154a() {
            }

            @Override // w2.g
            /* renamed from: a */
            public void accept(com.tbruyelle.rxpermissions2.b bVar) throws Exception {
                if (bVar.f59248b) {
                    Intent intent = new Intent();
                    intent.setClass(MYAccountReginFinishActivity.this.f33676p, MyIconActivity.class);
                    MYAccountReginFinishActivity.this.f33676p.startActivity(intent);
                } else if (bVar.f59249c) {
                } else {
                    com.join.mgps.Util.i2.a(MYAccountReginFinishActivity.this.f33676p).b("需要授权存储权限");
                }
            }
        }

        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            if (i2 != 0) {
                MYAccountReginFinishActivity.this.f33669i.b(i2);
                MYAccountReginFinishActivity mYAccountReginFinishActivity = MYAccountReginFinishActivity.this;
                mYAccountReginFinishActivity.f33680t = ((HeadPortraitTable) mYAccountReginFinishActivity.f33677q.get(i2)).getHead_portrait_pic();
                return;
            }
            new com.tbruyelle.rxpermissions2.c(MYAccountReginFinishActivity.this).r("android.permission.WRITE_EXTERNAL_STORAGE").B5(new C0154a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void I0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                try {
                    HeadPicRequestBean headPicRequestBean = new HeadPicRequestBean();
                    headPicRequestBean.setUid(this.f33672l.getUid());
                    headPicRequestBean.setToken(this.f33672l.getToken());
                    headPicRequestBean.setSign(com.join.mgps.Util.u1.f(headPicRequestBean));
                    AccountResultMainBean<UserHeadPortrait> t3 = this.f33668h.t(headPicRequestBean.getParams());
                    if (t3 != null && t3.getError() == 0) {
                        if (t3.getData().isIs_success()) {
                            M0(t3.getData().getHead_portrait_pic());
                        } else {
                            J0();
                            error(t3.getData().getError_msg());
                        }
                    } else {
                        J0();
                        error("连接失败，请稍后再试。");
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    J0();
                    error("连接失败，请稍后再试。");
                }
                return;
            } finally {
                showLodingDismis();
            }
        }
        error("没有网络，请先检查网络。");
        J0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0() {
        this.f33663c.setVisibility(8);
        this.f33664d.setVisibility(8);
        this.f33666f.setVisibility(0);
        this.f33662b.setVisibility(0);
        this.f33669i.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void K0() {
        if (System.currentTimeMillis() - this.f33674n <= 2000) {
            return;
        }
        this.f33674n = System.currentTimeMillis();
        P0(this.f33680t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void L0(String str) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M0(List<String> list) {
        this.f33663c.setVisibility(8);
        this.f33664d.setVisibility(8);
        this.f33662b.setVisibility(0);
        this.f33666f.setVisibility(0);
        n1.y.n().a();
        for (int i2 = 0; i2 < list.size(); i2++) {
            HeadPortraitTable headPortraitTable = new HeadPortraitTable();
            headPortraitTable.setHead_portrait_pic(list.get(i2));
            n1.y.n().k(headPortraitTable);
        }
        List<HeadPortraitTable> d4 = n1.y.n().d();
        this.f33677q.removeAll(this.f33678r);
        this.f33677q.addAll(d4);
        this.f33669i.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N0() {
        if (this.f33679s) {
            this.f33663c.setVisibility(8);
            this.f33664d.setVisibility(8);
            this.f33666f.setVisibility(0);
            return;
        }
        this.f33663c.setVisibility(0);
        this.f33664d.setVisibility(8);
        this.f33666f.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0() {
        this.f33661a.l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void P0(String str) {
        if (com.join.android.app.common.utils.f.j(this)) {
            showLoding();
            try {
                AccountChangeUserinfoRequestBean accountChangeUserinfoRequestBean = new AccountChangeUserinfoRequestBean();
                accountChangeUserinfoRequestBean.setGender(1);
                accountChangeUserinfoRequestBean.setAccount(this.f33672l.getAccount());
                accountChangeUserinfoRequestBean.setNick_name(this.f33672l.getNickname());
                accountChangeUserinfoRequestBean.setUid(this.f33672l.getUid());
                accountChangeUserinfoRequestBean.setToken(this.f33672l.getToken());
                accountChangeUserinfoRequestBean.setAvatar_src(str);
                accountChangeUserinfoRequestBean.setSign(com.join.mgps.Util.u1.f(accountChangeUserinfoRequestBean));
                AccountResultMainBean<AccountTokenSuccess> c4 = this.f33668h.c(accountChangeUserinfoRequestBean.getParams());
                if (c4 != null && c4.getError() == 0) {
                    if (c4.getData().is_success()) {
                        O0();
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
    public void afterview() {
        this.f33668h = com.join.mgps.rpc.impl.a.b0();
        MApplication mApplication = (MApplication) getApplication();
        this.f33661a = mApplication;
        mApplication.k(this);
        int i2 = this.f33673m;
        if (i2 == 1 || i2 == 2) {
            this.f33665e.setText("注册成功");
        } else if (i2 == 3) {
            this.f33665e.setText("修改头像");
        }
        this.f33671k = com.join.mgps.Util.a0.c0(this).x(this);
        this.f33676p = this;
        com.join.mgps.adapter.d dVar = new com.join.mgps.adapter.d(this.f33676p, this.f33677q, this.f33672l.getAvatarSrc(), true);
        this.f33669i = dVar;
        this.f33662b.setAdapter((ListAdapter) dVar);
        this.f33662b.setSelector(new ColorDrawable(0));
        this.f33662b.setOnItemClickListener(new a());
        this.f33678r = n1.y.n().d();
        HeadPortraitTable headPortraitTable = new HeadPortraitTable();
        headPortraitTable.setId(R.drawable.choose_butn_selector);
        headPortraitTable.setHead_portrait_pic("相机");
        this.f33677q.add(headPortraitTable);
        List<HeadPortraitTable> list = this.f33678r;
        if (list != null && list.size() > 0) {
            this.f33677q.addAll(this.f33678r);
            this.f33669i.notifyDataSetChanged();
            this.f33679s = true;
        }
        N0();
        I0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f33675o = true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            return false;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f33671k.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingDismis() {
        com.join.mgps.dialog.x0 x0Var;
        if (this.f33675o || (x0Var = this.f33671k) == null) {
            return;
        }
        x0Var.dismiss();
    }
}
