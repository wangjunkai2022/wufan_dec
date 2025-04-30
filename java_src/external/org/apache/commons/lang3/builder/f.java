package external.org.apache.commons.lang3.builder;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
/* compiled from: ReflectionToStringBuilder.java */
/* loaded from: classes3.dex */
public class f extends g {

    /* renamed from: e  reason: collision with root package name */
    private boolean f65353e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f65354f;

    /* renamed from: g  reason: collision with root package name */
    protected String[] f65355g;

    /* renamed from: h  reason: collision with root package name */
    private Class<?> f65356h;

    public f(Object object) {
        super(object);
        this.f65353e = false;
        this.f65354f = false;
        this.f65356h = null;
    }

    public static String A0(Object object, Collection<String> excludeFieldNames) {
        return B0(object, t0(excludeFieldNames));
    }

    public static String B0(Object object, String... excludeFieldNames) {
        return new f(object).r0(excludeFieldNames).toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String[] t0(Collection<String> collection) {
        if (collection == null) {
            return external.org.apache.commons.lang3.a.f65301c;
        }
        return u0(collection.toArray());
    }

    static String[] u0(Object[] array) {
        ArrayList arrayList = new ArrayList(array.length);
        for (Object obj : array) {
            if (obj != null) {
                arrayList.add(obj.toString());
            }
        }
        return (String[]) arrayList.toArray(external.org.apache.commons.lang3.a.f65301c);
    }

    public static String v0(Object object) {
        return z0(object, null, false, false, null);
    }

    public static String w0(Object object, ToStringStyle style) {
        return z0(object, style, false, false, null);
    }

    public static String x0(Object object, ToStringStyle style, boolean outputTransients) {
        return z0(object, style, outputTransients, false, null);
    }

    public static String y0(Object object, ToStringStyle style, boolean outputTransients, boolean outputStatics) {
        return z0(object, style, outputTransients, outputStatics, null);
    }

    public static <T> String z0(T object, ToStringStyle style, boolean outputTransients, boolean outputStatics, Class<? super T> reflectUpToClass) {
        return new f(object, style, null, reflectUpToClass, outputTransients, outputStatics).toString();
    }

    protected boolean h0(Field field) {
        if (field.getName().indexOf(36) != -1) {
            return false;
        }
        if (!Modifier.isTransient(field.getModifiers()) || n0()) {
            if (!Modifier.isStatic(field.getModifiers()) || m0()) {
                String[] strArr = this.f65355g;
                return strArr == null || Arrays.binarySearch(strArr, field.getName()) < 0;
            }
            return false;
        }
        return false;
    }

    protected void i0(Class<?> clazz) {
        if (clazz.isArray()) {
            o0(Z());
            return;
        }
        Field[] declaredFields = clazz.getDeclaredFields();
        AccessibleObject.setAccessible(declaredFields, true);
        for (Field field : declaredFields) {
            String name = field.getName();
            if (h0(field)) {
                try {
                    n(name, l0(field));
                } catch (IllegalAccessException e4) {
                    throw new InternalError("Unexpected IllegalAccessException: " + e4.getMessage());
                }
            }
        }
    }

    public String[] j0() {
        return (String[]) this.f65355g.clone();
    }

    public Class<?> k0() {
        return this.f65356h;
    }

    protected Object l0(Field field) throws IllegalArgumentException, IllegalAccessException {
        return field.get(Z());
    }

    public boolean m0() {
        return this.f65353e;
    }

    public boolean n0() {
        return this.f65354f;
    }

    public f o0(Object array) {
        b0().J0(a0(), null, array);
        return this;
    }

    public void p0(boolean appendStatics) {
        this.f65353e = appendStatics;
    }

    public void q0(boolean appendTransients) {
        this.f65354f = appendTransients;
    }

    public f r0(String... excludeFieldNamesParam) {
        if (excludeFieldNamesParam == null) {
            this.f65355g = null;
        } else {
            String[] u02 = u0(excludeFieldNamesParam);
            this.f65355g = u02;
            Arrays.sort(u02);
        }
        return this;
    }

    public void s0(Class<?> clazz) {
        Object Z;
        if (clazz != null && (Z = Z()) != null && !clazz.isInstance(Z)) {
            throw new IllegalArgumentException("Specified class is not a superclass of the object");
        }
        this.f65356h = clazz;
    }

    @Override // external.org.apache.commons.lang3.builder.g
    public String toString() {
        if (Z() == null) {
            return b0().s0();
        }
        Class<?> cls = Z().getClass();
        i0(cls);
        while (cls.getSuperclass() != null && cls != k0()) {
            cls = cls.getSuperclass();
            i0(cls);
        }
        return super.toString();
    }

    public f(Object object, ToStringStyle style) {
        super(object, style);
        this.f65353e = false;
        this.f65354f = false;
        this.f65356h = null;
    }

    public f(Object object, ToStringStyle style, StringBuffer buffer) {
        super(object, style, buffer);
        this.f65353e = false;
        this.f65354f = false;
        this.f65356h = null;
    }

    public <T> f(T object, ToStringStyle style, StringBuffer buffer, Class<? super T> reflectUpToClass, boolean outputTransients, boolean outputStatics) {
        super(object, style, buffer);
        this.f65353e = false;
        this.f65354f = false;
        this.f65356h = null;
        s0(reflectUpToClass);
        q0(outputTransients);
        p0(outputStatics);
    }
}
