package androidx.core.view;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.annotation.NonNull;
import java.lang.reflect.Field;
/* loaded from: classes.dex */
public final class LayoutInflaterCompat {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4794a = "LayoutInflaterCompatHC";

    /* renamed from: b  reason: collision with root package name */
    private static Field f4795b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f4796c;

    /* loaded from: classes.dex */
    static class Factory2Wrapper implements LayoutInflater.Factory2 {

        /* renamed from: a  reason: collision with root package name */
        final LayoutInflaterFactory f4797a;

        Factory2Wrapper(LayoutInflaterFactory layoutInflaterFactory) {
            this.f4797a = layoutInflaterFactory;
        }

        @Override // android.view.LayoutInflater.Factory
        public View onCreateView(String str, Context context, AttributeSet attributeSet) {
            return this.f4797a.onCreateView(null, str, context, attributeSet);
        }

        @NonNull
        public String toString() {
            return getClass().getName() + "{" + this.f4797a + "}";
        }

        @Override // android.view.LayoutInflater.Factory2
        public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
            return this.f4797a.onCreateView(view, str, context, attributeSet);
        }
    }

    private LayoutInflaterCompat() {
    }

    private static void a(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        if (!f4796c) {
            try {
                Field declaredField = LayoutInflater.class.getDeclaredField("mFactory2");
                f4795b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                StringBuilder sb = new StringBuilder();
                sb.append("forceSetFactory2 Could not find field 'mFactory2' on class ");
                sb.append(LayoutInflater.class.getName());
                sb.append("; inflation may have unexpected results.");
            }
            f4796c = true;
        }
        Field field = f4795b;
        if (field != null) {
            try {
                field.set(layoutInflater, factory2);
            } catch (IllegalAccessException unused2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("forceSetFactory2 could not set the Factory2 on LayoutInflater ");
                sb2.append(layoutInflater);
                sb2.append("; inflation may have unexpected results.");
            }
        }
    }

    @Deprecated
    public static LayoutInflaterFactory getFactory(LayoutInflater layoutInflater) {
        LayoutInflater.Factory factory = layoutInflater.getFactory();
        if (factory instanceof Factory2Wrapper) {
            return ((Factory2Wrapper) factory).f4797a;
        }
        return null;
    }

    @Deprecated
    public static void setFactory(@NonNull LayoutInflater layoutInflater, @NonNull LayoutInflaterFactory layoutInflaterFactory) {
        if (Build.VERSION.SDK_INT >= 21) {
            layoutInflater.setFactory2(layoutInflaterFactory != null ? new Factory2Wrapper(layoutInflaterFactory) : null);
            return;
        }
        Factory2Wrapper factory2Wrapper = layoutInflaterFactory != null ? new Factory2Wrapper(layoutInflaterFactory) : null;
        layoutInflater.setFactory2(factory2Wrapper);
        LayoutInflater.Factory factory = layoutInflater.getFactory();
        if (factory instanceof LayoutInflater.Factory2) {
            a(layoutInflater, (LayoutInflater.Factory2) factory);
        } else {
            a(layoutInflater, factory2Wrapper);
        }
    }

    public static void setFactory2(@NonNull LayoutInflater layoutInflater, @NonNull LayoutInflater.Factory2 factory2) {
        layoutInflater.setFactory2(factory2);
        if (Build.VERSION.SDK_INT < 21) {
            LayoutInflater.Factory factory = layoutInflater.getFactory();
            if (factory instanceof LayoutInflater.Factory2) {
                a(layoutInflater, (LayoutInflater.Factory2) factory);
            } else {
                a(layoutInflater, factory2);
            }
        }
    }
}
