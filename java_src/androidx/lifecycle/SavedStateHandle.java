package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.savedstate.SavedStateRegistry;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class SavedStateHandle {

    /* renamed from: e  reason: collision with root package name */
    private static final String f6295e = "values";

    /* renamed from: f  reason: collision with root package name */
    private static final String f6296f = "keys";

    /* renamed from: g  reason: collision with root package name */
    private static final Class[] f6297g;

    /* renamed from: a  reason: collision with root package name */
    final Map<String, Object> f6298a;

    /* renamed from: b  reason: collision with root package name */
    final Map<String, SavedStateRegistry.SavedStateProvider> f6299b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, SavingStateLiveData<?>> f6300c;

    /* renamed from: d  reason: collision with root package name */
    private final SavedStateRegistry.SavedStateProvider f6301d;

    static {
        Class[] clsArr = new Class[29];
        clsArr[0] = Boolean.TYPE;
        clsArr[1] = boolean[].class;
        clsArr[2] = Double.TYPE;
        clsArr[3] = double[].class;
        Class<SizeF> cls = Integer.TYPE;
        clsArr[4] = cls;
        clsArr[5] = int[].class;
        clsArr[6] = Long.TYPE;
        clsArr[7] = long[].class;
        clsArr[8] = String.class;
        clsArr[9] = String[].class;
        clsArr[10] = Binder.class;
        clsArr[11] = Bundle.class;
        clsArr[12] = Byte.TYPE;
        clsArr[13] = byte[].class;
        clsArr[14] = Character.TYPE;
        clsArr[15] = char[].class;
        clsArr[16] = CharSequence.class;
        clsArr[17] = CharSequence[].class;
        clsArr[18] = ArrayList.class;
        clsArr[19] = Float.TYPE;
        clsArr[20] = float[].class;
        clsArr[21] = Parcelable.class;
        clsArr[22] = Parcelable[].class;
        clsArr[23] = Serializable.class;
        clsArr[24] = Short.TYPE;
        clsArr[25] = short[].class;
        clsArr[26] = SparseArray.class;
        int i2 = Build.VERSION.SDK_INT;
        clsArr[27] = i2 >= 21 ? Size.class : cls;
        if (i2 >= 21) {
            cls = SizeF.class;
        }
        clsArr[28] = cls;
        f6297g = clsArr;
    }

    public SavedStateHandle(@NonNull Map<String, Object> initialState) {
        this.f6299b = new HashMap();
        this.f6300c = new HashMap();
        this.f6301d = new SavedStateRegistry.SavedStateProvider() { // from class: androidx.lifecycle.SavedStateHandle.1
            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            @NonNull
            public Bundle saveState() {
                for (Map.Entry entry : new HashMap(SavedStateHandle.this.f6299b).entrySet()) {
                    SavedStateHandle.this.set((String) entry.getKey(), ((SavedStateRegistry.SavedStateProvider) entry.getValue()).saveState());
                }
                Set<String> keySet = SavedStateHandle.this.f6298a.keySet();
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>(keySet.size());
                ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(arrayList.size());
                for (String str : keySet) {
                    arrayList.add(str);
                    arrayList2.add(SavedStateHandle.this.f6298a.get(str));
                }
                Bundle bundle = new Bundle();
                bundle.putParcelableArrayList("keys", arrayList);
                bundle.putParcelableArrayList(SavedStateHandle.f6295e, arrayList2);
                return bundle;
            }
        };
        this.f6298a = new HashMap(initialState);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SavedStateHandle a(@Nullable Bundle restoredState, @Nullable Bundle defaultState) {
        if (restoredState == null && defaultState == null) {
            return new SavedStateHandle();
        }
        HashMap hashMap = new HashMap();
        if (defaultState != null) {
            for (String str : defaultState.keySet()) {
                hashMap.put(str, defaultState.get(str));
            }
        }
        if (restoredState == null) {
            return new SavedStateHandle(hashMap);
        }
        ArrayList parcelableArrayList = restoredState.getParcelableArrayList("keys");
        ArrayList parcelableArrayList2 = restoredState.getParcelableArrayList(f6295e);
        if (parcelableArrayList != null && parcelableArrayList2 != null && parcelableArrayList.size() == parcelableArrayList2.size()) {
            for (int i2 = 0; i2 < parcelableArrayList.size(); i2++) {
                hashMap.put((String) parcelableArrayList.get(i2), parcelableArrayList2.get(i2));
            }
            return new SavedStateHandle(hashMap);
        }
        throw new IllegalStateException("Invalid bundle passed as restored state");
    }

    @NonNull
    private <T> MutableLiveData<T> b(@NonNull String key, boolean hasInitialValue, @Nullable T initialValue) {
        SavingStateLiveData<?> savingStateLiveData;
        SavingStateLiveData<?> savingStateLiveData2 = this.f6300c.get(key);
        if (savingStateLiveData2 != null) {
            return savingStateLiveData2;
        }
        if (this.f6298a.containsKey(key)) {
            savingStateLiveData = new SavingStateLiveData<>(this, key, this.f6298a.get(key));
        } else if (hasInitialValue) {
            savingStateLiveData = new SavingStateLiveData<>(this, key, initialValue);
        } else {
            savingStateLiveData = new SavingStateLiveData<>(this, key);
        }
        this.f6300c.put(key, savingStateLiveData);
        return savingStateLiveData;
    }

    private static void d(Object value) {
        if (value == null) {
            return;
        }
        for (Class cls : f6297g) {
            if (cls.isInstance(value)) {
                return;
            }
        }
        throw new IllegalArgumentException("Can't put value with type " + value.getClass() + " into saved state");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public SavedStateRegistry.SavedStateProvider c() {
        return this.f6301d;
    }

    @MainThread
    public void clearSavedStateProvider(@NonNull String key) {
        this.f6299b.remove(key);
    }

    @MainThread
    public boolean contains(@NonNull String key) {
        return this.f6298a.containsKey(key);
    }

    @Nullable
    @MainThread
    public <T> T get(@NonNull String key) {
        return (T) this.f6298a.get(key);
    }

    @NonNull
    @MainThread
    public <T> MutableLiveData<T> getLiveData(@NonNull String key) {
        return b(key, false, null);
    }

    @NonNull
    @MainThread
    public Set<String> keys() {
        HashSet hashSet = new HashSet(this.f6298a.keySet());
        hashSet.addAll(this.f6299b.keySet());
        hashSet.addAll(this.f6300c.keySet());
        return hashSet;
    }

    @Nullable
    @MainThread
    public <T> T remove(@NonNull String key) {
        T t3 = (T) this.f6298a.remove(key);
        SavingStateLiveData<?> remove = this.f6300c.remove(key);
        if (remove != null) {
            remove.a();
        }
        return t3;
    }

    @MainThread
    public <T> void set(@NonNull String key, @Nullable T value) {
        d(value);
        SavingStateLiveData<?> savingStateLiveData = this.f6300c.get(key);
        if (savingStateLiveData != null) {
            savingStateLiveData.setValue(value);
        } else {
            this.f6298a.put(key, value);
        }
    }

    @MainThread
    public void setSavedStateProvider(@NonNull String key, @NonNull SavedStateRegistry.SavedStateProvider provider) {
        this.f6299b.put(key, provider);
    }

    @NonNull
    @MainThread
    public <T> MutableLiveData<T> getLiveData(@NonNull String key, @SuppressLint({"UnknownNullness"}) T initialValue) {
        return b(key, true, initialValue);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavingStateLiveData<T> extends MutableLiveData<T> {

        /* renamed from: a  reason: collision with root package name */
        private String f6303a;

        /* renamed from: b  reason: collision with root package name */
        private SavedStateHandle f6304b;

        SavingStateLiveData(SavedStateHandle handle, String key, T value) {
            super(value);
            this.f6303a = key;
            this.f6304b = handle;
        }

        void a() {
            this.f6304b = null;
        }

        @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
        public void setValue(T value) {
            SavedStateHandle savedStateHandle = this.f6304b;
            if (savedStateHandle != null) {
                savedStateHandle.f6298a.put(this.f6303a, value);
            }
            super.setValue(value);
        }

        SavingStateLiveData(SavedStateHandle handle, String key) {
            this.f6303a = key;
            this.f6304b = handle;
        }
    }

    public SavedStateHandle() {
        this.f6299b = new HashMap();
        this.f6300c = new HashMap();
        this.f6301d = new SavedStateRegistry.SavedStateProvider() { // from class: androidx.lifecycle.SavedStateHandle.1
            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            @NonNull
            public Bundle saveState() {
                for (Map.Entry entry : new HashMap(SavedStateHandle.this.f6299b).entrySet()) {
                    SavedStateHandle.this.set((String) entry.getKey(), ((SavedStateRegistry.SavedStateProvider) entry.getValue()).saveState());
                }
                Set<String> keySet = SavedStateHandle.this.f6298a.keySet();
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>(keySet.size());
                ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(arrayList.size());
                for (String str : keySet) {
                    arrayList.add(str);
                    arrayList2.add(SavedStateHandle.this.f6298a.get(str));
                }
                Bundle bundle = new Bundle();
                bundle.putParcelableArrayList("keys", arrayList);
                bundle.putParcelableArrayList(SavedStateHandle.f6295e, arrayList2);
                return bundle;
            }
        };
        this.f6298a = new HashMap();
    }
}
