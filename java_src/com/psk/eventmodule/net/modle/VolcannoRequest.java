package com.psk.eventmodule.net.modle;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import f2.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VolcannoRequest.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0016\u0010\u0017J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\u0006\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0007\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/psk/eventmodule/net/modle/VolcannoRequest;", "", "", "component1", "Lcom/psk/eventmodule/net/modle/VolcanoData;", "component2", "bhv_time", "data", "copy", "", "toString", "", TTDownloadField.TT_HASHCODE, "other", "", "equals", "J", "getBhv_time", "()J", "Lcom/psk/eventmodule/net/modle/VolcanoData;", "getData", "()Lcom/psk/eventmodule/net/modle/VolcanoData;", "<init>", "(JLcom/psk/eventmodule/net/modle/VolcanoData;)V", "EventModule_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class VolcannoRequest {
    private final long bhv_time;
    @NotNull
    private final VolcanoData data;

    public VolcannoRequest(long j4, @NotNull VolcanoData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.bhv_time = j4;
        this.data = data;
    }

    public static /* synthetic */ VolcannoRequest copy$default(VolcannoRequest volcannoRequest, long j4, VolcanoData volcanoData, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j4 = volcannoRequest.bhv_time;
        }
        if ((i2 & 2) != 0) {
            volcanoData = volcannoRequest.data;
        }
        return volcannoRequest.copy(j4, volcanoData);
    }

    public final long component1() {
        return this.bhv_time;
    }

    @NotNull
    public final VolcanoData component2() {
        return this.data;
    }

    @NotNull
    public final VolcannoRequest copy(long j4, @NotNull VolcanoData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        return new VolcannoRequest(j4, data);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof VolcannoRequest) {
                VolcannoRequest volcannoRequest = (VolcannoRequest) obj;
                return this.bhv_time == volcannoRequest.bhv_time && Intrinsics.areEqual(this.data, volcannoRequest.data);
            }
            return false;
        }
        return true;
    }

    public final long getBhv_time() {
        return this.bhv_time;
    }

    @NotNull
    public final VolcanoData getData() {
        return this.data;
    }

    public int hashCode() {
        int a4 = a.a(this.bhv_time) * 31;
        VolcanoData volcanoData = this.data;
        return a4 + (volcanoData != null ? volcanoData.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "VolcannoRequest(bhv_time=" + this.bhv_time + ", data=" + this.data + ")";
    }
}
