package com.xinzhu.overmind.server.pm;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.Xml;
import com.join.mgps.receiver.BootReceiver_;
import com.xinzhu.overmind.server.user.MindUserHandle;
import com.xinzhu.overmind.utils.u;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;
/* compiled from: RegisteredServicesCache.java */
/* loaded from: classes3.dex */
public abstract class l<V> {

    /* renamed from: l  reason: collision with root package name */
    private static final String f64620l = "PackageManager";

    /* renamed from: m  reason: collision with root package name */
    private static final boolean f64621m = false;

    /* renamed from: n  reason: collision with root package name */
    protected static final String f64622n = "registered_services";

    /* renamed from: a  reason: collision with root package name */
    public final Context f64623a;

    /* renamed from: b  reason: collision with root package name */
    private final String f64624b;

    /* renamed from: c  reason: collision with root package name */
    private final String f64625c;

    /* renamed from: d  reason: collision with root package name */
    private final String f64626d;

    /* renamed from: e  reason: collision with root package name */
    protected final Object f64627e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private final SparseArray<e<V>> f64628f = new SparseArray<>(2);

    /* renamed from: g  reason: collision with root package name */
    private m<V> f64629g;

    /* renamed from: h  reason: collision with root package name */
    private Handler f64630h;

    /* renamed from: i  reason: collision with root package name */
    private final j f64631i;

    /* renamed from: j  reason: collision with root package name */
    private final com.xinzhu.overmind.server.user.b f64632j;

    /* renamed from: k  reason: collision with root package name */
    private final BroadcastReceiver f64633k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RegisteredServicesCache.java */
    /* loaded from: classes3.dex */
    public class a implements j {
        a() {
        }

        @Override // com.xinzhu.overmind.server.pm.j
        public void a(String packageName, int userId) {
            l.this.q(new Intent().setAction(BootReceiver_.f51452b), userId);
        }

        @Override // com.xinzhu.overmind.server.pm.j
        public void b(String packageName, int userId) {
            l.this.q(new Intent().setAction(BootReceiver_.f51451a), userId);
        }

        @Override // com.xinzhu.overmind.server.pm.j
        public void c(String packageName, int userId) {
            l.this.q(new Intent().setAction("android.intent.action.PACKAGE_CHANGED"), userId);
        }
    }

    /* compiled from: RegisteredServicesCache.java */
    /* loaded from: classes3.dex */
    class b implements com.xinzhu.overmind.server.user.b {
        b() {
        }

        @Override // com.xinzhu.overmind.server.user.b
        public void a(int userId) {
            l.this.u(userId);
        }

        @Override // com.xinzhu.overmind.server.user.b
        public void b(int userId) {
        }

        @Override // com.xinzhu.overmind.server.user.b
        public void c(int userId) {
        }
    }

    /* compiled from: RegisteredServicesCache.java */
    /* loaded from: classes3.dex */
    class c extends BroadcastReceiver {
        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int intExtra = intent.getIntExtra("android.intent.extra.UID", -1);
            if (intExtra != -1) {
                l.this.q(intent, MindUserHandle.k(intExtra));
            }
        }
    }

    /* compiled from: RegisteredServicesCache.java */
    /* loaded from: classes3.dex */
    public static class d<V> {

        /* renamed from: a  reason: collision with root package name */
        public final V f64637a;

        /* renamed from: b  reason: collision with root package name */
        public final ComponentInfo f64638b;

        /* renamed from: c  reason: collision with root package name */
        public final ComponentName f64639c;

        /* renamed from: d  reason: collision with root package name */
        public final int f64640d;

        public d(V type, ComponentInfo componentInfo, ComponentName componentName) {
            this.f64637a = type;
            this.f64638b = componentInfo;
            this.f64639c = componentName;
            this.f64640d = componentInfo != null ? componentInfo.applicationInfo.uid : -1;
        }

        public String toString() {
            return "ServiceInfo: " + this.f64637a + ", " + this.f64639c + ", uid " + this.f64640d;
        }
    }

    public l(Context context, String interfaceName, String metaDataName, String attributeName) {
        a aVar = new a();
        this.f64631i = aVar;
        b bVar = new b();
        this.f64632j = bVar;
        this.f64633k = new c();
        this.f64623a = context;
        this.f64624b = interfaceName;
        this.f64625c = metaDataName;
        this.f64626d = attributeName;
        h.get().addPackageMonitor(aVar);
        com.xinzhu.overmind.server.user.c.get().registerListener(bVar);
    }

    private boolean i(ArrayList<d<V>> serviceInfos, V type) {
        int size = serviceInfos.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (serviceInfos.get(i2).f64637a.equals(type)) {
                return true;
            }
        }
        return false;
    }

    private boolean j(ArrayList<d<V>> serviceInfos, V type, int uid) {
        int size = serviceInfos.size();
        for (int i2 = 0; i2 < size; i2++) {
            d<V> dVar = serviceInfos.get(i2);
            if (dVar.f64637a.equals(type) && dVar.f64640d == uid) {
                return true;
            }
        }
        return false;
    }

    private boolean k(Integer[] changedUids, Integer uid) {
        return changedUids == null || com.xinzhu.overmind.utils.d.f(changedUids, uid);
    }

    private e<V> l(int userId) {
        e<V> eVar = this.f64628f.get(userId);
        if (eVar == null) {
            e<V> eVar2 = new e<>(null);
            this.f64628f.put(userId, eVar2);
            return eVar2;
        }
        return eVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void m(Integer[] changedUids, int userId) {
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : x(userId)) {
            try {
                d w3 = w(resolveInfo);
                if (w3 == null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Unable to load service info ");
                    sb.append(resolveInfo.serviceInfo);
                } else {
                    arrayList.add(w3);
                }
            } catch (IOException | XmlPullParserException unused) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Unable to load service info ");
                sb2.append(resolveInfo.toString());
            }
        }
        synchronized (this.f64627e) {
            e l4 = l(userId);
            boolean z3 = l4.f64642b == null;
            if (z3) {
                l4.f64642b = new HashMap();
            }
            Iterator it2 = arrayList.iterator();
            boolean z4 = false;
            while (it2.hasNext()) {
                d<V> dVar = (d) it2.next();
                Integer num = l4.f64641a.get(dVar.f64637a);
                if (num == null) {
                    l4.f64642b.put(dVar.f64637a, dVar);
                    l4.f64641a.put(dVar.f64637a, Integer.valueOf(dVar.f64640d));
                    if (!l4.f64643c || !z3) {
                        s(dVar.f64637a, userId, false);
                    }
                    z4 = true;
                } else if (num.intValue() == dVar.f64640d) {
                    l4.f64642b.put(dVar.f64637a, dVar);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            for (V v3 : l4.f64641a.keySet()) {
                if (!i(arrayList, v3) && k(changedUids, l4.f64641a.get(v3))) {
                    arrayList2.add(v3);
                }
            }
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                Object next = it3.next();
                l4.f64641a.remove(next);
                l4.f64642b.remove(next);
                s(next, userId, true);
                z4 = true;
            }
            if (z4) {
                t(userId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(Intent intent, int userId) {
        String action = intent.getAction();
        boolean z3 = BootReceiver_.f51452b.equals(action) || "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE".equals(action);
        boolean booleanExtra = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
        if (z3 && booleanExtra) {
            return;
        }
        int intExtra = intent.getIntExtra("android.intent.extra.UID", -1);
        m(intExtra > 0 ? new Integer[]{Integer.valueOf(intExtra)} : null, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void r(m mVar, Object obj, int i2, boolean z3) {
        try {
            mVar.a(obj, i2, z3);
        } catch (Throwable th) {
            u.n(f64620l, "Exception from onServiceChanged", th);
        }
    }

    private void s(final V type, final int userId, final boolean removed) {
        final m<V> mVar;
        Handler handler;
        synchronized (this) {
            mVar = this.f64629g;
            handler = this.f64630h;
        }
        if (mVar == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.xinzhu.overmind.server.pm.k
            @Override // java.lang.Runnable
            public final void run() {
                l.r(m.this, type, userId, removed);
            }
        });
    }

    public void a(int userId) {
        synchronized (this.f64627e) {
            l(userId).f64642b = null;
            t(userId);
        }
    }

    public void b(int userId) {
        ApplicationInfo applicationInfo;
        synchronized (this.f64627e) {
            e<V> l4 = l(userId);
            if (l4.f64642b == null) {
                return;
            }
            ArrayList arrayList = null;
            for (d dVar : new ArrayList(l4.f64642b.values())) {
                long D = new com.xinzhu.haunted.android.content.pm.b(dVar.f64638b.applicationInfo).D();
                if (h.get().getApplicationInfo(dVar.f64638b.packageName, 0, userId) == null || new com.xinzhu.haunted.android.content.pm.b(applicationInfo).D() != D) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(Integer.valueOf(dVar.f64640d));
                }
            }
            if (arrayList == null || arrayList.size() <= 0) {
                return;
            }
            m((Integer[]) arrayList.toArray(), userId);
        }
    }

    public void c(m<V> listener, Handler handler) {
        if (handler == null) {
            handler = new Handler(this.f64623a.getMainLooper());
        }
        synchronized (this) {
            this.f64630h = handler;
            this.f64629g = listener;
        }
    }

    public Collection<d<V>> e(int userId) {
        Collection<d<V>> unmodifiableCollection;
        synchronized (this.f64627e) {
            e<V> l4 = l(userId);
            if (l4.f64642b == null) {
                m(null, userId);
            }
            unmodifiableCollection = Collections.unmodifiableCollection(new ArrayList(l4.f64642b.values()));
        }
        return unmodifiableCollection;
    }

    public void f(FileDescriptor fd, PrintWriter fout, String[] args, int userId) {
        synchronized (this.f64627e) {
            e<V> l4 = l(userId);
            if (l4.f64642b != null) {
                fout.println("RegisteredServicesCache: " + l4.f64642b.size() + " services");
                Iterator<d<V>> it2 = l4.f64642b.values().iterator();
                while (it2.hasNext()) {
                    fout.println("  " + it2.next());
                }
            } else {
                fout.println("RegisteredServicesCache: services not loaded");
            }
        }
    }

    public m<V> n() {
        m<V> mVar;
        synchronized (this) {
            mVar = this.f64629g;
        }
        return mVar;
    }

    protected Map<V, Integer> o(int userId) {
        return l(userId).f64641a;
    }

    public d<V> p(V type, int userId) {
        d<V> dVar;
        synchronized (this.f64627e) {
            e<V> l4 = l(userId);
            if (l4.f64642b == null) {
                m(null, userId);
            }
            dVar = l4.f64642b.get(type);
        }
        return dVar;
    }

    protected void t(int userId) {
    }

    protected void u(int userId) {
        synchronized (this.f64627e) {
            this.f64628f.remove(userId);
        }
    }

    public abstract V v(Resources res, String packageName, AttributeSet attrs);

    protected d<V> w(ResolveInfo service) throws XmlPullParserException, IOException {
        XmlResourceParser loadXmlMetaData;
        XmlResourceParser xmlResourceParser = null;
        if (service.serviceInfo == null) {
            return null;
        }
        ServiceInfo serviceInfo = new ServiceInfo(service.serviceInfo);
        serviceInfo.applicationInfo = i.b(serviceInfo.applicationInfo);
        ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
        PackageManager packageManager = this.f64623a.getPackageManager();
        try {
            try {
                loadXmlMetaData = serviceInfo.loadXmlMetaData(packageManager, this.f64625c);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (loadXmlMetaData != null) {
                AttributeSet asAttributeSet = Xml.asAttributeSet(loadXmlMetaData);
                while (true) {
                    int next = loadXmlMetaData.next();
                    if (next == 1 || next == 2) {
                        break;
                    }
                }
                String name = loadXmlMetaData.getName();
                if (this.f64626d.equals(name)) {
                    V v3 = v(packageManager.getResourcesForApplication(serviceInfo.applicationInfo), serviceInfo.packageName, asAttributeSet);
                    if (v3 == null) {
                        loadXmlMetaData.close();
                        return null;
                    }
                    d<V> dVar = new d<>(v3, service.serviceInfo, componentName);
                    loadXmlMetaData.close();
                    return dVar;
                }
                throw new XmlPullParserException("Meta-data does not start with " + this.f64626d + " tag " + name);
            }
            throw new XmlPullParserException("No " + this.f64625c + " meta-data");
        } catch (PackageManager.NameNotFoundException unused2) {
            xmlResourceParser = loadXmlMetaData;
            throw new XmlPullParserException("Unable to load resources for pacakge " + serviceInfo.packageName);
        } catch (Throwable th2) {
            th = th2;
            xmlResourceParser = loadXmlMetaData;
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }

    protected List<ResolveInfo> x(int userId) {
        Intent intent = new Intent(this.f64624b);
        return h.get().queryIntentServices(intent, 786560, intent.resolveTypeIfNeeded(this.f64623a.getContentResolver()), userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RegisteredServicesCache.java */
    /* loaded from: classes3.dex */
    public static class e<V> {

        /* renamed from: a  reason: collision with root package name */
        final Map<V, Integer> f64641a;

        /* renamed from: b  reason: collision with root package name */
        Map<V, d<V>> f64642b;

        /* renamed from: c  reason: collision with root package name */
        boolean f64643c;

        private e() {
            this.f64641a = new HashMap();
            this.f64642b = null;
            this.f64643c = true;
        }

        /* synthetic */ e(a aVar) {
            this();
        }
    }
}
