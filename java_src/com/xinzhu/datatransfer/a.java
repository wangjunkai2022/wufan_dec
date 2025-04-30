package com.xinzhu.datatransfer;

import android.util.ArrayMap;
import com.xinzhu.overmind.utils.c;
import com.xinzhu.overmind.utils.j;
import java.io.File;
import java.io.IOException;
import java.util.Map;
/* compiled from: DataTransferHelper.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static String f62318a = "a";

    /* renamed from: b  reason: collision with root package name */
    static ArrayMap<File, File> f62319b = new ArrayMap<>();

    /* renamed from: c  reason: collision with root package name */
    static c<File> f62320c = new c<>();

    static {
        f62319b.put(b.c(), com.xinzhu.overmind.a.D());
        f62320c.add(b.b());
        f62320c.add(b.a());
        f62320c.add(b.c());
    }

    public static void a() {
        if (b.a().exists()) {
            com.xinzhu.overmind.b.l(f62318a, "Need Data Transfer, do it.");
            for (Map.Entry<File, File> entry : f62319b.entrySet()) {
                File key = entry.getKey();
                File value = entry.getValue();
                if (key.exists()) {
                    try {
                        j.g(key, value);
                        j.j(key);
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
            }
            n2.a.a(false);
            j.j(b.a());
        }
    }

    public static void b() {
        if (b.a().exists()) {
            com.xinzhu.overmind.b.l(f62318a, "Need Data Transfer for main package, do it.");
            for (Map.Entry<File, File> entry : f62319b.entrySet()) {
                File key = entry.getKey();
                File value = entry.getValue();
                if (key.exists()) {
                    try {
                        j.g(key, value);
                        j.j(key);
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
            }
            n2.a.a(true);
        }
    }
}
