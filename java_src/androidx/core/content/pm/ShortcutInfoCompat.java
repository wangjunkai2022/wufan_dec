package androidx.core.content.pm;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.PersistableBundle;
import android.os.UserHandle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.Person;
import androidx.core.content.LocusIdCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.net.UriCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import net.lingala.zip4j.util.e;
/* loaded from: classes.dex */
public class ShortcutInfoCompat {
    private static final String A = "extraPersonCount";
    private static final String B = "extraPerson_";
    private static final String C = "extraLocusId";
    private static final String D = "extraLongLived";
    private static final String E = "extraSliceUri";

    /* renamed from: a  reason: collision with root package name */
    Context f4134a;

    /* renamed from: b  reason: collision with root package name */
    String f4135b;

    /* renamed from: c  reason: collision with root package name */
    String f4136c;

    /* renamed from: d  reason: collision with root package name */
    Intent[] f4137d;

    /* renamed from: e  reason: collision with root package name */
    ComponentName f4138e;

    /* renamed from: f  reason: collision with root package name */
    CharSequence f4139f;

    /* renamed from: g  reason: collision with root package name */
    CharSequence f4140g;

    /* renamed from: h  reason: collision with root package name */
    CharSequence f4141h;

    /* renamed from: i  reason: collision with root package name */
    IconCompat f4142i;

    /* renamed from: j  reason: collision with root package name */
    boolean f4143j;

    /* renamed from: k  reason: collision with root package name */
    Person[] f4144k;

    /* renamed from: l  reason: collision with root package name */
    Set<String> f4145l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    LocusIdCompat f4146m;

    /* renamed from: n  reason: collision with root package name */
    boolean f4147n;

    /* renamed from: o  reason: collision with root package name */
    int f4148o;

    /* renamed from: p  reason: collision with root package name */
    PersistableBundle f4149p;

    /* renamed from: q  reason: collision with root package name */
    long f4150q;

    /* renamed from: r  reason: collision with root package name */
    UserHandle f4151r;

    /* renamed from: s  reason: collision with root package name */
    boolean f4152s;

    /* renamed from: t  reason: collision with root package name */
    boolean f4153t;

    /* renamed from: u  reason: collision with root package name */
    boolean f4154u;

    /* renamed from: v  reason: collision with root package name */
    boolean f4155v;

    /* renamed from: w  reason: collision with root package name */
    boolean f4156w;

    /* renamed from: x  reason: collision with root package name */
    boolean f4157x = true;

    /* renamed from: y  reason: collision with root package name */
    boolean f4158y;

    /* renamed from: z  reason: collision with root package name */
    int f4159z;

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final ShortcutInfoCompat f4160a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f4161b;

        /* renamed from: c  reason: collision with root package name */
        private Set<String> f4162c;

        /* renamed from: d  reason: collision with root package name */
        private Map<String, Map<String, List<String>>> f4163d;

        /* renamed from: e  reason: collision with root package name */
        private Uri f4164e;

        public Builder(@NonNull Context context, @NonNull String str) {
            ShortcutInfoCompat shortcutInfoCompat = new ShortcutInfoCompat();
            this.f4160a = shortcutInfoCompat;
            shortcutInfoCompat.f4134a = context;
            shortcutInfoCompat.f4135b = str;
        }

        @NonNull
        @SuppressLint({"MissingGetterMatchingBuilder"})
        public Builder addCapabilityBinding(@NonNull String str) {
            if (this.f4162c == null) {
                this.f4162c = new HashSet();
            }
            this.f4162c.add(str);
            return this;
        }

        @NonNull
        public ShortcutInfoCompat build() {
            if (!TextUtils.isEmpty(this.f4160a.f4139f)) {
                ShortcutInfoCompat shortcutInfoCompat = this.f4160a;
                Intent[] intentArr = shortcutInfoCompat.f4137d;
                if (intentArr != null && intentArr.length != 0) {
                    if (this.f4161b) {
                        if (shortcutInfoCompat.f4146m == null) {
                            shortcutInfoCompat.f4146m = new LocusIdCompat(shortcutInfoCompat.f4135b);
                        }
                        this.f4160a.f4147n = true;
                    }
                    if (this.f4162c != null) {
                        ShortcutInfoCompat shortcutInfoCompat2 = this.f4160a;
                        if (shortcutInfoCompat2.f4145l == null) {
                            shortcutInfoCompat2.f4145l = new HashSet();
                        }
                        this.f4160a.f4145l.addAll(this.f4162c);
                    }
                    if (Build.VERSION.SDK_INT >= 21) {
                        if (this.f4163d != null) {
                            ShortcutInfoCompat shortcutInfoCompat3 = this.f4160a;
                            if (shortcutInfoCompat3.f4149p == null) {
                                shortcutInfoCompat3.f4149p = new PersistableBundle();
                            }
                            for (String str : this.f4163d.keySet()) {
                                Map<String, List<String>> map = this.f4163d.get(str);
                                this.f4160a.f4149p.putStringArray(str, (String[]) map.keySet().toArray(new String[0]));
                                for (String str2 : map.keySet()) {
                                    List<String> list = map.get(str2);
                                    PersistableBundle persistableBundle = this.f4160a.f4149p;
                                    persistableBundle.putStringArray(str + e.F0 + str2, list == null ? new String[0] : (String[]) list.toArray(new String[0]));
                                }
                            }
                        }
                        if (this.f4164e != null) {
                            ShortcutInfoCompat shortcutInfoCompat4 = this.f4160a;
                            if (shortcutInfoCompat4.f4149p == null) {
                                shortcutInfoCompat4.f4149p = new PersistableBundle();
                            }
                            this.f4160a.f4149p.putString(ShortcutInfoCompat.E, UriCompat.toSafeString(this.f4164e));
                        }
                    }
                    return this.f4160a;
                }
                throw new IllegalArgumentException("Shortcut must have an intent");
            }
            throw new IllegalArgumentException("Shortcut must have a non-empty label");
        }

        @NonNull
        public Builder setActivity(@NonNull ComponentName componentName) {
            this.f4160a.f4138e = componentName;
            return this;
        }

        @NonNull
        public Builder setAlwaysBadged() {
            this.f4160a.f4143j = true;
            return this;
        }

        @NonNull
        public Builder setCategories(@NonNull Set<String> set) {
            this.f4160a.f4145l = set;
            return this;
        }

        @NonNull
        public Builder setDisabledMessage(@NonNull CharSequence charSequence) {
            this.f4160a.f4141h = charSequence;
            return this;
        }

        @NonNull
        public Builder setExtras(@NonNull PersistableBundle persistableBundle) {
            this.f4160a.f4149p = persistableBundle;
            return this;
        }

        @NonNull
        public Builder setIcon(IconCompat iconCompat) {
            this.f4160a.f4142i = iconCompat;
            return this;
        }

        @NonNull
        public Builder setIntent(@NonNull Intent intent) {
            return setIntents(new Intent[]{intent});
        }

        @NonNull
        public Builder setIntents(@NonNull Intent[] intentArr) {
            this.f4160a.f4137d = intentArr;
            return this;
        }

        @NonNull
        public Builder setIsConversation() {
            this.f4161b = true;
            return this;
        }

        @NonNull
        public Builder setLocusId(@Nullable LocusIdCompat locusIdCompat) {
            this.f4160a.f4146m = locusIdCompat;
            return this;
        }

        @NonNull
        public Builder setLongLabel(@NonNull CharSequence charSequence) {
            this.f4160a.f4140g = charSequence;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setLongLived() {
            this.f4160a.f4147n = true;
            return this;
        }

        @NonNull
        public Builder setPerson(@NonNull Person person) {
            return setPersons(new Person[]{person});
        }

        @NonNull
        public Builder setPersons(@NonNull Person[] personArr) {
            this.f4160a.f4144k = personArr;
            return this;
        }

        @NonNull
        public Builder setRank(int i2) {
            this.f4160a.f4148o = i2;
            return this;
        }

        @NonNull
        public Builder setShortLabel(@NonNull CharSequence charSequence) {
            this.f4160a.f4139f = charSequence;
            return this;
        }

        @NonNull
        @SuppressLint({"MissingGetterMatchingBuilder"})
        public Builder setSliceUri(@NonNull Uri uri) {
            this.f4164e = uri;
            return this;
        }

        @NonNull
        public Builder setLongLived(boolean z3) {
            this.f4160a.f4147n = z3;
            return this;
        }

        @NonNull
        @SuppressLint({"MissingGetterMatchingBuilder"})
        public Builder addCapabilityBinding(@NonNull String str, @NonNull String str2, @NonNull List<String> list) {
            addCapabilityBinding(str);
            if (!list.isEmpty()) {
                if (this.f4163d == null) {
                    this.f4163d = new HashMap();
                }
                if (this.f4163d.get(str) == null) {
                    this.f4163d.put(str, new HashMap());
                }
                this.f4163d.get(str).put(str2, list);
            }
            return this;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public Builder(@NonNull ShortcutInfoCompat shortcutInfoCompat) {
            ShortcutInfoCompat shortcutInfoCompat2 = new ShortcutInfoCompat();
            this.f4160a = shortcutInfoCompat2;
            shortcutInfoCompat2.f4134a = shortcutInfoCompat.f4134a;
            shortcutInfoCompat2.f4135b = shortcutInfoCompat.f4135b;
            shortcutInfoCompat2.f4136c = shortcutInfoCompat.f4136c;
            Intent[] intentArr = shortcutInfoCompat.f4137d;
            shortcutInfoCompat2.f4137d = (Intent[]) Arrays.copyOf(intentArr, intentArr.length);
            shortcutInfoCompat2.f4138e = shortcutInfoCompat.f4138e;
            shortcutInfoCompat2.f4139f = shortcutInfoCompat.f4139f;
            shortcutInfoCompat2.f4140g = shortcutInfoCompat.f4140g;
            shortcutInfoCompat2.f4141h = shortcutInfoCompat.f4141h;
            shortcutInfoCompat2.f4159z = shortcutInfoCompat.f4159z;
            shortcutInfoCompat2.f4142i = shortcutInfoCompat.f4142i;
            shortcutInfoCompat2.f4143j = shortcutInfoCompat.f4143j;
            shortcutInfoCompat2.f4151r = shortcutInfoCompat.f4151r;
            shortcutInfoCompat2.f4150q = shortcutInfoCompat.f4150q;
            shortcutInfoCompat2.f4152s = shortcutInfoCompat.f4152s;
            shortcutInfoCompat2.f4153t = shortcutInfoCompat.f4153t;
            shortcutInfoCompat2.f4154u = shortcutInfoCompat.f4154u;
            shortcutInfoCompat2.f4155v = shortcutInfoCompat.f4155v;
            shortcutInfoCompat2.f4156w = shortcutInfoCompat.f4156w;
            shortcutInfoCompat2.f4157x = shortcutInfoCompat.f4157x;
            shortcutInfoCompat2.f4146m = shortcutInfoCompat.f4146m;
            shortcutInfoCompat2.f4147n = shortcutInfoCompat.f4147n;
            shortcutInfoCompat2.f4158y = shortcutInfoCompat.f4158y;
            shortcutInfoCompat2.f4148o = shortcutInfoCompat.f4148o;
            Person[] personArr = shortcutInfoCompat.f4144k;
            if (personArr != null) {
                shortcutInfoCompat2.f4144k = (Person[]) Arrays.copyOf(personArr, personArr.length);
            }
            if (shortcutInfoCompat.f4145l != null) {
                shortcutInfoCompat2.f4145l = new HashSet(shortcutInfoCompat.f4145l);
            }
            PersistableBundle persistableBundle = shortcutInfoCompat.f4149p;
            if (persistableBundle != null) {
                shortcutInfoCompat2.f4149p = persistableBundle;
            }
        }

        @RequiresApi(25)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public Builder(@NonNull Context context, @NonNull ShortcutInfo shortcutInfo) {
            ShortcutInfoCompat shortcutInfoCompat = new ShortcutInfoCompat();
            this.f4160a = shortcutInfoCompat;
            shortcutInfoCompat.f4134a = context;
            shortcutInfoCompat.f4135b = shortcutInfo.getId();
            shortcutInfoCompat.f4136c = shortcutInfo.getPackage();
            Intent[] intents = shortcutInfo.getIntents();
            shortcutInfoCompat.f4137d = (Intent[]) Arrays.copyOf(intents, intents.length);
            shortcutInfoCompat.f4138e = shortcutInfo.getActivity();
            shortcutInfoCompat.f4139f = shortcutInfo.getShortLabel();
            shortcutInfoCompat.f4140g = shortcutInfo.getLongLabel();
            shortcutInfoCompat.f4141h = shortcutInfo.getDisabledMessage();
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 28) {
                shortcutInfoCompat.f4159z = shortcutInfo.getDisabledReason();
            } else {
                shortcutInfoCompat.f4159z = shortcutInfo.isEnabled() ? 0 : 3;
            }
            shortcutInfoCompat.f4145l = shortcutInfo.getCategories();
            shortcutInfoCompat.f4144k = ShortcutInfoCompat.g(shortcutInfo.getExtras());
            shortcutInfoCompat.f4151r = shortcutInfo.getUserHandle();
            shortcutInfoCompat.f4150q = shortcutInfo.getLastChangedTimestamp();
            if (i2 >= 30) {
                shortcutInfoCompat.f4152s = shortcutInfo.isCached();
            }
            shortcutInfoCompat.f4153t = shortcutInfo.isDynamic();
            shortcutInfoCompat.f4154u = shortcutInfo.isPinned();
            shortcutInfoCompat.f4155v = shortcutInfo.isDeclaredInManifest();
            shortcutInfoCompat.f4156w = shortcutInfo.isImmutable();
            shortcutInfoCompat.f4157x = shortcutInfo.isEnabled();
            shortcutInfoCompat.f4158y = shortcutInfo.hasKeyFieldsOnly();
            shortcutInfoCompat.f4146m = ShortcutInfoCompat.d(shortcutInfo);
            shortcutInfoCompat.f4148o = shortcutInfo.getRank();
            shortcutInfoCompat.f4149p = shortcutInfo.getExtras();
        }
    }

    ShortcutInfoCompat() {
    }

    @RequiresApi(22)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    private PersistableBundle b() {
        if (this.f4149p == null) {
            this.f4149p = new PersistableBundle();
        }
        Person[] personArr = this.f4144k;
        if (personArr != null && personArr.length > 0) {
            this.f4149p.putInt(A, personArr.length);
            int i2 = 0;
            while (i2 < this.f4144k.length) {
                PersistableBundle persistableBundle = this.f4149p;
                StringBuilder sb = new StringBuilder();
                sb.append(B);
                int i4 = i2 + 1;
                sb.append(i4);
                persistableBundle.putPersistableBundle(sb.toString(), this.f4144k[i2].toPersistableBundle());
                i2 = i4;
            }
        }
        LocusIdCompat locusIdCompat = this.f4146m;
        if (locusIdCompat != null) {
            this.f4149p.putString(C, locusIdCompat.getId());
        }
        this.f4149p.putBoolean(D, this.f4147n);
        return this.f4149p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(25)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static List<ShortcutInfoCompat> c(@NonNull Context context, @NonNull List<ShortcutInfo> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (ShortcutInfo shortcutInfo : list) {
            arrayList.add(new Builder(context, shortcutInfo).build());
        }
        return arrayList;
    }

    @Nullable
    @RequiresApi(25)
    static LocusIdCompat d(@NonNull ShortcutInfo shortcutInfo) {
        if (Build.VERSION.SDK_INT >= 29) {
            if (shortcutInfo.getLocusId() == null) {
                return null;
            }
            return LocusIdCompat.toLocusIdCompat(shortcutInfo.getLocusId());
        }
        return e(shortcutInfo.getExtras());
    }

    @Nullable
    @RequiresApi(25)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    private static LocusIdCompat e(@Nullable PersistableBundle persistableBundle) {
        String string;
        if (persistableBundle == null || (string = persistableBundle.getString(C)) == null) {
            return null;
        }
        return new LocusIdCompat(string);
    }

    @RequiresApi(25)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @VisibleForTesting
    static boolean f(@Nullable PersistableBundle persistableBundle) {
        if (persistableBundle == null || !persistableBundle.containsKey(D)) {
            return false;
        }
        return persistableBundle.getBoolean(D);
    }

    @VisibleForTesting
    @Nullable
    @RequiresApi(25)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    static Person[] g(@NonNull PersistableBundle persistableBundle) {
        if (persistableBundle == null || !persistableBundle.containsKey(A)) {
            return null;
        }
        int i2 = persistableBundle.getInt(A);
        Person[] personArr = new Person[i2];
        int i4 = 0;
        while (i4 < i2) {
            StringBuilder sb = new StringBuilder();
            sb.append(B);
            int i5 = i4 + 1;
            sb.append(i5);
            personArr[i4] = Person.fromPersistableBundle(persistableBundle.getPersistableBundle(sb.toString()));
            i4 = i5;
        }
        return personArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Intent a(Intent intent) {
        Intent[] intentArr = this.f4137d;
        intent.putExtra("android.intent.extra.shortcut.INTENT", intentArr[intentArr.length - 1]).putExtra("android.intent.extra.shortcut.NAME", this.f4139f.toString());
        if (this.f4142i != null) {
            Drawable drawable = null;
            if (this.f4143j) {
                PackageManager packageManager = this.f4134a.getPackageManager();
                ComponentName componentName = this.f4138e;
                if (componentName != null) {
                    try {
                        drawable = packageManager.getActivityIcon(componentName);
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                }
                if (drawable == null) {
                    drawable = this.f4134a.getApplicationInfo().loadIcon(packageManager);
                }
            }
            this.f4142i.addToShortcutIntent(intent, drawable, this.f4134a);
        }
        return intent;
    }

    @Nullable
    public ComponentName getActivity() {
        return this.f4138e;
    }

    @Nullable
    public Set<String> getCategories() {
        return this.f4145l;
    }

    @Nullable
    public CharSequence getDisabledMessage() {
        return this.f4141h;
    }

    public int getDisabledReason() {
        return this.f4159z;
    }

    @Nullable
    public PersistableBundle getExtras() {
        return this.f4149p;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public IconCompat getIcon() {
        return this.f4142i;
    }

    @NonNull
    public String getId() {
        return this.f4135b;
    }

    @NonNull
    public Intent getIntent() {
        Intent[] intentArr = this.f4137d;
        return intentArr[intentArr.length - 1];
    }

    @NonNull
    public Intent[] getIntents() {
        Intent[] intentArr = this.f4137d;
        return (Intent[]) Arrays.copyOf(intentArr, intentArr.length);
    }

    public long getLastChangedTimestamp() {
        return this.f4150q;
    }

    @Nullable
    public LocusIdCompat getLocusId() {
        return this.f4146m;
    }

    @Nullable
    public CharSequence getLongLabel() {
        return this.f4140g;
    }

    @NonNull
    public String getPackage() {
        return this.f4136c;
    }

    public int getRank() {
        return this.f4148o;
    }

    @NonNull
    public CharSequence getShortLabel() {
        return this.f4139f;
    }

    @Nullable
    public UserHandle getUserHandle() {
        return this.f4151r;
    }

    public boolean hasKeyFieldsOnly() {
        return this.f4158y;
    }

    public boolean isCached() {
        return this.f4152s;
    }

    public boolean isDeclaredInManifest() {
        return this.f4155v;
    }

    public boolean isDynamic() {
        return this.f4153t;
    }

    public boolean isEnabled() {
        return this.f4157x;
    }

    public boolean isImmutable() {
        return this.f4156w;
    }

    public boolean isPinned() {
        return this.f4154u;
    }

    @RequiresApi(25)
    public ShortcutInfo toShortcutInfo() {
        ShortcutInfo.Builder intents = new ShortcutInfo.Builder(this.f4134a, this.f4135b).setShortLabel(this.f4139f).setIntents(this.f4137d);
        IconCompat iconCompat = this.f4142i;
        if (iconCompat != null) {
            intents.setIcon(iconCompat.toIcon(this.f4134a));
        }
        if (!TextUtils.isEmpty(this.f4140g)) {
            intents.setLongLabel(this.f4140g);
        }
        if (!TextUtils.isEmpty(this.f4141h)) {
            intents.setDisabledMessage(this.f4141h);
        }
        ComponentName componentName = this.f4138e;
        if (componentName != null) {
            intents.setActivity(componentName);
        }
        Set<String> set = this.f4145l;
        if (set != null) {
            intents.setCategories(set);
        }
        intents.setRank(this.f4148o);
        PersistableBundle persistableBundle = this.f4149p;
        if (persistableBundle != null) {
            intents.setExtras(persistableBundle);
        }
        if (Build.VERSION.SDK_INT >= 29) {
            Person[] personArr = this.f4144k;
            if (personArr != null && personArr.length > 0) {
                int length = personArr.length;
                android.app.Person[] personArr2 = new android.app.Person[length];
                for (int i2 = 0; i2 < length; i2++) {
                    personArr2[i2] = this.f4144k[i2].toAndroidPerson();
                }
                intents.setPersons(personArr2);
            }
            LocusIdCompat locusIdCompat = this.f4146m;
            if (locusIdCompat != null) {
                intents.setLocusId(locusIdCompat.toLocusId());
            }
            intents.setLongLived(this.f4147n);
        } else {
            intents.setExtras(b());
        }
        return intents.build();
    }
}
