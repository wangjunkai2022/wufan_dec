package androidx.core.provider;

import android.util.Base64;
import androidx.annotation.ArrayRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import java.util.List;
import m.a;
/* loaded from: classes.dex */
public final class FontRequest {

    /* renamed from: a  reason: collision with root package name */
    private final String f4529a;

    /* renamed from: b  reason: collision with root package name */
    private final String f4530b;

    /* renamed from: c  reason: collision with root package name */
    private final String f4531c;

    /* renamed from: d  reason: collision with root package name */
    private final List<List<byte[]>> f4532d;

    /* renamed from: e  reason: collision with root package name */
    private final int f4533e;

    /* renamed from: f  reason: collision with root package name */
    private final String f4534f;

    public FontRequest(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull List<List<byte[]>> list) {
        this.f4529a = (String) Preconditions.checkNotNull(str);
        this.f4530b = (String) Preconditions.checkNotNull(str2);
        this.f4531c = (String) Preconditions.checkNotNull(str3);
        this.f4532d = (List) Preconditions.checkNotNull(list);
        this.f4533e = 0;
        this.f4534f = a(str, str2, str3);
    }

    private String a(@NonNull String str, @NonNull String str2, @NonNull String str3) {
        return str + "-" + str2 + "-" + str3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public String b() {
        return this.f4534f;
    }

    @Nullable
    public List<List<byte[]>> getCertificates() {
        return this.f4532d;
    }

    @ArrayRes
    public int getCertificatesArrayResId() {
        return this.f4533e;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public String getIdentifier() {
        return this.f4534f;
    }

    @NonNull
    public String getProviderAuthority() {
        return this.f4529a;
    }

    @NonNull
    public String getProviderPackage() {
        return this.f4530b;
    }

    @NonNull
    public String getQuery() {
        return this.f4531c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f4529a + ", mProviderPackage: " + this.f4530b + ", mQuery: " + this.f4531c + ", mCertificates:");
        for (int i2 = 0; i2 < this.f4532d.size(); i2++) {
            sb.append(" [");
            List<byte[]> list = this.f4532d.get(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i4), 0));
                sb.append(a.f72569g);
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.f4533e);
        return sb.toString();
    }

    public FontRequest(@NonNull String str, @NonNull String str2, @NonNull String str3, @ArrayRes int i2) {
        this.f4529a = (String) Preconditions.checkNotNull(str);
        this.f4530b = (String) Preconditions.checkNotNull(str2);
        this.f4531c = (String) Preconditions.checkNotNull(str3);
        this.f4532d = null;
        Preconditions.checkArgument(i2 != 0);
        this.f4533e = i2;
        this.f4534f = a(str, str2, str3);
    }
}
