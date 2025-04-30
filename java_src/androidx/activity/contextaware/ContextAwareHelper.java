package androidx.activity.contextaware;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes.dex */
public final class ContextAwareHelper {

    /* renamed from: a  reason: collision with root package name */
    private final Set<OnContextAvailableListener> f56a = new CopyOnWriteArraySet();

    /* renamed from: b  reason: collision with root package name */
    private volatile Context f57b;

    public void addOnContextAvailableListener(@NonNull OnContextAvailableListener onContextAvailableListener) {
        if (this.f57b != null) {
            onContextAvailableListener.onContextAvailable(this.f57b);
        }
        this.f56a.add(onContextAvailableListener);
    }

    public void clearAvailableContext() {
        this.f57b = null;
    }

    public void dispatchOnContextAvailable(@NonNull Context context) {
        this.f57b = context;
        for (OnContextAvailableListener onContextAvailableListener : this.f56a) {
            onContextAvailableListener.onContextAvailable(context);
        }
    }

    @Nullable
    public Context peekAvailableContext() {
        return this.f57b;
    }

    public void removeOnContextAvailableListener(@NonNull OnContextAvailableListener onContextAvailableListener) {
        this.f56a.remove(onContextAvailableListener);
    }
}
