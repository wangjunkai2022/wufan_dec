package com.join.mgps.Util;

import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
/* compiled from: BuildProperties.java */
/* loaded from: classes3.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private final Properties f27682a;

    private l() throws IOException {
        FileInputStream fileInputStream = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
        Properties properties = new Properties();
        this.f27682a = properties;
        properties.load(fileInputStream);
        fileInputStream.close();
    }

    public static l i() throws IOException {
        return new l();
    }

    public boolean a(Object obj) {
        return this.f27682a.containsKey(obj);
    }

    public boolean b(Object obj) {
        return this.f27682a.containsValue(obj);
    }

    public Set<Map.Entry<Object, Object>> c() {
        return this.f27682a.entrySet();
    }

    public String d(String str) {
        return this.f27682a.getProperty(str);
    }

    public String e(String str, String str2) {
        return this.f27682a.getProperty(str, str2);
    }

    public boolean f() {
        return this.f27682a.isEmpty();
    }

    public Set<Object> g() {
        return this.f27682a.keySet();
    }

    public Enumeration<Object> h() {
        return this.f27682a.keys();
    }

    public int j() {
        return this.f27682a.size();
    }

    public Collection<Object> k() {
        return this.f27682a.values();
    }
}
