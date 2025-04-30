package com.join.mgps.Util;

import android.content.Context;
import android.content.Intent;
import android.os.Environment;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.sina.weibo.SinaWeibo;
import cn.sharesdk.tencent.qq.QQ;
import cn.sharesdk.wechat.friends.Wechat;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.db.tables.TokenTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.pref.PrefDef_;
import org.androidannotations.annotations.EBean;
import org.androidannotations.annotations.sharedpreferences.Pref;
/* compiled from: AccountUtil.java */
@EBean(scope = EBean.Scope.Singleton)
/* loaded from: classes3.dex */
public class b {
    private static final String TAG = "b";
    @Pref
    PrefDef_ prefDef;

    /*  JADX ERROR: NullPointerException in pass: RegionMakerVisitor
        java.lang.NullPointerException
        	at java.base/java.util.BitSet.or(BitSet.java:941)
        	at jadx.core.utils.BlockUtils.getPathCross(BlockUtils.java:732)
        	at jadx.core.utils.BlockUtils.getPathCross(BlockUtils.java:811)
        	at jadx.core.dex.visitors.regions.IfMakerHelper.restructureIf(IfMakerHelper.java:88)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:706)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    public static boolean piv(com.wufan.user.service.protobuf.l0 r6) {
        /*
            r0 = 0
            if (r6 == 0) goto L69
            java.lang.String r1 = r6.C()
            boolean r1 = com.join.mgps.Util.d2.h(r1)
            if (r1 == 0) goto Le
            goto L69
        Le:
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: java.lang.Exception -> L69
            java.lang.String r2 = r6.C()     // Catch: java.lang.Exception -> L69
            java.lang.String r2 = com.join.mgps.Util.a.b(r2)     // Catch: java.lang.Exception -> L69
            r1.<init>(r2)     // Catch: java.lang.Exception -> L69
            java.lang.String r2 = "uid"
            int r2 = r1.optInt(r2)     // Catch: java.lang.Exception -> L69
            java.lang.String r3 = "token"
            java.lang.String r3 = r1.optString(r3)     // Catch: java.lang.Exception -> L69
            java.lang.String r4 = "t"
            java.lang.String r1 = r1.optString(r4)     // Catch: java.lang.Exception -> L69
            java.lang.String r1 = com.join.mgps.Util.a.b(r1)     // Catch: java.lang.Exception -> L69
            r4 = 2
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: java.lang.Exception -> L69
            boolean r5 = com.join.mgps.Util.d2.i(r1)     // Catch: java.lang.Exception -> L69
            if (r5 == 0) goto L40
            java.lang.String r4 = "\\|"
            java.lang.String[] r4 = r1.split(r4)     // Catch: java.lang.Exception -> L69
        L40:
            int r1 = r6.getUid()     // Catch: java.lang.Exception -> L69
            r5 = 1
            if (r2 != r1) goto L69
            java.lang.String r6 = r6.getToken()     // Catch: java.lang.Exception -> L69
            boolean r6 = r3.equals(r6)     // Catch: java.lang.Exception -> L69
            if (r6 == 0) goto L69
            int r6 = r4.length     // Catch: java.lang.Exception -> L69
            if (r6 <= r5) goto L69
            r6 = r4[r5]     // Catch: java.lang.Exception -> L69
            boolean r6 = com.join.mgps.Util.d2.i(r6)     // Catch: java.lang.Exception -> L69
            if (r6 == 0) goto L69
            r6 = r4[r5]     // Catch: java.lang.Exception -> L69
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Exception -> L69
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> L69
            if (r6 <= 0) goto L69
            r0 = 1
        L69:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.Util.b.piv(com.wufan.user.service.protobuf.l0):boolean");
    }

    public static String vl(String str) {
        if (d2.h(str)) {
            return "0";
        }
        String[] strArr = new String[2];
        if (d2.i(str)) {
            strArr = str.split("\\|");
        }
        return (strArr == null || strArr.length <= 1) ? "0" : strArr[1];
    }

    public void accountLoginOut(Context context) {
        com.join.mgps.rpc.g.N = null;
        this.prefDef.accountDataV2().g("");
        this.prefDef.accountDataV3().g("");
        Platform platform = ShareSDK.getPlatform(Wechat.NAME);
        if (platform.isAuthValid()) {
            platform.removeAccount(true);
        }
        Platform platform2 = ShareSDK.getPlatform(QQ.NAME);
        if (platform2.isAuthValid()) {
            platform2.removeAccount(true);
        }
        Platform platform3 = ShareSDK.getPlatform(SinaWeibo.NAME);
        if (platform3.isAuthValid()) {
            platform3.removeAccount(true);
        }
        Intent intent = new Intent();
        intent.setAction(f1.a.f65498r);
        context.sendBroadcast(intent);
        i0.N();
        i0.g1();
        com.wufan.friend.chat.c.u().M();
        p0.e(context);
    }

    public AccountBean getAccountData() {
        try {
            AccountBean accountBean = com.join.mgps.rpc.g.N;
            if (accountBean != null) {
                return accountBean.cloneNewAccountBean();
            }
            String d4 = this.prefDef.accountDataV3().d();
            if (d2.i(d4)) {
                com.wufan.user.service.protobuf.l0 m5 = com.wufan.user.service.protobuf.l0.m5(AESUtils.decryptBuf(d4));
                if (m5 == null) {
                    return new AccountBean();
                }
                AccountBean convert = AccountBean.convert(m5);
                com.join.mgps.rpc.g.N = convert;
                return convert;
            }
            String d5 = this.prefDef.accountDataV2().d();
            if (d2.i(d5)) {
                AccountBean accountBean2 = (AccountBean) JsonMapper.getInstance().fromJson(AESUtils.decrypt(d5), AccountBean.class);
                com.join.mgps.rpc.g.N = accountBean2;
                return accountBean2;
            }
            String d6 = this.prefDef.accountData().d();
            if (d2.i(d6)) {
                AccountBean accountBean3 = (AccountBean) JsonMapper.getInstance().fromJson(d6, AccountBean.class);
                this.prefDef.accountData().g("");
                if (accountBean3 != null) {
                    this.prefDef.accountDataV2().g(AESUtils.encrypt(d6));
                    com.join.mgps.rpc.g.N = accountBean3;
                    return accountBean3;
                }
            }
            return new AccountBean();
        } catch (Exception e4) {
            e4.printStackTrace();
            return new AccountBean();
        }
    }

    public AccountBean getAccountFromeSdcard() {
        try {
            return (AccountBean) JsonMapper.getInstance().fromJson(AESUtils.decrypt(f0.y(Environment.getExternalStorageDirectory() + "/wufan91/paysdk/.accountV2")), AccountBean.class);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public String getAccountStr() {
        return this.prefDef.accountDataV3().d();
    }

    public String getLocalUserIcon() {
        return this.prefDef.localUserIcon().d();
    }

    public String getToken() {
        AccountBean accountData = getAccountData();
        return accountData == null ? "0" : accountData.getToken();
    }

    public String getUid() {
        AccountBean accountData = getAccountData();
        if (accountData == null) {
            return "0";
        }
        return accountData.getUid() + "";
    }

    public boolean isTourist() {
        AccountBean accountData = getAccountData();
        return accountData != null && accountData.getAccount_type() == 2;
    }

    public void saveAccountData(AccountBean accountBean, Context context) {
        if (accountBean == null) {
            return;
        }
        AccountBean accountData = getAccountData();
        TokenTable o3 = n1.l0.p().o(accountBean.getUid());
        if (o3 == null) {
            o3 = new TokenTable();
            o3.setUid(accountBean.getUid());
        }
        o3.setToken(accountBean.getToken());
        n1.l0.p().m(o3);
        String json = JsonMapper.getInstance().toJson(accountBean);
        if (json == null) {
            return;
        }
        com.join.mgps.rpc.g.N = accountBean;
        UtilsMy.L(context);
        if (accountBean.getAccount_type() == 2) {
            this.prefDef.touriseTUID().g(Long.valueOf(accountBean.getUid()));
        }
        this.prefDef.accountDataV2().g(AESUtils.encrypt(json));
        com.join.mgps.broadcast.a.a(context);
        if (accountData == null || accountData.getUid() != accountBean.getUid()) {
            com.join.mgps.broadcast.a.b(context);
        }
        if (isTourist()) {
            return;
        }
        p0.d(context);
    }

    public void setLocalUserIcon(String str) {
        this.prefDef.localUserIcon().g(str);
    }
}
