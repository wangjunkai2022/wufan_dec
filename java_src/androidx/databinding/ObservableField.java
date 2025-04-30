package androidx.databinding;

import androidx.annotation.Nullable;
import java.io.Serializable;
/* loaded from: classes.dex */
public class ObservableField<T> extends BaseObservableField implements Serializable {
    static final long serialVersionUID = 1;

    /* renamed from: b  reason: collision with root package name */
    private T f5244b;

    public ObservableField(T t3) {
        this.f5244b = t3;
    }

    @Nullable
    public T get() {
        return this.f5244b;
    }

    public void set(T t3) {
        if (t3 != this.f5244b) {
            this.f5244b = t3;
            notifyChange();
        }
    }

    public ObservableField() {
    }

    public ObservableField(Observable... observableArr) {
        super(observableArr);
    }
}
