package androidx.constraintlayout.widget;

import android.util.SparseIntArray;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public class SharedValues {
    public static final int UNSET = -1;

    /* renamed from: a  reason: collision with root package name */
    private SparseIntArray f3644a = new SparseIntArray();

    /* renamed from: b  reason: collision with root package name */
    private HashMap<Integer, HashSet<WeakReference<SharedValuesListener>>> f3645b = new HashMap<>();

    /* loaded from: classes.dex */
    public interface SharedValuesListener {
        void onNewValue(int key, int newValue, int oldValue);
    }

    public void addListener(int key, SharedValuesListener listener) {
        HashSet<WeakReference<SharedValuesListener>> hashSet = this.f3645b.get(Integer.valueOf(key));
        if (hashSet == null) {
            hashSet = new HashSet<>();
            this.f3645b.put(Integer.valueOf(key), hashSet);
        }
        hashSet.add(new WeakReference<>(listener));
    }

    public void clearListeners() {
        this.f3645b.clear();
    }

    public void fireNewValue(int key, int value) {
        int i2 = this.f3644a.get(key, -1);
        if (i2 == value) {
            return;
        }
        this.f3644a.put(key, value);
        HashSet<WeakReference<SharedValuesListener>> hashSet = this.f3645b.get(Integer.valueOf(key));
        if (hashSet == null) {
            return;
        }
        Iterator<WeakReference<SharedValuesListener>> it2 = hashSet.iterator();
        boolean z3 = false;
        while (it2.hasNext()) {
            SharedValuesListener sharedValuesListener = it2.next().get();
            if (sharedValuesListener != null) {
                sharedValuesListener.onNewValue(key, value, i2);
            } else {
                z3 = true;
            }
        }
        if (z3) {
            ArrayList arrayList = new ArrayList();
            Iterator<WeakReference<SharedValuesListener>> it3 = hashSet.iterator();
            while (it3.hasNext()) {
                WeakReference<SharedValuesListener> next = it3.next();
                if (next.get() == null) {
                    arrayList.add(next);
                }
            }
            hashSet.removeAll(arrayList);
        }
    }

    public int getValue(int key) {
        return this.f3644a.get(key, -1);
    }

    public void removeListener(int key, SharedValuesListener listener) {
        HashSet<WeakReference<SharedValuesListener>> hashSet = this.f3645b.get(Integer.valueOf(key));
        if (hashSet == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<WeakReference<SharedValuesListener>> it2 = hashSet.iterator();
        while (it2.hasNext()) {
            WeakReference<SharedValuesListener> next = it2.next();
            SharedValuesListener sharedValuesListener = next.get();
            if (sharedValuesListener == null || sharedValuesListener == listener) {
                arrayList.add(next);
            }
        }
        hashSet.removeAll(arrayList);
    }

    public void removeListener(SharedValuesListener listener) {
        for (Integer num : this.f3645b.keySet()) {
            removeListener(num.intValue(), listener);
        }
    }
}
