package com.join.mgps.pref;

import android.content.Context;
import android.content.SharedPreferences;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.efs.sdk.base.core.util.PackageUtil;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.u;
import com.join.mgps.activity.login.LoginCfgsBean;
import com.join.mgps.dto.DownloadCfg;
import com.join.mgps.dto.HomeViewSwich;
import com.papa.sim.statistic.JsonMapper;
/* compiled from: PrefUtil.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: c  reason: collision with root package name */
    static h f51107c;

    /* renamed from: a  reason: collision with root package name */
    SharedPreferences f51108a;

    /* renamed from: b  reason: collision with root package name */
    Context f51109b;

    private h(Context context) {
        this.f51109b = context;
        this.f51108a = context.getSharedPreferences("Papa_Stat_SharedPreferences", 0);
    }

    public static h n(Context context) {
        if (f51107c == null) {
            f51107c = new h(context);
        }
        return f51107c;
    }

    public boolean A() {
        return this.f51108a.getBoolean("refreshForumIndexWhenResume", false);
    }

    public String B() {
        return this.f51108a.getString("RequestHeaders", "");
    }

    public boolean C() {
        return this.f51108a.getBoolean("ShowDialogNewGBAPlug", false);
    }

    public boolean D() {
        return this.f51108a.getBoolean("showForumLabelTip", true);
    }

    public boolean E() {
        return this.f51108a.getBoolean("showPostHelpCoastTip", true);
    }

    public String F() {
        return this.f51108a.getString("StartGameGuessLikeNoDataList", "");
    }

    public String G() {
        return this.f51108a.getString("statisticVisit", "0");
    }

    public String H() {
        return this.f51108a.getString("papauuidkey", "");
    }

    public long I() {
        return this.f51108a.getLong("firstInstall36Time", 0L);
    }

    public LoginCfgsBean J() {
        LoginCfgsBean loginCfgsBean = new LoginCfgsBean();
        try {
            String string = this.f51108a.getString("loginCfgs", "");
            return d2.i(string) ? (LoginCfgsBean) JsonMapper.e().fromJson(string, LoginCfgsBean.class) : loginCfgsBean;
        } catch (Exception e4) {
            e4.printStackTrace();
            return loginCfgsBean;
        }
    }

    public String K() {
        return this.f51108a.getString("shareGameTimeAndTimes", "");
    }

    public boolean L() {
        return this.f51108a.getBoolean("actived", false);
    }

    public void M(LoginCfgsBean loginCfgsBean) {
        if (loginCfgsBean != null) {
            String json = JsonMapper.e().toJson(loginCfgsBean);
            SharedPreferences.Editor edit = this.f51108a.edit();
            edit.putString("loginCfgs", json);
            edit.commit();
        }
    }

    public void N(HomeViewSwich homeViewSwich) {
        if (homeViewSwich != null) {
            String json = JsonMapper.e().toJson(homeViewSwich);
            SharedPreferences.Editor edit = this.f51108a.edit();
            edit.putString("wufunPlugsdata", json);
            edit.commit();
        }
    }

    public void O(boolean z3) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putBoolean("actived", z3);
        edit.commit();
    }

    public void P(boolean z3) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putBoolean("autoPlayVideoOnWifi", z3);
        edit.commit();
    }

    public void Q(String str) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putString("baiduAdData", str);
        edit.commit();
    }

    public void R(String str) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putString("DNSHttpUrl", str);
        edit.commit();
    }

    public void S(String str) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putString("dailyReward", str);
        edit.commit();
    }

    public void T(int i2) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putInt("DefautVideoPlayType", i2);
        edit.commit();
    }

    public void U(boolean z3) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putBoolean("DownZipNoticeIsShow", z3);
        edit.commit();
    }

    public void V(String str) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putString(TTDownloadField.TT_DOWNLOAD_PATH, str);
        edit.commit();
        u.f27846e = str;
    }

    public void W(String str) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putString("downloadPathAPKROM", str);
        edit.commit();
    }

    public void X(String str) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putString("EmuApkTableList", str);
        edit.commit();
    }

    public void Y(String str) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putString("everdayLogin", str);
        edit.commit();
    }

    public void Z(boolean z3) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putBoolean("firstSetUserIcon", z3);
        edit.commit();
    }

    public boolean a() {
        return this.f51108a.getBoolean("autoPlayVideoOnWifi", true);
    }

    public void a0(boolean z3) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putBoolean("firstSetUserIcon", z3);
        edit.commit();
    }

    public String b() {
        return this.f51108a.getString("baiduAdData", "");
    }

    public void b0(String str) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putString("statisticGameList", str);
        edit.commit();
    }

    public String c() {
        return this.f51108a.getString("DNSHttpUrl", "");
    }

    public void c0(com.papa.sim.statistic.pref.a aVar) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        if (aVar == null) {
            edit.putString("liveStat", "");
        } else {
            edit.putString("liveStat", JsonMapper.e().toJson(aVar));
        }
        edit.commit();
    }

    public String d() {
        return this.f51108a.getString("dailyReward", "0");
    }

    public void d0(int i2) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putInt("NewGBAPlugType", i2);
        edit.commit();
    }

    public int e() {
        return this.f51108a.getInt("DefautVideoPlayType", 0);
    }

    public void e0(boolean z3) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putBoolean("isGet", z3);
        edit.commit();
    }

    public boolean f() {
        return this.f51108a.getBoolean("DownZipNoticeIsShow", true);
    }

    public void f0(boolean z3) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putBoolean("isGetLike", z3);
        edit.commit();
    }

    public String g() {
        return this.f51108a.getString(TTDownloadField.TT_DOWNLOAD_PATH, "");
    }

    public void g0(boolean z3) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putBoolean("isGetReplay", z3);
        edit.commit();
    }

    public String h() {
        return this.f51108a.getString("downloadPathAPKROM", "");
    }

    public void h0(boolean z3) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putBoolean("NoticeIsRemind", z3);
        edit.commit();
    }

    public String i() {
        return this.f51108a.getString("EmuApkTableList", "");
    }

    public void i0(int i2) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putInt("OldDatabaseVersion", i2);
        edit.commit();
    }

    public String j() {
        return this.f51108a.getString("everdayLogin", "");
    }

    public void j0(boolean z3) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putBoolean("PlugUpdateNoticeShow", z3);
        edit.commit();
    }

    public boolean k() {
        return this.f51108a.getBoolean("firstSetUserIcon", true);
    }

    public void k0(boolean z3) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putBoolean("PushAdSwitch", z3);
        edit.commit();
    }

    public boolean l() {
        return this.f51108a.getBoolean("firstSetUserIcon", true);
    }

    public void l0(String str) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putString("QdAdIdConfig" + PackageUtil.getAppVersionName(this.f51109b), str);
        edit.commit();
    }

    public String m() {
        return this.f51108a.getString("statisticGameList", "0");
    }

    public void m0(String str) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putString("QdAdIdData" + PackageUtil.getAppVersionName(this.f51109b), str);
        edit.commit();
    }

    public void n0(int i2) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putInt("RecomendVideoPlayType", i2);
        edit.commit();
    }

    public com.papa.sim.statistic.pref.a o() {
        String string = this.f51108a.getString("liveStat", "");
        if (string != null) {
            try {
                if (string.equals("")) {
                    return null;
                }
                return (com.papa.sim.statistic.pref.a) JsonMapper.e().fromJson(string, com.papa.sim.statistic.pref.a.class);
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public void o0(boolean z3) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putBoolean("refreshForumIndexWhenResume", z3);
        edit.commit();
    }

    public int p() {
        return this.f51108a.getInt("NewGBAPlugType", 0);
    }

    public void p0(String str) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putString("RequestHeaders", str);
        edit.commit();
    }

    public boolean q() {
        return this.f51108a.getBoolean("isGet", true);
    }

    public void q0(boolean z3) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putBoolean("ShowDialogNewGBAPlug", z3);
        edit.commit();
    }

    public boolean r() {
        return this.f51108a.getBoolean("isGetLike", true);
    }

    public void r0(boolean z3) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putBoolean("showForumLabelTip", z3);
        edit.commit();
    }

    public boolean s() {
        return this.f51108a.getBoolean("isGetReplay", true);
    }

    public void s0(boolean z3) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putBoolean("showInstallAppTotice", z3);
        edit.commit();
    }

    public boolean t() {
        return this.f51108a.getBoolean("NoticeIsRemind", true);
    }

    public void t0(boolean z3) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putBoolean("showPostHelpCoastTip", z3);
        edit.commit();
    }

    public int u() {
        return this.f51108a.getInt("OldDatabaseVersion", 13);
    }

    public void u0(String str) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putString("StartGameGuessLikeNoDataList", str);
        edit.commit();
    }

    public boolean v() {
        return this.f51108a.getBoolean("PlugUpdateNoticeShow", true);
    }

    public void v0(String str) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putString("statisticVisit", str);
        edit.commit();
    }

    public HomeViewSwich w() {
        HomeViewSwich homeViewSwich = new HomeViewSwich();
        homeViewSwich.setDown_load_cfg_net_game_speed_limit(new DownloadCfg("0", "0"));
        homeViewSwich.setDown_load_cfg_simulator_speed_limit(new DownloadCfg("1", "0"));
        homeViewSwich.setDown_load_cfg_stand_alone_speed_limit(new DownloadCfg("1", "0"));
        homeViewSwich.setDown_load_size(new DownloadCfg("0", "500"));
        homeViewSwich.setDown_load_speed_limit(new DownloadCfg("0", "300"));
        homeViewSwich.setDown_load_unrestricted_speed(new DownloadCfg("0", "1"));
        try {
            String string = this.f51108a.getString("wufunPlugsdata", "");
            return d2.i(string) ? (HomeViewSwich) JsonMapper.e().fromJson(string, HomeViewSwich.class) : homeViewSwich;
        } catch (Exception e4) {
            e4.printStackTrace();
            return homeViewSwich;
        }
    }

    public void w0(String str) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putString("papauuidkey", str);
        edit.commit();
    }

    public boolean x() {
        return this.f51108a.getBoolean("PushAdSwitch", true);
    }

    public void x0(long j4) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putLong("firstInstall36Time", j4);
        edit.commit();
    }

    public String y() {
        SharedPreferences sharedPreferences = this.f51108a;
        return sharedPreferences.getString("QdAdIdData" + PackageUtil.getAppVersionName(this.f51109b), "");
    }

    public void y0(String str) {
        SharedPreferences.Editor edit = this.f51108a.edit();
        edit.putString("shareGameTimeAndTimes", str);
        edit.commit();
    }

    public int z() {
        return this.f51108a.getInt("RecomendVideoPlayType", 1);
    }

    public boolean z0() {
        return this.f51108a.getBoolean("showInstallAppTotice", false);
    }
}
