package org.jboss.netty.util;

import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Objects;
/* compiled from: CharsetUtil.java */
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f73613a = Charset.forName("UTF-16");

    /* renamed from: b  reason: collision with root package name */
    public static final Charset f73614b = Charset.forName("UTF-16BE");

    /* renamed from: c  reason: collision with root package name */
    public static final Charset f73615c = Charset.forName("UTF-16LE");

    /* renamed from: d  reason: collision with root package name */
    public static final Charset f73616d = Charset.forName("UTF-8");

    /* renamed from: e  reason: collision with root package name */
    public static final Charset f73617e = Charset.forName("ISO-8859-1");

    /* renamed from: f  reason: collision with root package name */
    public static final Charset f73618f = Charset.forName(com.alipay.security.mobile.module.commonutils.crypto.a.f9882b);

    /* renamed from: g  reason: collision with root package name */
    private static final ThreadLocal<Map<Charset, CharsetEncoder>> f73619g = new C0494a();

    /* renamed from: h  reason: collision with root package name */
    private static final ThreadLocal<Map<Charset, CharsetDecoder>> f73620h = new b();

    /* compiled from: CharsetUtil.java */
    /* renamed from: org.jboss.netty.util.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static class C0494a extends ThreadLocal<Map<Charset, CharsetEncoder>> {
        C0494a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public Map<Charset, CharsetEncoder> initialValue() {
            return new IdentityHashMap();
        }
    }

    /* compiled from: CharsetUtil.java */
    /* loaded from: classes5.dex */
    static class b extends ThreadLocal<Map<Charset, CharsetDecoder>> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public Map<Charset, CharsetDecoder> initialValue() {
            return new IdentityHashMap();
        }
    }

    private a() {
    }

    public static CharsetDecoder a(Charset charset) {
        Objects.requireNonNull(charset, "charset");
        Map<Charset, CharsetDecoder> map = f73620h.get();
        CharsetDecoder charsetDecoder = map.get(charset);
        if (charsetDecoder != null) {
            charsetDecoder.reset();
            charsetDecoder.onMalformedInput(CodingErrorAction.REPLACE);
            charsetDecoder.onUnmappableCharacter(CodingErrorAction.REPLACE);
            return charsetDecoder;
        }
        CharsetDecoder newDecoder = charset.newDecoder();
        newDecoder.onMalformedInput(CodingErrorAction.REPLACE);
        newDecoder.onUnmappableCharacter(CodingErrorAction.REPLACE);
        map.put(charset, newDecoder);
        return newDecoder;
    }

    public static CharsetEncoder b(Charset charset) {
        Objects.requireNonNull(charset, "charset");
        Map<Charset, CharsetEncoder> map = f73619g.get();
        CharsetEncoder charsetEncoder = map.get(charset);
        if (charsetEncoder != null) {
            charsetEncoder.reset();
            charsetEncoder.onMalformedInput(CodingErrorAction.REPLACE);
            charsetEncoder.onUnmappableCharacter(CodingErrorAction.REPLACE);
            return charsetEncoder;
        }
        CharsetEncoder newEncoder = charset.newEncoder();
        newEncoder.onMalformedInput(CodingErrorAction.REPLACE);
        newEncoder.onUnmappableCharacter(CodingErrorAction.REPLACE);
        map.put(charset, newEncoder);
        return newEncoder;
    }
}
