package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public class AndroidViewModel extends ViewModel {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: a  reason: collision with root package name */
    private Application f6181a;

    public AndroidViewModel(@NonNull Application application) {
        this.f6181a = application;
    }

    @NonNull
    public <T extends Application> T getApplication() {
        return (T) this.f6181a;
    }
}
