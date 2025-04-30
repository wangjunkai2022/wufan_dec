package androidx.fragment.app;

import androidx.annotation.Nullable;
import androidx.lifecycle.ViewModelStore;
import java.util.Collection;
import java.util.Map;
@Deprecated
/* loaded from: classes.dex */
public class FragmentManagerNonConfig {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Collection<Fragment> f5929a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, FragmentManagerNonConfig> f5930b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, ViewModelStore> f5931c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentManagerNonConfig(@Nullable Collection<Fragment> collection, @Nullable Map<String, FragmentManagerNonConfig> map, @Nullable Map<String, ViewModelStore> map2) {
        this.f5929a = collection;
        this.f5930b = map;
        this.f5931c = map2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Map<String, FragmentManagerNonConfig> a() {
        return this.f5930b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Collection<Fragment> b() {
        return this.f5929a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Map<String, ViewModelStore> c() {
        return this.f5931c;
    }

    boolean d(Fragment fragment) {
        Collection<Fragment> collection = this.f5929a;
        if (collection == null) {
            return false;
        }
        return collection.contains(fragment);
    }
}
