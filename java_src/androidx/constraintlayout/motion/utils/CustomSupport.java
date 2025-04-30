package androidx.constraintlayout.motion.utils;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.constraintlayout.motion.widget.Debug;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import m.a;
/* loaded from: classes.dex */
public class CustomSupport {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2688a = "CustomSupport";

    /* renamed from: androidx.constraintlayout.motion.utils.CustomSupport$1  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2689a;

        static {
            int[] iArr = new int[ConstraintAttribute.AttributeType.values().length];
            f2689a = iArr;
            try {
                iArr[ConstraintAttribute.AttributeType.INT_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2689a[ConstraintAttribute.AttributeType.FLOAT_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2689a[ConstraintAttribute.AttributeType.COLOR_DRAWABLE_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2689a[ConstraintAttribute.AttributeType.COLOR_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2689a[ConstraintAttribute.AttributeType.STRING_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2689a[ConstraintAttribute.AttributeType.BOOLEAN_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2689a[ConstraintAttribute.AttributeType.DIMENSION_TYPE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private static int a(int c4) {
        int i2 = (c4 & ((c4 >> 31) ^ (-1))) - 255;
        return (i2 & (i2 >> 31)) + 255;
    }

    public static void setInterpolatedValue(ConstraintAttribute att, View view, float[] value) {
        Class<?> cls = view.getClass();
        String str = "set" + att.getName();
        try {
            boolean z3 = true;
            switch (AnonymousClass1.f2689a[att.getType().ordinal()]) {
                case 1:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf((int) value[0]));
                    return;
                case 2:
                    cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(value[0]));
                    return;
                case 3:
                    Method method = cls.getMethod(str, Drawable.class);
                    int a4 = a((int) (((float) Math.pow(value[0], 0.45454545454545453d)) * 255.0f));
                    int a5 = a((int) (((float) Math.pow(value[1], 0.45454545454545453d)) * 255.0f));
                    ColorDrawable colorDrawable = new ColorDrawable();
                    colorDrawable.setColor((a4 << 16) | (a((int) (value[3] * 255.0f)) << 24) | (a5 << 8) | a((int) (((float) Math.pow(value[2], 0.45454545454545453d)) * 255.0f)));
                    method.invoke(view, colorDrawable);
                    return;
                case 4:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf((a((int) (((float) Math.pow(value[0], 0.45454545454545453d)) * 255.0f)) << 16) | (a((int) (value[3] * 255.0f)) << 24) | (a((int) (((float) Math.pow(value[1], 0.45454545454545453d)) * 255.0f)) << 8) | a((int) (((float) Math.pow(value[2], 0.45454545454545453d)) * 255.0f))));
                    return;
                case 5:
                    throw new RuntimeException("unable to interpolate strings " + att.getName());
                case 6:
                    Method method2 = cls.getMethod(str, Boolean.TYPE);
                    Object[] objArr = new Object[1];
                    if (value[0] <= 0.5f) {
                        z3 = false;
                    }
                    objArr[0] = Boolean.valueOf(z3);
                    method2.invoke(view, objArr);
                    return;
                case 7:
                    cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(value[0]));
                    return;
                default:
                    return;
            }
        } catch (IllegalAccessException e4) {
            StringBuilder sb = new StringBuilder();
            sb.append("cannot access method ");
            sb.append(str);
            sb.append(" on View \"");
            sb.append(Debug.getName(view));
            sb.append(a.f72569g);
            e4.printStackTrace();
        } catch (NoSuchMethodException e5) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("no method ");
            sb2.append(str);
            sb2.append(" on View \"");
            sb2.append(Debug.getName(view));
            sb2.append(a.f72569g);
            e5.printStackTrace();
        } catch (InvocationTargetException e6) {
            e6.printStackTrace();
        }
    }
}
