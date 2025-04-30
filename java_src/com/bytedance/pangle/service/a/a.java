package com.bytedance.pangle.service.a;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.d;
import com.bytedance.pangle.f;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.pangle.plugin.PluginManager;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class a extends d.a {

    /* renamed from: b  reason: collision with root package name */
    private static volatile a f10353b;

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<ComponentName, IBinder> f10355c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final HashMap<ComponentName, b> f10356d = new HashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private final C0041a<Intent> f10357e = new C0041a<>();

    /* renamed from: f  reason: collision with root package name */
    private final HashMap<ComponentName, com.bytedance.pangle.service.a> f10358f = new HashMap<>();

    /* renamed from: g  reason: collision with root package name */
    private final HashSet<ComponentName> f10359g = new HashSet<>();

    /* renamed from: h  reason: collision with root package name */
    private final HashSet<ComponentName> f10360h = new HashSet<>();

    /* renamed from: a  reason: collision with root package name */
    private final Handler f10354a = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.pangle.service.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0041a<T> extends HashMap<f, T> {
        C0041a() {
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final boolean containsKey(@Nullable Object obj) {
            if (super.containsKey(obj)) {
                return true;
            }
            if (obj instanceof f) {
                for (f fVar : keySet()) {
                    try {
                    } catch (RemoteException e4) {
                        e4.printStackTrace();
                    }
                    if (fVar.a() == ((f) obj).a()) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        @Nullable
        public final T remove(@Nullable Object obj) {
            f fVar;
            T t3 = (T) super.remove(obj);
            if (t3 != null) {
                return t3;
            }
            Iterator<f> it2 = keySet().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    fVar = null;
                    break;
                }
                fVar = it2.next();
                try {
                } catch (RemoteException e4) {
                    e4.printStackTrace();
                }
                if (fVar.a() == ((f) obj).a()) {
                    break;
                }
            }
            return (T) super.remove(fVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends HashSet<f> {
        b() {
        }

        @Override // java.util.HashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(@Nullable Object obj) {
            if (super.contains(obj)) {
                return true;
            }
            if (obj instanceof f) {
                Iterator<f> it2 = iterator();
                while (it2.hasNext()) {
                    try {
                    } catch (RemoteException e4) {
                        e4.printStackTrace();
                    }
                    if (it2.next().a() == ((f) obj).a()) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }

        @Override // java.util.HashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(@Nullable Object obj) {
            if (super.remove(obj)) {
                return true;
            }
            f fVar = null;
            Iterator<f> it2 = iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                f next = it2.next();
                try {
                } catch (RemoteException e4) {
                    e4.printStackTrace();
                }
                if (next.a() == ((f) obj).a()) {
                    fVar = next;
                    break;
                }
            }
            return super.remove(fVar);
        }
    }

    private a() {
    }

    public static a b() {
        if (f10353b == null) {
            synchronized (a.class) {
                if (f10353b == null) {
                    f10353b = new a();
                }
            }
        }
        return f10353b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized ComponentName c(Intent intent, String str) {
        ComponentName component = intent.getComponent();
        if (!this.f10358f.containsKey(component)) {
            com.bytedance.pangle.service.a d4 = d(intent, str);
            if (d4 == null) {
                return component;
            }
            this.f10358f.put(component, d4);
            this.f10359g.add(component);
        }
        com.bytedance.pangle.service.a aVar = this.f10358f.get(component);
        if (aVar != null) {
            aVar.onStartCommand(intent, 0, 0);
        }
        return component;
    }

    private static com.bytedance.pangle.service.a d(Intent intent, String str) {
        com.bytedance.pangle.service.a e4 = e(intent, str);
        if (e4 != null) {
            e4.onCreate();
        }
        return e4;
    }

    private static com.bytedance.pangle.service.a e(Intent intent, String str) {
        boolean z3;
        ComponentName component = intent.getComponent();
        Plugin plugin = PluginManager.getInstance().getPlugin(str);
        try {
            z3 = Zeus.loadPlugin(str);
        } catch (Exception e4) {
            e = e4;
            z3 = false;
        }
        try {
            com.bytedance.pangle.service.a aVar = (com.bytedance.pangle.service.a) plugin.mClassLoader.loadClass(component.getClassName()).newInstance();
            aVar.attach(plugin);
            return aVar;
        } catch (Exception e5) {
            e = e5;
            ZeusLogger.errReport(ZeusLogger.TAG_SERVICE, "newServiceInstance failed! loadPlugin = ".concat(String.valueOf(z3)), e);
            throw new RuntimeException(e);
        }
    }

    @Override // com.bytedance.pangle.d.a, android.os.IInterface
    public IBinder asBinder() {
        return null;
    }

    @Override // com.bytedance.pangle.d
    public final ComponentName a(final Intent intent, final String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return c(intent, str);
        }
        this.f10354a.post(new Runnable() { // from class: com.bytedance.pangle.service.a.a.1
            @Override // java.lang.Runnable
            public final void run() {
                a.this.c(intent, str);
            }
        });
        return intent.getComponent();
    }

    @Override // com.bytedance.pangle.d
    public final boolean b(final Intent intent, String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            b().a(intent.getComponent());
            return true;
        }
        this.f10354a.post(new Runnable() { // from class: com.bytedance.pangle.service.a.a.2
            @Override // java.lang.Runnable
            public final void run() {
                a.b().a(intent.getComponent());
            }
        });
        return true;
    }

    public final synchronized boolean a(ComponentName componentName) {
        if (this.f10358f.containsKey(componentName)) {
            this.f10360h.add(componentName);
            return b(componentName);
        }
        return false;
    }

    private boolean b(ComponentName componentName) {
        if (!this.f10359g.contains(componentName)) {
            if (this.f10356d.get(componentName) == null) {
                c(componentName);
                return true;
            }
            return false;
        } else if (!this.f10360h.contains(componentName) || this.f10356d.containsKey(componentName)) {
            return false;
        } else {
            c(componentName);
            return true;
        }
    }

    private void c(ComponentName componentName) {
        com.bytedance.pangle.service.a remove = this.f10358f.remove(componentName);
        this.f10360h.remove(componentName);
        this.f10355c.remove(componentName);
        this.f10359g.remove(componentName);
        if (remove != null) {
            remove.onDestroy();
        }
    }

    @Override // com.bytedance.pangle.d
    public final boolean a(final Intent intent, final f fVar, final int i2, final String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return a(intent, fVar, str);
        }
        this.f10354a.post(new Runnable() { // from class: com.bytedance.pangle.service.a.a.3
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    a.this.a(intent, fVar, str);
                } catch (RemoteException e4) {
                    ZeusLogger.errReport(ZeusLogger.TAG_SERVICE, "bindService failed", e4);
                }
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean a(Intent intent, f fVar, String str) {
        ComponentName component = intent.getComponent();
        if (!this.f10358f.containsKey(component)) {
            com.bytedance.pangle.service.a d4 = d(intent, str);
            if (d4 == null) {
                return false;
            }
            this.f10358f.put(component, d4);
        }
        com.bytedance.pangle.service.a aVar = this.f10358f.get(component);
        if (!this.f10355c.containsKey(component)) {
            this.f10355c.put(component, aVar.onBind(intent));
        }
        IBinder iBinder = this.f10355c.get(component);
        if (iBinder != null) {
            if (this.f10356d.containsKey(component)) {
                if (!this.f10356d.get(component).contains(fVar)) {
                    this.f10356d.get(component).add(fVar);
                    this.f10357e.put(fVar, intent);
                    fVar.a(component, iBinder);
                }
            } else {
                b bVar = new b();
                bVar.add(fVar);
                this.f10356d.put(component, bVar);
                this.f10357e.put(fVar, intent);
                fVar.a(component, iBinder);
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(f fVar) {
        for (ComponentName componentName : this.f10356d.keySet()) {
            b bVar = this.f10356d.get(componentName);
            if (bVar.contains(fVar)) {
                bVar.remove(fVar);
                Intent remove = this.f10357e.remove(fVar);
                if (bVar.size() == 0) {
                    this.f10356d.remove(componentName);
                    com.bytedance.pangle.service.a aVar = this.f10358f.get(componentName);
                    if (aVar != null) {
                        aVar.onUnbind(remove);
                    }
                }
                b(componentName);
                return;
            }
        }
    }

    @Override // com.bytedance.pangle.d
    public final void a(final f fVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            b(fVar);
        } else {
            this.f10354a.post(new Runnable() { // from class: com.bytedance.pangle.service.a.a.4
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.b(fVar);
                }
            });
        }
    }
}
