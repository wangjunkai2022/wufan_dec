package g2;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.sdk.a.g;
import com.umeng.analytics.pro.ai;
import com.xinzhu.overmind.utils.helpers.d;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ResponseMain.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0086\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B!\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u001e\u0010\u001fJ\t\u0010\u0004\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0003J/\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\t\u0010\f\u001a\u00020\u0006HÖ\u0001J\t\u0010\r\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002HÖ\u0003R\u001b\u0010\n\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0019\u0010\t\u001a\u00020\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R$\u0010\u0017\u001a\u0004\u0018\u00018\u00008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0019\u0010\b\u001a\u00020\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0014\u001a\u0004\b\u001d\u0010\u0016¨\u0006 "}, d2 = {"Lg2/a;", "T", "", "", "a", "b", "", ai.aD, "code", "error", "message", d.f64708a, "toString", TTDownloadField.TT_HASHCODE, "other", "", "equals", "Ljava/lang/String;", ai.aA, "()Ljava/lang/String;", "I", "h", "()I", "data", "Ljava/lang/Object;", g.f56552a, "()Ljava/lang/Object;", "j", "(Ljava/lang/Object;)V", "f", "<init>", "(IILjava/lang/String;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class a<T> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private T f65680a;

    /* renamed from: b  reason: collision with root package name */
    private final int f65681b;

    /* renamed from: c  reason: collision with root package name */
    private final int f65682c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String f65683d;

    public a(int i2, int i4, @Nullable String str) {
        this.f65681b = i2;
        this.f65682c = i4;
        this.f65683d = str;
    }

    public static /* synthetic */ a e(a aVar, int i2, int i4, String str, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i2 = aVar.f65681b;
        }
        if ((i5 & 2) != 0) {
            i4 = aVar.f65682c;
        }
        if ((i5 & 4) != 0) {
            str = aVar.f65683d;
        }
        return aVar.d(i2, i4, str);
    }

    public final int a() {
        return this.f65681b;
    }

    public final int b() {
        return this.f65682c;
    }

    @Nullable
    public final String c() {
        return this.f65683d;
    }

    @NotNull
    public final a<T> d(int i2, int i4, @Nullable String str) {
        return new a<>(i2, i4, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                return this.f65681b == aVar.f65681b && this.f65682c == aVar.f65682c && Intrinsics.areEqual(this.f65683d, aVar.f65683d);
            }
            return false;
        }
        return true;
    }

    public final int f() {
        return this.f65681b;
    }

    @Nullable
    public final T g() {
        return this.f65680a;
    }

    public final int h() {
        return this.f65682c;
    }

    public int hashCode() {
        int i2 = ((this.f65681b * 31) + this.f65682c) * 31;
        String str = this.f65683d;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    @Nullable
    public final String i() {
        return this.f65683d;
    }

    public final void j(@Nullable T t3) {
        this.f65680a = t3;
    }

    @NotNull
    public String toString() {
        return "ResponseMain(code=" + this.f65681b + ", error=" + this.f65682c + ", message=" + this.f65683d + ")";
    }
}
