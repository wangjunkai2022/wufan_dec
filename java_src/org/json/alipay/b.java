package org.json.alipay;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private ArrayList f73747a;

    public b() {
        this.f73747a = new ArrayList();
    }

    public b(Object obj) {
        this();
        if (!obj.getClass().isArray()) {
            throw new a("JSONArray initial value should be a string or collection or array.");
        }
        int length = Array.getLength(obj);
        for (int i2 = 0; i2 < length; i2++) {
            this.f73747a.add(Array.get(obj, i2));
        }
    }

    public b(String str) {
        this(new d(str));
    }

    public b(Collection collection) {
        this.f73747a = collection == null ? new ArrayList() : new ArrayList(collection);
    }

    public b(d dVar) {
        this();
        char c4;
        ArrayList arrayList;
        Object d4;
        char c5 = dVar.c();
        if (c5 == '[') {
            c4 = ']';
        } else if (c5 != '(') {
            throw dVar.a("A JSONArray text must start with '['");
        } else {
            c4 = ')';
        }
        if (dVar.c() == ']') {
            return;
        }
        do {
            dVar.a();
            char c6 = dVar.c();
            dVar.a();
            if (c6 == ',') {
                arrayList = this.f73747a;
                d4 = null;
            } else {
                arrayList = this.f73747a;
                d4 = dVar.d();
            }
            arrayList.add(d4);
            char c7 = dVar.c();
            if (c7 != ')') {
                if (c7 != ',' && c7 != ';') {
                    if (c7 != ']') {
                        throw dVar.a("Expected a ',' or ']'");
                    }
                }
            }
            if (c4 == c7) {
                return;
            }
            throw dVar.a("Expected a '" + new Character(c4) + "'");
        } while (dVar.c() != ']');
    }

    private String a(String str) {
        int size = this.f73747a.size();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 > 0) {
                stringBuffer.append(str);
            }
            stringBuffer.append(c.a(this.f73747a.get(i2)));
        }
        return stringBuffer.toString();
    }

    public final int a() {
        return this.f73747a.size();
    }

    public final Object a(int i2) {
        Object obj = (i2 < 0 || i2 >= this.f73747a.size()) ? null : this.f73747a.get(i2);
        if (obj != null) {
            return obj;
        }
        throw new a("JSONArray[" + i2 + "] not found.");
    }

    public String toString() {
        try {
            return "[" + a(",") + ']';
        } catch (Exception unused) {
            return null;
        }
    }
}
