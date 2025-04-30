package androidx.fragment.app;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class FragmentManagerViewModel extends ViewModel {

    /* renamed from: h  reason: collision with root package name */
    private static final String f5940h = "FragmentManager";

    /* renamed from: i  reason: collision with root package name */
    private static final ViewModelProvider.Factory f5941i = new ViewModelProvider.Factory() { // from class: androidx.fragment.app.FragmentManagerViewModel.1
        @Override // androidx.lifecycle.ViewModelProvider.Factory
        @NonNull
        public <T extends ViewModel> T create(@NonNull Class<T> cls) {
            return new FragmentManagerViewModel(true);
        }
    };

    /* renamed from: d  reason: collision with root package name */
    private final boolean f5945d;

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<String, Fragment> f5942a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<String, FragmentManagerViewModel> f5943b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, ViewModelStore> f5944c = new HashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private boolean f5946e = false;

    /* renamed from: f  reason: collision with root package name */
    private boolean f5947f = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f5948g = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentManagerViewModel(boolean z3) {
        this.f5945d = z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static FragmentManagerViewModel e(ViewModelStore viewModelStore) {
        return (FragmentManagerViewModel) new ViewModelProvider(viewModelStore, f5941i).get(FragmentManagerViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Fragment fragment) {
        if (this.f5948g) {
            FragmentManager.y0(2);
        } else if (this.f5942a.containsKey(fragment.mWho)) {
        } else {
            this.f5942a.put(fragment.mWho, fragment);
            if (FragmentManager.y0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Updating retained Fragments: Added ");
                sb.append(fragment);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@NonNull Fragment fragment) {
        if (FragmentManager.y0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Clearing non-config state for ");
            sb.append(fragment);
        }
        FragmentManagerViewModel fragmentManagerViewModel = this.f5943b.get(fragment.mWho);
        if (fragmentManagerViewModel != null) {
            fragmentManagerViewModel.onCleared();
            this.f5943b.remove(fragment.mWho);
        }
        ViewModelStore viewModelStore = this.f5944c.get(fragment.mWho);
        if (viewModelStore != null) {
            viewModelStore.clear();
            this.f5944c.remove(fragment.mWho);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Fragment c(String str) {
        return this.f5942a.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public FragmentManagerViewModel d(@NonNull Fragment fragment) {
        FragmentManagerViewModel fragmentManagerViewModel = this.f5943b.get(fragment.mWho);
        if (fragmentManagerViewModel == null) {
            FragmentManagerViewModel fragmentManagerViewModel2 = new FragmentManagerViewModel(this.f5945d);
            this.f5943b.put(fragment.mWho, fragmentManagerViewModel2);
            return fragmentManagerViewModel2;
        }
        return fragmentManagerViewModel;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || FragmentManagerViewModel.class != obj.getClass()) {
            return false;
        }
        FragmentManagerViewModel fragmentManagerViewModel = (FragmentManagerViewModel) obj;
        return this.f5942a.equals(fragmentManagerViewModel.f5942a) && this.f5943b.equals(fragmentManagerViewModel.f5943b) && this.f5944c.equals(fragmentManagerViewModel.f5944c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Collection<Fragment> f() {
        return new ArrayList(this.f5942a.values());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    @Deprecated
    public FragmentManagerNonConfig g() {
        if (this.f5942a.isEmpty() && this.f5943b.isEmpty() && this.f5944c.isEmpty()) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, FragmentManagerViewModel> entry : this.f5943b.entrySet()) {
            FragmentManagerNonConfig g4 = entry.getValue().g();
            if (g4 != null) {
                hashMap.put(entry.getKey(), g4);
            }
        }
        this.f5947f = true;
        if (this.f5942a.isEmpty() && hashMap.isEmpty() && this.f5944c.isEmpty()) {
            return null;
        }
        return new FragmentManagerNonConfig(new ArrayList(this.f5942a.values()), hashMap, new HashMap(this.f5944c));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public ViewModelStore h(@NonNull Fragment fragment) {
        ViewModelStore viewModelStore = this.f5944c.get(fragment.mWho);
        if (viewModelStore == null) {
            ViewModelStore viewModelStore2 = new ViewModelStore();
            this.f5944c.put(fragment.mWho, viewModelStore2);
            return viewModelStore2;
        }
        return viewModelStore;
    }

    public int hashCode() {
        return (((this.f5942a.hashCode() * 31) + this.f5943b.hashCode()) * 31) + this.f5944c.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i() {
        return this.f5946e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(@NonNull Fragment fragment) {
        if (this.f5948g) {
            FragmentManager.y0(2);
            return;
        }
        if ((this.f5942a.remove(fragment.mWho) != null) && FragmentManager.y0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Updating retained Fragments: Removed ");
            sb.append(fragment);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public void k(@Nullable FragmentManagerNonConfig fragmentManagerNonConfig) {
        this.f5942a.clear();
        this.f5943b.clear();
        this.f5944c.clear();
        if (fragmentManagerNonConfig != null) {
            Collection<Fragment> b4 = fragmentManagerNonConfig.b();
            if (b4 != null) {
                for (Fragment fragment : b4) {
                    if (fragment != null) {
                        this.f5942a.put(fragment.mWho, fragment);
                    }
                }
            }
            Map<String, FragmentManagerNonConfig> a4 = fragmentManagerNonConfig.a();
            if (a4 != null) {
                for (Map.Entry<String, FragmentManagerNonConfig> entry : a4.entrySet()) {
                    FragmentManagerViewModel fragmentManagerViewModel = new FragmentManagerViewModel(this.f5945d);
                    fragmentManagerViewModel.k(entry.getValue());
                    this.f5943b.put(entry.getKey(), fragmentManagerViewModel);
                }
            }
            Map<String, ViewModelStore> c4 = fragmentManagerNonConfig.c();
            if (c4 != null) {
                this.f5944c.putAll(c4);
            }
        }
        this.f5947f = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(boolean z3) {
        this.f5948g = z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean m(@NonNull Fragment fragment) {
        if (this.f5942a.containsKey(fragment.mWho)) {
            if (this.f5945d) {
                return this.f5946e;
            }
            return !this.f5947f;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        if (FragmentManager.y0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("onCleared called for ");
            sb.append(this);
        }
        this.f5946e = true;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it2 = this.f5942a.values().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it3 = this.f5943b.keySet().iterator();
        while (it3.hasNext()) {
            sb.append(it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it4 = this.f5944c.keySet().iterator();
        while (it4.hasNext()) {
            sb.append(it4.next());
            if (it4.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
