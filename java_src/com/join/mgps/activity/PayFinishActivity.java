package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.PapayResult;
import com.join.mgps.dto.PayGameDetialBean;
import com.join.mgps.dto.RequestAppDetialArgs;
import com.join.mgps.dto.ResultMainBean;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
@EActivity(R.layout.payfinish_activirty)
/* loaded from: classes3.dex */
public class PayFinishActivity extends BaseActivity {
    @Extra

    /* renamed from: a  reason: collision with root package name */
    PapayResult f34861a;

    /* renamed from: b  reason: collision with root package name */
    DownloadTask f34862b;

    /* renamed from: c  reason: collision with root package name */
    com.join.mgps.rpc.d f34863c;

    /* renamed from: d  reason: collision with root package name */
    Context f34864d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements com.join.android.app.common.http.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f34865a;

        a(boolean z3) {
            this.f34865a = z3;
        }

        @Override // com.join.android.app.common.http.b
        public void a(Object obj) {
            PayFinishActivity.this.H0("获取游戏信息失败");
        }

        @Override // com.join.android.app.common.http.b
        public void onSuccess(Object obj) {
            ResultMainBean resultMainBean = (ResultMainBean) obj;
            if (resultMainBean != null && resultMainBean.getFlag() != 0) {
                PayGameDetialBean payGameDetialBean = (PayGameDetialBean) resultMainBean.getMessages().getData();
                if (payGameDetialBean != null) {
                    if (payGameDetialBean.getGame_info() != null) {
                        CollectionBeanSub game_info = payGameDetialBean.getGame_info();
                        DownloadTask B = g1.f.G().B(game_info.getGame_id());
                        Intent intent = new Intent(f1.a.F);
                        intent.putExtra("gameData", game_info);
                        PayFinishActivity.this.sendBroadcast(intent);
                        if (B == null && this.f34865a) {
                            com.php25.PDownload.d.c(game_info.getDownloadtaskDown(), PayFinishActivity.this.f34864d);
                        }
                        PayFinishActivity.this.finish();
                        return;
                    }
                    PayFinishActivity.this.H0("稍后再试");
                }
            } else if (resultMainBean != null && resultMainBean.getFlag() != 0) {
                PayFinishActivity.this.H0("获取游戏信息失败");
            } else {
                PayFinishActivity.this.H0("获取游戏信息失败");
            }
        }
    }

    void E0(String str, boolean z3) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
                int uid = accountData != null ? accountData.getUid() : 0;
                RequestAppDetialArgs requestAppDetialArgs = new RequestAppDetialArgs();
                requestAppDetialArgs.setDeviceid("");
                requestAppDetialArgs.setVersion(com.join.android.app.common.utils.j.n(this.f34864d).y() + "_" + com.join.android.app.common.utils.j.n(this.f34864d).z());
                requestAppDetialArgs.setGame_id(str);
                requestAppDetialArgs.setUid(uid);
                requestAppDetialArgs.setToken(accountData.getToken());
                com.join.mgps.rpc.m.c(requestAppDetialArgs, new a(z3));
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                H0("获取游戏信息失败");
                return;
            }
        }
        H0("请检查网络连接");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void F0() {
        E0(this.f34861a.getGameid(), false);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        E0(this.f34861a.getGameid(), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H0(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f34864d = this;
        this.f34863c = com.join.mgps.rpc.impl.c.P1();
    }
}
