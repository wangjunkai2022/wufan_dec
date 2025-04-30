package androidx.databinding;

import androidx.annotation.NonNull;
import androidx.databinding.Observable;
/* loaded from: classes.dex */
public class BaseObservable implements Observable {

    /* renamed from: a  reason: collision with root package name */
    private transient PropertyChangeRegistry f5216a;

    @Override // androidx.databinding.Observable
    public void addOnPropertyChangedCallback(@NonNull Observable.OnPropertyChangedCallback onPropertyChangedCallback) {
        synchronized (this) {
            if (this.f5216a == null) {
                this.f5216a = new PropertyChangeRegistry();
            }
        }
        this.f5216a.add(onPropertyChangedCallback);
    }

    public void notifyChange() {
        synchronized (this) {
            PropertyChangeRegistry propertyChangeRegistry = this.f5216a;
            if (propertyChangeRegistry == null) {
                return;
            }
            propertyChangeRegistry.notifyCallbacks(this, 0, null);
        }
    }

    public void notifyPropertyChanged(int i2) {
        synchronized (this) {
            PropertyChangeRegistry propertyChangeRegistry = this.f5216a;
            if (propertyChangeRegistry == null) {
                return;
            }
            propertyChangeRegistry.notifyCallbacks(this, i2, null);
        }
    }

    @Override // androidx.databinding.Observable
    public void removeOnPropertyChangedCallback(@NonNull Observable.OnPropertyChangedCallback onPropertyChangedCallback) {
        synchronized (this) {
            PropertyChangeRegistry propertyChangeRegistry = this.f5216a;
            if (propertyChangeRegistry == null) {
                return;
            }
            propertyChangeRegistry.remove(onPropertyChangedCallback);
        }
    }
}
