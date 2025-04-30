package com.xinzhu.overmind.client;

import com.xinzhu.overmind.Overmind;
import java.util.Locale;
/* compiled from: StubManifest.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public static final int f63987a = 100;

    public static String a() {
        return Overmind.get().getMainAuthorityPrefix() + ".overmind.BindProvider";
    }

    public static String b() {
        return String.format(Locale.CHINA, "%s.overmind.plugin_monitor", Overmind.get().getPluginAuthorityPrefix());
    }

    public static String c(int index) {
        return String.format(Locale.CHINA, "%s.stub_content_provider_%d", Overmind.get().getPluginAuthorityPrefix(), Integer.valueOf(index));
    }

    public static String d(int vpid, boolean runWithPlugin) {
        StringBuilder sb = new StringBuilder();
        sb.append(runWithPlugin ? Overmind.getPluginPkg() : Overmind.getMainPkg());
        sb.append(":p");
        sb.append(vpid);
        return sb.toString();
    }

    public static String e(int index) {
        return String.format(Locale.CHINA, "com.xinzhu.overmind.client.stub.StubActivity$P%d", Integer.valueOf(index));
    }

    public static String f(int index) {
        return String.format(Locale.CHINA, "com.xinzhu.overmind.client.stub.StubActivityLandscape$P%d", Integer.valueOf(index));
    }

    public static String g(int index) {
        return String.format(Locale.CHINA, "%s.stub_content_provider_%d", Overmind.get().getMainAuthorityPrefix(), Integer.valueOf(index));
    }

    public static String h() {
        return Overmind.get().getMainAuthorityPrefix() + ".overmind.FileProvider";
    }

    public static String i(int index) {
        return String.format(Locale.CHINA, "com.xinzhu.overmind.client.stub.StubFloatingActivity$P%d", Integer.valueOf(index));
    }

    public static String j(int index) {
        return String.format(Locale.CHINA, "com.xinzhu.overmind.client.stub.StubFloatingActivityLandscape$P%d", Integer.valueOf(index));
    }

    public static String k(int index) {
        return String.format(Locale.CHINA, "com.xinzhu.overmind.client.stub.StubJobService$P%d", Integer.valueOf(index));
    }

    public static String l() {
        return Overmind.get().getMainAuthorityPrefix() + ".stub_receiver";
    }

    public static String m(int index) {
        return String.format(Locale.CHINA, "com.xinzhu.overmind.client.stub.StubService$P%d", Integer.valueOf(index));
    }

    public static boolean n(String msg) {
        return a().equals(msg) || msg.contains("stub_content_provider_");
    }
}
