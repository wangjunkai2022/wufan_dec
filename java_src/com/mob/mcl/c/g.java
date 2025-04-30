package com.mob.mcl.c;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static g f53212a;

    /* renamed from: b  reason: collision with root package name */
    private List<Map<String, Object>> f53213b;

    private g() {
    }

    public static g a() {
        if (f53212a == null) {
            synchronized (g.class) {
                if (f53212a == null) {
                    f53212a = new g();
                }
            }
        }
        return f53212a;
    }

    public boolean b() {
        List<Map<String, Object>> list = this.f53213b;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public List<Map<String, Object>> c() {
        return this.f53213b;
    }

    public void b(Map<String, Object> map) {
        List<Map<String, Object>> list = this.f53213b;
        if (list == null || !list.contains(map)) {
            return;
        }
        this.f53213b.remove(map);
    }

    public void a(Map<String, Object> map) {
        if (this.f53213b == null) {
            this.f53213b = new ArrayList();
        }
        this.f53213b.add(map);
    }
}
