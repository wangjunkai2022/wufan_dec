package com.mob.commons.cc;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.io.File;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class v {

    /* renamed from: a  reason: collision with root package name */
    static final HashMap<String, Class<?>> f52938a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<x> f52939b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList<Object> f52940c;

    public v(ArrayList<x> arrayList, ArrayList<Object> arrayList2) {
        this.f52939b = arrayList;
        this.f52940c = arrayList2;
    }

    public void a(HashMap<String, Object> hashMap) throws Throwable {
        r rVar = new r(hashMap);
        a(rVar);
        a(0, this.f52939b.size(), rVar, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
        r0.f52974d = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r4, int r5, com.mob.commons.cc.r r6, java.util.List<java.lang.Object> r7) throws java.lang.Throwable {
        /*
            r3 = this;
            com.mob.commons.cc.x$a r0 = new com.mob.commons.cc.x$a
            r0.<init>()
            r0.f52971a = r4
            r0.f52972b = r6
            r0.f52973c = r7
            java.util.ArrayList<com.mob.commons.cc.x> r4 = r3.f52939b
            r0.f52976f = r4
            java.util.ArrayList<java.lang.Object> r4 = r3.f52940c
            r0.f52977g = r4
        L13:
            int r4 = r0.f52971a     // Catch: java.lang.Throwable -> L4d
            if (r4 >= r5) goto L39
            boolean r4 = r6.f()     // Catch: java.lang.Throwable -> L4d
            r1 = 1
            if (r4 == 0) goto L21
            r0.f52974d = r1     // Catch: java.lang.Throwable -> L4d
            goto L39
        L21:
            java.util.ArrayList<com.mob.commons.cc.x> r4 = r3.f52939b     // Catch: java.lang.Throwable -> L4d
            int r2 = r0.f52971a     // Catch: java.lang.Throwable -> L4d
            java.lang.Object r4 = r4.get(r2)     // Catch: java.lang.Throwable -> L4d
            com.mob.commons.cc.x r4 = (com.mob.commons.cc.x) r4     // Catch: java.lang.Throwable -> L4d
            r4.a(r0)     // Catch: java.lang.Throwable -> L4d
            boolean r4 = r0.f52975e     // Catch: java.lang.Throwable -> L4d
            if (r4 == 0) goto L33
            goto L39
        L33:
            int r4 = r0.f52971a     // Catch: java.lang.Throwable -> L4d
            int r4 = r4 + r1
            r0.f52971a = r4     // Catch: java.lang.Throwable -> L4d
            goto L13
        L39:
            boolean r4 = r0.f52974d
            if (r4 != 0) goto L4c
            int r4 = r6.d()
            if (r4 <= 0) goto L4c
            if (r7 == 0) goto L4c
            java.lang.Object r4 = r6.a()     // Catch: java.lang.Throwable -> L4c
            r7.add(r4)     // Catch: java.lang.Throwable -> L4c
        L4c:
            return
        L4d:
            r4 = move-exception
            boolean r5 = r4 instanceof com.mob.commons.cc.u
            if (r5 == 0) goto L6a
            java.lang.String r5 = r4.getMessage()
            if (r5 != 0) goto L61
            java.lang.Class r5 = r4.getClass()
            java.lang.String r5 = r5.getSimpleName()
            goto L65
        L61:
            java.lang.String r5 = r4.getMessage()
        L65:
            java.lang.Throwable r4 = r4.getCause()
            goto L8e
        L6a:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Suba Runtime Error: "
            r5.append(r6)
            java.lang.String r6 = r4.getMessage()
            if (r6 != 0) goto L83
            java.lang.Class r6 = r4.getClass()
            java.lang.String r6 = r6.getSimpleName()
            goto L87
        L83:
            java.lang.String r6 = r4.getMessage()
        L87:
            r5.append(r6)
            java.lang.String r5 = r5.toString()
        L8e:
            java.util.ArrayList<com.mob.commons.cc.x> r6 = r3.f52939b
            int r7 = r0.f52971a
            java.lang.Object r6 = r6.get(r7)
            com.mob.commons.cc.x r6 = (com.mob.commons.cc.x) r6
            java.lang.String r6 = r6.f52951b
            java.util.ArrayList<com.mob.commons.cc.x> r7 = r3.f52939b
            int r0 = r0.f52971a
            java.lang.Object r7 = r7.get(r0)
            com.mob.commons.cc.x r7 = (com.mob.commons.cc.x) r7
            int r7 = r7.f52952c
            com.mob.commons.cc.u r0 = new com.mob.commons.cc.u
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r5)
            java.lang.String r5 = "\r\n\tat "
            r1.append(r5)
            r1.append(r6)
            java.lang.String r5 = " ("
            r1.append(r5)
            r1.append(r7)
            java.lang.String r5 = ")"
            r1.append(r5)
            java.lang.String r5 = r1.toString()
            r0.<init>(r5, r4)
            goto Lce
        Lcd:
            throw r0
        Lce:
            goto Lcd
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.commons.cc.v.a(int, int, com.mob.commons.cc.r, java.util.List):void");
    }

    private void a(r rVar) {
        rVar.a("Object", Object.class);
        rVar.a("Class", Class.class);
        rVar.a("Method", Method.class);
        rVar.a("String", String.class);
        rVar.a("Thread", Thread.class);
        rVar.a("Runnable", Runnable.class);
        rVar.a("System", System.class);
        rVar.a("File", File.class);
        rVar.a("URL", URL.class);
        rVar.a("Double", Double.class);
        rVar.a("Float", Float.class);
        rVar.a("Long", Long.class);
        rVar.a("Integer", Integer.class);
        rVar.a("Short", Short.class);
        rVar.a("Byte", Byte.class);
        rVar.a("Number", Number.class);
        rVar.a("Character", Character.class);
        rVar.a("Boolean", Boolean.class);
        rVar.a(MethodReflectParams.DOUBLE, Double.TYPE);
        rVar.a("float", Float.TYPE);
        rVar.a(MethodReflectParams.LONG, Long.TYPE);
        rVar.a(MethodReflectParams.INT, Integer.TYPE);
        rVar.a(MethodReflectParams.SHORT, Short.TYPE);
        rVar.a(MethodReflectParams.BYTE, Byte.TYPE);
        rVar.a(MethodReflectParams.CHAR, Character.TYPE);
        rVar.a("boolean", Boolean.TYPE);
        rVar.a("bigInt", BigInteger.class);
        rVar.a("BigInteger", BigInteger.class);
        rVar.a("bigDec", BigDecimal.class);
        rVar.a("BigDecimal", BigDecimal.class);
        rVar.a("List", List.class);
        rVar.a("Map", Map.class);
        rVar.a("Method", y.class);
        rVar.a("Function", y.class);
        rVar.a("fun", y.class);
        rVar.a("Range", z.class);
        rVar.a("Array", Array.class);
        rVar.a("Suba", w.class);
        rVar.a("VM", w.class);
        for (Map.Entry<String, Class<?>> entry : f52938a.entrySet()) {
            rVar.a(entry.getKey(), entry.getValue());
        }
    }

    public ArrayList<x> a() {
        return this.f52939b;
    }
}
