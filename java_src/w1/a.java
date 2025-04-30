package w1;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.sdk.a.g;
import com.umeng.analytics.pro.ai;
import com.xinzhu.overmind.utils.helpers.d;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseResp.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002B#\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ\t\u0010\u0004\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0012\u0010\u0007\u001a\u0004\u0018\u00018\u0000HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ8\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\t\u001a\u00020\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00018\u0000HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u000e\u001a\u00020\u0005HÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002HÖ\u0003R\u001b\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001b\u0010\u000b\u001a\u0004\u0018\u00018\u00008\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0016\u001a\u0004\b\u0017\u0010\bR\u0019\u0010\t\u001a\u00020\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lw1/a;", "T", "", "", "a", "", "b", ai.aD, "()Ljava/lang/Object;", "status", "message", "data", d.f64708a, "(ILjava/lang/String;Ljava/lang/Object;)Lw1/a;", "toString", TTDownloadField.TT_HASHCODE, "other", "", "equals", "Ljava/lang/String;", g.f56552a, "()Ljava/lang/String;", "Ljava/lang/Object;", "f", "I", "h", "()I", "<init>", "(ILjava/lang/String;Ljava/lang/Object;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final int f74245a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f74246b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final T f74247c;

    public a(int i2, @Nullable String str, @Nullable T t3) {
        this.f74245a = i2;
        this.f74246b = str;
        this.f74247c = t3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ a e(a aVar, int i2, String str, Object obj, int i4, Object obj2) {
        if ((i4 & 1) != 0) {
            i2 = aVar.f74245a;
        }
        if ((i4 & 2) != 0) {
            str = aVar.f74246b;
        }
        if ((i4 & 4) != 0) {
            obj = aVar.f74247c;
        }
        return aVar.d(i2, str, obj);
    }

    public final int a() {
        return this.f74245a;
    }

    @Nullable
    public final String b() {
        return this.f74246b;
    }

    @Nullable
    public final T c() {
        return this.f74247c;
    }

    @NotNull
    public final a<T> d(int i2, @Nullable String str, @Nullable T t3) {
        return new a<>(i2, str, t3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                return this.f74245a == aVar.f74245a && Intrinsics.areEqual(this.f74246b, aVar.f74246b) && Intrinsics.areEqual(this.f74247c, aVar.f74247c);
            }
            return false;
        }
        return true;
    }

    @Nullable
    public final T f() {
        return this.f74247c;
    }

    @Nullable
    public final String g() {
        return this.f74246b;
    }

    public final int h() {
        return this.f74245a;
    }

    public int hashCode() {
        int i2 = this.f74245a * 31;
        String str = this.f74246b;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        T t3 = this.f74247c;
        return hashCode + (t3 != null ? t3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "BaseResp(status=" + this.f74245a + ", message=" + this.f74246b + ", data=" + this.f74247c + ")";
    }
}
