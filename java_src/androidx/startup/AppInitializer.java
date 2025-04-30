package androidx.startup;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.tracing.Trace;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public final class AppInitializer {

    /* renamed from: d  reason: collision with root package name */
    private static final String f7412d = "Startup";

    /* renamed from: e  reason: collision with root package name */
    private static volatile AppInitializer f7413e;

    /* renamed from: f  reason: collision with root package name */
    private static final Object f7414f = new Object();
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    final Context f7417c;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    final Set<Class<? extends Initializer<?>>> f7416b = new HashSet();
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    final Map<Class<?>, Object> f7415a = new HashMap();

    AppInitializer(@NonNull Context context) {
        this.f7417c = context.getApplicationContext();
    }

    @NonNull
    public static AppInitializer getInstance(@NonNull Context context) {
        if (f7413e == null) {
            synchronized (f7414f) {
                if (f7413e == null) {
                    f7413e = new AppInitializer(context);
                }
            }
        }
        return f7413e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public void a() {
        try {
            try {
                Trace.beginSection(f7412d);
                Bundle bundle = this.f7417c.getPackageManager().getProviderInfo(new ComponentName(this.f7417c.getPackageName(), InitializationProvider.class.getName()), 128).metaData;
                String string = this.f7417c.getString(R.string.androidx_startup);
                if (bundle != null) {
                    HashSet hashSet = new HashSet();
                    for (String str : bundle.keySet()) {
                        if (string.equals(bundle.getString(str, null))) {
                            Class<?> cls = Class.forName(str);
                            if (Initializer.class.isAssignableFrom(cls)) {
                                this.f7416b.add(cls);
                                b(cls, hashSet);
                            }
                        }
                    }
                }
            } finally {
                Trace.endSection();
            }
        } catch (PackageManager.NameNotFoundException | ClassNotFoundException e4) {
            throw new StartupException(e4);
        }
    }

    @NonNull
    <T> T b(@NonNull Class<? extends Initializer<?>> cls, @NonNull Set<Class<?>> set) {
        T t3;
        synchronized (f7414f) {
            if (Trace.isEnabled()) {
                Trace.beginSection(cls.getSimpleName());
            }
            if (!set.contains(cls)) {
                if (!this.f7415a.containsKey(cls)) {
                    set.add(cls);
                    try {
                        Initializer<?> newInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                        List<Class<? extends Initializer<?>>> dependencies = newInstance.dependencies();
                        if (!dependencies.isEmpty()) {
                            for (Class<? extends Initializer<?>> cls2 : dependencies) {
                                if (!this.f7415a.containsKey(cls2)) {
                                    b(cls2, set);
                                }
                            }
                        }
                        t3 = (T) newInstance.create(this.f7417c);
                        set.remove(cls);
                        this.f7415a.put(cls, t3);
                    } catch (Throwable th) {
                        throw new StartupException(th);
                    }
                } else {
                    t3 = (T) this.f7415a.get(cls);
                }
                Trace.endSection();
            } else {
                throw new IllegalStateException(String.format("Cannot initialize %s. Cycle detected.", cls.getName()));
            }
        }
        return t3;
    }

    @NonNull
    public <T> T initializeComponent(@NonNull Class<? extends Initializer<T>> cls) {
        return (T) b(cls, new HashSet());
    }

    public boolean isEagerlyInitialized(@NonNull Class<? extends Initializer<?>> cls) {
        return this.f7416b.contains(cls);
    }
}
