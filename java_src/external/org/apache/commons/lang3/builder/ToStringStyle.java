package external.org.apache.commons.lang3.builder;

import com.j256.ormlite.stmt.query.SimpleComparison;
import external.org.apache.commons.lang3.ObjectUtils;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes3.dex */
public abstract class ToStringStyle implements Serializable {
    private static final long serialVersionUID = -2587890625525655916L;

    /* renamed from: u  reason: collision with root package name */
    public static final ToStringStyle f65319u = new DefaultToStringStyle();

    /* renamed from: v  reason: collision with root package name */
    public static final ToStringStyle f65320v = new MultiLineToStringStyle();

    /* renamed from: w  reason: collision with root package name */
    public static final ToStringStyle f65321w = new NoFieldNameToStringStyle();

    /* renamed from: x  reason: collision with root package name */
    public static final ToStringStyle f65322x = new ShortPrefixToStringStyle();

    /* renamed from: y  reason: collision with root package name */
    public static final ToStringStyle f65323y = new SimpleToStringStyle();

    /* renamed from: z  reason: collision with root package name */
    private static final ThreadLocal<WeakHashMap<Object, Object>> f65324z = new ThreadLocal<>();

    /* renamed from: a  reason: collision with root package name */
    private boolean f65325a = true;

    /* renamed from: b  reason: collision with root package name */
    private boolean f65326b = true;

    /* renamed from: c  reason: collision with root package name */
    private boolean f65327c = false;

    /* renamed from: d  reason: collision with root package name */
    private boolean f65328d = true;

    /* renamed from: e  reason: collision with root package name */
    private String f65329e = "[";

    /* renamed from: f  reason: collision with root package name */
    private String f65330f = "]";

    /* renamed from: g  reason: collision with root package name */
    private String f65331g = SimpleComparison.EQUAL_TO_OPERATION;

    /* renamed from: h  reason: collision with root package name */
    private boolean f65332h = false;

    /* renamed from: i  reason: collision with root package name */
    private boolean f65333i = false;

    /* renamed from: j  reason: collision with root package name */
    private String f65334j = ",";

    /* renamed from: k  reason: collision with root package name */
    private String f65335k = "{";

    /* renamed from: l  reason: collision with root package name */
    private String f65336l = ",";

    /* renamed from: m  reason: collision with root package name */
    private boolean f65337m = true;

    /* renamed from: n  reason: collision with root package name */
    private String f65338n = "}";

    /* renamed from: o  reason: collision with root package name */
    private boolean f65339o = true;

    /* renamed from: p  reason: collision with root package name */
    private String f65340p = "<null>";

    /* renamed from: q  reason: collision with root package name */
    private String f65341q = "<size=";

    /* renamed from: r  reason: collision with root package name */
    private String f65342r = SimpleComparison.GREATER_THAN_OPERATION;

    /* renamed from: s  reason: collision with root package name */
    private String f65343s = SimpleComparison.LESS_THAN_OPERATION;

    /* renamed from: t  reason: collision with root package name */
    private String f65344t = SimpleComparison.GREATER_THAN_OPERATION;

    /* loaded from: classes3.dex */
    private static final class DefaultToStringStyle extends ToStringStyle {
        private static final long serialVersionUID = 1;

        DefaultToStringStyle() {
        }

        private Object readResolve() {
            return ToStringStyle.f65319u;
        }
    }

    /* loaded from: classes3.dex */
    private static final class MultiLineToStringStyle extends ToStringStyle {
        private static final long serialVersionUID = 1;

        MultiLineToStringStyle() {
            R0("[");
            StringBuilder sb = new StringBuilder();
            String str = external.org.apache.commons.lang3.f.L;
            sb.append(str);
            sb.append("  ");
            U0(sb.toString());
            W0(true);
            Q0(str + "]");
        }

        private Object readResolve() {
            return ToStringStyle.f65320v;
        }
    }

    /* loaded from: classes3.dex */
    private static final class NoFieldNameToStringStyle extends ToStringStyle {
        private static final long serialVersionUID = 1;

        NoFieldNameToStringStyle() {
            d1(false);
        }

        private Object readResolve() {
            return ToStringStyle.f65321w;
        }
    }

    /* loaded from: classes3.dex */
    private static final class ShortPrefixToStringStyle extends ToStringStyle {
        private static final long serialVersionUID = 1;

        ShortPrefixToStringStyle() {
            f1(true);
            e1(false);
        }

        private Object readResolve() {
            return ToStringStyle.f65322x;
        }
    }

    /* loaded from: classes3.dex */
    private static final class SimpleToStringStyle extends ToStringStyle {
        private static final long serialVersionUID = 1;

        SimpleToStringStyle() {
            c1(false);
            e1(false);
            d1(false);
            R0("");
            Q0("");
        }

        private Object readResolve() {
            return ToStringStyle.f65323y;
        }
    }

    protected ToStringStyle() {
    }

    static boolean E0(Object value) {
        Map<Object, Object> t02 = t0();
        return t02 != null && t02.containsKey(value);
    }

    static void K0(Object value) {
        if (value != null) {
            if (t0() == null) {
                f65324z.set(new WeakHashMap<>());
            }
            t0().put(value, null);
        }
    }

    static void g1(Object value) {
        Map<Object, Object> t02;
        if (value == null || (t02 = t0()) == null) {
            return;
        }
        t02.remove(value);
        if (t02.isEmpty()) {
            f65324z.remove();
        }
    }

    static Map<Object, Object> t0() {
        return f65324z.get();
    }

    protected void A(StringBuffer buffer, String fieldName, int value) {
        buffer.append(value);
    }

    protected boolean A0() {
        return this.f65339o;
    }

    protected void B(StringBuffer buffer, String fieldName, long value) {
        buffer.append(value);
    }

    protected boolean B0() {
        return this.f65333i;
    }

    protected void C(StringBuffer buffer, String fieldName, Object value) {
        buffer.append(value);
    }

    protected boolean C0() {
        return this.f65332h;
    }

    protected void D(StringBuffer buffer, String fieldName, Collection<?> coll) {
        buffer.append(coll);
    }

    protected boolean D0(Boolean fullDetailRequest) {
        if (fullDetailRequest == null) {
            return this.f65339o;
        }
        return fullDetailRequest.booleanValue();
    }

    protected void E(StringBuffer buffer, String fieldName, Map<?, ?> map) {
        buffer.append(map);
    }

    protected void F(StringBuffer buffer, String fieldName, short value) {
        buffer.append((int) value);
    }

    protected boolean F0() {
        return this.f65326b;
    }

    protected void G(StringBuffer buffer, String fieldName, boolean value) {
        buffer.append(value);
    }

    protected boolean G0() {
        return this.f65325a;
    }

    protected void H(StringBuffer buffer, String fieldName, byte[] array) {
        buffer.append(this.f65335k);
        for (int i2 = 0; i2 < array.length; i2++) {
            if (i2 > 0) {
                buffer.append(this.f65336l);
            }
            w(buffer, fieldName, array[i2]);
        }
        buffer.append(this.f65338n);
    }

    protected boolean H0() {
        return this.f65328d;
    }

    protected void I(StringBuffer buffer, String fieldName, char[] array) {
        buffer.append(this.f65335k);
        for (int i2 = 0; i2 < array.length; i2++) {
            if (i2 > 0) {
                buffer.append(this.f65336l);
            }
            x(buffer, fieldName, array[i2]);
        }
        buffer.append(this.f65338n);
    }

    protected boolean I0() {
        return this.f65327c;
    }

    protected void J(StringBuffer buffer, String fieldName, double[] array) {
        buffer.append(this.f65335k);
        for (int i2 = 0; i2 < array.length; i2++) {
            if (i2 > 0) {
                buffer.append(this.f65336l);
            }
            y(buffer, fieldName, array[i2]);
        }
        buffer.append(this.f65338n);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void J0(StringBuffer buffer, String fieldName, Object array) {
        buffer.append(this.f65335k);
        int length = Array.getLength(array);
        for (int i2 = 0; i2 < length; i2++) {
            Object obj = Array.get(array, i2);
            if (i2 > 0) {
                buffer.append(this.f65336l);
            }
            if (obj == null) {
                W(buffer, fieldName);
            } else {
                V(buffer, fieldName, obj, this.f65337m);
            }
        }
        buffer.append(this.f65338n);
    }

    protected void K(StringBuffer buffer, String fieldName, float[] array) {
        buffer.append(this.f65335k);
        for (int i2 = 0; i2 < array.length; i2++) {
            if (i2 > 0) {
                buffer.append(this.f65336l);
            }
            z(buffer, fieldName, array[i2]);
        }
        buffer.append(this.f65338n);
    }

    protected void L(StringBuffer buffer, String fieldName, int[] array) {
        buffer.append(this.f65335k);
        for (int i2 = 0; i2 < array.length; i2++) {
            if (i2 > 0) {
                buffer.append(this.f65336l);
            }
            A(buffer, fieldName, array[i2]);
        }
        buffer.append(this.f65338n);
    }

    protected void L0(StringBuffer buffer) {
        int length = buffer.length();
        int length2 = this.f65334j.length();
        if (length <= 0 || length2 <= 0 || length < length2) {
            return;
        }
        boolean z3 = false;
        int i2 = 0;
        while (true) {
            if (i2 >= length2) {
                z3 = true;
                break;
            } else if (buffer.charAt((length - 1) - i2) != this.f65334j.charAt((length2 - 1) - i2)) {
                break;
            } else {
                i2++;
            }
        }
        if (z3) {
            buffer.setLength(length - length2);
        }
    }

    protected void M(StringBuffer buffer, String fieldName, long[] array) {
        buffer.append(this.f65335k);
        for (int i2 = 0; i2 < array.length; i2++) {
            if (i2 > 0) {
                buffer.append(this.f65336l);
            }
            B(buffer, fieldName, array[i2]);
        }
        buffer.append(this.f65338n);
    }

    protected void M0(boolean arrayContentDetail) {
        this.f65337m = arrayContentDetail;
    }

    protected void N(StringBuffer buffer, String fieldName, Object[] array) {
        buffer.append(this.f65335k);
        for (int i2 = 0; i2 < array.length; i2++) {
            Object obj = array[i2];
            if (i2 > 0) {
                buffer.append(this.f65336l);
            }
            if (obj == null) {
                W(buffer, fieldName);
            } else {
                V(buffer, fieldName, obj, this.f65337m);
            }
        }
        buffer.append(this.f65338n);
    }

    protected void N0(String arrayEnd) {
        if (arrayEnd == null) {
            arrayEnd = "";
        }
        this.f65338n = arrayEnd;
    }

    protected void O(StringBuffer buffer, String fieldName, short[] array) {
        buffer.append(this.f65335k);
        for (int i2 = 0; i2 < array.length; i2++) {
            if (i2 > 0) {
                buffer.append(this.f65336l);
            }
            F(buffer, fieldName, array[i2]);
        }
        buffer.append(this.f65338n);
    }

    protected void O0(String arraySeparator) {
        if (arraySeparator == null) {
            arraySeparator = "";
        }
        this.f65336l = arraySeparator;
    }

    protected void P(StringBuffer buffer, String fieldName, boolean[] array) {
        buffer.append(this.f65335k);
        for (int i2 = 0; i2 < array.length; i2++) {
            if (i2 > 0) {
                buffer.append(this.f65336l);
            }
            G(buffer, fieldName, array[i2]);
        }
        buffer.append(this.f65338n);
    }

    protected void P0(String arrayStart) {
        if (arrayStart == null) {
            arrayStart = "";
        }
        this.f65335k = arrayStart;
    }

    public void Q(StringBuffer buffer, Object object) {
        if (!this.f65333i) {
            L0(buffer);
        }
        t(buffer);
        g1(object);
    }

    protected void Q0(String contentEnd) {
        if (contentEnd == null) {
            contentEnd = "";
        }
        this.f65330f = contentEnd;
    }

    protected void R(StringBuffer buffer, String fieldName) {
        S(buffer);
    }

    protected void R0(String contentStart) {
        if (contentStart == null) {
            contentStart = "";
        }
        this.f65329e = contentStart;
    }

    protected void S(StringBuffer buffer) {
        buffer.append(this.f65334j);
    }

    protected void S0(boolean defaultFullDetail) {
        this.f65339o = defaultFullDetail;
    }

    protected void T(StringBuffer buffer, String fieldName) {
        if (!this.f65325a || fieldName == null) {
            return;
        }
        buffer.append(fieldName);
        buffer.append(this.f65331g);
    }

    protected void T0(String fieldNameValueSeparator) {
        if (fieldNameValueSeparator == null) {
            fieldNameValueSeparator = "";
        }
        this.f65331g = fieldNameValueSeparator;
    }

    protected void U(StringBuffer buffer, Object object) {
        if (!H0() || object == null) {
            return;
        }
        K0(object);
        buffer.append('@');
        buffer.append(Integer.toHexString(System.identityHashCode(object)));
    }

    protected void U0(String fieldSeparator) {
        if (fieldSeparator == null) {
            fieldSeparator = "";
        }
        this.f65334j = fieldSeparator;
    }

    protected void V(StringBuffer buffer, String fieldName, Object value, boolean detail) {
        if (E0(value) && !(value instanceof Number) && !(value instanceof Boolean) && !(value instanceof Character)) {
            v(buffer, fieldName, value);
            return;
        }
        K0(value);
        try {
            if (value instanceof Collection) {
                if (detail) {
                    D(buffer, fieldName, (Collection) value);
                } else {
                    i0(buffer, fieldName, ((Collection) value).size());
                }
            } else if (value instanceof Map) {
                if (detail) {
                    E(buffer, fieldName, (Map) value);
                } else {
                    i0(buffer, fieldName, ((Map) value).size());
                }
            } else if (value instanceof long[]) {
                if (detail) {
                    M(buffer, fieldName, (long[]) value);
                } else {
                    e0(buffer, fieldName, (long[]) value);
                }
            } else if (value instanceof int[]) {
                if (detail) {
                    L(buffer, fieldName, (int[]) value);
                } else {
                    d0(buffer, fieldName, (int[]) value);
                }
            } else if (value instanceof short[]) {
                if (detail) {
                    O(buffer, fieldName, (short[]) value);
                } else {
                    g0(buffer, fieldName, (short[]) value);
                }
            } else if (value instanceof byte[]) {
                if (detail) {
                    H(buffer, fieldName, (byte[]) value);
                } else {
                    Z(buffer, fieldName, (byte[]) value);
                }
            } else if (value instanceof char[]) {
                if (detail) {
                    I(buffer, fieldName, (char[]) value);
                } else {
                    a0(buffer, fieldName, (char[]) value);
                }
            } else if (value instanceof double[]) {
                if (detail) {
                    J(buffer, fieldName, (double[]) value);
                } else {
                    b0(buffer, fieldName, (double[]) value);
                }
            } else if (value instanceof float[]) {
                if (detail) {
                    K(buffer, fieldName, (float[]) value);
                } else {
                    c0(buffer, fieldName, (float[]) value);
                }
            } else if (value instanceof boolean[]) {
                if (detail) {
                    P(buffer, fieldName, (boolean[]) value);
                } else {
                    h0(buffer, fieldName, (boolean[]) value);
                }
            } else if (value.getClass().isArray()) {
                if (detail) {
                    N(buffer, fieldName, (Object[]) value);
                } else {
                    f0(buffer, fieldName, (Object[]) value);
                }
            } else if (detail) {
                C(buffer, fieldName, value);
            } else {
                Y(buffer, fieldName, value);
            }
        } finally {
            g1(value);
        }
    }

    protected void V0(boolean fieldSeparatorAtEnd) {
        this.f65333i = fieldSeparatorAtEnd;
    }

    protected void W(StringBuffer buffer, String fieldName) {
        buffer.append(this.f65340p);
    }

    protected void W0(boolean fieldSeparatorAtStart) {
        this.f65332h = fieldSeparatorAtStart;
    }

    public void X(StringBuffer buffer, Object object) {
        if (object != null) {
            s(buffer, object);
            U(buffer, object);
            u(buffer);
            if (this.f65332h) {
                S(buffer);
            }
        }
    }

    protected void X0(String nullText) {
        if (nullText == null) {
            nullText = "";
        }
        this.f65340p = nullText;
    }

    protected void Y(StringBuffer buffer, String fieldName, Object value) {
        buffer.append(this.f65343s);
        buffer.append(u0(value.getClass()));
        buffer.append(this.f65344t);
    }

    protected void Y0(String sizeEndText) {
        if (sizeEndText == null) {
            sizeEndText = "";
        }
        this.f65342r = sizeEndText;
    }

    protected void Z(StringBuffer buffer, String fieldName, byte[] array) {
        i0(buffer, fieldName, array.length);
    }

    protected void Z0(String sizeStartText) {
        if (sizeStartText == null) {
            sizeStartText = "";
        }
        this.f65341q = sizeStartText;
    }

    public void a(StringBuffer buffer, String fieldName, byte value) {
        T(buffer, fieldName);
        w(buffer, fieldName, value);
        R(buffer, fieldName);
    }

    protected void a0(StringBuffer buffer, String fieldName, char[] array) {
        i0(buffer, fieldName, array.length);
    }

    protected void a1(String summaryObjectEndText) {
        if (summaryObjectEndText == null) {
            summaryObjectEndText = "";
        }
        this.f65344t = summaryObjectEndText;
    }

    public void b(StringBuffer buffer, String fieldName, char value) {
        T(buffer, fieldName);
        x(buffer, fieldName, value);
        R(buffer, fieldName);
    }

    protected void b0(StringBuffer buffer, String fieldName, double[] array) {
        i0(buffer, fieldName, array.length);
    }

    protected void b1(String summaryObjectStartText) {
        if (summaryObjectStartText == null) {
            summaryObjectStartText = "";
        }
        this.f65343s = summaryObjectStartText;
    }

    public void c(StringBuffer buffer, String fieldName, double value) {
        T(buffer, fieldName);
        y(buffer, fieldName, value);
        R(buffer, fieldName);
    }

    protected void c0(StringBuffer buffer, String fieldName, float[] array) {
        i0(buffer, fieldName, array.length);
    }

    protected void c1(boolean useClassName) {
        this.f65326b = useClassName;
    }

    public void d(StringBuffer buffer, String fieldName, float value) {
        T(buffer, fieldName);
        z(buffer, fieldName, value);
        R(buffer, fieldName);
    }

    protected void d0(StringBuffer buffer, String fieldName, int[] array) {
        i0(buffer, fieldName, array.length);
    }

    protected void d1(boolean useFieldNames) {
        this.f65325a = useFieldNames;
    }

    public void e(StringBuffer buffer, String fieldName, int value) {
        T(buffer, fieldName);
        A(buffer, fieldName, value);
        R(buffer, fieldName);
    }

    protected void e0(StringBuffer buffer, String fieldName, long[] array) {
        i0(buffer, fieldName, array.length);
    }

    protected void e1(boolean useIdentityHashCode) {
        this.f65328d = useIdentityHashCode;
    }

    public void f(StringBuffer buffer, String fieldName, long value) {
        T(buffer, fieldName);
        B(buffer, fieldName, value);
        R(buffer, fieldName);
    }

    protected void f0(StringBuffer buffer, String fieldName, Object[] array) {
        i0(buffer, fieldName, array.length);
    }

    protected void f1(boolean useShortClassName) {
        this.f65327c = useShortClassName;
    }

    public void g(StringBuffer buffer, String fieldName, Object value, Boolean fullDetail) {
        T(buffer, fieldName);
        if (value == null) {
            W(buffer, fieldName);
        } else {
            V(buffer, fieldName, value, D0(fullDetail));
        }
        R(buffer, fieldName);
    }

    protected void g0(StringBuffer buffer, String fieldName, short[] array) {
        i0(buffer, fieldName, array.length);
    }

    public void h(StringBuffer buffer, String fieldName, short value) {
        T(buffer, fieldName);
        F(buffer, fieldName, value);
        R(buffer, fieldName);
    }

    protected void h0(StringBuffer buffer, String fieldName, boolean[] array) {
        i0(buffer, fieldName, array.length);
    }

    public void i(StringBuffer buffer, String fieldName, boolean value) {
        T(buffer, fieldName);
        G(buffer, fieldName, value);
        R(buffer, fieldName);
    }

    protected void i0(StringBuffer buffer, String fieldName, int size) {
        buffer.append(this.f65341q);
        buffer.append(size);
        buffer.append(this.f65342r);
    }

    public void j(StringBuffer buffer, String fieldName, byte[] array, Boolean fullDetail) {
        T(buffer, fieldName);
        if (array == null) {
            W(buffer, fieldName);
        } else if (D0(fullDetail)) {
            H(buffer, fieldName, array);
        } else {
            Z(buffer, fieldName, array);
        }
        R(buffer, fieldName);
    }

    public void j0(StringBuffer buffer, String superToString) {
        k0(buffer, superToString);
    }

    public void k(StringBuffer buffer, String fieldName, char[] array, Boolean fullDetail) {
        T(buffer, fieldName);
        if (array == null) {
            W(buffer, fieldName);
        } else if (D0(fullDetail)) {
            I(buffer, fieldName, array);
        } else {
            a0(buffer, fieldName, array);
        }
        R(buffer, fieldName);
    }

    public void k0(StringBuffer buffer, String toString) {
        int indexOf;
        int lastIndexOf;
        if (toString == null || (indexOf = toString.indexOf(this.f65329e) + this.f65329e.length()) == (lastIndexOf = toString.lastIndexOf(this.f65330f)) || indexOf < 0 || lastIndexOf < 0) {
            return;
        }
        String substring = toString.substring(indexOf, lastIndexOf);
        if (this.f65332h) {
            L0(buffer);
        }
        buffer.append(substring);
        S(buffer);
    }

    public void l(StringBuffer buffer, String fieldName, double[] array, Boolean fullDetail) {
        T(buffer, fieldName);
        if (array == null) {
            W(buffer, fieldName);
        } else if (D0(fullDetail)) {
            J(buffer, fieldName, array);
        } else {
            b0(buffer, fieldName, array);
        }
        R(buffer, fieldName);
    }

    protected String l0() {
        return this.f65338n;
    }

    public void m(StringBuffer buffer, String fieldName, float[] array, Boolean fullDetail) {
        T(buffer, fieldName);
        if (array == null) {
            W(buffer, fieldName);
        } else if (D0(fullDetail)) {
            K(buffer, fieldName, array);
        } else {
            c0(buffer, fieldName, array);
        }
        R(buffer, fieldName);
    }

    protected String m0() {
        return this.f65336l;
    }

    public void n(StringBuffer buffer, String fieldName, int[] array, Boolean fullDetail) {
        T(buffer, fieldName);
        if (array == null) {
            W(buffer, fieldName);
        } else if (D0(fullDetail)) {
            L(buffer, fieldName, array);
        } else {
            d0(buffer, fieldName, array);
        }
        R(buffer, fieldName);
    }

    protected String n0() {
        return this.f65335k;
    }

    public void o(StringBuffer buffer, String fieldName, long[] array, Boolean fullDetail) {
        T(buffer, fieldName);
        if (array == null) {
            W(buffer, fieldName);
        } else if (D0(fullDetail)) {
            M(buffer, fieldName, array);
        } else {
            e0(buffer, fieldName, array);
        }
        R(buffer, fieldName);
    }

    protected String o0() {
        return this.f65330f;
    }

    public void p(StringBuffer buffer, String fieldName, Object[] array, Boolean fullDetail) {
        T(buffer, fieldName);
        if (array == null) {
            W(buffer, fieldName);
        } else if (D0(fullDetail)) {
            N(buffer, fieldName, array);
        } else {
            f0(buffer, fieldName, array);
        }
        R(buffer, fieldName);
    }

    protected String p0() {
        return this.f65329e;
    }

    public void q(StringBuffer buffer, String fieldName, short[] array, Boolean fullDetail) {
        T(buffer, fieldName);
        if (array == null) {
            W(buffer, fieldName);
        } else if (D0(fullDetail)) {
            O(buffer, fieldName, array);
        } else {
            g0(buffer, fieldName, array);
        }
        R(buffer, fieldName);
    }

    protected String q0() {
        return this.f65331g;
    }

    public void r(StringBuffer buffer, String fieldName, boolean[] array, Boolean fullDetail) {
        T(buffer, fieldName);
        if (array == null) {
            W(buffer, fieldName);
        } else if (D0(fullDetail)) {
            P(buffer, fieldName, array);
        } else {
            h0(buffer, fieldName, array);
        }
        R(buffer, fieldName);
    }

    protected String r0() {
        return this.f65334j;
    }

    protected void s(StringBuffer buffer, Object object) {
        if (!this.f65326b || object == null) {
            return;
        }
        K0(object);
        if (this.f65327c) {
            buffer.append(u0(object.getClass()));
        } else {
            buffer.append(object.getClass().getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String s0() {
        return this.f65340p;
    }

    protected void t(StringBuffer buffer) {
        buffer.append(this.f65330f);
    }

    protected void u(StringBuffer buffer) {
        buffer.append(this.f65329e);
    }

    protected String u0(Class<?> cls) {
        return external.org.apache.commons.lang3.d.v(cls);
    }

    protected void v(StringBuffer buffer, String fieldName, Object value) {
        ObjectUtils.k(buffer, value);
    }

    protected String v0() {
        return this.f65342r;
    }

    protected void w(StringBuffer buffer, String fieldName, byte value) {
        buffer.append((int) value);
    }

    protected String w0() {
        return this.f65341q;
    }

    protected void x(StringBuffer buffer, String fieldName, char value) {
        buffer.append(value);
    }

    protected String x0() {
        return this.f65344t;
    }

    protected void y(StringBuffer buffer, String fieldName, double value) {
        buffer.append(value);
    }

    protected String y0() {
        return this.f65343s;
    }

    protected void z(StringBuffer buffer, String fieldName, float value) {
        buffer.append(value);
    }

    protected boolean z0() {
        return this.f65337m;
    }
}
