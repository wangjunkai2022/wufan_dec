package androidx.lifecycle;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class ViewModelStore {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<String, ViewModel> f6339a = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ViewModel a(String str) {
        return this.f6339a.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<String> b() {
        return new HashSet(this.f6339a.keySet());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(String str, ViewModel viewModel) {
        ViewModel put = this.f6339a.put(str, viewModel);
        if (put != null) {
            put.onCleared();
        }
    }

    public final void clear() {
        for (ViewModel viewModel : this.f6339a.values()) {
            viewModel.clear();
        }
        this.f6339a.clear();
    }
}
