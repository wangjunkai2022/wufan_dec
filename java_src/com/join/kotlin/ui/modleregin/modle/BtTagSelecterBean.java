package com.join.kotlin.ui.modleregin.modle;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BtTagSelecterBean.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0015\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b \u0010!J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J'\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001J\t\u0010\f\u001a\u00020\u0004HÖ\u0001J\t\u0010\u000e\u001a\u00020\rHÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\t\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\n\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006\""}, d2 = {"Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;", "", "", "component1", "", "component2", "", "component3", "time", "timeMessage", "status", "copy", "toString", "", TTDownloadField.TT_HASHCODE, "other", "equals", "Ljava/lang/String;", "getTimeMessage", "()Ljava/lang/String;", "setTimeMessage", "(Ljava/lang/String;)V", "Z", "getStatus", "()Z", "setStatus", "(Z)V", "J", "getTime", "()J", "setTime", "(J)V", "<init>", "(JLjava/lang/String;Z)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class BtTagSelecterBean {
    private boolean status;
    private long time;
    @NotNull
    private String timeMessage;

    public BtTagSelecterBean(long j4, @NotNull String timeMessage, boolean z3) {
        Intrinsics.checkNotNullParameter(timeMessage, "timeMessage");
        this.time = j4;
        this.timeMessage = timeMessage;
        this.status = z3;
    }

    public static /* synthetic */ BtTagSelecterBean copy$default(BtTagSelecterBean btTagSelecterBean, long j4, String str, boolean z3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j4 = btTagSelecterBean.time;
        }
        if ((i2 & 2) != 0) {
            str = btTagSelecterBean.timeMessage;
        }
        if ((i2 & 4) != 0) {
            z3 = btTagSelecterBean.status;
        }
        return btTagSelecterBean.copy(j4, str, z3);
    }

    public final long component1() {
        return this.time;
    }

    @NotNull
    public final String component2() {
        return this.timeMessage;
    }

    public final boolean component3() {
        return this.status;
    }

    @NotNull
    public final BtTagSelecterBean copy(long j4, @NotNull String timeMessage, boolean z3) {
        Intrinsics.checkNotNullParameter(timeMessage, "timeMessage");
        return new BtTagSelecterBean(j4, timeMessage, z3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof BtTagSelecterBean) {
                BtTagSelecterBean btTagSelecterBean = (BtTagSelecterBean) obj;
                return this.time == btTagSelecterBean.time && Intrinsics.areEqual(this.timeMessage, btTagSelecterBean.timeMessage) && this.status == btTagSelecterBean.status;
            }
            return false;
        }
        return true;
    }

    public final boolean getStatus() {
        return this.status;
    }

    public final long getTime() {
        return this.time;
    }

    @NotNull
    public final String getTimeMessage() {
        return this.timeMessage;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        long j4 = this.time;
        int i2 = ((int) (j4 ^ (j4 >>> 32))) * 31;
        String str = this.timeMessage;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        boolean z3 = this.status;
        int i4 = z3;
        if (z3 != 0) {
            i4 = 1;
        }
        return hashCode + i4;
    }

    public final void setStatus(boolean z3) {
        this.status = z3;
    }

    public final void setTime(long j4) {
        this.time = j4;
    }

    public final void setTimeMessage(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.timeMessage = str;
    }

    @NotNull
    public String toString() {
        return "BtTagSelecterBean(time=" + this.time + ", timeMessage=" + this.timeMessage + ", status=" + this.status + ")";
    }
}
