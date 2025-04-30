package external.org.apache.commons.lang3.builder;

import external.org.apache.commons.lang3.ObjectUtils;
/* compiled from: ToStringBuilder.java */
/* loaded from: classes3.dex */
public class g implements a<String> {

    /* renamed from: d  reason: collision with root package name */
    private static volatile ToStringStyle f65357d = ToStringStyle.f65319u;

    /* renamed from: a  reason: collision with root package name */
    private final StringBuffer f65358a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f65359b;

    /* renamed from: c  reason: collision with root package name */
    private final ToStringStyle f65360c;

    public g(Object object) {
        this(object, null, null);
    }

    public static ToStringStyle Y() {
        return f65357d;
    }

    public static String c0(Object object) {
        return f.v0(object);
    }

    public static String d0(Object object, ToStringStyle style) {
        return f.w0(object, style);
    }

    public static String e0(Object object, ToStringStyle style, boolean outputTransients) {
        return f.z0(object, style, outputTransients, false, null);
    }

    public static <T> String f0(T object, ToStringStyle style, boolean outputTransients, Class<? super T> reflectUpToClass) {
        return f.z0(object, style, outputTransients, false, reflectUpToClass);
    }

    public static void g0(ToStringStyle style) {
        if (style != null) {
            f65357d = style;
            return;
        }
        throw new IllegalArgumentException("The style must not be null");
    }

    public g A(String fieldName, int[] array, boolean fullDetail) {
        this.f65360c.n(this.f65358a, fieldName, array, Boolean.valueOf(fullDetail));
        return this;
    }

    public g B(String fieldName, long[] array) {
        this.f65360c.o(this.f65358a, fieldName, array, null);
        return this;
    }

    public g C(String fieldName, long[] array, boolean fullDetail) {
        this.f65360c.o(this.f65358a, fieldName, array, Boolean.valueOf(fullDetail));
        return this;
    }

    public g D(String fieldName, Object[] array) {
        this.f65360c.p(this.f65358a, fieldName, array, null);
        return this;
    }

    public g E(String fieldName, Object[] array, boolean fullDetail) {
        this.f65360c.p(this.f65358a, fieldName, array, Boolean.valueOf(fullDetail));
        return this;
    }

    public g F(String fieldName, short[] array) {
        this.f65360c.q(this.f65358a, fieldName, array, null);
        return this;
    }

    public g G(String fieldName, short[] array, boolean fullDetail) {
        this.f65360c.q(this.f65358a, fieldName, array, Boolean.valueOf(fullDetail));
        return this;
    }

    public g H(String fieldName, boolean[] array) {
        this.f65360c.r(this.f65358a, fieldName, array, null);
        return this;
    }

    public g I(String fieldName, boolean[] array, boolean fullDetail) {
        this.f65360c.r(this.f65358a, fieldName, array, Boolean.valueOf(fullDetail));
        return this;
    }

    public g J(short value) {
        this.f65360c.h(this.f65358a, null, value);
        return this;
    }

    public g K(boolean value) {
        this.f65360c.i(this.f65358a, null, value);
        return this;
    }

    public g L(byte[] array) {
        this.f65360c.j(this.f65358a, null, array, null);
        return this;
    }

    public g M(char[] array) {
        this.f65360c.k(this.f65358a, null, array, null);
        return this;
    }

    public g N(double[] array) {
        this.f65360c.l(this.f65358a, null, array, null);
        return this;
    }

    public g O(float[] array) {
        this.f65360c.m(this.f65358a, null, array, null);
        return this;
    }

    public g P(int[] array) {
        this.f65360c.n(this.f65358a, null, array, null);
        return this;
    }

    public g Q(long[] array) {
        this.f65360c.o(this.f65358a, null, array, null);
        return this;
    }

    public g R(Object[] array) {
        this.f65360c.p(this.f65358a, null, array, null);
        return this;
    }

    public g S(short[] array) {
        this.f65360c.q(this.f65358a, null, array, null);
        return this;
    }

    public g T(boolean[] array) {
        this.f65360c.r(this.f65358a, null, array, null);
        return this;
    }

    public g U(Object object) {
        ObjectUtils.k(a0(), object);
        return this;
    }

    public g V(String superToString) {
        if (superToString != null) {
            this.f65360c.j0(this.f65358a, superToString);
        }
        return this;
    }

    public g W(String toString) {
        if (toString != null) {
            this.f65360c.k0(this.f65358a, toString);
        }
        return this;
    }

    @Override // external.org.apache.commons.lang3.builder.a
    /* renamed from: X */
    public String build() {
        return toString();
    }

    public Object Z() {
        return this.f65359b;
    }

    public g a(byte value) {
        this.f65360c.a(this.f65358a, null, value);
        return this;
    }

    public StringBuffer a0() {
        return this.f65358a;
    }

    public g b(char value) {
        this.f65360c.b(this.f65358a, null, value);
        return this;
    }

    public ToStringStyle b0() {
        return this.f65360c;
    }

    public g c(double value) {
        this.f65360c.c(this.f65358a, null, value);
        return this;
    }

    public g d(float value) {
        this.f65360c.d(this.f65358a, null, value);
        return this;
    }

    public g e(int value) {
        this.f65360c.e(this.f65358a, null, value);
        return this;
    }

    public g f(long value) {
        this.f65360c.f(this.f65358a, null, value);
        return this;
    }

    public g g(Object obj) {
        this.f65360c.g(this.f65358a, null, obj, null);
        return this;
    }

    public g h(String fieldName, byte value) {
        this.f65360c.a(this.f65358a, fieldName, value);
        return this;
    }

    public g i(String fieldName, char value) {
        this.f65360c.b(this.f65358a, fieldName, value);
        return this;
    }

    public g j(String fieldName, double value) {
        this.f65360c.c(this.f65358a, fieldName, value);
        return this;
    }

    public g k(String fieldName, float value) {
        this.f65360c.d(this.f65358a, fieldName, value);
        return this;
    }

    public g l(String fieldName, int value) {
        this.f65360c.e(this.f65358a, fieldName, value);
        return this;
    }

    public g m(String fieldName, long value) {
        this.f65360c.f(this.f65358a, fieldName, value);
        return this;
    }

    public g n(String fieldName, Object obj) {
        this.f65360c.g(this.f65358a, fieldName, obj, null);
        return this;
    }

    public g o(String fieldName, Object obj, boolean fullDetail) {
        this.f65360c.g(this.f65358a, fieldName, obj, Boolean.valueOf(fullDetail));
        return this;
    }

    public g p(String fieldName, short value) {
        this.f65360c.h(this.f65358a, fieldName, value);
        return this;
    }

    public g q(String fieldName, boolean value) {
        this.f65360c.i(this.f65358a, fieldName, value);
        return this;
    }

    public g r(String fieldName, byte[] array) {
        this.f65360c.j(this.f65358a, fieldName, array, null);
        return this;
    }

    public g s(String fieldName, byte[] array, boolean fullDetail) {
        this.f65360c.j(this.f65358a, fieldName, array, Boolean.valueOf(fullDetail));
        return this;
    }

    public g t(String fieldName, char[] array) {
        this.f65360c.k(this.f65358a, fieldName, array, null);
        return this;
    }

    public String toString() {
        if (Z() == null) {
            a0().append(b0().s0());
        } else {
            this.f65360c.Q(a0(), Z());
        }
        return a0().toString();
    }

    public g u(String fieldName, char[] array, boolean fullDetail) {
        this.f65360c.k(this.f65358a, fieldName, array, Boolean.valueOf(fullDetail));
        return this;
    }

    public g v(String fieldName, double[] array) {
        this.f65360c.l(this.f65358a, fieldName, array, null);
        return this;
    }

    public g w(String fieldName, double[] array, boolean fullDetail) {
        this.f65360c.l(this.f65358a, fieldName, array, Boolean.valueOf(fullDetail));
        return this;
    }

    public g x(String fieldName, float[] array) {
        this.f65360c.m(this.f65358a, fieldName, array, null);
        return this;
    }

    public g y(String fieldName, float[] array, boolean fullDetail) {
        this.f65360c.m(this.f65358a, fieldName, array, Boolean.valueOf(fullDetail));
        return this;
    }

    public g z(String fieldName, int[] array) {
        this.f65360c.n(this.f65358a, fieldName, array, null);
        return this;
    }

    public g(Object object, ToStringStyle style) {
        this(object, style, null);
    }

    public g(Object object, ToStringStyle style, StringBuffer buffer) {
        style = style == null ? Y() : style;
        buffer = buffer == null ? new StringBuffer(512) : buffer;
        this.f65358a = buffer;
        this.f65360c = style;
        this.f65359b = object;
        style.X(buffer, object);
    }
}
