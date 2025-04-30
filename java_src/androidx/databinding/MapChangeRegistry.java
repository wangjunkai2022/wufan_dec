package androidx.databinding;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.CallbackRegistry;
import androidx.databinding.ObservableMap;
/* loaded from: classes.dex */
public class MapChangeRegistry extends CallbackRegistry<ObservableMap.OnMapChangedCallback, ObservableMap, Object> {

    /* renamed from: g  reason: collision with root package name */
    private static CallbackRegistry.NotifierCallback<ObservableMap.OnMapChangedCallback, ObservableMap, Object> f5233g = new CallbackRegistry.NotifierCallback<ObservableMap.OnMapChangedCallback, ObservableMap, Object>() { // from class: androidx.databinding.MapChangeRegistry.1
        @Override // androidx.databinding.CallbackRegistry.NotifierCallback
        public void onNotifyCallback(ObservableMap.OnMapChangedCallback onMapChangedCallback, ObservableMap observableMap, int i2, Object obj) {
            onMapChangedCallback.onMapChanged(observableMap, obj);
        }
    };

    public MapChangeRegistry() {
        super(f5233g);
    }

    public void notifyChange(@NonNull ObservableMap observableMap, @Nullable Object obj) {
        notifyCallbacks(observableMap, 0, obj);
    }
}
