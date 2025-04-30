package androidx.appcompat.app;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatCheckedTextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.appcompat.widget.AppCompatRatingBar;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.AppCompatToggleButton;
import androidx.appcompat.widget.TintContextWrapper;
import androidx.collection.SimpleArrayMap;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class AppCompatViewInflater {

    /* renamed from: h  reason: collision with root package name */
    private static final String f271h = "AppCompatViewInflater";

    /* renamed from: a  reason: collision with root package name */
    private final Object[] f273a = new Object[2];

    /* renamed from: b  reason: collision with root package name */
    private static final Class<?>[] f265b = {Context.class, AttributeSet.class};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f266c = {16843375};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f267d = {16844160};

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f268e = {16844156};

    /* renamed from: f  reason: collision with root package name */
    private static final int[] f269f = {16844148};

    /* renamed from: g  reason: collision with root package name */
    private static final String[] f270g = {"android.widget.", "android.view.", "android.webkit."};

    /* renamed from: i  reason: collision with root package name */
    private static final SimpleArrayMap<String, Constructor<? extends View>> f272i = new SimpleArrayMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class DeclaredOnClickListener implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        private final View f274a;

        /* renamed from: b  reason: collision with root package name */
        private final String f275b;

        /* renamed from: c  reason: collision with root package name */
        private Method f276c;

        /* renamed from: d  reason: collision with root package name */
        private Context f277d;

        public DeclaredOnClickListener(@NonNull View view, @NonNull String str) {
            this.f274a = view;
            this.f275b = str;
        }

        private void a(@Nullable Context context) {
            int id;
            String str;
            Method method;
            while (context != null) {
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(this.f275b, View.class)) != null) {
                        this.f276c = method;
                        this.f277d = context;
                        return;
                    }
                } catch (NoSuchMethodException unused) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
            if (this.f274a.getId() == -1) {
                str = "";
            } else {
                str = " with id '" + this.f274a.getContext().getResources().getResourceEntryName(id) + "'";
            }
            throw new IllegalStateException("Could not find method " + this.f275b + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f274a.getClass() + str);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(@NonNull View view) {
            if (this.f276c == null) {
                a(this.f274a.getContext());
            }
            try {
                this.f276c.invoke(this.f277d, view);
            } catch (IllegalAccessException e4) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e4);
            } catch (InvocationTargetException e5) {
                throw new IllegalStateException("Could not execute method for android:onClick", e5);
            }
        }
    }

    private void a(@NonNull Context context, @NonNull View view, @NonNull AttributeSet attributeSet) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 19 || i2 > 28) {
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f267d);
        if (obtainStyledAttributes.hasValue(0)) {
            ViewCompat.setAccessibilityHeading(view, obtainStyledAttributes.getBoolean(0, false));
        }
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, f268e);
        if (obtainStyledAttributes2.hasValue(0)) {
            ViewCompat.setAccessibilityPaneTitle(view, obtainStyledAttributes2.getString(0));
        }
        obtainStyledAttributes2.recycle();
        TypedArray obtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, f269f);
        if (obtainStyledAttributes3.hasValue(0)) {
            ViewCompat.setScreenReaderFocusable(view, obtainStyledAttributes3.getBoolean(0, false));
        }
        obtainStyledAttributes3.recycle();
    }

    private void b(View view, AttributeSet attributeSet) {
        Context context = view.getContext();
        if (context instanceof ContextWrapper) {
            if (Build.VERSION.SDK_INT < 15 || ViewCompat.hasOnClickListeners(view)) {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f266c);
                String string = obtainStyledAttributes.getString(0);
                if (string != null) {
                    view.setOnClickListener(new DeclaredOnClickListener(view, string));
                }
                obtainStyledAttributes.recycle();
            }
        }
    }

    private View s(Context context, String str, String str2) throws ClassNotFoundException, InflateException {
        String str3;
        SimpleArrayMap<String, Constructor<? extends View>> simpleArrayMap = f272i;
        Constructor<? extends View> constructor = simpleArrayMap.get(str);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    str3 = str2 + str;
                } catch (Exception unused) {
                    return null;
                }
            } else {
                str3 = str;
            }
            constructor = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f265b);
            simpleArrayMap.put(str, constructor);
        }
        constructor.setAccessible(true);
        return constructor.newInstance(this.f273a);
    }

    private View t(Context context, String str, AttributeSet attributeSet) {
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        try {
            Object[] objArr = this.f273a;
            objArr[0] = context;
            objArr[1] = attributeSet;
            if (-1 != str.indexOf(46)) {
                return s(context, str, null);
            }
            int i2 = 0;
            while (true) {
                String[] strArr = f270g;
                if (i2 >= strArr.length) {
                    return null;
                }
                View s3 = s(context, str, strArr[i2]);
                if (s3 != null) {
                    return s3;
                }
                i2++;
            }
        } catch (Exception unused) {
            return null;
        } finally {
            Object[] objArr2 = this.f273a;
            objArr2[0] = null;
            objArr2[1] = null;
        }
    }

    private static Context u(Context context, AttributeSet attributeSet, boolean z3, boolean z4) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.View, 0, 0);
        int resourceId = z3 ? obtainStyledAttributes.getResourceId(R.styleable.View_android_theme, 0) : 0;
        if (z4 && resourceId == 0) {
            resourceId = obtainStyledAttributes.getResourceId(R.styleable.View_theme, 0);
        }
        obtainStyledAttributes.recycle();
        return resourceId != 0 ? ((context instanceof ContextThemeWrapper) && ((ContextThemeWrapper) context).getThemeResId() == resourceId) ? context : new ContextThemeWrapper(context, resourceId) : context;
    }

    private void v(View view, String str) {
        if (view != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }

    @NonNull
    protected AppCompatAutoCompleteTextView c(Context context, AttributeSet attributeSet) {
        return new AppCompatAutoCompleteTextView(context, attributeSet);
    }

    @NonNull
    protected AppCompatButton d(Context context, AttributeSet attributeSet) {
        return new AppCompatButton(context, attributeSet);
    }

    @NonNull
    protected AppCompatCheckBox e(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckBox(context, attributeSet);
    }

    @NonNull
    protected AppCompatCheckedTextView f(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckedTextView(context, attributeSet);
    }

    @NonNull
    protected AppCompatEditText g(Context context, AttributeSet attributeSet) {
        return new AppCompatEditText(context, attributeSet);
    }

    @NonNull
    protected AppCompatImageButton h(Context context, AttributeSet attributeSet) {
        return new AppCompatImageButton(context, attributeSet);
    }

    @NonNull
    protected AppCompatImageView i(Context context, AttributeSet attributeSet) {
        return new AppCompatImageView(context, attributeSet);
    }

    @NonNull
    protected AppCompatMultiAutoCompleteTextView j(Context context, AttributeSet attributeSet) {
        return new AppCompatMultiAutoCompleteTextView(context, attributeSet);
    }

    @NonNull
    protected AppCompatRadioButton k(Context context, AttributeSet attributeSet) {
        return new AppCompatRadioButton(context, attributeSet);
    }

    @NonNull
    protected AppCompatRatingBar l(Context context, AttributeSet attributeSet) {
        return new AppCompatRatingBar(context, attributeSet);
    }

    @NonNull
    protected AppCompatSeekBar m(Context context, AttributeSet attributeSet) {
        return new AppCompatSeekBar(context, attributeSet);
    }

    @NonNull
    protected AppCompatSpinner n(Context context, AttributeSet attributeSet) {
        return new AppCompatSpinner(context, attributeSet);
    }

    @NonNull
    protected AppCompatTextView o(Context context, AttributeSet attributeSet) {
        return new AppCompatTextView(context, attributeSet);
    }

    @NonNull
    protected AppCompatToggleButton p(Context context, AttributeSet attributeSet) {
        return new AppCompatToggleButton(context, attributeSet);
    }

    @Nullable
    protected View q(Context context, String str, AttributeSet attributeSet) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final View r(View view, String str, @NonNull Context context, @NonNull AttributeSet attributeSet, boolean z3, boolean z4, boolean z5, boolean z6) {
        View l4;
        Context context2 = (!z3 || view == null) ? context : view.getContext();
        if (z4 || z5) {
            context2 = u(context2, attributeSet, z4, z5);
        }
        if (z6) {
            context2 = TintContextWrapper.wrap(context2);
        }
        str.hashCode();
        char c4 = 65535;
        switch (str.hashCode()) {
            case -1946472170:
                if (str.equals("RatingBar")) {
                    c4 = 0;
                    break;
                }
                break;
            case -1455429095:
                if (str.equals("CheckedTextView")) {
                    c4 = 1;
                    break;
                }
                break;
            case -1346021293:
                if (str.equals("MultiAutoCompleteTextView")) {
                    c4 = 2;
                    break;
                }
                break;
            case -938935918:
                if (str.equals("TextView")) {
                    c4 = 3;
                    break;
                }
                break;
            case -937446323:
                if (str.equals("ImageButton")) {
                    c4 = 4;
                    break;
                }
                break;
            case -658531749:
                if (str.equals("SeekBar")) {
                    c4 = 5;
                    break;
                }
                break;
            case -339785223:
                if (str.equals("Spinner")) {
                    c4 = 6;
                    break;
                }
                break;
            case 776382189:
                if (str.equals("RadioButton")) {
                    c4 = 7;
                    break;
                }
                break;
            case 799298502:
                if (str.equals("ToggleButton")) {
                    c4 = '\b';
                    break;
                }
                break;
            case 1125864064:
                if (str.equals("ImageView")) {
                    c4 = '\t';
                    break;
                }
                break;
            case 1413872058:
                if (str.equals("AutoCompleteTextView")) {
                    c4 = '\n';
                    break;
                }
                break;
            case 1601505219:
                if (str.equals("CheckBox")) {
                    c4 = 11;
                    break;
                }
                break;
            case 1666676343:
                if (str.equals("EditText")) {
                    c4 = '\f';
                    break;
                }
                break;
            case 2001146706:
                if (str.equals("Button")) {
                    c4 = '\r';
                    break;
                }
                break;
        }
        switch (c4) {
            case 0:
                l4 = l(context2, attributeSet);
                v(l4, str);
                break;
            case 1:
                l4 = f(context2, attributeSet);
                v(l4, str);
                break;
            case 2:
                l4 = j(context2, attributeSet);
                v(l4, str);
                break;
            case 3:
                l4 = o(context2, attributeSet);
                v(l4, str);
                break;
            case 4:
                l4 = h(context2, attributeSet);
                v(l4, str);
                break;
            case 5:
                l4 = m(context2, attributeSet);
                v(l4, str);
                break;
            case 6:
                l4 = n(context2, attributeSet);
                v(l4, str);
                break;
            case 7:
                l4 = k(context2, attributeSet);
                v(l4, str);
                break;
            case '\b':
                l4 = p(context2, attributeSet);
                v(l4, str);
                break;
            case '\t':
                l4 = i(context2, attributeSet);
                v(l4, str);
                break;
            case '\n':
                l4 = c(context2, attributeSet);
                v(l4, str);
                break;
            case 11:
                l4 = e(context2, attributeSet);
                v(l4, str);
                break;
            case '\f':
                l4 = g(context2, attributeSet);
                v(l4, str);
                break;
            case '\r':
                l4 = d(context2, attributeSet);
                v(l4, str);
                break;
            default:
                l4 = q(context2, str, attributeSet);
                break;
        }
        if (l4 == null && context != context2) {
            l4 = t(context2, str, attributeSet);
        }
        if (l4 != null) {
            b(l4, attributeSet);
            a(context2, l4, attributeSet);
        }
        return l4;
    }
}
