package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FragmentLifecycleCallbacksDispatcher {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final CopyOnWriteArrayList<FragmentLifecycleCallbacksHolder> f5869a = new CopyOnWriteArrayList<>();
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final FragmentManager f5870b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class FragmentLifecycleCallbacksHolder {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        final FragmentManager.FragmentLifecycleCallbacks f5871a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f5872b;

        FragmentLifecycleCallbacksHolder(@NonNull FragmentManager.FragmentLifecycleCallbacks fragmentLifecycleCallbacks, boolean z3) {
            this.f5871a = fragmentLifecycleCallbacks;
            this.f5872b = z3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentLifecycleCallbacksDispatcher(@NonNull FragmentManager fragmentManager) {
        this.f5870b = fragmentManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Fragment fragment, @Nullable Bundle bundle, boolean z3) {
        Fragment r02 = this.f5870b.r0();
        if (r02 != null) {
            r02.getParentFragmentManager().q0().a(fragment, bundle, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it2 = this.f5869a.iterator();
        while (it2.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it2.next();
            if (!z3 || next.f5872b) {
                next.f5871a.onFragmentActivityCreated(this.f5870b, fragment, bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@NonNull Fragment fragment, boolean z3) {
        Context context = this.f5870b.o0().getContext();
        Fragment r02 = this.f5870b.r0();
        if (r02 != null) {
            r02.getParentFragmentManager().q0().b(fragment, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it2 = this.f5869a.iterator();
        while (it2.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it2.next();
            if (!z3 || next.f5872b) {
                next.f5871a.onFragmentAttached(this.f5870b, fragment, context);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(@NonNull Fragment fragment, @Nullable Bundle bundle, boolean z3) {
        Fragment r02 = this.f5870b.r0();
        if (r02 != null) {
            r02.getParentFragmentManager().q0().c(fragment, bundle, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it2 = this.f5869a.iterator();
        while (it2.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it2.next();
            if (!z3 || next.f5872b) {
                next.f5871a.onFragmentCreated(this.f5870b, fragment, bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(@NonNull Fragment fragment, boolean z3) {
        Fragment r02 = this.f5870b.r0();
        if (r02 != null) {
            r02.getParentFragmentManager().q0().d(fragment, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it2 = this.f5869a.iterator();
        while (it2.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it2.next();
            if (!z3 || next.f5872b) {
                next.f5871a.onFragmentDestroyed(this.f5870b, fragment);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(@NonNull Fragment fragment, boolean z3) {
        Fragment r02 = this.f5870b.r0();
        if (r02 != null) {
            r02.getParentFragmentManager().q0().e(fragment, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it2 = this.f5869a.iterator();
        while (it2.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it2.next();
            if (!z3 || next.f5872b) {
                next.f5871a.onFragmentDetached(this.f5870b, fragment);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(@NonNull Fragment fragment, boolean z3) {
        Fragment r02 = this.f5870b.r0();
        if (r02 != null) {
            r02.getParentFragmentManager().q0().f(fragment, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it2 = this.f5869a.iterator();
        while (it2.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it2.next();
            if (!z3 || next.f5872b) {
                next.f5871a.onFragmentPaused(this.f5870b, fragment);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(@NonNull Fragment fragment, boolean z3) {
        Context context = this.f5870b.o0().getContext();
        Fragment r02 = this.f5870b.r0();
        if (r02 != null) {
            r02.getParentFragmentManager().q0().g(fragment, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it2 = this.f5869a.iterator();
        while (it2.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it2.next();
            if (!z3 || next.f5872b) {
                next.f5871a.onFragmentPreAttached(this.f5870b, fragment, context);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(@NonNull Fragment fragment, @Nullable Bundle bundle, boolean z3) {
        Fragment r02 = this.f5870b.r0();
        if (r02 != null) {
            r02.getParentFragmentManager().q0().h(fragment, bundle, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it2 = this.f5869a.iterator();
        while (it2.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it2.next();
            if (!z3 || next.f5872b) {
                next.f5871a.onFragmentPreCreated(this.f5870b, fragment, bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(@NonNull Fragment fragment, boolean z3) {
        Fragment r02 = this.f5870b.r0();
        if (r02 != null) {
            r02.getParentFragmentManager().q0().i(fragment, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it2 = this.f5869a.iterator();
        while (it2.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it2.next();
            if (!z3 || next.f5872b) {
                next.f5871a.onFragmentResumed(this.f5870b, fragment);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(@NonNull Fragment fragment, @NonNull Bundle bundle, boolean z3) {
        Fragment r02 = this.f5870b.r0();
        if (r02 != null) {
            r02.getParentFragmentManager().q0().j(fragment, bundle, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it2 = this.f5869a.iterator();
        while (it2.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it2.next();
            if (!z3 || next.f5872b) {
                next.f5871a.onFragmentSaveInstanceState(this.f5870b, fragment, bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(@NonNull Fragment fragment, boolean z3) {
        Fragment r02 = this.f5870b.r0();
        if (r02 != null) {
            r02.getParentFragmentManager().q0().k(fragment, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it2 = this.f5869a.iterator();
        while (it2.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it2.next();
            if (!z3 || next.f5872b) {
                next.f5871a.onFragmentStarted(this.f5870b, fragment);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(@NonNull Fragment fragment, boolean z3) {
        Fragment r02 = this.f5870b.r0();
        if (r02 != null) {
            r02.getParentFragmentManager().q0().l(fragment, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it2 = this.f5869a.iterator();
        while (it2.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it2.next();
            if (!z3 || next.f5872b) {
                next.f5871a.onFragmentStopped(this.f5870b, fragment);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(@NonNull Fragment fragment, @NonNull View view, @Nullable Bundle bundle, boolean z3) {
        Fragment r02 = this.f5870b.r0();
        if (r02 != null) {
            r02.getParentFragmentManager().q0().m(fragment, view, bundle, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it2 = this.f5869a.iterator();
        while (it2.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it2.next();
            if (!z3 || next.f5872b) {
                next.f5871a.onFragmentViewCreated(this.f5870b, fragment, view, bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(@NonNull Fragment fragment, boolean z3) {
        Fragment r02 = this.f5870b.r0();
        if (r02 != null) {
            r02.getParentFragmentManager().q0().n(fragment, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it2 = this.f5869a.iterator();
        while (it2.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it2.next();
            if (!z3 || next.f5872b) {
                next.f5871a.onFragmentViewDestroyed(this.f5870b, fragment);
            }
        }
    }

    public void registerFragmentLifecycleCallbacks(@NonNull FragmentManager.FragmentLifecycleCallbacks fragmentLifecycleCallbacks, boolean z3) {
        this.f5869a.add(new FragmentLifecycleCallbacksHolder(fragmentLifecycleCallbacks, z3));
    }

    public void unregisterFragmentLifecycleCallbacks(@NonNull FragmentManager.FragmentLifecycleCallbacks fragmentLifecycleCallbacks) {
        synchronized (this.f5869a) {
            int i2 = 0;
            int size = this.f5869a.size();
            while (true) {
                if (i2 >= size) {
                    break;
                } else if (this.f5869a.get(i2).f5871a == fragmentLifecycleCallbacks) {
                    this.f5869a.remove(i2);
                    break;
                } else {
                    i2++;
                }
            }
        }
    }
}
