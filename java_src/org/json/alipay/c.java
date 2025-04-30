package org.json.alipay;

import com.join.mgps.Util.g0;
import io.netty.util.internal.StringUtil;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes5.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f73748a = new a((byte) 0);

    /* renamed from: b  reason: collision with root package name */
    private Map f73749b;

    /* loaded from: classes5.dex */
    private static final class a {
        private a() {
        }

        /* synthetic */ a(byte b4) {
            this();
        }

        protected final Object clone() {
            return this;
        }

        public final boolean equals(Object obj) {
            return obj == null || obj == this;
        }

        public final String toString() {
            return "null";
        }
    }

    public c() {
        this.f73749b = new HashMap();
    }

    public c(String str) {
        this(new d(str));
    }

    public c(Map map) {
        this.f73749b = map == null ? new HashMap() : map;
    }

    public c(d dVar) {
        this();
        if (dVar.c() != '{') {
            throw dVar.a("A JSONObject text must begin with '{'");
        }
        while (true) {
            char c4 = dVar.c();
            if (c4 == 0) {
                throw dVar.a("A JSONObject text must end with '}'");
            }
            if (c4 == '}') {
                return;
            }
            dVar.a();
            String obj = dVar.d().toString();
            char c5 = dVar.c();
            if (c5 == '=') {
                if (dVar.b() != '>') {
                    dVar.a();
                }
            } else if (c5 != ':') {
                throw dVar.a("Expected a ':' after a key");
            }
            Object d4 = dVar.d();
            if (obj == null) {
                throw new org.json.alipay.a("Null key.");
            }
            if (d4 != null) {
                b(d4);
                this.f73749b.put(obj, d4);
            } else {
                this.f73749b.remove(obj);
            }
            char c6 = dVar.c();
            if (c6 != ',' && c6 != ';') {
                if (c6 != '}') {
                    throw dVar.a("Expected a ',' or '}'");
                }
                return;
            } else if (dVar.c() == '}') {
                return;
            } else {
                dVar.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Object obj) {
        if (obj == null || obj.equals(null)) {
            return "null";
        }
        if (!(obj instanceof Number)) {
            return ((obj instanceof Boolean) || (obj instanceof c) || (obj instanceof b)) ? obj.toString() : obj instanceof Map ? new c((Map) obj).toString() : obj instanceof Collection ? new b((Collection) obj).toString() : obj.getClass().isArray() ? new b(obj).toString() : c(obj.toString());
        }
        Number number = (Number) obj;
        b(number);
        String obj2 = number.toString();
        if (obj2.indexOf(46) <= 0 || obj2.indexOf(101) >= 0 || obj2.indexOf(69) >= 0) {
            return obj2;
        }
        while (obj2.endsWith("0")) {
            obj2 = obj2.substring(0, obj2.length() - 1);
        }
        return obj2.endsWith(g0.f27568a) ? obj2.substring(0, obj2.length() - 1) : obj2;
    }

    private static void b(Object obj) {
        if (obj != null) {
            if (obj instanceof Double) {
                Double d4 = (Double) obj;
                if (d4.isInfinite() || d4.isNaN()) {
                    throw new org.json.alipay.a("JSON does not allow non-finite numbers.");
                }
            } else if (obj instanceof Float) {
                Float f4 = (Float) obj;
                if (f4.isInfinite() || f4.isNaN()) {
                    throw new org.json.alipay.a("JSON does not allow non-finite numbers.");
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0084, code lost:
        if (r4 == '<') goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String c(java.lang.String r8) {
        /*
            if (r8 == 0) goto L9f
            int r0 = r8.length()
            if (r0 != 0) goto La
            goto L9f
        La:
            int r0 = r8.length()
            java.lang.StringBuffer r1 = new java.lang.StringBuffer
            int r2 = r0 + 4
            r1.<init>(r2)
            r2 = 34
            r1.append(r2)
            r3 = 0
            r4 = 0
        L1c:
            if (r3 >= r0) goto L97
            char r5 = r8.charAt(r3)
            r6 = 12
            if (r5 == r6) goto L90
            r6 = 13
            if (r5 == r6) goto L8d
            r6 = 92
            if (r5 == r2) goto L86
            r7 = 47
            if (r5 == r7) goto L82
            if (r5 == r6) goto L86
            switch(r5) {
                case 8: goto L7c;
                case 9: goto L79;
                case 10: goto L76;
                default: goto L37;
            }
        L37:
            r4 = 32
            if (r5 < r4) goto L4b
            r4 = 128(0x80, float:1.794E-43)
            if (r5 < r4) goto L43
            r4 = 160(0xa0, float:2.24E-43)
            if (r5 < r4) goto L4b
        L43:
            r4 = 8192(0x2000, float:1.14794E-41)
            if (r5 < r4) goto L89
            r4 = 8448(0x2100, float:1.1838E-41)
            if (r5 >= r4) goto L89
        L4b:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r6 = "000"
            r4.<init>(r6)
            java.lang.String r6 = java.lang.Integer.toHexString(r5)
            r4.append(r6)
            java.lang.String r4 = r4.toString()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r7 = "\\u"
            r6.<init>(r7)
            int r7 = r4.length()
            int r7 = r7 + (-4)
            java.lang.String r4 = r4.substring(r7)
            r6.append(r4)
            java.lang.String r4 = r6.toString()
            goto L7e
        L76:
            java.lang.String r4 = "\\n"
            goto L7e
        L79:
            java.lang.String r4 = "\\t"
            goto L7e
        L7c:
            java.lang.String r4 = "\\b"
        L7e:
            r1.append(r4)
            goto L93
        L82:
            r7 = 60
            if (r4 != r7) goto L89
        L86:
            r1.append(r6)
        L89:
            r1.append(r5)
            goto L93
        L8d:
            java.lang.String r4 = "\\r"
            goto L7e
        L90:
            java.lang.String r4 = "\\f"
            goto L7e
        L93:
            int r3 = r3 + 1
            r4 = r5
            goto L1c
        L97:
            r1.append(r2)
            java.lang.String r8 = r1.toString()
            return r8
        L9f:
            java.lang.String r8 = "\"\""
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.json.alipay.c.c(java.lang.String):java.lang.String");
    }

    public final Object a(String str) {
        Object obj = str == null ? null : this.f73749b.get(str);
        if (obj != null) {
            return obj;
        }
        throw new org.json.alipay.a("JSONObject[" + c(str) + "] not found.");
    }

    public final Iterator a() {
        return this.f73749b.keySet().iterator();
    }

    public final boolean b(String str) {
        return this.f73749b.containsKey(str);
    }

    public String toString() {
        try {
            Iterator a4 = a();
            StringBuffer stringBuffer = new StringBuffer("{");
            while (a4.hasNext()) {
                if (stringBuffer.length() > 1) {
                    stringBuffer.append(StringUtil.COMMA);
                }
                Object next = a4.next();
                stringBuffer.append(c(next.toString()));
                stringBuffer.append(':');
                stringBuffer.append(a(this.f73749b.get(next)));
            }
            stringBuffer.append('}');
            return stringBuffer.toString();
        } catch (Exception unused) {
            return null;
        }
    }
}
