package androidx.databinding;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import android.view.Choreographer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.databinding.CallbackRegistry;
import androidx.databinding.Observable;
import androidx.databinding.ObservableList;
import androidx.databinding.ObservableMap;
import androidx.databinding.library.R;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.OnLifecycleEvent;
import androidx.viewbinding.ViewBinding;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class ViewDataBinding extends BaseObservable implements ViewBinding {
    private static final CreateWeakListener A;
    private static final CallbackRegistry.NotifierCallback<OnRebindCallback, ViewDataBinding, Void> B;
    public static final String BINDING_TAG_PREFIX = "binding_";
    private static final ReferenceQueue<ViewDataBinding> C;
    private static final View.OnAttachStateChangeListener D;

    /* renamed from: r  reason: collision with root package name */
    static int f5250r = 0;

    /* renamed from: s  reason: collision with root package name */
    private static final int f5251s = 1;

    /* renamed from: t  reason: collision with root package name */
    private static final int f5252t = 2;

    /* renamed from: u  reason: collision with root package name */
    private static final int f5253u = 3;

    /* renamed from: v  reason: collision with root package name */
    private static final int f5254v = 8;

    /* renamed from: w  reason: collision with root package name */
    private static final boolean f5255w;

    /* renamed from: x  reason: collision with root package name */
    private static final CreateWeakListener f5256x;

    /* renamed from: y  reason: collision with root package name */
    private static final CreateWeakListener f5257y;

    /* renamed from: z  reason: collision with root package name */
    private static final CreateWeakListener f5258z;

    /* renamed from: b  reason: collision with root package name */
    private final Runnable f5259b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f5260c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f5261d;

    /* renamed from: e  reason: collision with root package name */
    private WeakListener[] f5262e;

    /* renamed from: f  reason: collision with root package name */
    private final View f5263f;

    /* renamed from: g  reason: collision with root package name */
    private CallbackRegistry<OnRebindCallback, ViewDataBinding, Void> f5264g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f5265h;

    /* renamed from: i  reason: collision with root package name */
    private Choreographer f5266i;

    /* renamed from: j  reason: collision with root package name */
    private final Choreographer.FrameCallback f5267j;

    /* renamed from: k  reason: collision with root package name */
    private Handler f5268k;

    /* renamed from: l  reason: collision with root package name */
    protected final DataBindingComponent f5269l;

    /* renamed from: m  reason: collision with root package name */
    private ViewDataBinding f5270m;

    /* renamed from: n  reason: collision with root package name */
    private LifecycleOwner f5271n;

    /* renamed from: o  reason: collision with root package name */
    private OnStartListener f5272o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f5273p;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})

    /* renamed from: q  reason: collision with root package name */
    protected boolean f5274q;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class IncludedLayouts {
        public final int[][] indexes;
        public final int[][] layoutIds;
        public final String[][] layouts;

        public IncludedLayouts(int i2) {
            this.layouts = new String[i2];
            this.indexes = new int[i2];
            this.layoutIds = new int[i2];
        }

        public void setIncludes(int i2, String[] strArr, int[] iArr, int[] iArr2) {
            this.layouts[i2] = strArr;
            this.indexes[i2] = iArr;
            this.layoutIds[i2] = iArr2;
        }
    }

    /* loaded from: classes.dex */
    private static class LiveDataListener implements Observer, ObservableReference<LiveData<?>> {

        /* renamed from: a  reason: collision with root package name */
        final WeakListener<LiveData<?>> f5277a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        WeakReference<LifecycleOwner> f5278b = null;

        public LiveDataListener(ViewDataBinding viewDataBinding, int i2, ReferenceQueue<ViewDataBinding> referenceQueue) {
            this.f5277a = new WeakListener<>(viewDataBinding, i2, this, referenceQueue);
        }

        @Nullable
        private LifecycleOwner a() {
            WeakReference<LifecycleOwner> weakReference = this.f5278b;
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }

        @Override // androidx.databinding.ObservableReference
        public WeakListener<LiveData<?>> getListener() {
            return this.f5277a;
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(@Nullable Object obj) {
            ViewDataBinding a4 = this.f5277a.a();
            if (a4 != null) {
                WeakListener<LiveData<?>> weakListener = this.f5277a;
                a4.P(weakListener.f5300b, weakListener.getTarget(), 0);
            }
        }

        @Override // androidx.databinding.ObservableReference
        public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
            LifecycleOwner a4 = a();
            LiveData<?> target = this.f5277a.getTarget();
            if (target != null) {
                if (a4 != null) {
                    target.removeObserver(this);
                }
                if (lifecycleOwner != null) {
                    target.observe(lifecycleOwner, this);
                }
            }
            if (lifecycleOwner != null) {
                this.f5278b = new WeakReference<>(lifecycleOwner);
            }
        }

        @Override // androidx.databinding.ObservableReference
        public void addListener(LiveData<?> liveData) {
            LifecycleOwner a4 = a();
            if (a4 != null) {
                liveData.observe(a4, this);
            }
        }

        @Override // androidx.databinding.ObservableReference
        public void removeListener(LiveData<?> liveData) {
            liveData.removeObserver(this);
        }
    }

    /* loaded from: classes.dex */
    static class OnStartListener implements LifecycleObserver {

        /* renamed from: a  reason: collision with root package name */
        final WeakReference<ViewDataBinding> f5279a;

        @OnLifecycleEvent(Lifecycle.Event.ON_START)
        public void onStart() {
            ViewDataBinding viewDataBinding = this.f5279a.get();
            if (viewDataBinding != null) {
                viewDataBinding.executePendingBindings();
            }
        }

        private OnStartListener(ViewDataBinding viewDataBinding) {
            this.f5279a = new WeakReference<>(viewDataBinding);
        }
    }

    /* loaded from: classes.dex */
    protected static abstract class PropertyChangedInverseListener extends Observable.OnPropertyChangedCallback implements InverseBindingListener {

        /* renamed from: a  reason: collision with root package name */
        final int f5280a;

        public PropertyChangedInverseListener(int i2) {
            this.f5280a = i2;
        }

        @Override // androidx.databinding.Observable.OnPropertyChangedCallback
        public void onPropertyChanged(Observable observable, int i2) {
            if (i2 == this.f5280a || i2 == 0) {
                onChange();
            }
        }
    }

    /* loaded from: classes.dex */
    private static class WeakListListener extends ObservableList.OnListChangedCallback implements ObservableReference<ObservableList> {

        /* renamed from: a  reason: collision with root package name */
        final WeakListener<ObservableList> f5281a;

        public WeakListListener(ViewDataBinding viewDataBinding, int i2, ReferenceQueue<ViewDataBinding> referenceQueue) {
            this.f5281a = new WeakListener<>(viewDataBinding, i2, this, referenceQueue);
        }

        @Override // androidx.databinding.ObservableReference
        public WeakListener<ObservableList> getListener() {
            return this.f5281a;
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void onChanged(ObservableList observableList) {
            ObservableList target;
            ViewDataBinding a4 = this.f5281a.a();
            if (a4 != null && (target = this.f5281a.getTarget()) == observableList) {
                a4.P(this.f5281a.f5300b, target, 0);
            }
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void onItemRangeChanged(ObservableList observableList, int i2, int i4) {
            onChanged(observableList);
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void onItemRangeInserted(ObservableList observableList, int i2, int i4) {
            onChanged(observableList);
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void onItemRangeMoved(ObservableList observableList, int i2, int i4, int i5) {
            onChanged(observableList);
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void onItemRangeRemoved(ObservableList observableList, int i2, int i4) {
            onChanged(observableList);
        }

        @Override // androidx.databinding.ObservableReference
        public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        }

        @Override // androidx.databinding.ObservableReference
        public void addListener(ObservableList observableList) {
            observableList.addOnListChangedCallback(this);
        }

        @Override // androidx.databinding.ObservableReference
        public void removeListener(ObservableList observableList) {
            observableList.removeOnListChangedCallback(this);
        }
    }

    /* loaded from: classes.dex */
    private static class WeakMapListener extends ObservableMap.OnMapChangedCallback implements ObservableReference<ObservableMap> {

        /* renamed from: a  reason: collision with root package name */
        final WeakListener<ObservableMap> f5282a;

        public WeakMapListener(ViewDataBinding viewDataBinding, int i2, ReferenceQueue<ViewDataBinding> referenceQueue) {
            this.f5282a = new WeakListener<>(viewDataBinding, i2, this, referenceQueue);
        }

        @Override // androidx.databinding.ObservableReference
        public WeakListener<ObservableMap> getListener() {
            return this.f5282a;
        }

        @Override // androidx.databinding.ObservableMap.OnMapChangedCallback
        public void onMapChanged(ObservableMap observableMap, Object obj) {
            ViewDataBinding a4 = this.f5282a.a();
            if (a4 == null || observableMap != this.f5282a.getTarget()) {
                return;
            }
            a4.P(this.f5282a.f5300b, observableMap, 0);
        }

        @Override // androidx.databinding.ObservableReference
        public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        }

        @Override // androidx.databinding.ObservableReference
        public void addListener(ObservableMap observableMap) {
            observableMap.addOnMapChangedCallback(this);
        }

        @Override // androidx.databinding.ObservableReference
        public void removeListener(ObservableMap observableMap) {
            observableMap.removeOnMapChangedCallback(this);
        }
    }

    /* loaded from: classes.dex */
    private static class WeakPropertyListener extends Observable.OnPropertyChangedCallback implements ObservableReference<Observable> {

        /* renamed from: a  reason: collision with root package name */
        final WeakListener<Observable> f5283a;

        public WeakPropertyListener(ViewDataBinding viewDataBinding, int i2, ReferenceQueue<ViewDataBinding> referenceQueue) {
            this.f5283a = new WeakListener<>(viewDataBinding, i2, this, referenceQueue);
        }

        @Override // androidx.databinding.ObservableReference
        public WeakListener<Observable> getListener() {
            return this.f5283a;
        }

        @Override // androidx.databinding.Observable.OnPropertyChangedCallback
        public void onPropertyChanged(Observable observable, int i2) {
            ViewDataBinding a4 = this.f5283a.a();
            if (a4 != null && this.f5283a.getTarget() == observable) {
                a4.P(this.f5283a.f5300b, observable, i2);
            }
        }

        @Override // androidx.databinding.ObservableReference
        public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        }

        @Override // androidx.databinding.ObservableReference
        public void addListener(Observable observable) {
            observable.addOnPropertyChangedCallback(this);
        }

        @Override // androidx.databinding.ObservableReference
        public void removeListener(Observable observable) {
            observable.removeOnPropertyChangedCallback(this);
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        f5250r = i2;
        f5255w = i2 >= 16;
        f5256x = new CreateWeakListener() { // from class: androidx.databinding.ViewDataBinding.1
            @Override // androidx.databinding.CreateWeakListener
            public WeakListener create(ViewDataBinding viewDataBinding, int i4, ReferenceQueue<ViewDataBinding> referenceQueue) {
                return new WeakPropertyListener(viewDataBinding, i4, referenceQueue).getListener();
            }
        };
        f5257y = new CreateWeakListener() { // from class: androidx.databinding.ViewDataBinding.2
            @Override // androidx.databinding.CreateWeakListener
            public WeakListener create(ViewDataBinding viewDataBinding, int i4, ReferenceQueue<ViewDataBinding> referenceQueue) {
                return new WeakListListener(viewDataBinding, i4, referenceQueue).getListener();
            }
        };
        f5258z = new CreateWeakListener() { // from class: androidx.databinding.ViewDataBinding.3
            @Override // androidx.databinding.CreateWeakListener
            public WeakListener create(ViewDataBinding viewDataBinding, int i4, ReferenceQueue<ViewDataBinding> referenceQueue) {
                return new WeakMapListener(viewDataBinding, i4, referenceQueue).getListener();
            }
        };
        A = new CreateWeakListener() { // from class: androidx.databinding.ViewDataBinding.4
            @Override // androidx.databinding.CreateWeakListener
            public WeakListener create(ViewDataBinding viewDataBinding, int i4, ReferenceQueue<ViewDataBinding> referenceQueue) {
                return new LiveDataListener(viewDataBinding, i4, referenceQueue).getListener();
            }
        };
        B = new CallbackRegistry.NotifierCallback<OnRebindCallback, ViewDataBinding, Void>() { // from class: androidx.databinding.ViewDataBinding.5
            @Override // androidx.databinding.CallbackRegistry.NotifierCallback
            public void onNotifyCallback(OnRebindCallback onRebindCallback, ViewDataBinding viewDataBinding, int i4, Void r4) {
                if (i4 == 1) {
                    if (onRebindCallback.onPreBind(viewDataBinding)) {
                        return;
                    }
                    viewDataBinding.f5261d = true;
                } else if (i4 == 2) {
                    onRebindCallback.onCanceled(viewDataBinding);
                } else if (i4 != 3) {
                } else {
                    onRebindCallback.onBound(viewDataBinding);
                }
            }
        };
        C = new ReferenceQueue<>();
        if (i2 < 19) {
            D = null;
        } else {
            D = new View.OnAttachStateChangeListener() { // from class: androidx.databinding.ViewDataBinding.6
                @Override // android.view.View.OnAttachStateChangeListener
                @TargetApi(19)
                public void onViewAttachedToWindow(View view) {
                    ViewDataBinding.r(view).f5259b.run();
                    view.removeOnAttachStateChangeListener(this);
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                }
            };
        }
    }

    protected ViewDataBinding(DataBindingComponent dataBindingComponent, View view, int i2) {
        this.f5259b = new Runnable() { // from class: androidx.databinding.ViewDataBinding.7
            @Override // java.lang.Runnable
            public void run() {
                synchronized (this) {
                    ViewDataBinding.this.f5260c = false;
                }
                ViewDataBinding.j0();
                if (Build.VERSION.SDK_INT >= 19 && !ViewDataBinding.this.f5263f.isAttachedToWindow()) {
                    ViewDataBinding.this.f5263f.removeOnAttachStateChangeListener(ViewDataBinding.D);
                    ViewDataBinding.this.f5263f.addOnAttachStateChangeListener(ViewDataBinding.D);
                    return;
                }
                ViewDataBinding.this.executePendingBindings();
            }
        };
        this.f5260c = false;
        this.f5261d = false;
        this.f5269l = dataBindingComponent;
        this.f5262e = new WeakListener[i2];
        this.f5263f = view;
        if (Looper.myLooper() != null) {
            if (f5255w) {
                this.f5266i = Choreographer.getInstance();
                this.f5267j = new Choreographer.FrameCallback() { // from class: androidx.databinding.ViewDataBinding.8
                    @Override // android.view.Choreographer.FrameCallback
                    public void doFrame(long j4) {
                        ViewDataBinding.this.f5259b.run();
                    }
                };
                return;
            }
            this.f5267j = null;
            this.f5268k = new Handler(Looper.myLooper());
            return;
        }
        throw new IllegalStateException("DataBinding must be created in view's UI Thread");
    }

    protected static float B(float[] fArr, int i2) {
        if (fArr == null || i2 < 0 || i2 >= fArr.length) {
            return 0.0f;
        }
        return fArr[i2];
    }

    protected static int C(int[] iArr, int i2) {
        if (iArr == null || i2 < 0 || i2 >= iArr.length) {
            return 0;
        }
        return iArr[i2];
    }

    @TargetApi(16)
    protected static <T> void C0(LongSparseArray<T> longSparseArray, int i2, T t3) {
        if (longSparseArray == null || i2 < 0 || i2 >= longSparseArray.size()) {
            return;
        }
        longSparseArray.put(i2, t3);
    }

    protected static long D(long[] jArr, int i2) {
        if (jArr == null || i2 < 0 || i2 >= jArr.length) {
            return 0L;
        }
        return jArr[i2];
    }

    protected static <T> void D0(SparseArray<T> sparseArray, int i2, T t3) {
        if (sparseArray == null || i2 < 0 || i2 >= sparseArray.size()) {
            return;
        }
        sparseArray.put(i2, t3);
    }

    protected static <T> T E(T[] tArr, int i2) {
        if (tArr == null || i2 < 0 || i2 >= tArr.length) {
            return null;
        }
        return tArr[i2];
    }

    protected static void E0(SparseBooleanArray sparseBooleanArray, int i2, boolean z3) {
        if (sparseBooleanArray == null || i2 < 0 || i2 >= sparseBooleanArray.size()) {
            return;
        }
        sparseBooleanArray.put(i2, z3);
    }

    protected static short F(short[] sArr, int i2) {
        if (sArr == null || i2 < 0 || i2 >= sArr.length) {
            return (short) 0;
        }
        return sArr[i2];
    }

    protected static void F0(SparseIntArray sparseIntArray, int i2, int i4) {
        if (sparseIntArray == null || i2 < 0 || i2 >= sparseIntArray.size()) {
            return;
        }
        sparseIntArray.put(i2, i4);
    }

    protected static boolean G(boolean[] zArr, int i2) {
        if (zArr == null || i2 < 0 || i2 >= zArr.length) {
            return false;
        }
        return zArr[i2];
    }

    @TargetApi(18)
    protected static void G0(SparseLongArray sparseLongArray, int i2, long j4) {
        if (sparseLongArray == null || i2 < 0 || i2 >= sparseLongArray.size()) {
            return;
        }
        sparseLongArray.put(i2, j4);
    }

    protected static int H(SparseIntArray sparseIntArray, int i2) {
        if (sparseIntArray == null || i2 < 0) {
            return 0;
        }
        return sparseIntArray.get(i2);
    }

    protected static <T> void H0(androidx.collection.LongSparseArray<T> longSparseArray, int i2, T t3) {
        if (longSparseArray == null || i2 < 0 || i2 >= longSparseArray.size()) {
            return;
        }
        longSparseArray.put(i2, t3);
    }

    @TargetApi(18)
    protected static long I(SparseLongArray sparseLongArray, int i2) {
        if (sparseLongArray == null || i2 < 0) {
            return 0L;
        }
        return sparseLongArray.get(i2);
    }

    protected static <T> void I0(List<T> list, int i2, T t3) {
        if (list == null || i2 < 0 || i2 >= list.size()) {
            return;
        }
        list.set(i2, t3);
    }

    @TargetApi(16)
    protected static <T> T J(LongSparseArray<T> longSparseArray, int i2) {
        if (longSparseArray == null || i2 < 0) {
            return null;
        }
        return longSparseArray.get(i2);
    }

    protected static <K, T> void J0(Map<K, T> map, K k4, T t3) {
        if (map == null) {
            return;
        }
        map.put(k4, t3);
    }

    protected static <T> T K(SparseArray<T> sparseArray, int i2) {
        if (sparseArray == null || i2 < 0) {
            return null;
        }
        return sparseArray.get(i2);
    }

    protected static void K0(byte[] bArr, int i2, byte b4) {
        if (bArr == null || i2 < 0 || i2 >= bArr.length) {
            return;
        }
        bArr[i2] = b4;
    }

    protected static <T> T L(androidx.collection.LongSparseArray<T> longSparseArray, int i2) {
        if (longSparseArray == null || i2 < 0) {
            return null;
        }
        return longSparseArray.get(i2);
    }

    protected static void L0(char[] cArr, int i2, char c4) {
        if (cArr == null || i2 < 0 || i2 >= cArr.length) {
            return;
        }
        cArr[i2] = c4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T> T M(List<T> list, int i2) {
        if (list == null || i2 < 0 || i2 >= list.size()) {
            return null;
        }
        return list.get(i2);
    }

    protected static void M0(double[] dArr, int i2, double d4) {
        if (dArr == null || i2 < 0 || i2 >= dArr.length) {
            return;
        }
        dArr[i2] = d4;
    }

    protected static boolean N(SparseBooleanArray sparseBooleanArray, int i2) {
        if (sparseBooleanArray == null || i2 < 0) {
            return false;
        }
        return sparseBooleanArray.get(i2);
    }

    protected static void N0(float[] fArr, int i2, float f4) {
        if (fArr == null || i2 < 0 || i2 >= fArr.length) {
            return;
        }
        fArr[i2] = f4;
    }

    protected static void O0(int[] iArr, int i2, int i4) {
        if (iArr == null || i2 < 0 || i2 >= iArr.length) {
            return;
        }
        iArr[i2] = i4;
    }

    protected static void P0(long[] jArr, int i2, long j4) {
        if (jArr == null || i2 < 0 || i2 >= jArr.length) {
            return;
        }
        jArr[i2] = j4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static <T extends ViewDataBinding> T Q(@NonNull LayoutInflater layoutInflater, int i2, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (T) DataBindingUtil.inflate(layoutInflater, i2, viewGroup, z3, i(obj));
    }

    protected static <T> void Q0(T[] tArr, int i2, T t3) {
        if (tArr == null || i2 < 0 || i2 >= tArr.length) {
            return;
        }
        tArr[i2] = t3;
    }

    private static boolean R(String str, int i2) {
        int length = str.length();
        if (length == i2) {
            return false;
        }
        while (i2 < length) {
            if (!Character.isDigit(str.charAt(i2))) {
                return false;
            }
            i2++;
        }
        return true;
    }

    protected static void R0(short[] sArr, int i2, short s3) {
        if (sArr == null || i2 < 0 || i2 >= sArr.length) {
            return;
        }
        sArr[i2] = s3;
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x010b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void S(androidx.databinding.DataBindingComponent r16, android.view.View r17, java.lang.Object[] r18, androidx.databinding.ViewDataBinding.IncludedLayouts r19, android.util.SparseIntArray r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.databinding.ViewDataBinding.S(androidx.databinding.DataBindingComponent, android.view.View, java.lang.Object[], androidx.databinding.ViewDataBinding$IncludedLayouts, android.util.SparseIntArray, boolean):void");
    }

    protected static void S0(boolean[] zArr, int i2, boolean z3) {
        if (zArr == null || i2 < 0 || i2 >= zArr.length) {
            return;
        }
        zArr[i2] = z3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object[] T(DataBindingComponent dataBindingComponent, View view, int i2, IncludedLayouts includedLayouts, SparseIntArray sparseIntArray) {
        Object[] objArr = new Object[i2];
        S(dataBindingComponent, view, objArr, includedLayouts, sparseIntArray, true);
        return objArr;
    }

    protected static Object[] V(DataBindingComponent dataBindingComponent, View[] viewArr, int i2, IncludedLayouts includedLayouts, SparseIntArray sparseIntArray) {
        Object[] objArr = new Object[i2];
        for (View view : viewArr) {
            S(dataBindingComponent, view, objArr, includedLayouts, sparseIntArray, true);
        }
        return objArr;
    }

    protected static byte X(String str, byte b4) {
        try {
            return Byte.parseByte(str);
        } catch (NumberFormatException unused) {
            return b4;
        }
    }

    protected static char Z(String str, char c4) {
        return (str == null || str.isEmpty()) ? c4 : str.charAt(0);
    }

    protected static double b0(String str, double d4) {
        try {
            return Double.parseDouble(str);
        } catch (NumberFormatException unused) {
            return d4;
        }
    }

    protected static float c0(String str, float f4) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException unused) {
            return f4;
        }
    }

    protected static int d0(String str, int i2) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    protected static long f0(String str, long j4) {
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j4;
        }
    }

    protected static short g0(String str, short s3) {
        try {
            return Short.parseShort(str);
        } catch (NumberFormatException unused) {
            return s3;
        }
    }

    public static int getBuildSdkInt() {
        return f5250r;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static ViewDataBinding h(Object obj, View view, int i2) {
        return DataBindingUtil.a(i(obj), view, i2);
    }

    protected static boolean h0(String str, boolean z3) {
        return str == null ? z3 : Boolean.parseBoolean(str);
    }

    private static DataBindingComponent i(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof DataBindingComponent) {
            return (DataBindingComponent) obj;
        }
        throw new IllegalArgumentException("The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent");
    }

    private static int i0(String str, int i2) {
        int length = str.length();
        int i4 = 0;
        while (i2 < length) {
            i4 = (i4 * 10) + (str.charAt(i2) - '0');
            i2++;
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void j0() {
        while (true) {
            Reference<? extends ViewDataBinding> poll = C.poll();
            if (poll == null) {
                return;
            }
            if (poll instanceof WeakListener) {
                ((WeakListener) poll).unregister();
            }
        }
    }

    private void l() {
        if (this.f5265h) {
            n0();
        } else if (hasPendingBindings()) {
            this.f5265h = true;
            this.f5261d = false;
            CallbackRegistry<OnRebindCallback, ViewDataBinding, Void> callbackRegistry = this.f5264g;
            if (callbackRegistry != null) {
                callbackRegistry.notifyCallbacks(this, 1, null);
                if (this.f5261d) {
                    this.f5264g.notifyCallbacks(this, 2, null);
                }
            }
            if (!this.f5261d) {
                k();
                CallbackRegistry<OnRebindCallback, ViewDataBinding, Void> callbackRegistry2 = this.f5264g;
                if (callbackRegistry2 != null) {
                    callbackRegistry2.notifyCallbacks(this, 3, null);
                }
            }
            this.f5265h = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void n(ViewDataBinding viewDataBinding) {
        viewDataBinding.l();
    }

    private static int o(String str, int i2, IncludedLayouts includedLayouts, int i4) {
        CharSequence subSequence = str.subSequence(str.indexOf(47) + 1, str.length() - 2);
        String[] strArr = includedLayouts.layouts[i4];
        int length = strArr.length;
        while (i2 < length) {
            if (TextUtils.equals(subSequence, strArr[i2])) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    protected static byte o0(Byte b4) {
        if (b4 == null) {
            return (byte) 0;
        }
        return b4.byteValue();
    }

    private static int p(ViewGroup viewGroup, int i2) {
        String str = (String) viewGroup.getChildAt(i2).getTag();
        String substring = str.substring(0, str.length() - 1);
        int length = substring.length();
        int childCount = viewGroup.getChildCount();
        for (int i4 = i2 + 1; i4 < childCount; i4++) {
            View childAt = viewGroup.getChildAt(i4);
            String str2 = childAt.getTag() instanceof String ? (String) childAt.getTag() : null;
            if (str2 != null && str2.startsWith(substring)) {
                if (str2.length() == str.length() && str2.charAt(str2.length() - 1) == '0') {
                    return i2;
                }
                if (R(str2, length)) {
                    i2 = i4;
                }
            }
        }
        return i2;
    }

    protected static char p0(Character ch) {
        if (ch == null) {
            return (char) 0;
        }
        return ch.charValue();
    }

    protected static double q0(Double d4) {
        if (d4 == null) {
            return 0.0d;
        }
        return d4.doubleValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ViewDataBinding r(View view) {
        if (view != null) {
            return (ViewDataBinding) view.getTag(R.id.dataBinding);
        }
        return null;
    }

    protected static float r0(Float f4) {
        if (f4 == null) {
            return 0.0f;
        }
        return f4.floatValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int s(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return view.getContext().getColor(i2);
        }
        return view.getResources().getColor(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int s0(Integer num) {
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    protected static ColorStateList t(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return view.getContext().getColorStateList(i2);
        }
        return view.getResources().getColorStateList(i2);
    }

    protected static long t0(Long l4) {
        if (l4 == null) {
            return 0L;
        }
        return l4.longValue();
    }

    protected static Drawable u(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getContext().getDrawable(i2);
        }
        return view.getResources().getDrawable(i2);
    }

    protected static short u0(Short sh) {
        if (sh == null) {
            return (short) 0;
        }
        return sh.shortValue();
    }

    protected static <K, T> T v(Map<K, T> map, K k4) {
        if (map == null) {
            return null;
        }
        return map.get(k4);
    }

    protected static byte w(byte[] bArr, int i2) {
        if (bArr == null || i2 < 0 || i2 >= bArr.length) {
            return (byte) 0;
        }
        return bArr[i2];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean w0(Boolean bool) {
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    protected static void x0(ViewDataBinding viewDataBinding, InverseBindingListener inverseBindingListener, PropertyChangedInverseListener propertyChangedInverseListener) {
        if (inverseBindingListener != propertyChangedInverseListener) {
            if (inverseBindingListener != null) {
                viewDataBinding.removeOnPropertyChangedCallback((PropertyChangedInverseListener) inverseBindingListener);
            }
            if (propertyChangedInverseListener != null) {
                viewDataBinding.addOnPropertyChangedCallback(propertyChangedInverseListener);
            }
        }
    }

    protected static char y(char[] cArr, int i2) {
        if (cArr == null || i2 < 0 || i2 >= cArr.length) {
            return (char) 0;
        }
        return cArr[i2];
    }

    protected static double z(double[] dArr, int i2) {
        if (dArr == null || i2 < 0 || i2 >= dArr.length) {
            return 0.0d;
        }
        return dArr[i2];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void A0(View view) {
        view.setTag(R.id.dataBinding, this);
    }

    protected void B0(View[] viewArr) {
        for (View view : viewArr) {
            view.setTag(R.id.dataBinding, this);
        }
    }

    protected Object O(int i2) {
        WeakListener weakListener = this.f5262e[i2];
        if (weakListener == null) {
            return null;
        }
        return weakListener.getTarget();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void P(int i2, Object obj, int i4) {
        if (this.f5273p || this.f5274q || !W(i2, obj, i4)) {
            return;
        }
        n0();
    }

    protected boolean T0(int i2) {
        WeakListener weakListener = this.f5262e[i2];
        if (weakListener != null) {
            return weakListener.unregister();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean U0(int i2, LiveData<?> liveData) {
        this.f5273p = true;
        try {
            return Y0(i2, liveData, A);
        } finally {
            this.f5273p = false;
        }
    }

    protected boolean V0(int i2, Observable observable) {
        return Y0(i2, observable, f5256x);
    }

    protected abstract boolean W(int i2, Object obj, int i4);

    protected boolean W0(int i2, ObservableList observableList) {
        return Y0(i2, observableList, f5257y);
    }

    protected boolean X0(int i2, ObservableMap observableMap) {
        return Y0(i2, observableMap, f5258z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean Y0(int i2, Object obj, CreateWeakListener createWeakListener) {
        if (obj == null) {
            return T0(i2);
        }
        WeakListener weakListener = this.f5262e[i2];
        if (weakListener == null) {
            l0(i2, obj, createWeakListener);
            return true;
        } else if (weakListener.getTarget() == obj) {
            return false;
        } else {
            T0(i2);
            l0(i2, obj, createWeakListener);
            return true;
        }
    }

    public void addOnRebindCallback(@NonNull OnRebindCallback onRebindCallback) {
        if (this.f5264g == null) {
            this.f5264g = new CallbackRegistry<>(B);
        }
        this.f5264g.add(onRebindCallback);
    }

    public void executePendingBindings() {
        ViewDataBinding viewDataBinding = this.f5270m;
        if (viewDataBinding == null) {
            l();
        } else {
            viewDataBinding.executePendingBindings();
        }
    }

    @Nullable
    public LifecycleOwner getLifecycleOwner() {
        return this.f5271n;
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f5263f;
    }

    public abstract boolean hasPendingBindings();

    public abstract void invalidateAll();

    protected void j(Class<?> cls) {
        if (this.f5269l != null) {
            return;
        }
        throw new IllegalStateException("Required DataBindingComponent is null in class " + getClass().getSimpleName() + ". A BindingAdapter in " + cls.getCanonicalName() + " is not static and requires an object to use, retrieved from the DataBindingComponent. If you don't use an inflation method taking a DataBindingComponent, use DataBindingUtil.setDefaultComponent or make all BindingAdapter methods static.");
    }

    protected abstract void k();

    protected void l0(int i2, Object obj, CreateWeakListener createWeakListener) {
        if (obj == null) {
            return;
        }
        WeakListener weakListener = this.f5262e[i2];
        if (weakListener == null) {
            weakListener = createWeakListener.create(this, i2, C);
            this.f5262e[i2] = weakListener;
            LifecycleOwner lifecycleOwner = this.f5271n;
            if (lifecycleOwner != null) {
                weakListener.setLifecycleOwner(lifecycleOwner);
            }
        }
        weakListener.setTarget(obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void n0() {
        ViewDataBinding viewDataBinding = this.f5270m;
        if (viewDataBinding != null) {
            viewDataBinding.n0();
            return;
        }
        LifecycleOwner lifecycleOwner = this.f5271n;
        if (lifecycleOwner == null || lifecycleOwner.getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            synchronized (this) {
                if (this.f5260c) {
                    return;
                }
                this.f5260c = true;
                if (f5255w) {
                    this.f5266i.postFrameCallback(this.f5267j);
                } else {
                    this.f5268k.post(this.f5259b);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q() {
        k();
    }

    public void removeOnRebindCallback(@NonNull OnRebindCallback onRebindCallback) {
        CallbackRegistry<OnRebindCallback, ViewDataBinding, Void> callbackRegistry = this.f5264g;
        if (callbackRegistry != null) {
            callbackRegistry.remove(onRebindCallback);
        }
    }

    @MainThread
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        WeakListener[] weakListenerArr;
        boolean z3 = lifecycleOwner instanceof Fragment;
        LifecycleOwner lifecycleOwner2 = this.f5271n;
        if (lifecycleOwner2 == lifecycleOwner) {
            return;
        }
        if (lifecycleOwner2 != null) {
            lifecycleOwner2.getLifecycle().removeObserver(this.f5272o);
        }
        this.f5271n = lifecycleOwner;
        if (lifecycleOwner != null) {
            if (this.f5272o == null) {
                this.f5272o = new OnStartListener();
            }
            lifecycleOwner.getLifecycle().addObserver(this.f5272o);
        }
        for (WeakListener weakListener : this.f5262e) {
            if (weakListener != null) {
                weakListener.setLifecycleOwner(lifecycleOwner);
            }
        }
    }

    public abstract boolean setVariable(int i2, @Nullable Object obj);

    public void unbind() {
        WeakListener[] weakListenerArr;
        for (WeakListener weakListener : this.f5262e) {
            if (weakListener != null) {
                weakListener.unregister();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void z0(ViewDataBinding viewDataBinding) {
        if (viewDataBinding != null) {
            viewDataBinding.f5270m = this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewDataBinding(Object obj, View view, int i2) {
        this(i(obj), view, i2);
    }
}
