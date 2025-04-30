package com.join.kotlin.ui.modleregin.modle;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.Util.IntentDateBean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VideoModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\f\u001a\u00020\u0004¢\u0006\u0004\b\u001d\u0010\u001eJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\b\u001a\u00020\u0004HÆ\u0003J5\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\f\u001a\u00020\u0004HÆ\u0001J\t\u0010\u000e\u001a\u00020\u0004HÖ\u0001J\t\u0010\u000f\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001b\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0019\u0010\f\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001b\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0016\u001a\u0004\b\u0019\u0010\u0018R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Lcom/join/kotlin/ui/modleregin/modle/VideoModle;", "", "", "component1", "", "component2", "Lcom/join/mgps/Util/IntentDateBean;", "component3", "component4", "position", "videoUrl", "intentData", "videoCover", "copy", "toString", TTDownloadField.TT_HASHCODE, "other", "", "equals", "Lcom/join/mgps/Util/IntentDateBean;", "getIntentData", "()Lcom/join/mgps/Util/IntentDateBean;", "Ljava/lang/String;", "getVideoCover", "()Ljava/lang/String;", "getVideoUrl", "I", "getPosition", "()I", "<init>", "(ILjava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/String;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class VideoModle {
    @Nullable
    private final IntentDateBean intentData;
    private final int position;
    @NotNull
    private final String videoCover;
    @Nullable
    private final String videoUrl;

    public VideoModle(int i2, @Nullable String str, @Nullable IntentDateBean intentDateBean, @NotNull String videoCover) {
        Intrinsics.checkNotNullParameter(videoCover, "videoCover");
        this.position = i2;
        this.videoUrl = str;
        this.intentData = intentDateBean;
        this.videoCover = videoCover;
    }

    public static /* synthetic */ VideoModle copy$default(VideoModle videoModle, int i2, String str, IntentDateBean intentDateBean, String str2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i2 = videoModle.position;
        }
        if ((i4 & 2) != 0) {
            str = videoModle.videoUrl;
        }
        if ((i4 & 4) != 0) {
            intentDateBean = videoModle.intentData;
        }
        if ((i4 & 8) != 0) {
            str2 = videoModle.videoCover;
        }
        return videoModle.copy(i2, str, intentDateBean, str2);
    }

    public final int component1() {
        return this.position;
    }

    @Nullable
    public final String component2() {
        return this.videoUrl;
    }

    @Nullable
    public final IntentDateBean component3() {
        return this.intentData;
    }

    @NotNull
    public final String component4() {
        return this.videoCover;
    }

    @NotNull
    public final VideoModle copy(int i2, @Nullable String str, @Nullable IntentDateBean intentDateBean, @NotNull String videoCover) {
        Intrinsics.checkNotNullParameter(videoCover, "videoCover");
        return new VideoModle(i2, str, intentDateBean, videoCover);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof VideoModle) {
                VideoModle videoModle = (VideoModle) obj;
                return this.position == videoModle.position && Intrinsics.areEqual(this.videoUrl, videoModle.videoUrl) && Intrinsics.areEqual(this.intentData, videoModle.intentData) && Intrinsics.areEqual(this.videoCover, videoModle.videoCover);
            }
            return false;
        }
        return true;
    }

    @Nullable
    public final IntentDateBean getIntentData() {
        return this.intentData;
    }

    public final int getPosition() {
        return this.position;
    }

    @NotNull
    public final String getVideoCover() {
        return this.videoCover;
    }

    @Nullable
    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public int hashCode() {
        int i2 = this.position * 31;
        String str = this.videoUrl;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        IntentDateBean intentDateBean = this.intentData;
        int hashCode2 = (hashCode + (intentDateBean != null ? intentDateBean.hashCode() : 0)) * 31;
        String str2 = this.videoCover;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "VideoModle(position=" + this.position + ", videoUrl=" + this.videoUrl + ", intentData=" + this.intentData + ", videoCover=" + this.videoCover + ")";
    }
}
