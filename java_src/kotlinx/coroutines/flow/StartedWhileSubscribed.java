package kotlinx.coroutines.flow;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.umeng.analytics.pro.ai;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SharingStarted.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u000f¢\u0006\u0004\b\u0015\u0010\u0016J\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u0003H\u0016R\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011¨\u0006\u0017"}, d2 = {"Lkotlinx/coroutines/flow/StartedWhileSubscribed;", "Lkotlinx/coroutines/flow/s;", "Lkotlinx/coroutines/flow/v;", "", "subscriptionCount", "Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/flow/SharingCommand;", "a", "", "toString", "", "other", "", "equals", TTDownloadField.TT_HASHCODE, "", "b", "J", "stopTimeout", ai.aD, "replayExpiration", "<init>", "(JJ)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class StartedWhileSubscribed implements s {

    /* renamed from: b  reason: collision with root package name */
    private final long f71906b;

    /* renamed from: c  reason: collision with root package name */
    private final long f71907c;

    public StartedWhileSubscribed(long j4, long j5) {
        this.f71906b = j4;
        this.f71907c = j5;
        if (!(j4 >= 0)) {
            throw new IllegalArgumentException(("stopTimeout(" + j4 + " ms) cannot be negative").toString());
        }
        if (j5 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("replayExpiration(" + j5 + " ms) cannot be negative").toString());
    }

    @Override // kotlinx.coroutines.flow.s
    @NotNull
    public f<SharingCommand> a(@NotNull v<Integer> vVar) {
        return h.i0(h.m0(h.l2(vVar, new StartedWhileSubscribed$command$1(this, null)), new StartedWhileSubscribed$command$2(null)));
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof StartedWhileSubscribed) {
            StartedWhileSubscribed startedWhileSubscribed = (StartedWhileSubscribed) obj;
            if (this.f71906b == startedWhileSubscribed.f71906b && this.f71907c == startedWhileSubscribed.f71907c) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (f2.a.a(this.f71906b) * 31) + f2.a.a(this.f71907c);
    }

    @NotNull
    public String toString() {
        List createListBuilder;
        List build;
        String joinToString$default;
        createListBuilder = CollectionsKt__CollectionsJVMKt.createListBuilder(2);
        if (this.f71906b > 0) {
            createListBuilder.add("stopTimeout=" + this.f71906b + "ms");
        }
        if (this.f71907c < Long.MAX_VALUE) {
            createListBuilder.add("replayExpiration=" + this.f71907c + "ms");
        }
        build = CollectionsKt__CollectionsJVMKt.build(createListBuilder);
        StringBuilder sb = new StringBuilder();
        sb.append("SharingStarted.WhileSubscribed(");
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(build, null, null, null, 0, null, null, 63, null);
        sb.append(joinToString$default);
        sb.append(')');
        return sb.toString();
    }
}
