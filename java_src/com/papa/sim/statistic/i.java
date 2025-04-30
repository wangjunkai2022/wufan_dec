package com.papa.sim.statistic;

import java.io.PrintStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: LogUtil.java */
/* loaded from: classes4.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    public static final String f55534a = System.getProperty("line.separator");

    public static void a(String str, String str2, String str3) {
        String jSONArray;
        if (str2.startsWith("{")) {
            jSONArray = new JSONObject(str2).toString(4);
        } else {
            if (str2.startsWith("[")) {
                jSONArray = new JSONArray(str2).toString(4);
            }
            StringBuilder sb = new StringBuilder();
            String str4 = f55534a;
            sb.append(str4);
            sb.append("╔═══════════════════════════════════════════════════════════════════════════════════════");
            sb.append(str4);
            sb.append(str3);
            sb.append(str4);
            sb.append(str2);
            sb.append(str4);
            sb.append("╚═══════════════════════════════════════════════════════════════════════════════════════");
            sb.append(str4);
            String sb2 = sb.toString();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("║ ");
            sb3.append(sb2);
        }
        str2 = jSONArray;
        StringBuilder sb4 = new StringBuilder();
        String str42 = f55534a;
        sb4.append(str42);
        sb4.append("╔═══════════════════════════════════════════════════════════════════════════════════════");
        sb4.append(str42);
        sb4.append(str3);
        sb4.append(str42);
        sb4.append(str2);
        sb4.append(str42);
        sb4.append("╚═══════════════════════════════════════════════════════════════════════════════════════");
        sb4.append(str42);
        String sb22 = sb4.toString();
        StringBuilder sb32 = new StringBuilder();
        sb32.append("║ ");
        sb32.append(sb22);
    }

    public static void b(String str, boolean z3) {
    }

    public static void c(String str, String str2, String str3) {
        try {
            if (str2.startsWith("{")) {
                str2 = new JSONObject(str2).toString(4);
            } else if (str2.startsWith("[")) {
                str2 = new JSONArray(str2).toString(4);
            }
        } catch (JSONException unused) {
        }
        StringBuilder sb = new StringBuilder();
        String str4 = f55534a;
        sb.append(str4);
        sb.append("╔═══════════════════════════════════════════════════════════════════════════════════════");
        sb.append(str4);
        sb.append(str3);
        sb.append(str4);
        sb.append(str2);
        sb.append(str4);
        sb.append("╚═══════════════════════════════════════════════════════════════════════════════════════");
        sb.append(str4);
        String sb2 = sb.toString();
        PrintStream printStream = System.out;
        printStream.println(str + sb2);
    }
}
