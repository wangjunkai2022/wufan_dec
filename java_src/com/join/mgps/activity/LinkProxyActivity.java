package com.join.mgps.activity;

import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.view.View;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameVerByBg;
import com.join.mgps.dto.ResultMainBean;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.activity_link_proxy)
/* loaded from: classes3.dex */
public class LinkProxyActivity extends BaseAppCompatActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    ForumLoadingView f32903a;

    /* renamed from: b  reason: collision with root package name */
    com.join.mgps.rpc.d f32904b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends ForumLoadingView.e {
        a(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            LinkProxyActivity.this.H0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends ForumLoadingView.e {
        b(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
            LinkProxyActivity.this.H0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends ForumLoadingView.e {
        c(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            LinkProxyActivity.this.H0();
        }
    }

    private void G0() {
        int i2;
        String str;
        J0(true);
        String a4 = com.join.mgps.Util.y0.a(this, getIntent());
        if (TextUtils.isEmpty(a4)) {
            J0(false);
            return;
        }
        try {
            try {
                str = getPackageManager().getPackageInfo(a4, 0).versionName;
                i2 = getPackageManager().getPackageInfo(a4, 0).versionCode;
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
                i2 = 0;
            }
            I0(a4, i2, str);
        } catch (Exception unused) {
            J0(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D0(int i2) {
        ForumLoadingView forumLoadingView = this.f32903a;
        if (forumLoadingView == null) {
            return;
        }
        if (i2 == 1) {
            forumLoadingView.j(1);
        } else if (i2 == 2) {
            forumLoadingView.j(2);
        } else if (i2 == 4) {
            forumLoadingView.j(4);
        } else if (i2 == 16) {
            forumLoadingView.setFailedMsg("加载失败，再试试吧~");
            ForumLoadingView forumLoadingView2 = this.f32903a;
            forumLoadingView2.setListener(new c(forumLoadingView2));
            this.f32903a.j(16);
        } else if (i2 == 9) {
            forumLoadingView.setListener(new a(forumLoadingView));
            this.f32903a.j(9);
        } else if (i2 != 10) {
        } else {
            forumLoadingView.setFailedMsg("没有更多内容哦~");
            ForumLoadingView forumLoadingView3 = this.f32903a;
            forumLoadingView3.setListener(new b(forumLoadingView3));
            this.f32903a.setReloadingVisibility(0);
            this.f32903a.j(10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void E0(GameVerByBg gameVerByBg) {
        if (gameVerByBg == null) {
            return;
        }
        String game_id = gameVerByBg.getGame_id();
        String tpl_type = gameVerByBg.getTpl_type();
        int jump_type = gameVerByBg.getJump_type();
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setCrc_link_type_val(game_id);
        intentDateBean.setTpl_type(tpl_type);
        intentDateBean.setJump_type(jump_type);
        ExtBean extBean = new ExtBean();
        extBean.setFrom("updateFromMarket");
        intentDateBean.setExtBean(extBean);
        IntentUtil.getInstance().intentActivity(this, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0() {
        IntentUtil.getInstance().goMGMainActivity2Front(this);
    }

    void H0() {
        G0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void I0(String str, int i2, String str2) {
        if (com.join.android.app.common.utils.f.j(this)) {
            if (this.f32904b == null) {
                this.f32904b = com.join.mgps.rpc.impl.c.P1();
            }
            ResultMainBean resultMainBean = null;
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
                if (accountData != null) {
                    accountData.getUid();
                }
                ResultMainBean<GameVerByBg> z02 = this.f32904b.z0(RequestBeanUtil.getInstance(this).getGameVerByBgArgs(str, i2, str2));
                String str3 = "抱歉，未找到该游戏";
                if (z02 != null && z02.getFlag() == 1) {
                    if (z02.getMessages() != null && z02.getMessages().getData() != null && !TextUtils.isEmpty(z02.getMessages().getData().getGame_id())) {
                        E0(z02.getMessages().getData());
                    } else {
                        showMessage("抱歉，未找到该游戏");
                        F0();
                    }
                } else {
                    if (z02 != null && !TextUtils.isEmpty(z02.getError_info())) {
                        str3 = z02.getError_info();
                    }
                    showMessage(str3);
                    F0();
                }
                J0(false);
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                showMessage(0 != 0 ? resultMainBean.getError_info() : "服务访问异常，请稍后再试");
                J0(false);
                return;
            }
        }
        showMessage(getString(R.string.net_connect_failed));
        J0(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0(boolean z3) {
        if (z3) {
            this.f32903a.m();
            D0(1);
            return;
        }
        D0(2);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f32904b = com.join.mgps.rpc.impl.c.P1();
        D0(1);
        G0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }
}
