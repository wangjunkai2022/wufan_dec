package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.lifecycle.GenericLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.savedstate.SavedStateRegistry;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"RestrictedApi"})
/* loaded from: classes2.dex */
public final class Recreator implements GenericLifecycleObserver {

    /* renamed from: b  reason: collision with root package name */
    static final String f7363b = "classes_to_restore";

    /* renamed from: c  reason: collision with root package name */
    static final String f7364c = "androidx.savedstate.Restarter";

    /* renamed from: a  reason: collision with root package name */
    private final SavedStateRegistryOwner f7365a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class SavedStateProvider implements SavedStateRegistry.SavedStateProvider {

        /* renamed from: a  reason: collision with root package name */
        final Set<String> f7366a = new HashSet();

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedStateProvider(SavedStateRegistry savedStateRegistry) {
            savedStateRegistry.registerSavedStateProvider(Recreator.f7364c, this);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(String str) {
            this.f7366a.add(str);
        }

        @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
        @NonNull
        public Bundle saveState() {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList(Recreator.f7363b, new ArrayList<>(this.f7366a));
            return bundle;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Recreator(SavedStateRegistryOwner savedStateRegistryOwner) {
        this.f7365a = savedStateRegistryOwner;
    }

    private void a(String str) {
        Class cls;
        try {
            try {
                Constructor declaredConstructor = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(SavedStateRegistry.AutoRecreated.class).getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                try {
                    ((SavedStateRegistry.AutoRecreated) declaredConstructor.newInstance(new Object[0])).onRecreated(this.f7365a);
                } catch (Exception e4) {
                    throw new RuntimeException("Failed to instantiate " + str, e4);
                }
            } catch (NoSuchMethodException e5) {
                throw new IllegalStateException("Class" + cls.getSimpleName() + " must have default constructor in order to be automatically recreated", e5);
            }
        } catch (ClassNotFoundException e6) {
            throw new RuntimeException("Class " + str + " wasn't found", e6);
        }
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_CREATE) {
            lifecycleOwner.getLifecycle().removeObserver(this);
            Bundle consumeRestoredStateForKey = this.f7365a.getSavedStateRegistry().consumeRestoredStateForKey(f7364c);
            if (consumeRestoredStateForKey == null) {
                return;
            }
            ArrayList<String> stringArrayList = consumeRestoredStateForKey.getStringArrayList(f7363b);
            if (stringArrayList != null) {
                Iterator<String> it2 = stringArrayList.iterator();
                while (it2.hasNext()) {
                    a(it2.next());
                }
                return;
            }
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        throw new AssertionError("Next event must be ON_CREATE");
    }
}
