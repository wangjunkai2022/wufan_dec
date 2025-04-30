package com.join.mgps.activity;

import android.content.Intent;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.PopupAdBean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.TouristLoginRequestBean;
import com.join.mgps.pref.PrefDef_;
import java.io.File;
import java.util.ArrayList;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.sharedpreferences.Pref;
@EActivity(R.layout.activity_forum_index)
/* loaded from: classes3.dex */
public class ForumIndexActivity extends BaseAppCompatActivity {

    /* renamed from: a  reason: collision with root package name */
    com.join.mgps.fragment.q0 f29879a;

    /* renamed from: b  reason: collision with root package name */
    private FragmentManager f29880b;
    @Pref

    /* renamed from: c  reason: collision with root package name */
    PrefDef_ f29881c;

    /* renamed from: d  reason: collision with root package name */
    boolean f29882d = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        this.f29880b = supportFragmentManager;
        FragmentTransaction beginTransaction = supportFragmentManager.beginTransaction();
        com.join.mgps.fragment.q0 q0Var = this.f29879a;
        if (q0Var == null) {
            com.join.mgps.fragment.r0 r0Var = new com.join.mgps.fragment.r0();
            this.f29879a = r0Var;
            beginTransaction.add(R.id.mg_mian_fragmentlayout, r0Var);
        } else {
            beginTransaction.show(q0Var);
        }
        try {
            beginTransaction.commit();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void clearOldCache(PopupAdBean popupAdBean) {
        File[] listFiles;
        String pic_remote;
        if (popupAdBean == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (popupAdBean.getBig_pic() != null && popupAdBean.getBig_pic().size() > 0) {
            int size = popupAdBean.getBig_pic().size();
            for (int i2 = 0; i2 < size; i2++) {
                RecomDatabean recomDatabean = popupAdBean.getBig_pic().get(i2);
                if (recomDatabean.getMain() != null && com.join.mgps.Util.d2.i(recomDatabean.getMain().getPic_remote())) {
                    if (com.join.mgps.Util.d2.i(recomDatabean.getMain().getPic_remote())) {
                        arrayList.add(com.join.mgps.Util.u.b(this) + com.join.mgps.Util.g0.o(pic_remote));
                    }
                }
            }
        }
        File b4 = com.join.mgps.Util.u.b(this);
        if (b4 != null) {
            try {
                if (b4.exists() && b4.isDirectory()) {
                    for (File file : b4.listFiles()) {
                        if (file.isFile()) {
                            if (!arrayList.contains(file + "")) {
                                UtilsMy.delete(file);
                            }
                        }
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getHomePopupAd() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                com.join.mgps.rpc.impl.c P1 = com.join.mgps.rpc.impl.c.P1();
                ResultMainBean<PopupAdBean> body = P1.O1().R1(RequestBeanUtil.getInstance(this).getHomePopupAd(false, 0)).execute().body();
                if (body != null && body.getFlag() == 1) {
                    showHomePopupAd(body.getMessages().getData());
                } else {
                    showHomePopupAd(null);
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                showHomePopupAd(null);
                return;
            }
        }
        showHomePopupAd(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0069 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean isHomePopupAdCached(com.join.mgps.dto.PopupAdBean r8) {
        /*
            r7 = this;
            r0 = 0
            r1 = 0
            if (r8 == 0) goto L66
            java.util.List r2 = r8.getBig_pic()     // Catch: java.lang.Exception -> L64
            if (r2 == 0) goto L66
            java.util.List r2 = r8.getBig_pic()     // Catch: java.lang.Exception -> L64
            int r2 = r2.size()     // Catch: java.lang.Exception -> L64
            if (r2 <= 0) goto L66
            java.util.List r2 = r8.getBig_pic()     // Catch: java.lang.Exception -> L64
            int r2 = r2.size()     // Catch: java.lang.Exception -> L64
            r3 = 0
            r4 = 0
        L1e:
            if (r3 >= r2) goto L60
            java.util.List r5 = r8.getBig_pic()     // Catch: java.lang.Exception -> L64
            java.lang.Object r5 = r5.get(r3)     // Catch: java.lang.Exception -> L64
            com.join.mgps.dto.RecomDatabean r5 = (com.join.mgps.dto.RecomDatabean) r5     // Catch: java.lang.Exception -> L64
            com.join.mgps.dto.ModleBean r6 = r5.getMain()     // Catch: java.lang.Exception -> L64
            if (r6 == 0) goto L5d
            com.join.mgps.dto.ModleBean r6 = r5.getMain()     // Catch: java.lang.Exception -> L64
            java.lang.String r6 = r6.getPic_remote()     // Catch: java.lang.Exception -> L64
            boolean r6 = com.join.mgps.Util.d2.i(r6)     // Catch: java.lang.Exception -> L64
            if (r6 == 0) goto L5d
            com.join.mgps.dto.ModleBean r5 = r5.getMain()     // Catch: java.lang.Exception -> L64
            java.lang.String r5 = r5.getPic_remote()     // Catch: java.lang.Exception -> L64
            boolean r6 = com.join.mgps.Util.k0.n(r5)     // Catch: java.lang.Exception -> L64
            if (r6 != 0) goto L5b
            boolean r6 = r7.isHomePopupAdLocalCached(r5)     // Catch: java.lang.Exception -> L64
            if (r6 == 0) goto L53
            goto L5b
        L53:
            java.io.File r6 = com.join.mgps.Util.u.b(r7)     // Catch: java.lang.Exception -> L64
            com.join.mgps.Util.k0.f(r5, r7, r6, r0)     // Catch: java.lang.Exception -> L64
            goto L5d
        L5b:
            int r4 = r4 + 1
        L5d:
            int r3 = r3 + 1
            goto L1e
        L60:
            if (r4 != r2) goto L66
            r2 = 1
            goto L67
        L64:
            r8 = move-exception
            goto Lbb
        L66:
            r2 = 0
        L67:
            if (r8 == 0) goto Lbf
            java.util.List r3 = r8.getMore()     // Catch: java.lang.Exception -> Lb9
            if (r3 == 0) goto Lbf
            java.util.List r3 = r8.getMore()     // Catch: java.lang.Exception -> Lb9
            int r3 = r3.size()     // Catch: java.lang.Exception -> Lb9
            if (r3 <= 0) goto Lbf
            java.util.List r8 = r8.getMore()     // Catch: java.lang.Exception -> Lb9
            java.lang.Object r8 = r8.get(r1)     // Catch: java.lang.Exception -> Lb9
            com.join.mgps.dto.RecomDatabean r8 = (com.join.mgps.dto.RecomDatabean) r8     // Catch: java.lang.Exception -> Lb9
            if (r8 == 0) goto Lbf
            com.join.mgps.dto.ModleBean r1 = r8.getMain()     // Catch: java.lang.Exception -> Lb9
            if (r1 == 0) goto Lbf
            com.join.mgps.dto.ModleBean r1 = r8.getMain()     // Catch: java.lang.Exception -> Lb9
            java.lang.String r1 = r1.getPic_remote()     // Catch: java.lang.Exception -> Lb9
            boolean r1 = com.join.mgps.Util.d2.i(r1)     // Catch: java.lang.Exception -> Lb9
            if (r1 == 0) goto Lbf
            com.join.mgps.dto.ModleBean r8 = r8.getMain()     // Catch: java.lang.Exception -> Lb9
            java.lang.String r8 = r8.getPic_remote()     // Catch: java.lang.Exception -> Lb9
            boolean r1 = com.join.mgps.Util.k0.n(r8)     // Catch: java.lang.Exception -> Lb9
            if (r1 != 0) goto Lb6
            boolean r1 = r7.isHomePopupAdLocalCached(r8)     // Catch: java.lang.Exception -> Lb9
            if (r1 == 0) goto Lae
            goto Lb6
        Lae:
            java.io.File r1 = com.join.mgps.Util.u.b(r7)     // Catch: java.lang.Exception -> Lb9
            com.join.mgps.Util.k0.f(r8, r7, r1, r0)     // Catch: java.lang.Exception -> Lb9
            goto Lbf
        Lb6:
            r2 = r2 & 1
            goto Lbf
        Lb9:
            r8 = move-exception
            r1 = r2
        Lbb:
            r8.printStackTrace()
            goto Lc0
        Lbf:
            r1 = r2
        Lc0:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.ForumIndexActivity.isHomePopupAdCached(com.join.mgps.dto.PopupAdBean):boolean");
    }

    boolean isHomePopupAdLocalCached(String str) {
        return new File(com.join.mgps.Util.u.b(this), com.join.mgps.Util.g0.o(str)).exists();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, Intent intent) {
        super.onActivityResult(i2, i4, intent);
        com.join.mgps.fragment.q0 q0Var = this.f29879a;
        if (q0Var != null) {
            q0Var.onActivityResult(i2, i4, intent);
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (com.join.android.app.component.video.a.c0(this, "ForumPostsFragment")) {
            return;
        }
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f29882d = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        com.join.mgps.fragment.q0 q0Var = this.f29879a;
        if (q0Var != null) {
            q0Var.G0();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.join.mgps.fragment.q0 q0Var = this.f29879a;
        if (q0Var != null) {
            q0Var.t0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void preLoad(PopupAdBean popupAdBean) {
        RecomDatabean recomDatabean;
        if (popupAdBean != null) {
            try {
                if (popupAdBean.getBig_pic() != null && popupAdBean.getBig_pic().size() > 0) {
                    int size = popupAdBean.getBig_pic().size();
                    for (int i2 = 0; i2 < size; i2++) {
                        RecomDatabean recomDatabean2 = popupAdBean.getBig_pic().get(i2);
                        if (recomDatabean2.getMain() != null && com.join.mgps.Util.d2.i(recomDatabean2.getMain().getPic_remote())) {
                            String pic_remote = recomDatabean2.getMain().getPic_remote();
                            if (!isHomePopupAdLocalCached(pic_remote)) {
                                com.join.mgps.Util.k0.f(pic_remote, this, com.join.mgps.Util.u.b(this), null);
                            }
                        }
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        if (popupAdBean == null || popupAdBean.getMore() == null || popupAdBean.getMore().size() <= 0 || (recomDatabean = popupAdBean.getMore().get(0)) == null || recomDatabean.getMain() == null || !com.join.mgps.Util.d2.i(recomDatabean.getMain().getPic_remote())) {
            return;
        }
        String pic_remote2 = recomDatabean.getMain().getPic_remote();
        if (isHomePopupAdLocalCached(pic_remote2)) {
            return;
        }
        com.join.mgps.Util.k0.f(pic_remote2, this, com.join.mgps.Util.u.b(this), null);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0090 A[Catch: Exception -> 0x00d5, TryCatch #0 {Exception -> 0x00d5, blocks: (B:2:0x0000, B:6:0x0038, B:8:0x003e, B:10:0x004c, B:12:0x0052, B:14:0x005e, B:16:0x0069, B:22:0x0090, B:25:0x009a, B:30:0x00a4, B:32:0x00c7, B:20:0x0073), top: B:37:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a4 A[Catch: Exception -> 0x00d5, TryCatch #0 {Exception -> 0x00d5, blocks: (B:2:0x0000, B:6:0x0038, B:8:0x003e, B:10:0x004c, B:12:0x0052, B:14:0x005e, B:16:0x0069, B:22:0x0090, B:25:0x009a, B:30:0x00a4, B:32:0x00c7, B:20:0x0073), top: B:37:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void showHomePopupAd(com.join.mgps.dto.PopupAdBean r8) {
        /*
            r7 = this;
            com.join.mgps.pref.PrefDef_ r0 = r7.f29881c     // Catch: java.lang.Exception -> Ld5
            org.androidannotations.api.sharedpreferences.k r0 = r0.homePopupAdLastTime()     // Catch: java.lang.Exception -> Ld5
            java.lang.Object r0 = r0.d()     // Catch: java.lang.Exception -> Ld5
            java.lang.Long r0 = (java.lang.Long) r0     // Catch: java.lang.Exception -> Ld5
            long r0 = r0.longValue()     // Catch: java.lang.Exception -> Ld5
            com.join.mgps.pref.PrefDef_ r2 = r7.f29881c     // Catch: java.lang.Exception -> Ld5
            org.androidannotations.api.sharedpreferences.i r2 = r2.homePopupAdCount()     // Catch: java.lang.Exception -> Ld5
            java.lang.Object r2 = r2.d()     // Catch: java.lang.Exception -> Ld5
            java.lang.Integer r2 = (java.lang.Integer) r2     // Catch: java.lang.Exception -> Ld5
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Ld5
            com.join.mgps.pref.PrefDef_ r3 = r7.f29881c     // Catch: java.lang.Exception -> Ld5
            org.androidannotations.api.sharedpreferences.p r3 = r3.homePopupAdLast()     // Catch: java.lang.Exception -> Ld5
            java.lang.Object r3 = r3.d()     // Catch: java.lang.Exception -> Ld5
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Exception -> Ld5
            boolean r0 = com.join.android.app.common.utils.c.g(r0)     // Catch: java.lang.Exception -> Ld5
            r1 = 0
            if (r0 != 0) goto L36
            java.lang.String r3 = ""
            r2 = 0
        L36:
            if (r8 != 0) goto L4a
            boolean r0 = com.join.mgps.Util.d2.i(r3)     // Catch: java.lang.Exception -> Ld5
            if (r0 == 0) goto L4a
            com.join.android.app.common.utils.JsonMapper r8 = com.join.android.app.common.utils.JsonMapper.getInstance()     // Catch: java.lang.Exception -> Ld5
            java.lang.Class<com.join.mgps.dto.PopupAdBean> r0 = com.join.mgps.dto.PopupAdBean.class
            java.lang.Object r8 = r8.fromJson(r3, r0)     // Catch: java.lang.Exception -> Ld5
            com.join.mgps.dto.PopupAdBean r8 = (com.join.mgps.dto.PopupAdBean) r8     // Catch: java.lang.Exception -> Ld5
        L4a:
            if (r8 == 0) goto Ld9
            java.lang.String r0 = r8.getAd_switch()     // Catch: java.lang.Exception -> Ld5
            if (r0 == 0) goto Ld9
            java.lang.String r0 = r8.getAd_switch()     // Catch: java.lang.Exception -> Ld5
            java.lang.String r4 = "1"
            boolean r0 = r0.equals(r4)     // Catch: java.lang.Exception -> Ld5
            if (r0 == 0) goto Ld9
            java.lang.String r0 = com.join.android.app.common.utils.JsonMapper.toJsonString(r8)     // Catch: java.lang.Exception -> Ld5
            boolean r3 = r0.equals(r3)     // Catch: java.lang.Exception -> Ld5
            r4 = 1
            if (r3 == 0) goto L73
            int r3 = r8.getStart_up_counts()     // Catch: java.lang.Exception -> Ld5
            if (r2 >= r3) goto L71
        L6f:
            r3 = 1
            goto L8e
        L71:
            r3 = 0
            goto L8e
        L73:
            com.join.mgps.pref.PrefDef_ r2 = r7.f29881c     // Catch: java.lang.Exception -> Ld5
            org.androidannotations.api.sharedpreferences.p r2 = r2.homePopupAdLast()     // Catch: java.lang.Exception -> Ld5
            r2.g(r0)     // Catch: java.lang.Exception -> Ld5
            com.join.mgps.pref.PrefDef_ r2 = r7.f29881c     // Catch: java.lang.Exception -> Ld5
            org.androidannotations.api.sharedpreferences.i r2 = r2.homePopupAdCount()     // Catch: java.lang.Exception -> Ld5
            java.lang.Integer r3 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Exception -> Ld5
            r2.g(r3)     // Catch: java.lang.Exception -> Ld5
            r7.clearOldCache(r8)     // Catch: java.lang.Exception -> Ld5
            r2 = 0
            goto L6f
        L8e:
            if (r3 == 0) goto La2
            java.lang.String r0 = com.join.android.app.common.utils.JsonMapper.toJsonString(r8)     // Catch: java.lang.Exception -> Ld5
            r7.preLoad(r8)     // Catch: java.lang.Exception -> Ld5
            if (r2 != 0) goto L9a
            goto La1
        L9a:
            boolean r8 = r7.isHomePopupAdCached(r8)     // Catch: java.lang.Exception -> Ld5
            if (r8 != 0) goto La1
            goto La2
        La1:
            r1 = r3
        La2:
            if (r1 == 0) goto Ld9
            com.join.mgps.pref.PrefDef_ r8 = r7.f29881c     // Catch: java.lang.Exception -> Ld5
            org.androidannotations.api.sharedpreferences.k r8 = r8.homePopupAdLastTime()     // Catch: java.lang.Exception -> Ld5
            long r5 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> Ld5
            java.lang.Long r1 = java.lang.Long.valueOf(r5)     // Catch: java.lang.Exception -> Ld5
            r8.g(r1)     // Catch: java.lang.Exception -> Ld5
            com.join.mgps.pref.PrefDef_ r8 = r7.f29881c     // Catch: java.lang.Exception -> Ld5
            org.androidannotations.api.sharedpreferences.i r8 = r8.homePopupAdCount()     // Catch: java.lang.Exception -> Ld5
            int r2 = r2 + r4
            java.lang.Integer r1 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Exception -> Ld5
            r8.g(r1)     // Catch: java.lang.Exception -> Ld5
            boolean r8 = r7.f29882d     // Catch: java.lang.Exception -> Ld5
            if (r8 != 0) goto Ld9
            com.join.mgps.activity.HomePopupAdQWActivity_$f r8 = com.join.mgps.activity.HomePopupAdQWActivity_.r(r7)     // Catch: java.lang.Exception -> Ld5
            com.join.mgps.activity.HomePopupAdQWActivity_$f r8 = r8.a(r0)     // Catch: java.lang.Exception -> Ld5
            r0 = 10002(0x2712, float:1.4016E-41)
            r8.startForResult(r0)     // Catch: java.lang.Exception -> Ld5
            goto Ld9
        Ld5:
            r8 = move-exception
            r8.printStackTrace()
        Ld9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.ForumIndexActivity.showHomePopupAd(com.join.mgps.dto.PopupAdBean):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 1000)
    public void touristLogin() {
        if (!com.join.android.app.common.utils.f.j(this) || com.join.mgps.Util.i0.Y0(this)) {
            return;
        }
        com.join.mgps.rpc.b b02 = com.join.mgps.rpc.impl.a.b0();
        try {
            TouristLoginRequestBean touristLoginRequestBean = new TouristLoginRequestBean();
            touristLoginRequestBean.setVersion(com.join.android.app.common.utils.j.n(this).z());
            touristLoginRequestBean.setDevice_id("");
            touristLoginRequestBean.setMac("");
            touristLoginRequestBean.setSource(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
            touristLoginRequestBean.setTuid(this.f29881c.touriseTUID().d().longValue());
            touristLoginRequestBean.setSign(com.join.mgps.Util.u1.f(touristLoginRequestBean));
            AccountResultMainBean<AccountTokenSuccess> s3 = b02.s(touristLoginRequestBean.getParams());
            if (s3 != null && s3.getError() == 0 && s3.getData().is_success()) {
                AccountUtil_.getInstance_(this).saveAccountData(s3.getData().getUser_info(), this);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
