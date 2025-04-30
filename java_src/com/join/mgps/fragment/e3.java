package com.join.mgps.fragment;

import android.content.Context;
import android.content.Intent;
import android.widget.ListAdapter;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountUserInfoRequestBean;
import com.join.mgps.receiver.BootReceiver_;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
/* compiled from: MGManageFragment.java */
@EFragment(R.layout.mg_manage_fragment)
/* loaded from: classes4.dex */
public class e3 extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    private Context f48629a;

    /* renamed from: b  reason: collision with root package name */
    private com.join.mgps.adapter.v2 f48630b;

    /* renamed from: c  reason: collision with root package name */
    private AccountBean f48631c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    XListView f48632d;

    /* renamed from: e  reason: collision with root package name */
    com.join.mgps.rpc.b f48633e;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65492o})
    public void M(Intent intent) {
        String stringExtra = intent.getStringExtra("packageName");
        String stringExtra2 = intent.getStringExtra("actionFrom");
        if (stringExtra2.equals(BootReceiver_.f51451a)) {
            if ("com.papa91.vba".equals(stringExtra) || "com.papa91.gba".equals(stringExtra)) {
                boolean c4 = com.join.android.app.common.utils.a.g0(this.f48629a).c(this.f48629a, "com.papa91.vba");
                boolean c5 = com.join.android.app.common.utils.a.g0(this.f48629a).c(this.f48629a, "com.papa91.gba");
                if (c4 && c5) {
                    this.f48630b.e(true);
                }
            }
        } else if (stringExtra2.equals(BootReceiver_.f51452b)) {
            boolean c6 = com.join.android.app.common.utils.a.g0(this.f48629a).c(this.f48629a, "com.papa91.vba");
            boolean c7 = com.join.android.app.common.utils.a.g0(this.f48629a).c(this.f48629a, "com.papa91.gba");
            if (c6 || c7) {
                this.f48630b.e(false);
            }
        } else {
            stringExtra2.equals(BootReceiver_.f51454d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void N() {
        AccountBean accountData = AccountUtil_.getInstance_(this.f48629a).getAccountData();
        this.f48631c = accountData;
        if (accountData == null) {
            Q();
        } else if (com.join.android.app.common.utils.f.j(this.f48629a)) {
            try {
                AccountUserInfoRequestBean accountUserInfoRequestBean = new AccountUserInfoRequestBean();
                accountUserInfoRequestBean.setUid(this.f48631c.getUid() + "");
                accountUserInfoRequestBean.setToken(this.f48631c.getToken());
                accountUserInfoRequestBean.setSign(com.join.mgps.Util.u1.f(accountUserInfoRequestBean));
                AccountResultMainBean<AccountBean> d4 = this.f48633e.d(accountUserInfoRequestBean.getParams());
                if (d4 != null) {
                    if (d4.getError() == 0) {
                        P(d4.getData());
                    } else if (d4.getError() == 701) {
                        O(701);
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O(int i2) {
        AccountUtil_.getInstance_(this.f48629a).accountLoginOut(this.f48629a);
        com.join.mgps.Util.i2.a(this.f48629a).b("验证登录失败，请重新登录.");
        this.f48630b.d(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P(AccountBean accountBean) {
        AccountBean accountBean2;
        if (accountBean == null || (accountBean2 = this.f48631c) == null) {
            return;
        }
        accountBean2.setAccount(accountBean.getAccount());
        this.f48631c.setAvatarSrc(accountBean.getAvatarSrc());
        this.f48631c.setPapaMoney(accountBean.getPapaMoney());
        this.f48631c.setMobile(accountBean.getMobile());
        this.f48631c.setGender(accountBean.getGender());
        this.f48631c.setUid(accountBean.getUid());
        this.f48631c.setLevel(accountBean.getLevel());
        this.f48631c.setAccount(accountBean.getAccount());
        this.f48631c.setNickname(accountBean.getNickname());
        this.f48631c.setExp(accountBean.getExp());
        this.f48631c.setPwd_set_up(accountBean.getPwd_set_up());
        AccountUtil_.getInstance_(this.f48629a).saveAccountData(this.f48631c, this.f48629a);
        this.f48630b.d(this.f48631c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q() {
        this.f48630b.d(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f48633e = com.join.mgps.rpc.impl.a.b0();
        FragmentActivity activity = getActivity();
        this.f48629a = activity;
        this.f48631c = AccountUtil_.getInstance_(activity).getAccountData();
        com.join.mgps.adapter.v2 v2Var = new com.join.mgps.adapter.v2(this.f48629a);
        this.f48630b = v2Var;
        v2Var.d(this.f48631c);
        this.f48632d.setAdapter((ListAdapter) this.f48630b);
        boolean c4 = com.join.android.app.common.utils.a.g0(this.f48629a).c(this.f48629a, "com.papa91.vba");
        boolean c5 = com.join.android.app.common.utils.a.g0(this.f48629a).c(this.f48629a, "com.papa91.gba");
        if (c4 && c5) {
            this.f48630b.e(true);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        N();
    }
}
