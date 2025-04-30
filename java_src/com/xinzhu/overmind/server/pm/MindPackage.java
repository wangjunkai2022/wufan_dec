package com.xinzhu.overmind.server.pm;

import android.content.ComponentName;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ConfigurationInfo;
import android.content.pm.FeatureInfo;
import android.content.pm.InstrumentationInfo;
import android.content.pm.PackageParser;
import android.content.pm.PermissionGroupInfo;
import android.content.pm.PermissionInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.xinzhu.haunted.android.content.pm.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
/* loaded from: classes3.dex */
public class MindPackage implements Parcelable {
    private static final int A = 1;
    static final String B = "android.test.base";
    static final String C = "android.test.mock";
    static final String D = "android.test.runner";
    static final String E = "org.apache.http.legacy";

    /* renamed from: a  reason: collision with root package name */
    public ArrayList<b> f64514a;

    /* renamed from: b  reason: collision with root package name */
    public ArrayList<b> f64515b;

    /* renamed from: c  reason: collision with root package name */
    public ArrayList<g> f64516c;

    /* renamed from: d  reason: collision with root package name */
    public ArrayList<h> f64517d;

    /* renamed from: e  reason: collision with root package name */
    public ArrayList<d> f64518e;

    /* renamed from: f  reason: collision with root package name */
    public ArrayList<e> f64519f;

    /* renamed from: g  reason: collision with root package name */
    public ArrayList<f> f64520g;

    /* renamed from: h  reason: collision with root package name */
    public ArrayList<String> f64521h;

    /* renamed from: i  reason: collision with root package name */
    public Signature[] f64522i;

    /* renamed from: j  reason: collision with root package name */
    public PackageParser.SigningDetails f64523j;

    /* renamed from: k  reason: collision with root package name */
    public Bundle f64524k;

    /* renamed from: l  reason: collision with root package name */
    public MindPackageSettings f64525l;

    /* renamed from: m  reason: collision with root package name */
    public String f64526m;

    /* renamed from: n  reason: collision with root package name */
    public int f64527n;

    /* renamed from: o  reason: collision with root package name */
    public String f64528o;

    /* renamed from: p  reason: collision with root package name */
    public ArrayList<String> f64529p;

    /* renamed from: q  reason: collision with root package name */
    public ArrayList<String> f64530q;

    /* renamed from: r  reason: collision with root package name */
    public int f64531r;

    /* renamed from: s  reason: collision with root package name */
    public ApplicationInfo f64532s;

    /* renamed from: t  reason: collision with root package name */
    public String f64533t;

    /* renamed from: u  reason: collision with root package name */
    public String[] f64534u;

    /* renamed from: v  reason: collision with root package name */
    public String f64535v;

    /* renamed from: w  reason: collision with root package name */
    public int f64536w;

    /* renamed from: x  reason: collision with root package name */
    public ArrayList<ConfigurationInfo> f64537x;

    /* renamed from: y  reason: collision with root package name */
    public ArrayList<FeatureInfo> f64538y;

    /* renamed from: z  reason: collision with root package name */
    private static final String f64513z = MindPackage.class.getSimpleName();
    public static final Parcelable.Creator<MindPackage> CREATOR = new a();

    /* loaded from: classes3.dex */
    public static class ActivityIntentInfo extends IntentInfo {

        /* renamed from: h  reason: collision with root package name */
        public b f64539h;

        public ActivityIntentInfo(PackageParser.IntentInfo intentInfo) {
            super(intentInfo);
        }

        public ActivityIntentInfo(IntentInfo intentInfo) {
            super(intentInfo);
        }
    }

    /* loaded from: classes3.dex */
    public static class ProviderIntentInfo extends IntentInfo {

        /* renamed from: h  reason: collision with root package name */
        public g f64547h;

        public ProviderIntentInfo(PackageParser.IntentInfo intentInfo) {
            super(intentInfo);
        }

        public ProviderIntentInfo(IntentInfo intentInfo) {
            super(intentInfo);
        }
    }

    /* loaded from: classes3.dex */
    public static class ServiceIntentInfo extends IntentInfo {

        /* renamed from: h  reason: collision with root package name */
        public h f64548h;

        public ServiceIntentInfo(PackageParser.IntentInfo intentInfo) {
            super(intentInfo);
        }

        public ServiceIntentInfo(IntentInfo intentInfo) {
            super(intentInfo);
        }
    }

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<MindPackage> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MindPackage createFromParcel(Parcel source) {
            return new MindPackage(source);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public MindPackage[] newArray(int size) {
            return new MindPackage[size];
        }
    }

    public MindPackage(PackageParser.Package aPackage) {
        this.f64514a = new ArrayList<>(0);
        this.f64515b = new ArrayList<>(0);
        this.f64516c = new ArrayList<>(0);
        this.f64517d = new ArrayList<>(0);
        this.f64518e = new ArrayList<>(0);
        this.f64519f = new ArrayList<>(0);
        this.f64520g = new ArrayList<>(0);
        this.f64521h = new ArrayList<>();
        this.f64537x = null;
        this.f64538y = null;
        this.f64514a = new ArrayList<>(aPackage.activities.size());
        Iterator<PackageParser.Activity> it2 = aPackage.activities.iterator();
        while (it2.hasNext()) {
            b bVar = new b(it2.next());
            Iterator it3 = bVar.f64553b.iterator();
            while (it3.hasNext()) {
                ((ActivityIntentInfo) it3.next()).f64539h = bVar;
            }
            bVar.f64552a = this;
            this.f64514a.add(bVar);
        }
        this.f64515b = new ArrayList<>(aPackage.receivers.size());
        Iterator<PackageParser.Activity> it4 = aPackage.receivers.iterator();
        while (it4.hasNext()) {
            b bVar2 = new b(it4.next());
            Iterator it5 = bVar2.f64553b.iterator();
            while (it5.hasNext()) {
                ((ActivityIntentInfo) it5.next()).f64539h = bVar2;
            }
            bVar2.f64552a = this;
            this.f64515b.add(bVar2);
        }
        this.f64516c = new ArrayList<>(aPackage.providers.size());
        Iterator<PackageParser.Provider> it6 = aPackage.providers.iterator();
        while (it6.hasNext()) {
            PackageParser.Provider next = it6.next();
            String[] split = next.info.authority.split(";");
            next.info.authority = split[0];
            g gVar = new g(next);
            Iterator it7 = gVar.f64553b.iterator();
            while (it7.hasNext()) {
                ((ProviderIntentInfo) it7.next()).f64547h = gVar;
            }
            gVar.f64552a = this;
            this.f64516c.add(gVar);
        }
        this.f64517d = new ArrayList<>(aPackage.services.size());
        Iterator<PackageParser.Service> it8 = aPackage.services.iterator();
        while (it8.hasNext()) {
            h hVar = new h(it8.next());
            Iterator it9 = hVar.f64553b.iterator();
            while (it9.hasNext()) {
                ((ServiceIntentInfo) it9.next()).f64548h = hVar;
            }
            hVar.f64552a = this;
            this.f64517d.add(hVar);
        }
        this.f64518e = new ArrayList<>(aPackage.instrumentation.size());
        Iterator<PackageParser.Instrumentation> it10 = aPackage.instrumentation.iterator();
        while (it10.hasNext()) {
            d dVar = new d(it10.next());
            dVar.f64552a = this;
            this.f64518e.add(dVar);
        }
        this.f64519f = new ArrayList<>(aPackage.permissions.size());
        Iterator<PackageParser.Permission> it11 = aPackage.permissions.iterator();
        while (it11.hasNext()) {
            e eVar = new e(it11.next());
            eVar.f64552a = this;
            this.f64519f.add(eVar);
        }
        this.f64520g = new ArrayList<>(aPackage.permissionGroups.size());
        Iterator<PackageParser.PermissionGroup> it12 = aPackage.permissionGroups.iterator();
        while (it12.hasNext()) {
            f fVar = new f(it12.next());
            fVar.f64552a = this;
            this.f64520g.add(fVar);
        }
        this.f64521h = aPackage.requestedPermissions;
        if (com.xinzhu.overmind.utils.e.t()) {
            PackageParser.SigningDetails signingDetails = aPackage.mSigningDetails;
            this.f64523j = signingDetails;
            this.f64522i = signingDetails.signatures;
        } else {
            this.f64522i = aPackage.mSignatures;
        }
        this.f64524k = aPackage.mAppMetaData;
        this.f64526m = aPackage.packageName;
        this.f64527n = aPackage.mPreferredOrder;
        this.f64528o = aPackage.mSharedUserId;
        this.f64529p = aPackage.usesLibraries;
        this.f64530q = aPackage.usesOptionalLibraries;
        this.f64531r = aPackage.mVersionCode;
        ApplicationInfo applicationInfo = aPackage.applicationInfo;
        this.f64532s = applicationInfo;
        this.f64533t = aPackage.mVersionName;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f64534u = applicationInfo.splitNames;
        }
        this.f64535v = aPackage.baseCodePath;
        this.f64536w = aPackage.mSharedUserLabel;
        this.f64537x = aPackage.configPreferences;
        this.f64538y = aPackage.reqFeatures;
    }

    private boolean a(String name) {
        return this.f64529p.contains(name) || this.f64530q.contains(name);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.f64514a.size());
        Iterator<b> it2 = this.f64514a.iterator();
        while (it2.hasNext()) {
            b next = it2.next();
            dest.writeString(next.f64554c);
            dest.writeBundle(next.f64555d);
            dest.writeParcelable(next.f64551f, flags);
            ArrayList<II> arrayList = next.f64553b;
            if (arrayList != 0) {
                int size = arrayList.size();
                dest.writeInt(size);
                while (true) {
                    int i2 = size - 1;
                    if (size > 0) {
                        dest.writeParcelable((Parcelable) next.f64553b.get(i2), flags);
                        size = i2;
                    }
                }
            } else {
                dest.writeInt(0);
            }
        }
        dest.writeInt(this.f64515b.size());
        Iterator<b> it3 = this.f64515b.iterator();
        while (it3.hasNext()) {
            b next2 = it3.next();
            dest.writeString(next2.f64554c);
            dest.writeBundle(next2.f64555d);
            dest.writeParcelable(next2.f64551f, flags);
            ArrayList<II> arrayList2 = next2.f64553b;
            if (arrayList2 != 0) {
                int size2 = arrayList2.size();
                dest.writeInt(size2);
                while (true) {
                    int i4 = size2 - 1;
                    if (size2 > 0) {
                        dest.writeParcelable((Parcelable) next2.f64553b.get(i4), flags);
                        size2 = i4;
                    }
                }
            } else {
                dest.writeInt(0);
            }
        }
        dest.writeInt(this.f64516c.size());
        Iterator<g> it4 = this.f64516c.iterator();
        while (it4.hasNext()) {
            g next3 = it4.next();
            dest.writeString(next3.f64554c);
            dest.writeBundle(next3.f64555d);
            dest.writeParcelable(next3.f64560f, flags);
            ArrayList<II> arrayList3 = next3.f64553b;
            if (arrayList3 != 0) {
                int size3 = arrayList3.size();
                dest.writeInt(size3);
                while (true) {
                    int i5 = size3 - 1;
                    if (size3 > 0) {
                        dest.writeParcelable((Parcelable) next3.f64553b.get(i5), flags);
                        size3 = i5;
                    }
                }
            } else {
                dest.writeInt(0);
            }
        }
        dest.writeInt(this.f64517d.size());
        Iterator<h> it5 = this.f64517d.iterator();
        while (it5.hasNext()) {
            h next4 = it5.next();
            dest.writeString(next4.f64554c);
            dest.writeBundle(next4.f64555d);
            dest.writeParcelable(next4.f64561f, flags);
            ArrayList<II> arrayList4 = next4.f64553b;
            if (arrayList4 != 0) {
                int size4 = arrayList4.size();
                dest.writeInt(size4);
                while (true) {
                    int i6 = size4 - 1;
                    if (size4 > 0) {
                        dest.writeParcelable((Parcelable) next4.f64553b.get(i6), flags);
                        size4 = i6;
                    }
                }
            } else {
                dest.writeInt(0);
            }
        }
        dest.writeInt(this.f64518e.size());
        Iterator<d> it6 = this.f64518e.iterator();
        while (it6.hasNext()) {
            d next5 = it6.next();
            dest.writeString(next5.f64554c);
            dest.writeBundle(next5.f64555d);
            dest.writeParcelable(next5.f64557f, flags);
            ArrayList<II> arrayList5 = next5.f64553b;
            if (arrayList5 != 0) {
                int size5 = arrayList5.size();
                dest.writeInt(size5);
                while (true) {
                    int i7 = size5 - 1;
                    if (size5 > 0) {
                        dest.writeParcelable((Parcelable) next5.f64553b.get(i7), flags);
                        size5 = i7;
                    }
                }
            } else {
                dest.writeInt(0);
            }
        }
        dest.writeInt(this.f64519f.size());
        Iterator<e> it7 = this.f64519f.iterator();
        while (it7.hasNext()) {
            e next6 = it7.next();
            dest.writeString(next6.f64554c);
            dest.writeBundle(next6.f64555d);
            dest.writeParcelable(next6.f64558f, flags);
            ArrayList<II> arrayList6 = next6.f64553b;
            if (arrayList6 != 0) {
                int size6 = arrayList6.size();
                dest.writeInt(size6);
                while (true) {
                    int i8 = size6 - 1;
                    if (size6 > 0) {
                        dest.writeParcelable((Parcelable) next6.f64553b.get(i8), flags);
                        size6 = i8;
                    }
                }
            } else {
                dest.writeInt(0);
            }
        }
        dest.writeInt(this.f64520g.size());
        Iterator<f> it8 = this.f64520g.iterator();
        while (it8.hasNext()) {
            f next7 = it8.next();
            dest.writeString(next7.f64554c);
            dest.writeBundle(next7.f64555d);
            dest.writeParcelable(next7.f64559f, flags);
            ArrayList<II> arrayList7 = next7.f64553b;
            if (arrayList7 != 0) {
                int size7 = arrayList7.size();
                dest.writeInt(size7);
                while (true) {
                    int i9 = size7 - 1;
                    if (size7 > 0) {
                        dest.writeParcelable((Parcelable) next7.f64553b.get(i9), flags);
                        size7 = i9;
                    }
                }
            } else {
                dest.writeInt(0);
            }
        }
        dest.writeStringList(this.f64521h);
        if (com.xinzhu.overmind.utils.e.t()) {
            dest.writeParcelable(this.f64523j, flags);
        }
        dest.writeTypedArray(this.f64522i, flags);
        dest.writeBundle(this.f64524k);
        dest.writeString(this.f64526m);
        dest.writeInt(this.f64527n);
        dest.writeString(this.f64528o);
        dest.writeStringList(this.f64529p);
        dest.writeStringList(this.f64530q);
        dest.writeInt(this.f64531r);
        dest.writeParcelable(this.f64532s, flags);
        dest.writeString(this.f64533t);
        dest.writeString(this.f64535v);
        dest.writeInt(this.f64536w);
        dest.writeTypedList(this.f64537x);
        dest.writeTypedList(this.f64538y);
        dest.writeString("appendVersion");
        dest.writeInt(1);
        dest.writeStringArray(this.f64534u);
    }

    /* loaded from: classes3.dex */
    public static final class SigningDetails implements Parcelable {
        public static final Parcelable.Creator<SigningDetails> CREATOR = new a();

        /* renamed from: b  reason: collision with root package name */
        public static final PackageParser.SigningDetails f64549b = null;

        /* renamed from: a  reason: collision with root package name */
        public Signature[] f64550a;

        /* loaded from: classes3.dex */
        class a implements Parcelable.Creator<SigningDetails> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SigningDetails createFromParcel(Parcel source) {
                return new SigningDetails(source);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public SigningDetails[] newArray(int size) {
                return new SigningDetails[size];
            }
        }

        public SigningDetails(PackageParser.SigningDetails signingDetails) {
            this.f64550a = signingDetails.signatures;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeTypedArray(this.f64550a, flags);
        }

        protected SigningDetails(Parcel in2) {
            this.f64550a = (Signature[]) in2.createTypedArray(Signature.CREATOR);
        }
    }

    /* loaded from: classes3.dex */
    public static class c<II extends IntentInfo> {

        /* renamed from: a  reason: collision with root package name */
        public MindPackage f64552a;

        /* renamed from: b  reason: collision with root package name */
        public ArrayList<II> f64553b;

        /* renamed from: c  reason: collision with root package name */
        public String f64554c;

        /* renamed from: d  reason: collision with root package name */
        public Bundle f64555d;

        /* renamed from: e  reason: collision with root package name */
        public ComponentName f64556e;

        public c(Parcel parcel) {
            this.f64554c = parcel.readString();
            this.f64555d = parcel.readBundle(Bundle.class.getClassLoader());
        }

        public ComponentName a() {
            ComponentName componentName = this.f64556e;
            if (componentName != null) {
                return componentName;
            }
            if (this.f64554c != null) {
                this.f64556e = new ComponentName(this.f64552a.f64526m, this.f64554c);
            }
            return this.f64556e;
        }

        public c(PackageParser.Component<?> component) {
            this.f64554c = component.className;
            this.f64555d = component.metaData;
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends c<ActivityIntentInfo> {

        /* renamed from: f  reason: collision with root package name */
        public ActivityInfo f64551f;

        public b(PackageParser.Activity activity) {
            super(activity);
            this.f64551f = activity.info;
            ArrayList<II> arrayList = activity.intents;
            if (arrayList != 0) {
                this.f64553b = new ArrayList<>(arrayList.size());
                Iterator it2 = activity.intents.iterator();
                while (it2.hasNext()) {
                    this.f64553b.add(new ActivityIntentInfo((PackageParser.ActivityIntentInfo) it2.next()));
                }
            }
        }

        public b(Parcel parcel) {
            super(parcel);
            this.f64551f = (ActivityInfo) parcel.readParcelable(ActivityInfo.class.getClassLoader());
            int readInt = parcel.readInt();
            this.f64553b = new ArrayList<>(readInt);
            while (true) {
                int i2 = readInt - 1;
                if (readInt <= 0) {
                    return;
                }
                this.f64553b.add(new ActivityIntentInfo((IntentInfo) parcel.readParcelable(MindPackage.class.getClassLoader())));
                readInt = i2;
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class d extends c<IntentInfo> {

        /* renamed from: f  reason: collision with root package name */
        public InstrumentationInfo f64557f;

        public d(PackageParser.Instrumentation instrumentation) {
            super(instrumentation);
            this.f64557f = instrumentation.info;
            ArrayList<II> arrayList = instrumentation.intents;
            if (arrayList != 0) {
                this.f64553b = new ArrayList<>(arrayList.size());
                Iterator it2 = instrumentation.intents.iterator();
                while (it2.hasNext()) {
                    this.f64553b.add(new IntentInfo((PackageParser.IntentInfo) it2.next()));
                }
            }
        }

        public d(Parcel parcel) {
            super(parcel);
            this.f64557f = (InstrumentationInfo) parcel.readParcelable(InstrumentationInfo.class.getClassLoader());
            int readInt = parcel.readInt();
            this.f64553b = new ArrayList<>(readInt);
            while (true) {
                int i2 = readInt - 1;
                if (readInt <= 0) {
                    return;
                }
                this.f64553b.add((IntentInfo) parcel.readParcelable(MindPackage.class.getClassLoader()));
                readInt = i2;
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class e extends c<IntentInfo> {

        /* renamed from: f  reason: collision with root package name */
        public PermissionInfo f64558f;

        public e(PackageParser.Permission permission) {
            super(permission);
            this.f64558f = permission.info;
            ArrayList<II> arrayList = permission.intents;
            if (arrayList != 0) {
                this.f64553b = new ArrayList<>(arrayList.size());
                Iterator it2 = permission.intents.iterator();
                while (it2.hasNext()) {
                    this.f64553b.add(new IntentInfo((PackageParser.IntentInfo) it2.next()));
                }
            }
        }

        public e(Parcel parcel) {
            super(parcel);
            this.f64558f = (PermissionInfo) parcel.readParcelable(e.class.getClassLoader());
            int readInt = parcel.readInt();
            this.f64553b = new ArrayList<>(readInt);
            while (true) {
                int i2 = readInt - 1;
                if (readInt <= 0) {
                    return;
                }
                this.f64553b.add((IntentInfo) parcel.readParcelable(MindPackage.class.getClassLoader()));
                readInt = i2;
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class f extends c<IntentInfo> {

        /* renamed from: f  reason: collision with root package name */
        public PermissionGroupInfo f64559f;

        public f(PackageParser.PermissionGroup group) {
            super(group);
            this.f64559f = group.info;
            ArrayList<II> arrayList = group.intents;
            if (arrayList != 0) {
                this.f64553b = new ArrayList<>(arrayList.size());
                Iterator it2 = group.intents.iterator();
                while (it2.hasNext()) {
                    this.f64553b.add(new IntentInfo((PackageParser.IntentInfo) it2.next()));
                }
            }
        }

        public f(Parcel parcel) {
            super(parcel);
            this.f64559f = (PermissionGroupInfo) parcel.readParcelable(f.class.getClassLoader());
            int readInt = parcel.readInt();
            this.f64553b = new ArrayList<>(readInt);
            while (true) {
                int i2 = readInt - 1;
                if (readInt <= 0) {
                    return;
                }
                this.f64553b.add((IntentInfo) parcel.readParcelable(MindPackage.class.getClassLoader()));
                readInt = i2;
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class g extends c<ProviderIntentInfo> {

        /* renamed from: f  reason: collision with root package name */
        public ProviderInfo f64560f;

        public g(PackageParser.Provider provider) {
            super(provider);
            this.f64560f = provider.info;
            ArrayList<II> arrayList = provider.intents;
            if (arrayList != 0) {
                this.f64553b = new ArrayList<>(arrayList.size());
                Iterator it2 = provider.intents.iterator();
                while (it2.hasNext()) {
                    this.f64553b.add(new ProviderIntentInfo((PackageParser.ProviderIntentInfo) it2.next()));
                }
            }
        }

        public g(Parcel parcel) {
            super(parcel);
            this.f64560f = (ProviderInfo) parcel.readParcelable(ProviderInfo.class.getClassLoader());
            int readInt = parcel.readInt();
            this.f64553b = new ArrayList<>(readInt);
            while (true) {
                int i2 = readInt - 1;
                if (readInt <= 0) {
                    return;
                }
                this.f64553b.add(new ProviderIntentInfo((IntentInfo) parcel.readParcelable(MindPackage.class.getClassLoader())));
                readInt = i2;
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class h extends c<ServiceIntentInfo> {

        /* renamed from: f  reason: collision with root package name */
        public ServiceInfo f64561f;

        public h(PackageParser.Service service) {
            super(service);
            this.f64561f = service.info;
            ArrayList<II> arrayList = service.intents;
            if (arrayList != 0) {
                this.f64553b = new ArrayList<>(arrayList.size());
                Iterator it2 = service.intents.iterator();
                while (it2.hasNext()) {
                    this.f64553b.add(new ServiceIntentInfo((PackageParser.ServiceIntentInfo) it2.next()));
                }
            }
        }

        public h(Parcel parcel) {
            super(parcel);
            this.f64561f = (ServiceInfo) parcel.readParcelable(ServiceInfo.class.getClassLoader());
            int readInt = parcel.readInt();
            this.f64553b = new ArrayList<>(readInt);
            while (true) {
                int i2 = readInt - 1;
                if (readInt <= 0) {
                    return;
                }
                this.f64553b.add(new ServiceIntentInfo((IntentInfo) parcel.readParcelable(MindPackage.class.getClassLoader())));
                readInt = i2;
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class IntentInfo implements Parcelable {
        public static final Parcelable.Creator<IntentInfo> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        public IntentFilter f64540a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f64541b;

        /* renamed from: c  reason: collision with root package name */
        public int f64542c;

        /* renamed from: d  reason: collision with root package name */
        public String f64543d;

        /* renamed from: e  reason: collision with root package name */
        public int f64544e;

        /* renamed from: f  reason: collision with root package name */
        public int f64545f;

        /* renamed from: g  reason: collision with root package name */
        public int f64546g;

        /* loaded from: classes3.dex */
        class a implements Parcelable.Creator<IntentInfo> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public IntentInfo createFromParcel(Parcel source) {
                return new IntentInfo(source);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public IntentInfo[] newArray(int size) {
                return new IntentInfo[size];
            }
        }

        public IntentInfo(PackageParser.IntentInfo intentInfo) {
            this.f64540a = intentInfo;
            this.f64541b = intentInfo.hasDefault;
            this.f64542c = intentInfo.labelRes;
            CharSequence charSequence = intentInfo.nonLocalizedLabel;
            this.f64543d = charSequence == null ? null : charSequence.toString();
            this.f64544e = intentInfo.icon;
            this.f64545f = intentInfo.logo;
            this.f64546g = intentInfo.banner;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeParcelable(this.f64540a, flags);
            dest.writeByte(this.f64541b ? (byte) 1 : (byte) 0);
            dest.writeInt(this.f64542c);
            dest.writeString(this.f64543d);
            dest.writeInt(this.f64544e);
            dest.writeInt(this.f64545f);
            dest.writeInt(this.f64546g);
        }

        public IntentInfo(IntentInfo intentInfo) {
            this.f64540a = intentInfo.f64540a;
            this.f64541b = intentInfo.f64541b;
            this.f64542c = intentInfo.f64542c;
            String str = intentInfo.f64543d;
            this.f64543d = str == null ? null : str.toString();
            this.f64544e = intentInfo.f64544e;
            this.f64545f = intentInfo.f64545f;
            this.f64546g = intentInfo.f64546g;
        }

        protected IntentInfo(Parcel in2) {
            this.f64540a = (IntentFilter) in2.readParcelable(MindPackage.class.getClassLoader());
            this.f64541b = in2.readByte() != 0;
            this.f64542c = in2.readInt();
            this.f64543d = in2.readString();
            this.f64544e = in2.readInt();
            this.f64545f = in2.readInt();
            this.f64546g = in2.readInt();
        }
    }

    protected MindPackage(Parcel in2) {
        this.f64514a = new ArrayList<>(0);
        this.f64515b = new ArrayList<>(0);
        this.f64516c = new ArrayList<>(0);
        this.f64517d = new ArrayList<>(0);
        this.f64518e = new ArrayList<>(0);
        this.f64519f = new ArrayList<>(0);
        this.f64520g = new ArrayList<>(0);
        this.f64521h = new ArrayList<>();
        this.f64537x = null;
        this.f64538y = null;
        int readInt = in2.readInt();
        this.f64514a = new ArrayList<>(readInt);
        while (true) {
            int i2 = readInt - 1;
            if (readInt <= 0) {
                break;
            }
            b bVar = new b(in2);
            Iterator it2 = bVar.f64553b.iterator();
            while (it2.hasNext()) {
                ((ActivityIntentInfo) it2.next()).f64539h = bVar;
            }
            bVar.f64552a = this;
            this.f64514a.add(bVar);
            readInt = i2;
        }
        int readInt2 = in2.readInt();
        this.f64515b = new ArrayList<>(readInt2);
        while (true) {
            int i4 = readInt2 - 1;
            if (readInt2 <= 0) {
                break;
            }
            b bVar2 = new b(in2);
            Iterator it3 = bVar2.f64553b.iterator();
            while (it3.hasNext()) {
                ((ActivityIntentInfo) it3.next()).f64539h = bVar2;
            }
            bVar2.f64552a = this;
            this.f64515b.add(bVar2);
            readInt2 = i4;
        }
        int readInt3 = in2.readInt();
        this.f64516c = new ArrayList<>(readInt3);
        while (true) {
            int i5 = readInt3 - 1;
            if (readInt3 <= 0) {
                break;
            }
            g gVar = new g(in2);
            gVar.f64560f.authority = gVar.f64560f.authority.split(";")[0];
            Iterator it4 = gVar.f64553b.iterator();
            while (it4.hasNext()) {
                ((ProviderIntentInfo) it4.next()).f64547h = gVar;
            }
            gVar.f64552a = this;
            this.f64516c.add(gVar);
            readInt3 = i5;
        }
        int readInt4 = in2.readInt();
        this.f64517d = new ArrayList<>(readInt4);
        while (true) {
            int i6 = readInt4 - 1;
            if (readInt4 <= 0) {
                break;
            }
            h hVar = new h(in2);
            Iterator it5 = hVar.f64553b.iterator();
            while (it5.hasNext()) {
                ((ServiceIntentInfo) it5.next()).f64548h = hVar;
            }
            hVar.f64552a = this;
            this.f64517d.add(hVar);
            readInt4 = i6;
        }
        int readInt5 = in2.readInt();
        this.f64518e = new ArrayList<>(readInt5);
        while (true) {
            int i7 = readInt5 - 1;
            if (readInt5 <= 0) {
                break;
            }
            d dVar = new d(in2);
            dVar.f64552a = this;
            this.f64518e.add(dVar);
            readInt5 = i7;
        }
        int readInt6 = in2.readInt();
        this.f64519f = new ArrayList<>(readInt6);
        while (true) {
            int i8 = readInt6 - 1;
            if (readInt6 <= 0) {
                break;
            }
            e eVar = new e(in2);
            eVar.f64552a = this;
            this.f64519f.add(eVar);
            readInt6 = i8;
        }
        int readInt7 = in2.readInt();
        this.f64520g = new ArrayList<>(readInt7);
        while (true) {
            int i9 = readInt7 - 1;
            if (readInt7 <= 0) {
                break;
            }
            f fVar = new f(in2);
            fVar.f64552a = this;
            this.f64520g.add(fVar);
            readInt7 = i9;
        }
        in2.readStringList(this.f64521h);
        if (com.xinzhu.overmind.utils.e.t()) {
            try {
                int dataPosition = in2.dataPosition();
                String readString = in2.readString();
                in2.setDataPosition(dataPosition);
                if (readString.contains("MindPackage$SigningDetails")) {
                    com.xinzhu.overmind.b.c(f64513z, "Legacy signing details found, solve it");
                    i.a m4 = i.a.m(((SigningDetails) in2.readParcelable(SigningDetails.class.getClassLoader())).f64550a, 0);
                    Objects.requireNonNull(m4);
                    this.f64523j = (PackageParser.SigningDetails) m4.f63134a;
                } else {
                    this.f64523j = (PackageParser.SigningDetails) in2.readParcelable(PackageParser.SigningDetails.class.getClassLoader());
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        this.f64522i = (Signature[]) in2.createTypedArray(Signature.CREATOR);
        this.f64524k = in2.readBundle(Bundle.class.getClassLoader());
        this.f64526m = in2.readString();
        this.f64527n = in2.readInt();
        this.f64528o = in2.readString();
        this.f64529p = in2.createStringArrayList();
        this.f64530q = in2.createStringArrayList();
        this.f64531r = in2.readInt();
        this.f64532s = (ApplicationInfo) in2.readParcelable(ApplicationInfo.class.getClassLoader());
        this.f64533t = in2.readString();
        this.f64535v = in2.readString();
        this.f64536w = in2.readInt();
        this.f64537x = in2.createTypedArrayList(ConfigurationInfo.CREATOR);
        this.f64538y = in2.createTypedArrayList(FeatureInfo.CREATOR);
        int dataPosition2 = in2.dataPosition();
        try {
            if (in2.readString().equals("appendVersion")) {
                if (in2.readInt() == 1) {
                    this.f64534u = in2.createStringArray();
                    return;
                }
                return;
            }
        } catch (Throwable unused) {
        }
        in2.setDataPosition(dataPosition2);
    }
}
