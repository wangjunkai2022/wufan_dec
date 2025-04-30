package androidx.core.content;

import android.content.LocusId;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;
/* loaded from: classes.dex */
public final class LocusIdCompat {

    /* renamed from: a  reason: collision with root package name */
    private final String f4123a;

    /* renamed from: b  reason: collision with root package name */
    private final LocusId f4124b;

    @RequiresApi(29)
    /* loaded from: classes.dex */
    private static class Api29Impl {
        private Api29Impl() {
        }

        @NonNull
        static LocusId a(@NonNull String str) {
            return new LocusId(str);
        }

        @NonNull
        static String b(@NonNull LocusId locusId) {
            return locusId.getId();
        }
    }

    public LocusIdCompat(@NonNull String str) {
        this.f4123a = (String) Preconditions.checkStringNotEmpty(str, "id cannot be empty");
        if (Build.VERSION.SDK_INT >= 29) {
            this.f4124b = Api29Impl.a(str);
        } else {
            this.f4124b = null;
        }
    }

    @NonNull
    private String a() {
        int length = this.f4123a.length();
        return length + "_chars";
    }

    @NonNull
    @RequiresApi(29)
    public static LocusIdCompat toLocusIdCompat(@NonNull LocusId locusId) {
        Preconditions.checkNotNull(locusId, "locusId cannot be null");
        return new LocusIdCompat((String) Preconditions.checkStringNotEmpty(Api29Impl.b(locusId), "id cannot be empty"));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && LocusIdCompat.class == obj.getClass()) {
            LocusIdCompat locusIdCompat = (LocusIdCompat) obj;
            String str = this.f4123a;
            if (str == null) {
                return locusIdCompat.f4123a == null;
            }
            return str.equals(locusIdCompat.f4123a);
        }
        return false;
    }

    @NonNull
    public String getId() {
        return this.f4123a;
    }

    public int hashCode() {
        String str = this.f4123a;
        return 31 + (str == null ? 0 : str.hashCode());
    }

    @NonNull
    @RequiresApi(29)
    public LocusId toLocusId() {
        return this.f4124b;
    }

    @NonNull
    public String toString() {
        return "LocusIdCompat[" + a() + "]";
    }
}
