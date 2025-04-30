package androidx.core.view;

import android.annotation.SuppressLint;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public class MenuHostHelper {

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f4798a;

    /* renamed from: b  reason: collision with root package name */
    private final CopyOnWriteArrayList<MenuProvider> f4799b = new CopyOnWriteArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private final Map<MenuProvider, LifecycleContainer> f4800c = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class LifecycleContainer {

        /* renamed from: a  reason: collision with root package name */
        final Lifecycle f4801a;

        /* renamed from: b  reason: collision with root package name */
        private LifecycleEventObserver f4802b;

        LifecycleContainer(@NonNull Lifecycle lifecycle, @NonNull LifecycleEventObserver lifecycleEventObserver) {
            this.f4801a = lifecycle;
            this.f4802b = lifecycleEventObserver;
            lifecycle.addObserver(lifecycleEventObserver);
        }

        void a() {
            this.f4801a.removeObserver(this.f4802b);
            this.f4802b = null;
        }
    }

    public MenuHostHelper(@NonNull Runnable runnable) {
        this.f4798a = runnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(MenuProvider menuProvider, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            removeMenuProvider(menuProvider);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(Lifecycle.State state, MenuProvider menuProvider, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.upTo(state)) {
            addMenuProvider(menuProvider);
        } else if (event == Lifecycle.Event.ON_DESTROY) {
            removeMenuProvider(menuProvider);
        } else if (event == Lifecycle.Event.downFrom(state)) {
            this.f4799b.remove(menuProvider);
            this.f4798a.run();
        }
    }

    public void addMenuProvider(@NonNull MenuProvider menuProvider) {
        this.f4799b.add(menuProvider);
        this.f4798a.run();
    }

    public void onCreateMenu(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
        Iterator<MenuProvider> it2 = this.f4799b.iterator();
        while (it2.hasNext()) {
            it2.next().onCreateMenu(menu, menuInflater);
        }
    }

    public boolean onMenuItemSelected(@NonNull MenuItem menuItem) {
        Iterator<MenuProvider> it2 = this.f4799b.iterator();
        while (it2.hasNext()) {
            if (it2.next().onMenuItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void removeMenuProvider(@NonNull MenuProvider menuProvider) {
        this.f4799b.remove(menuProvider);
        LifecycleContainer remove = this.f4800c.remove(menuProvider);
        if (remove != null) {
            remove.a();
        }
        this.f4798a.run();
    }

    public void addMenuProvider(@NonNull final MenuProvider menuProvider, @NonNull LifecycleOwner lifecycleOwner) {
        addMenuProvider(menuProvider);
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        LifecycleContainer remove = this.f4800c.remove(menuProvider);
        if (remove != null) {
            remove.a();
        }
        this.f4800c.put(menuProvider, new LifecycleContainer(lifecycle, new LifecycleEventObserver() { // from class: androidx.core.view.b
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                MenuHostHelper.this.c(menuProvider, lifecycleOwner2, event);
            }
        }));
    }

    @SuppressLint({"LambdaLast"})
    public void addMenuProvider(@NonNull final MenuProvider menuProvider, @NonNull LifecycleOwner lifecycleOwner, @NonNull final Lifecycle.State state) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        LifecycleContainer remove = this.f4800c.remove(menuProvider);
        if (remove != null) {
            remove.a();
        }
        this.f4800c.put(menuProvider, new LifecycleContainer(lifecycle, new LifecycleEventObserver() { // from class: androidx.core.view.c
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                MenuHostHelper.this.d(state, menuProvider, lifecycleOwner2, event);
            }
        }));
    }
}
