package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.widget.SpinnerAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.view.ContextThemeWrapper;
/* loaded from: classes.dex */
public interface ThemedSpinnerAdapter extends SpinnerAdapter {

    /* loaded from: classes.dex */
    public static final class Helper {

        /* renamed from: a  reason: collision with root package name */
        private final Context f1461a;

        /* renamed from: b  reason: collision with root package name */
        private final LayoutInflater f1462b;

        /* renamed from: c  reason: collision with root package name */
        private LayoutInflater f1463c;

        public Helper(@NonNull Context context) {
            this.f1461a = context;
            this.f1462b = LayoutInflater.from(context);
        }

        @NonNull
        public LayoutInflater getDropDownViewInflater() {
            LayoutInflater layoutInflater = this.f1463c;
            return layoutInflater != null ? layoutInflater : this.f1462b;
        }

        @Nullable
        public Resources.Theme getDropDownViewTheme() {
            LayoutInflater layoutInflater = this.f1463c;
            if (layoutInflater == null) {
                return null;
            }
            return layoutInflater.getContext().getTheme();
        }

        public void setDropDownViewTheme(@Nullable Resources.Theme theme) {
            if (theme == null) {
                this.f1463c = null;
            } else if (theme == this.f1461a.getTheme()) {
                this.f1463c = this.f1462b;
            } else {
                this.f1463c = LayoutInflater.from(new ContextThemeWrapper(this.f1461a, theme));
            }
        }
    }

    @Nullable
    Resources.Theme getDropDownViewTheme();

    void setDropDownViewTheme(@Nullable Resources.Theme theme);
}
