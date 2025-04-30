package com.papa.sim.statistic.pref;

import android.content.Context;
import android.content.SharedPreferences;
import com.papa.sim.statistic.JsonMapper;
/* compiled from: PrefUtil.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: d  reason: collision with root package name */
    static b f56142d;

    /* renamed from: a  reason: collision with root package name */
    SharedPreferences f56143a;

    /* renamed from: b  reason: collision with root package name */
    Context f56144b;

    /* renamed from: c  reason: collision with root package name */
    private Object f56145c;

    private b(Context context) {
        this.f56144b = context;
        this.f56143a = context.getSharedPreferences("Papa_Stat_SharedPreferences", 0);
    }

    public static b j(Context context) {
        if (f56142d == null) {
            f56142d = new b(context);
        }
        return f56142d;
    }

    public void A(String str) {
        SharedPreferences.Editor edit = this.f56143a.edit();
        edit.putString("statisticGameList", str);
        edit.commit();
    }

    public void B(int i2) {
        SharedPreferences.Editor edit = this.f56143a.edit();
        edit.putInt("_home_ab_page_type", i2);
        edit.commit();
    }

    public void C(String str) {
        SharedPreferences.Editor edit = this.f56143a.edit();
        edit.putString("wufun_idfinal", str);
        edit.commit();
    }

    public void D(boolean z3) {
        SharedPreferences.Editor edit = this.f56143a.edit();
        edit.putBoolean("getIsShowDiviceDialog", z3);
        edit.commit();
    }

    public void E(a aVar) {
        SharedPreferences.Editor edit = this.f56143a.edit();
        if (aVar == null) {
            edit.putString("liveStat", "");
        } else {
            edit.putString("liveStat", JsonMapper.e().toJson(aVar));
        }
        edit.commit();
    }

    public void F(int i2) {
        SharedPreferences.Editor edit = this.f56143a.edit();
        edit.putInt("NewGBAPlugType", i2);
        edit.commit();
    }

    public void G(int i2) {
        SharedPreferences.Editor edit = this.f56143a.edit();
        edit.putInt("OldDatabaseVersion", i2);
        edit.commit();
    }

    public void H(boolean z3) {
        SharedPreferences.Editor edit = this.f56143a.edit();
        edit.putBoolean("ShowDialogNewGBAPlug", z3);
        edit.commit();
    }

    public void I(String str) {
        SharedPreferences.Editor edit = this.f56143a.edit();
        edit.putString("statisticVisit", str);
        edit.commit();
    }

    public void J(boolean z3) {
        SharedPreferences.Editor edit = this.f56143a.edit();
        edit.putBoolean("firstShowUserPermiss", z3);
        edit.commit();
    }

    public String a() {
        return this.f56143a.getString("dailyReward", "0");
    }

    public int b() {
        return this.f56143a.getInt("_detail_ab_page_type", 0);
    }

    public String c() {
        return this.f56143a.getString("EmuApkTableList", "");
    }

    public boolean d() {
        return this.f56143a.getBoolean("firstSetUserBg", true);
    }

    public boolean e() {
        return this.f56143a.getBoolean("firstSetUserCenter", true);
    }

    public boolean f() {
        return this.f56143a.getBoolean("firstSetUserIcon", true);
    }

    public String g() {
        return this.f56143a.getString("statisticGameList", "0");
    }

    public int h() {
        return this.f56143a.getInt("_home_ab_page_type", 0);
    }

    public String i() {
        return this.f56143a.getString("wufun_idfinal", "");
    }

    public boolean k() {
        return this.f56143a.getBoolean("getIsShowDiviceDialog", false);
    }

    public a l() {
        String string = this.f56143a.getString("liveStat", "");
        if (string != null) {
            try {
                if (string.equals("")) {
                    return null;
                }
                return (a) JsonMapper.e().fromJson(string, a.class);
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public int m() {
        return this.f56143a.getInt("NewGBAPlugType", 0);
    }

    public int n() {
        return this.f56143a.getInt("OldDatabaseVersion", 13);
    }

    public boolean o() {
        return this.f56143a.getBoolean("ShowDialogNewGBAPlug", false);
    }

    public String p() {
        return this.f56143a.getString("statisticVisit", "0");
    }

    public String q() {
        return this.f56143a.getString("papauuidkey", "");
    }

    public boolean r() {
        return this.f56143a.getBoolean("firstShowUserPermiss", true);
    }

    public boolean s() {
        return this.f56143a.getBoolean("actived", false);
    }

    public void t(boolean z3) {
        SharedPreferences.Editor edit = this.f56143a.edit();
        edit.putBoolean("actived", z3);
        edit.commit();
    }

    public void u(String str) {
        SharedPreferences.Editor edit = this.f56143a.edit();
        edit.putString("dailyReward", str);
        edit.commit();
    }

    public void v(int i2) {
        SharedPreferences.Editor edit = this.f56143a.edit();
        edit.putInt("_detail_ab_page_type", i2);
        edit.commit();
    }

    public void w(String str) {
        SharedPreferences.Editor edit = this.f56143a.edit();
        edit.putString("EmuApkTableList", str);
        edit.commit();
    }

    public void x(boolean z3) {
        SharedPreferences.Editor edit = this.f56143a.edit();
        edit.putBoolean("firstSetUserBg", z3);
        edit.commit();
    }

    public void y(boolean z3) {
        SharedPreferences.Editor edit = this.f56143a.edit();
        edit.putBoolean("firstSetUserCenter", z3);
        edit.commit();
    }

    public void z(boolean z3) {
        SharedPreferences.Editor edit = this.f56143a.edit();
        edit.putBoolean("firstSetUserIcon", z3);
        edit.commit();
    }
}
