package androidx.appcompat.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import androidx.annotation.StyleRes;
import androidx.appcompat.R;
/* loaded from: classes.dex */
public class ContextThemeWrapper extends ContextWrapper {

    /* renamed from: a  reason: collision with root package name */
    private int f447a;

    /* renamed from: b  reason: collision with root package name */
    private Resources.Theme f448b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f449c;

    /* renamed from: d  reason: collision with root package name */
    private Configuration f450d;

    /* renamed from: e  reason: collision with root package name */
    private Resources f451e;

    public ContextThemeWrapper() {
        super(null);
    }

    private Resources a() {
        if (this.f451e == null) {
            Configuration configuration = this.f450d;
            if (configuration == null) {
                this.f451e = super.getResources();
            } else if (Build.VERSION.SDK_INT >= 17) {
                this.f451e = createConfigurationContext(configuration).getResources();
            } else {
                Resources resources = super.getResources();
                Configuration configuration2 = new Configuration(resources.getConfiguration());
                configuration2.updateFrom(this.f450d);
                this.f451e = new Resources(resources.getAssets(), resources.getDisplayMetrics(), configuration2);
            }
        }
        return this.f451e;
    }

    private void b() {
        boolean z3 = this.f448b == null;
        if (z3) {
            this.f448b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f448b.setTo(theme);
            }
        }
        c(this.f448b, this.f447a, z3);
    }

    public void applyOverrideConfiguration(Configuration configuration) {
        if (this.f451e == null) {
            if (this.f450d == null) {
                this.f450d = new Configuration(configuration);
                return;
            }
            throw new IllegalStateException("Override configuration has already been set");
        }
        throw new IllegalStateException("getResources() or getAssets() has already been called");
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    protected void c(Resources.Theme theme, int i2, boolean z3) {
        theme.applyStyle(i2, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return a();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if ("layout_inflater".equals(str)) {
            if (this.f449c == null) {
                this.f449c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return this.f449c;
        }
        return getBaseContext().getSystemService(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f448b;
        if (theme != null) {
            return theme;
        }
        if (this.f447a == 0) {
            this.f447a = R.style.Theme_AppCompat_Light;
        }
        b();
        return this.f448b;
    }

    public int getThemeResId() {
        return this.f447a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i2) {
        if (this.f447a != i2) {
            this.f447a = i2;
            b();
        }
    }

    public ContextThemeWrapper(Context context, @StyleRes int i2) {
        super(context);
        this.f447a = i2;
    }

    public ContextThemeWrapper(Context context, Resources.Theme theme) {
        super(context);
        this.f448b = theme;
    }
}
