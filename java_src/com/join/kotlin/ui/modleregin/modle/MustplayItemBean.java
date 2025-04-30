package com.join.kotlin.ui.modleregin.modle;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.activity.PapayPayDetialActivity_;
import com.join.mgps.business.CollectionBeanSubBusiness;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MustplayItemBean.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b(\b\u0086\b\u0018\u00002\u00020\u0001Bi\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0014\u001a\u00020\u0004\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0004\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\b\u0012\u0006\u0010\u0017\u001a\u00020\u0004\u0012\u0006\u0010\u0018\u001a\u00020\u0004\u0012\u0006\u0010\u0019\u001a\u00020\f\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b5\u00106J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\bHÆ\u0003J\t\u0010\n\u001a\u00020\u0004HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0004HÆ\u0003J\t\u0010\r\u001a\u00020\fHÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u0082\u0001\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0012\u001a\u00020\u00022\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0014\u001a\u00020\u00042\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00042\u000e\b\u0002\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\b2\b\b\u0002\u0010\u0017\u001a\u00020\u00042\b\b\u0002\u0010\u0018\u001a\u00020\u00042\b\b\u0002\u0010\u0019\u001a\u00020\f2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u000fHÆ\u0001¢\u0006\u0004\b\u001c\u0010\u001dJ\t\u0010\u001e\u001a\u00020\u0004HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0002HÖ\u0001J\u0013\u0010!\u001a\u00020\u000f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\u0012\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\"\u001a\u0004\b#\u0010$R\u0019\u0010\u0018\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0018\u0010%\u001a\u0004\b&\u0010'R\u001b\u0010\u0013\u001a\u0004\u0018\u00010\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010%\u001a\u0004\b(\u0010'R\u0019\u0010\u0017\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u0010%\u001a\u0004\b)\u0010'R\u001b\u0010\u001b\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006¢\u0006\f\n\u0004\b\u001b\u0010*\u001a\u0004\b+\u0010\u0011R\u001f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0016\u0010,\u001a\u0004\b-\u0010.R\u001b\u0010\u001a\u001a\u0004\u0018\u00010\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u001a\u0010%\u001a\u0004\b/\u0010'R\u0019\u0010\u0014\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010%\u001a\u0004\b0\u0010'R\u001b\u0010\u0015\u001a\u0004\u0018\u00010\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0015\u0010%\u001a\u0004\b1\u0010'R\u0019\u0010\u0019\u001a\u00020\f8\u0006@\u0006¢\u0006\f\n\u0004\b\u0019\u00102\u001a\u0004\b3\u00104¨\u00067"}, d2 = {"Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;", "", "", "component1", "", "component2", "component3", "component4", "", "component5", "component6", "component7", "Lcom/join/mgps/business/CollectionBeanSubBusiness;", "component8", "component9", "", "component10", "()Ljava/lang/Boolean;", "position", "videoUrl", "videoCover", "game_info_top_video_url", "tags", "gameName", PapayPayDetialActivity_.f34856k, "gameinfo", "tip", "showWhiteBack", "copy", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/business/CollectionBeanSubBusiness;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;", "toString", TTDownloadField.TT_HASHCODE, "other", "equals", "I", "getPosition", "()I", "Ljava/lang/String;", "getInfo", "()Ljava/lang/String;", "getVideoUrl", "getGameName", "Ljava/lang/Boolean;", "getShowWhiteBack", "Ljava/util/List;", "getTags", "()Ljava/util/List;", "getTip", "getVideoCover", "getGame_info_top_video_url", "Lcom/join/mgps/business/CollectionBeanSubBusiness;", "getGameinfo", "()Lcom/join/mgps/business/CollectionBeanSubBusiness;", "<init>", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/business/CollectionBeanSubBusiness;Ljava/lang/String;Ljava/lang/Boolean;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class MustplayItemBean {
    @NotNull
    private final String gameName;
    @Nullable
    private final String game_info_top_video_url;
    @NotNull
    private final CollectionBeanSubBusiness gameinfo;
    @NotNull
    private final String info;
    private final int position;
    @Nullable
    private final Boolean showWhiteBack;
    @NotNull
    private final List<String> tags;
    @Nullable
    private final String tip;
    @NotNull
    private final String videoCover;
    @Nullable
    private final String videoUrl;

    public MustplayItemBean(int i2, @Nullable String str, @NotNull String videoCover, @Nullable String str2, @NotNull List<String> tags, @NotNull String gameName, @NotNull String info, @NotNull CollectionBeanSubBusiness gameinfo, @Nullable String str3, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(videoCover, "videoCover");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(gameName, "gameName");
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(gameinfo, "gameinfo");
        this.position = i2;
        this.videoUrl = str;
        this.videoCover = videoCover;
        this.game_info_top_video_url = str2;
        this.tags = tags;
        this.gameName = gameName;
        this.info = info;
        this.gameinfo = gameinfo;
        this.tip = str3;
        this.showWhiteBack = bool;
    }

    public final int component1() {
        return this.position;
    }

    @Nullable
    public final Boolean component10() {
        return this.showWhiteBack;
    }

    @Nullable
    public final String component2() {
        return this.videoUrl;
    }

    @NotNull
    public final String component3() {
        return this.videoCover;
    }

    @Nullable
    public final String component4() {
        return this.game_info_top_video_url;
    }

    @NotNull
    public final List<String> component5() {
        return this.tags;
    }

    @NotNull
    public final String component6() {
        return this.gameName;
    }

    @NotNull
    public final String component7() {
        return this.info;
    }

    @NotNull
    public final CollectionBeanSubBusiness component8() {
        return this.gameinfo;
    }

    @Nullable
    public final String component9() {
        return this.tip;
    }

    @NotNull
    public final MustplayItemBean copy(int i2, @Nullable String str, @NotNull String videoCover, @Nullable String str2, @NotNull List<String> tags, @NotNull String gameName, @NotNull String info, @NotNull CollectionBeanSubBusiness gameinfo, @Nullable String str3, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(videoCover, "videoCover");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(gameName, "gameName");
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(gameinfo, "gameinfo");
        return new MustplayItemBean(i2, str, videoCover, str2, tags, gameName, info, gameinfo, str3, bool);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof MustplayItemBean) {
                MustplayItemBean mustplayItemBean = (MustplayItemBean) obj;
                return this.position == mustplayItemBean.position && Intrinsics.areEqual(this.videoUrl, mustplayItemBean.videoUrl) && Intrinsics.areEqual(this.videoCover, mustplayItemBean.videoCover) && Intrinsics.areEqual(this.game_info_top_video_url, mustplayItemBean.game_info_top_video_url) && Intrinsics.areEqual(this.tags, mustplayItemBean.tags) && Intrinsics.areEqual(this.gameName, mustplayItemBean.gameName) && Intrinsics.areEqual(this.info, mustplayItemBean.info) && Intrinsics.areEqual(this.gameinfo, mustplayItemBean.gameinfo) && Intrinsics.areEqual(this.tip, mustplayItemBean.tip) && Intrinsics.areEqual(this.showWhiteBack, mustplayItemBean.showWhiteBack);
            }
            return false;
        }
        return true;
    }

    @NotNull
    public final String getGameName() {
        return this.gameName;
    }

    @Nullable
    public final String getGame_info_top_video_url() {
        return this.game_info_top_video_url;
    }

    @NotNull
    public final CollectionBeanSubBusiness getGameinfo() {
        return this.gameinfo;
    }

    @NotNull
    public final String getInfo() {
        return this.info;
    }

    public final int getPosition() {
        return this.position;
    }

    @Nullable
    public final Boolean getShowWhiteBack() {
        return this.showWhiteBack;
    }

    @NotNull
    public final List<String> getTags() {
        return this.tags;
    }

    @Nullable
    public final String getTip() {
        return this.tip;
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
        String str2 = this.videoCover;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.game_info_top_video_url;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        List<String> list = this.tags;
        int hashCode4 = (hashCode3 + (list != null ? list.hashCode() : 0)) * 31;
        String str4 = this.gameName;
        int hashCode5 = (hashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.info;
        int hashCode6 = (hashCode5 + (str5 != null ? str5.hashCode() : 0)) * 31;
        CollectionBeanSubBusiness collectionBeanSubBusiness = this.gameinfo;
        int hashCode7 = (hashCode6 + (collectionBeanSubBusiness != null ? collectionBeanSubBusiness.hashCode() : 0)) * 31;
        String str6 = this.tip;
        int hashCode8 = (hashCode7 + (str6 != null ? str6.hashCode() : 0)) * 31;
        Boolean bool = this.showWhiteBack;
        return hashCode8 + (bool != null ? bool.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "MustplayItemBean(position=" + this.position + ", videoUrl=" + this.videoUrl + ", videoCover=" + this.videoCover + ", game_info_top_video_url=" + this.game_info_top_video_url + ", tags=" + this.tags + ", gameName=" + this.gameName + ", info=" + this.info + ", gameinfo=" + this.gameinfo + ", tip=" + this.tip + ", showWhiteBack=" + this.showWhiteBack + ")";
    }

    public /* synthetic */ MustplayItemBean(int i2, String str, String str2, String str3, List list, String str4, String str5, CollectionBeanSubBusiness collectionBeanSubBusiness, String str6, Boolean bool, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, str, str2, str3, list, str4, str5, collectionBeanSubBusiness, (i4 & 256) != 0 ? "" : str6, (i4 & 512) != 0 ? Boolean.FALSE : bool);
    }
}
