package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityOptionsCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
/* loaded from: classes.dex */
public abstract class ActivityResultRegistry {

    /* renamed from: i  reason: collision with root package name */
    private static final String f60i = "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS";

    /* renamed from: j  reason: collision with root package name */
    private static final String f61j = "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS";

    /* renamed from: k  reason: collision with root package name */
    private static final String f62k = "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS";

    /* renamed from: l  reason: collision with root package name */
    private static final String f63l = "KEY_COMPONENT_ACTIVITY_PENDING_RESULT";

    /* renamed from: m  reason: collision with root package name */
    private static final String f64m = "KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT";

    /* renamed from: n  reason: collision with root package name */
    private static final String f65n = "ActivityResultRegistry";

    /* renamed from: o  reason: collision with root package name */
    private static final int f66o = 65536;

    /* renamed from: a  reason: collision with root package name */
    private Random f67a = new Random();

    /* renamed from: b  reason: collision with root package name */
    private final Map<Integer, String> f68b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    final Map<String, Integer> f69c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, LifecycleContainer> f70d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    ArrayList<String> f71e = new ArrayList<>();

    /* renamed from: f  reason: collision with root package name */
    final transient Map<String, CallbackAndContract<?>> f72f = new HashMap();

    /* renamed from: g  reason: collision with root package name */
    final Map<String, Object> f73g = new HashMap();

    /* renamed from: h  reason: collision with root package name */
    final Bundle f74h = new Bundle();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class CallbackAndContract<O> {

        /* renamed from: a  reason: collision with root package name */
        final ActivityResultCallback<O> f87a;

        /* renamed from: b  reason: collision with root package name */
        final ActivityResultContract<?, O> f88b;

        CallbackAndContract(ActivityResultCallback<O> activityResultCallback, ActivityResultContract<?, O> activityResultContract) {
            this.f87a = activityResultCallback;
            this.f88b = activityResultContract;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class LifecycleContainer {

        /* renamed from: a  reason: collision with root package name */
        final Lifecycle f89a;

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<LifecycleEventObserver> f90b = new ArrayList<>();

        LifecycleContainer(@NonNull Lifecycle lifecycle) {
            this.f89a = lifecycle;
        }

        void a(@NonNull LifecycleEventObserver lifecycleEventObserver) {
            this.f89a.addObserver(lifecycleEventObserver);
            this.f90b.add(lifecycleEventObserver);
        }

        void b() {
            Iterator<LifecycleEventObserver> it2 = this.f90b.iterator();
            while (it2.hasNext()) {
                this.f89a.removeObserver(it2.next());
            }
            this.f90b.clear();
        }
    }

    private void a(int i2, String str) {
        this.f68b.put(Integer.valueOf(i2), str);
        this.f69c.put(str, Integer.valueOf(i2));
    }

    private <O> void b(String str, int i2, @Nullable Intent intent, @Nullable CallbackAndContract<O> callbackAndContract) {
        ActivityResultCallback<O> activityResultCallback;
        if (callbackAndContract != null && (activityResultCallback = callbackAndContract.f87a) != null) {
            activityResultCallback.onActivityResult(callbackAndContract.f88b.parseResult(i2, intent));
            return;
        }
        this.f73g.remove(str);
        this.f74h.putParcelable(str, new ActivityResult(i2, intent));
    }

    private int c() {
        int nextInt = this.f67a.nextInt(2147418112);
        while (true) {
            int i2 = nextInt + 65536;
            if (!this.f68b.containsKey(Integer.valueOf(i2))) {
                return i2;
            }
            nextInt = this.f67a.nextInt(2147418112);
        }
    }

    private int d(String str) {
        Integer num = this.f69c.get(str);
        if (num != null) {
            return num.intValue();
        }
        int c4 = c();
        a(c4, str);
        return c4;
    }

    @MainThread
    public final boolean dispatchResult(int i2, int i4, @Nullable Intent intent) {
        String str = this.f68b.get(Integer.valueOf(i2));
        if (str == null) {
            return false;
        }
        this.f71e.remove(str);
        b(str, i4, intent, this.f72f.get(str));
        return true;
    }

    @MainThread
    final void e(@NonNull String str) {
        Integer remove;
        if (!this.f71e.contains(str) && (remove = this.f69c.remove(str)) != null) {
            this.f68b.remove(remove);
        }
        this.f72f.remove(str);
        if (this.f73g.containsKey(str)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Dropping pending result for request ");
            sb.append(str);
            sb.append(": ");
            sb.append(this.f73g.get(str));
            this.f73g.remove(str);
        }
        if (this.f74h.containsKey(str)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Dropping pending result for request ");
            sb2.append(str);
            sb2.append(": ");
            sb2.append(this.f74h.getParcelable(str));
            this.f74h.remove(str);
        }
        LifecycleContainer lifecycleContainer = this.f70d.get(str);
        if (lifecycleContainer != null) {
            lifecycleContainer.b();
            this.f70d.remove(str);
        }
    }

    @MainThread
    public abstract <I, O> void onLaunch(int i2, @NonNull ActivityResultContract<I, O> activityResultContract, @SuppressLint({"UnknownNullness"}) I i4, @Nullable ActivityOptionsCompat activityOptionsCompat);

    public final void onRestoreInstanceState(@Nullable Bundle bundle) {
        if (bundle == null) {
            return;
        }
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(f60i);
        ArrayList<String> stringArrayList = bundle.getStringArrayList(f61j);
        if (stringArrayList == null || integerArrayList == null) {
            return;
        }
        this.f71e = bundle.getStringArrayList(f62k);
        this.f67a = (Random) bundle.getSerializable(f64m);
        this.f74h.putAll(bundle.getBundle(f63l));
        for (int i2 = 0; i2 < stringArrayList.size(); i2++) {
            String str = stringArrayList.get(i2);
            if (this.f69c.containsKey(str)) {
                Integer remove = this.f69c.remove(str);
                if (!this.f74h.containsKey(str)) {
                    this.f68b.remove(remove);
                }
            }
            a(integerArrayList.get(i2).intValue(), stringArrayList.get(i2));
        }
    }

    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        bundle.putIntegerArrayList(f60i, new ArrayList<>(this.f69c.values()));
        bundle.putStringArrayList(f61j, new ArrayList<>(this.f69c.keySet()));
        bundle.putStringArrayList(f62k, new ArrayList<>(this.f71e));
        bundle.putBundle(f63l, (Bundle) this.f74h.clone());
        bundle.putSerializable(f64m, this.f67a);
    }

    @NonNull
    public final <I, O> ActivityResultLauncher<I> register(@NonNull final String str, @NonNull LifecycleOwner lifecycleOwner, @NonNull final ActivityResultContract<I, O> activityResultContract, @NonNull final ActivityResultCallback<O> activityResultCallback) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (!lifecycle.getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            final int d4 = d(str);
            LifecycleContainer lifecycleContainer = this.f70d.get(str);
            if (lifecycleContainer == null) {
                lifecycleContainer = new LifecycleContainer(lifecycle);
            }
            lifecycleContainer.a(new LifecycleEventObserver() { // from class: androidx.activity.result.ActivityResultRegistry.1
                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner2, @NonNull Lifecycle.Event event) {
                    if (Lifecycle.Event.ON_START.equals(event)) {
                        ActivityResultRegistry.this.f72f.put(str, new CallbackAndContract<>(activityResultCallback, activityResultContract));
                        if (ActivityResultRegistry.this.f73g.containsKey(str)) {
                            Object obj = ActivityResultRegistry.this.f73g.get(str);
                            ActivityResultRegistry.this.f73g.remove(str);
                            activityResultCallback.onActivityResult(obj);
                        }
                        ActivityResult activityResult = (ActivityResult) ActivityResultRegistry.this.f74h.getParcelable(str);
                        if (activityResult != null) {
                            ActivityResultRegistry.this.f74h.remove(str);
                            activityResultCallback.onActivityResult(activityResultContract.parseResult(activityResult.getResultCode(), activityResult.getData()));
                        }
                    } else if (Lifecycle.Event.ON_STOP.equals(event)) {
                        ActivityResultRegistry.this.f72f.remove(str);
                    } else if (Lifecycle.Event.ON_DESTROY.equals(event)) {
                        ActivityResultRegistry.this.e(str);
                    }
                }
            });
            this.f70d.put(str, lifecycleContainer);
            return new ActivityResultLauncher<I>() { // from class: androidx.activity.result.ActivityResultRegistry.2
                @Override // androidx.activity.result.ActivityResultLauncher
                @NonNull
                public ActivityResultContract<I, ?> getContract() {
                    return activityResultContract;
                }

                @Override // androidx.activity.result.ActivityResultLauncher
                public void launch(I i2, @Nullable ActivityOptionsCompat activityOptionsCompat) {
                    ActivityResultRegistry.this.f71e.add(str);
                    Integer num = ActivityResultRegistry.this.f69c.get(str);
                    ActivityResultRegistry.this.onLaunch(num != null ? num.intValue() : d4, activityResultContract, i2, activityOptionsCompat);
                }

                @Override // androidx.activity.result.ActivityResultLauncher
                public void unregister() {
                    ActivityResultRegistry.this.e(str);
                }
            };
        }
        throw new IllegalStateException("LifecycleOwner " + lifecycleOwner + " is attempting to register while current state is " + lifecycle.getCurrentState() + ". LifecycleOwners must call register before they are STARTED.");
    }

    @MainThread
    public final <O> boolean dispatchResult(int i2, @SuppressLint({"UnknownNullness"}) O o3) {
        ActivityResultCallback<?> activityResultCallback;
        String str = this.f68b.get(Integer.valueOf(i2));
        if (str == null) {
            return false;
        }
        this.f71e.remove(str);
        CallbackAndContract<?> callbackAndContract = this.f72f.get(str);
        if (callbackAndContract != null && (activityResultCallback = callbackAndContract.f87a) != null) {
            activityResultCallback.onActivityResult(o3);
            return true;
        }
        this.f74h.remove(str);
        this.f73g.put(str, o3);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public final <I, O> ActivityResultLauncher<I> register(@NonNull final String str, @NonNull final ActivityResultContract<I, O> activityResultContract, @NonNull ActivityResultCallback<O> activityResultCallback) {
        final int d4 = d(str);
        this.f72f.put(str, new CallbackAndContract<>(activityResultCallback, activityResultContract));
        if (this.f73g.containsKey(str)) {
            Object obj = this.f73g.get(str);
            this.f73g.remove(str);
            activityResultCallback.onActivityResult(obj);
        }
        ActivityResult activityResult = (ActivityResult) this.f74h.getParcelable(str);
        if (activityResult != null) {
            this.f74h.remove(str);
            activityResultCallback.onActivityResult(activityResultContract.parseResult(activityResult.getResultCode(), activityResult.getData()));
        }
        return new ActivityResultLauncher<I>() { // from class: androidx.activity.result.ActivityResultRegistry.3
            @Override // androidx.activity.result.ActivityResultLauncher
            @NonNull
            public ActivityResultContract<I, ?> getContract() {
                return activityResultContract;
            }

            @Override // androidx.activity.result.ActivityResultLauncher
            public void launch(I i2, @Nullable ActivityOptionsCompat activityOptionsCompat) {
                ActivityResultRegistry.this.f71e.add(str);
                Integer num = ActivityResultRegistry.this.f69c.get(str);
                ActivityResultRegistry.this.onLaunch(num != null ? num.intValue() : d4, activityResultContract, i2, activityOptionsCompat);
            }

            @Override // androidx.activity.result.ActivityResultLauncher
            public void unregister() {
                ActivityResultRegistry.this.e(str);
            }
        };
    }
}
