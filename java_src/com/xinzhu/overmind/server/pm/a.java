package com.xinzhu.overmind.server.pm;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.ArrayMap;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.xinzhu.overmind.server.pm.MindPackage;
import com.xinzhu.overmind.utils.u;
import java.util.ArrayList;
import java.util.List;
/* compiled from: ComponentResolver.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: g  reason: collision with root package name */
    public static final String f64573g = "ComponentResolver";

    /* renamed from: a  reason: collision with root package name */
    private final Object f64574a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final b f64575b = new b();

    /* renamed from: c  reason: collision with root package name */
    private final c f64576c = new c();

    /* renamed from: d  reason: collision with root package name */
    private final b f64577d = new b();

    /* renamed from: e  reason: collision with root package name */
    private final d f64578e = new d();

    /* renamed from: f  reason: collision with root package name */
    private final ArrayMap<String, MindPackage.g> f64579f = new ArrayMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ComponentResolver.java */
    /* loaded from: classes3.dex */
    public static final class b extends f<MindPackage.ActivityIntentInfo, ResolveInfo> {

        /* renamed from: m  reason: collision with root package name */
        private final ArrayMap<ComponentName, MindPackage.b> f64580m;

        /* renamed from: n  reason: collision with root package name */
        private int f64581n;

        private b() {
            this.f64580m = new ArrayMap<>();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void G(MindPackage.b a4, String type, List<MindPackage.ActivityIntentInfo> newIntents) {
            this.f64580m.put(a4.a(), a4);
            int size = a4.f64553b.size();
            for (int i2 = 0; i2 < size; i2++) {
                MindPackage.ActivityIntentInfo activityIntentInfo = (MindPackage.ActivityIntentInfo) a4.f64553b.get(i2);
                if (newIntents != null && TTDownloadField.TT_ACTIVITY.equals(type)) {
                    newIntents.add(activityIntentInfo);
                    b(activityIntentInfo);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void M(MindPackage.b a4, String type) {
            this.f64580m.remove(a4.a());
            int size = a4.f64553b.size();
            for (int i2 = 0; i2 < size; i2++) {
                x((MindPackage.ActivityIntentInfo) a4.f64553b.get(i2));
            }
        }

        private MindPackageSettings N(MindPackageSettings ps) {
            return ps.f64563a != null ? h.get().getMindPackageSettingsInternal(ps.f64563a.f64526m) : ps;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.server.pm.f
        /* renamed from: H */
        public boolean q(String packageName, MindPackage.ActivityIntentInfo info) {
            return packageName.equals(info.f64539h.f64552a.f64526m);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.server.pm.f
        /* renamed from: I */
        public MindPackage.ActivityIntentInfo[] r(int size) {
            return new MindPackage.ActivityIntentInfo[size];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.server.pm.f
        /* renamed from: J */
        public ResolveInfo s(MindPackage.ActivityIntentInfo info, int match, int userId) {
            MindPackageSettings mindPackageSettings;
            MindPackage.b bVar = info.f64539h;
            if (h.get().isComponentEnabled(bVar.f64551f, userId) && (mindPackageSettings = bVar.f64552a.f64525l) != null) {
                MindPackageSettings N = N(mindPackageSettings);
                bVar.f64552a.f64525l = N;
                ActivityInfo e4 = i.e(bVar, this.f64581n, N.i(userId), userId);
                ResolveInfo resolveInfo = new ResolveInfo();
                resolveInfo.activityInfo = e4;
                if ((this.f64581n & 64) != 0) {
                    resolveInfo.filter = info.f64540a;
                }
                resolveInfo.priority = info.f64540a.getPriority();
                resolveInfo.preferredOrder = bVar.f64552a.f64527n;
                resolveInfo.match = match;
                resolveInfo.isDefault = info.f64541b;
                resolveInfo.labelRes = info.f64542c;
                resolveInfo.nonLocalizedLabel = info.f64543d;
                resolveInfo.icon = info.f64544e;
                return resolveInfo;
            }
            return null;
        }

        List<ResolveInfo> K(Intent intent, String resolvedType, int flags, int userId) {
            this.f64581n = flags;
            return super.t(intent, resolvedType, (flags & 65536) != 0, userId);
        }

        List<ResolveInfo> L(Intent intent, String resolvedType, int flags, List<MindPackage.b> packageActivities, int userId) {
            if (packageActivities == null) {
                return null;
            }
            this.f64581n = flags;
            boolean z3 = (flags & 65536) != 0;
            int size = packageActivities.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i2 = 0; i2 < size; i2++) {
                ArrayList<II> arrayList2 = packageActivities.get(i2).f64553b;
                if (arrayList2 != 0 && arrayList2.size() > 0) {
                    MindPackage.ActivityIntentInfo[] activityIntentInfoArr = new MindPackage.ActivityIntentInfo[arrayList2.size()];
                    arrayList2.toArray(activityIntentInfoArr);
                    arrayList.add(activityIntentInfoArr);
                }
            }
            return super.u(intent, resolvedType, z3, arrayList, userId);
        }

        @Override // com.xinzhu.overmind.server.pm.f
        public List<ResolveInfo> t(Intent intent, String resolvedType, boolean defaultOnly, int userId) {
            this.f64581n = defaultOnly ? 65536 : 0;
            return super.t(intent, resolvedType, defaultOnly, userId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ComponentResolver.java */
    /* loaded from: classes3.dex */
    public static final class c extends f<MindPackage.ProviderIntentInfo, ResolveInfo> {

        /* renamed from: m  reason: collision with root package name */
        private final ArrayMap<ComponentName, MindPackage.g> f64582m;

        /* renamed from: n  reason: collision with root package name */
        private int f64583n;

        private c() {
            this.f64582m = new ArrayMap<>();
        }

        void E(MindPackage.g p3) {
            this.f64582m.put(p3.a(), p3);
            int size = p3.f64553b.size();
            for (int i2 = 0; i2 < size; i2++) {
                b((MindPackage.ProviderIntentInfo) p3.f64553b.get(i2));
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.server.pm.f
        /* renamed from: F */
        public boolean c(MindPackage.ProviderIntentInfo filter, List<ResolveInfo> dest) {
            ProviderInfo providerInfo = filter.f64547h.f64560f;
            for (int size = dest.size() - 1; size >= 0; size--) {
                ProviderInfo providerInfo2 = dest.get(size).providerInfo;
                if (providerInfo2.name.equals(providerInfo.name) && providerInfo2.packageName.equals(providerInfo.packageName)) {
                    return false;
                }
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.server.pm.f
        /* renamed from: G */
        public boolean q(String packageName, MindPackage.ProviderIntentInfo info) {
            return packageName.equals(info.f64547h.f64552a.f64526m);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.server.pm.f
        /* renamed from: H */
        public MindPackage.ProviderIntentInfo[] r(int size) {
            return new MindPackage.ProviderIntentInfo[size];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.server.pm.f
        /* renamed from: I */
        public ResolveInfo s(MindPackage.ProviderIntentInfo filter, int match, int userId) {
            MindPackageSettings mindPackageSettings;
            MindPackage.g gVar = filter.f64547h;
            if (h.get().isComponentEnabled(gVar.f64560f, userId) && (mindPackageSettings = gVar.f64552a.f64525l) != null) {
                ProviderInfo k4 = i.k(gVar, this.f64583n, mindPackageSettings.i(userId), userId);
                ResolveInfo resolveInfo = new ResolveInfo();
                resolveInfo.providerInfo = k4;
                if ((this.f64583n & 64) != 0) {
                    resolveInfo.filter = filter.f64540a;
                }
                resolveInfo.priority = filter.f64540a.getPriority();
                resolveInfo.preferredOrder = gVar.f64552a.f64527n;
                resolveInfo.match = match;
                resolveInfo.isDefault = filter.f64541b;
                resolveInfo.labelRes = filter.f64542c;
                resolveInfo.nonLocalizedLabel = filter.f64543d;
                resolveInfo.icon = filter.f64544e;
                return resolveInfo;
            }
            return null;
        }

        List<ResolveInfo> J(Intent intent, String resolvedType, int flags, int userId) {
            this.f64583n = flags;
            return super.t(intent, resolvedType, (flags & 65536) != 0, userId);
        }

        List<ResolveInfo> K(Intent intent, String resolvedType, int flags, List<MindPackage.g> packageProviders, int userId) {
            if (packageProviders == null) {
                return null;
            }
            this.f64583n = flags;
            boolean z3 = (flags & 65536) != 0;
            int size = packageProviders.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i2 = 0; i2 < size; i2++) {
                ArrayList<II> arrayList2 = packageProviders.get(i2).f64553b;
                if (arrayList2 != 0 && arrayList2.size() > 0) {
                    MindPackage.ProviderIntentInfo[] providerIntentInfoArr = new MindPackage.ProviderIntentInfo[arrayList2.size()];
                    arrayList2.toArray(providerIntentInfoArr);
                    arrayList.add(providerIntentInfoArr);
                }
            }
            return super.u(intent, resolvedType, z3, arrayList, userId);
        }

        void L(MindPackage.g p3) {
            this.f64582m.remove(p3.a());
            int size = p3.f64553b.size();
            for (int i2 = 0; i2 < size; i2++) {
                x((MindPackage.ProviderIntentInfo) p3.f64553b.get(i2));
            }
        }

        @Override // com.xinzhu.overmind.server.pm.f
        public List<ResolveInfo> t(Intent intent, String resolvedType, boolean defaultOnly, int userId) {
            this.f64583n = defaultOnly ? 65536 : 0;
            return super.t(intent, resolvedType, defaultOnly, userId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ComponentResolver.java */
    /* loaded from: classes3.dex */
    public static final class d extends f<MindPackage.ServiceIntentInfo, ResolveInfo> {

        /* renamed from: m  reason: collision with root package name */
        private final ArrayMap<ComponentName, MindPackage.h> f64584m;

        /* renamed from: n  reason: collision with root package name */
        private int f64585n;

        private d() {
            this.f64584m = new ArrayMap<>();
        }

        void E(MindPackage.h s3) {
            this.f64584m.put(s3.a(), s3);
            int size = s3.f64553b.size();
            for (int i2 = 0; i2 < size; i2++) {
                b((MindPackage.ServiceIntentInfo) s3.f64553b.get(i2));
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.server.pm.f
        /* renamed from: F */
        public boolean q(String packageName, MindPackage.ServiceIntentInfo info) {
            return packageName.equals(info.f64548h.f64552a.f64526m);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.server.pm.f
        /* renamed from: G */
        public MindPackage.ServiceIntentInfo[] r(int size) {
            return new MindPackage.ServiceIntentInfo[size];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.server.pm.f
        /* renamed from: H */
        public ResolveInfo s(MindPackage.ServiceIntentInfo filter, int match, int userId) {
            MindPackageSettings mindPackageSettings;
            MindPackage.h hVar = filter.f64548h;
            if (h.get().isComponentEnabled(hVar.f64561f, userId) && (mindPackageSettings = hVar.f64552a.f64525l) != null) {
                ServiceInfo l4 = i.l(hVar, this.f64585n, mindPackageSettings.i(userId), userId);
                ResolveInfo resolveInfo = new ResolveInfo();
                resolveInfo.serviceInfo = l4;
                if ((this.f64585n & 64) != 0) {
                    resolveInfo.filter = filter.f64540a;
                }
                resolveInfo.priority = filter.f64540a.getPriority();
                resolveInfo.preferredOrder = hVar.f64552a.f64527n;
                resolveInfo.match = match;
                resolveInfo.isDefault = filter.f64541b;
                resolveInfo.labelRes = filter.f64542c;
                resolveInfo.nonLocalizedLabel = filter.f64543d;
                resolveInfo.icon = filter.f64544e;
                return resolveInfo;
            }
            return null;
        }

        List<ResolveInfo> I(Intent intent, String resolvedType, int flags, int userId) {
            this.f64585n = flags;
            return super.t(intent, resolvedType, (flags & 65536) != 0, userId);
        }

        List<ResolveInfo> J(Intent intent, String resolvedType, int flags, List<MindPackage.h> packageServices, int userId) {
            if (packageServices == null) {
                return null;
            }
            this.f64585n = flags;
            boolean z3 = (flags & 65536) != 0;
            int size = packageServices.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i2 = 0; i2 < size; i2++) {
                ArrayList<II> arrayList2 = packageServices.get(i2).f64553b;
                if (arrayList2 != 0 && arrayList2.size() > 0) {
                    MindPackage.ServiceIntentInfo[] serviceIntentInfoArr = new MindPackage.ServiceIntentInfo[arrayList2.size()];
                    arrayList2.toArray(serviceIntentInfoArr);
                    arrayList.add(serviceIntentInfoArr);
                }
            }
            return super.u(intent, resolvedType, z3, arrayList, userId);
        }

        void K(MindPackage.h s3) {
            this.f64584m.remove(s3.a());
            int size = s3.f64553b.size();
            for (int i2 = 0; i2 < size; i2++) {
                x((MindPackage.ServiceIntentInfo) s3.f64553b.get(i2));
            }
        }

        @Override // com.xinzhu.overmind.server.pm.f
        public List<ResolveInfo> t(Intent intent, String resolvedType, boolean defaultOnly, int userId) {
            this.f64585n = defaultOnly ? 65536 : 0;
            return super.t(intent, resolvedType, defaultOnly, userId);
        }
    }

    private void a(MindPackage pkg, List<MindPackage.ActivityIntentInfo> newIntents) {
        int size = pkg.f64514a.size();
        for (int i2 = 0; i2 < size; i2++) {
            MindPackage.b bVar = pkg.f64514a.get(i2);
            ActivityInfo activityInfo = bVar.f64551f;
            activityInfo.processName = h.fixProcessName(pkg.f64532s.processName, activityInfo.processName);
            this.f64575b.G(bVar, TTDownloadField.TT_ACTIVITY, newIntents);
        }
    }

    private void c(MindPackage pkg) {
        String[] split;
        int size = pkg.f64516c.size();
        for (int i2 = 0; i2 < size; i2++) {
            MindPackage.g gVar = pkg.f64516c.get(i2);
            ProviderInfo providerInfo = gVar.f64560f;
            providerInfo.processName = h.fixProcessName(pkg.f64532s.processName, providerInfo.processName);
            this.f64576c.E(gVar);
            String str = gVar.f64560f.authority;
            if (str != null) {
                for (String str2 : str.split(";")) {
                    if (!this.f64579f.containsKey(str2)) {
                        this.f64579f.put(str2, gVar);
                        ProviderInfo providerInfo2 = gVar.f64560f;
                        String str3 = providerInfo2.authority;
                        if (str3 == null) {
                            providerInfo2.authority = str2;
                        } else {
                            providerInfo2.authority = str3;
                        }
                    } else {
                        MindPackage.g gVar2 = this.f64579f.get(str2);
                        ComponentName a4 = (gVar2 == null || gVar2.a() == null) ? null : gVar2.a();
                        u.j(f64573g, "Skipping provider name " + str2 + " (in package " + pkg.f64532s.packageName + "): name already used by " + (a4 != null ? a4.getPackageName() : "?"));
                    }
                }
            }
        }
    }

    private void d(MindPackage pkg) {
        int size = pkg.f64515b.size();
        for (int i2 = 0; i2 < size; i2++) {
            MindPackage.b bVar = pkg.f64515b.get(i2);
            ActivityInfo activityInfo = bVar.f64551f;
            activityInfo.processName = h.fixProcessName(pkg.f64532s.processName, activityInfo.processName);
            this.f64577d.G(bVar, "receiver", null);
        }
    }

    private void e(MindPackage pkg) {
        int size = pkg.f64517d.size();
        for (int i2 = 0; i2 < size; i2++) {
            MindPackage.h hVar = pkg.f64517d.get(i2);
            ServiceInfo serviceInfo = hVar.f64561f;
            serviceInfo.processName = h.fixProcessName(pkg.f64532s.processName, serviceInfo.processName);
            this.f64578e.E(hVar);
        }
    }

    private void u(MindPackage pkg) {
        int size = pkg.f64514a.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f64575b.M(pkg.f64514a.get(i2), TTDownloadField.TT_ACTIVITY);
        }
        int size2 = pkg.f64516c.size();
        for (int i4 = 0; i4 < size2; i4++) {
            MindPackage.g gVar = pkg.f64516c.get(i4);
            this.f64576c.L(gVar);
            String str = gVar.f64560f.authority;
            if (str != null) {
                String[] split = str.split(";");
                for (int i5 = 0; i5 < split.length; i5++) {
                    if (this.f64579f.get(split[i5]) != null) {
                        this.f64579f.remove(split[i5]);
                    }
                }
            }
        }
        int size3 = pkg.f64515b.size();
        for (int i6 = 0; i6 < size3; i6++) {
            this.f64577d.M(pkg.f64515b.get(i6), "receiver");
        }
        int size4 = pkg.f64517d.size();
        for (int i7 = 0; i7 < size4; i7++) {
            this.f64578e.K(pkg.f64517d.get(i7));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(MindPackage pkg) {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f64574a) {
            a(pkg, arrayList);
            e(pkg);
            c(pkg);
            d(pkg);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MindPackage.g f(ComponentName component) {
        MindPackage.g gVar;
        synchronized (this.f64574a) {
            gVar = (MindPackage.g) this.f64576c.f64582m.get(component);
        }
        return gVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MindPackage.b g(ComponentName component) {
        MindPackage.b bVar;
        synchronized (this.f64574a) {
            bVar = (MindPackage.b) this.f64577d.f64580m.get(component);
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MindPackage.b getActivity(ComponentName component) {
        MindPackage.b bVar;
        synchronized (this.f64574a) {
            bVar = (MindPackage.b) this.f64575b.f64580m.get(component);
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MindPackage.h h(ComponentName component) {
        MindPackage.h hVar;
        synchronized (this.f64574a) {
            hVar = (MindPackage.h) this.f64578e.f64584m.get(component);
        }
        return hVar;
    }

    List<ResolveInfo> i(Intent intent, String resolvedType, int flags, int userId) {
        List<ResolveInfo> K;
        synchronized (this.f64574a) {
            K = this.f64575b.K(intent, resolvedType, flags, userId);
        }
        return K;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<ResolveInfo> j(Intent intent, String resolvedType, int flags, List<MindPackage.b> activities, int userId) {
        List<ResolveInfo> L;
        synchronized (this.f64574a) {
            L = this.f64575b.L(intent, resolvedType, flags, activities, userId);
        }
        return L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<ResolveInfo> k(Intent intent, String resolvedType, int flags, int userId) {
        List<ResolveInfo> K;
        synchronized (this.f64574a) {
            K = this.f64575b.K(intent, resolvedType, flags, userId);
        }
        return K;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ProviderInfo l(String authority, int flags, int userId) {
        synchronized (this.f64574a) {
            MindPackage.g gVar = this.f64579f.get(authority.split(";")[0]);
            if (gVar == null) {
                return null;
            }
            return i.k(gVar, flags, gVar.f64552a.f64525l.i(userId), userId);
        }
    }

    List<ResolveInfo> m(Intent intent, String resolvedType, int flags, int userId) {
        List<ResolveInfo> J;
        synchronized (this.f64574a) {
            J = this.f64576c.J(intent, resolvedType, flags, userId);
        }
        return J;
    }

    List<ResolveInfo> n(Intent intent, String resolvedType, int flags, List<MindPackage.g> providers, int userId) {
        List<ResolveInfo> K;
        synchronized (this.f64574a) {
            K = this.f64576c.K(intent, resolvedType, flags, providers, userId);
        }
        return K;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<ProviderInfo> o(String processName, String metaDataKey, int flags, int userId) {
        ProviderInfo k4;
        Bundle bundle;
        ArrayList arrayList = new ArrayList();
        synchronized (this.f64574a) {
            for (int size = this.f64576c.f64582m.size() - 1; size >= 0; size--) {
                MindPackage.g gVar = (MindPackage.g) this.f64576c.f64582m.valueAt(size);
                MindPackageSettings mindPackageSettings = gVar.f64552a.f64525l;
                if (mindPackageSettings != null) {
                    ProviderInfo providerInfo = gVar.f64560f;
                    if (providerInfo.authority != null && ((processName == null || providerInfo.processName.equals(processName)) && ((metaDataKey == null || ((bundle = gVar.f64555d) != null && bundle.containsKey(metaDataKey))) && h.get().isEnabledAndMatchLPr(gVar.f64560f, flags, userId) && (k4 = i.k(gVar, flags, mindPackageSettings.i(userId), userId)) != null))) {
                        arrayList.add(k4);
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<ResolveInfo> p(Intent intent, String resolvedType, int flags, int userId) {
        List<ResolveInfo> K;
        synchronized (this.f64574a) {
            K = this.f64577d.K(intent, resolvedType, flags, userId);
        }
        return K;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<ResolveInfo> q(Intent intent, String resolvedType, int flags, List<MindPackage.b> receivers, int userId) {
        List<ResolveInfo> L;
        synchronized (this.f64574a) {
            L = this.f64577d.L(intent, resolvedType, flags, receivers, userId);
        }
        return L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<ResolveInfo> r(Intent intent, String resolvedType, int flags, int userId) {
        List<ResolveInfo> I;
        synchronized (this.f64574a) {
            I = this.f64578e.I(intent, resolvedType, flags, userId);
        }
        return I;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<ResolveInfo> s(Intent intent, String resolvedType, int flags, List<MindPackage.h> services, int userId) {
        List<ResolveInfo> J;
        synchronized (this.f64574a) {
            J = this.f64578e.J(intent, resolvedType, flags, services, userId);
        }
        return J;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t(MindPackage pkg) {
        synchronized (this.f64574a) {
            u(pkg);
        }
    }
}
