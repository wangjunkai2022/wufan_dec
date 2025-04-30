package com.psk.eventmodule.net.modle;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.umeng.analytics.pro.ai;
import f2.a;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;
/* compiled from: VolcanoData.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\bE\b\u0086\b\u0018\u00002\u00020\u0001B½\u0001\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010%\u001a\u00020\u0014¢\u0006\u0004\bW\u0010XJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\b\u001a\u00020\u0006HÆ\u0003J\t\u0010\t\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0014HÆ\u0003J¿\u0001\u0010&\u001a\u00020\u00002\b\b\u0002\u0010\u0016\u001a\u00020\u00022\b\b\u0002\u0010\u0017\u001a\u00020\u00042\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u00062\b\b\u0002\u0010\u001a\u001a\u00020\u00022\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010%\u001a\u00020\u0014HÆ\u0001J\t\u0010'\u001a\u00020\u0006HÖ\u0001J\t\u0010(\u001a\u00020\u0004HÖ\u0001J\u0013\u0010*\u001a\u00020\u00142\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003R$\u0010\u001c\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R$\u0010\u001d\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010+\u001a\u0004\b0\u0010-\"\u0004\b1\u0010/R$\u0010\u001b\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010+\u001a\u0004\b2\u0010-\"\u0004\b3\u0010/R\"\u0010\u001a\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R$\u0010 \u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010+\u001a\u0004\b9\u0010-\"\u0004\b:\u0010/R$\u0010\u0018\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010+\u001a\u0004\b;\u0010-\"\u0004\b<\u0010/R\"\u0010\u0017\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR$\u0010\u001e\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010+\u001a\u0004\bB\u0010-\"\u0004\bC\u0010/R\"\u0010%\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR$\u0010\u001f\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010+\u001a\u0004\bI\u0010-\"\u0004\bJ\u0010/R$\u0010\"\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010+\u001a\u0004\bK\u0010-\"\u0004\bL\u0010/R\"\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u00104\u001a\u0004\bM\u00106\"\u0004\bN\u00108R\"\u0010\u0019\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010+\u001a\u0004\bO\u0010-\"\u0004\bP\u0010/R$\u0010#\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010+\u001a\u0004\bQ\u0010-\"\u0004\bR\u0010/R$\u0010!\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010+\u001a\u0004\bS\u0010-\"\u0004\bT\u0010/R$\u0010$\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010+\u001a\u0004\bU\u0010-\"\u0004\bV\u0010/¨\u0006Y"}, d2 = {"Lcom/psk/eventmodule/net/modle/VolcanoData;", "", "", "component1", "", "component2", "", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "", "component16", "user_id", "user_type", "goods_id", "bhv_type", "bhv_time", "device_model", "device_id", "client_version", ai.f60425y, "network", IjkMediaPlayer.OnNativeInvokeListener.ARG_IP, "spm", "scm", "req_id", "trans_data", "net_game", "copy", "toString", TTDownloadField.TT_HASHCODE, "other", "equals", "Ljava/lang/String;", "getDevice_id", "()Ljava/lang/String;", "setDevice_id", "(Ljava/lang/String;)V", "getClient_version", "setClient_version", "getDevice_model", "setDevice_model", "J", "getBhv_time", "()J", "setBhv_time", "(J)V", "getIp", "setIp", "getGoods_id", "setGoods_id", "I", "getUser_type", "()I", "setUser_type", "(I)V", "getOs_version", "setOs_version", "Z", "getNet_game", "()Z", "setNet_game", "(Z)V", "getNetwork", "setNetwork", "getScm", "setScm", "getUser_id", "setUser_id", "getBhv_type", "setBhv_type", "getReq_id", "setReq_id", "getSpm", "setSpm", "getTrans_data", "setTrans_data", "<init>", "(JILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "EventModule_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class VolcanoData {
    private long bhv_time;
    @NotNull
    private String bhv_type;
    @Nullable
    private String client_version;
    @Nullable
    private String device_id;
    @Nullable
    private String device_model;
    @Nullable
    private String goods_id;
    @Nullable
    private String ip;
    private boolean net_game;
    @Nullable
    private String network;
    @Nullable
    private String os_version;
    @Nullable
    private String req_id;
    @Nullable
    private String scm;
    @Nullable
    private String spm;
    @Nullable
    private String trans_data;
    private long user_id;
    private int user_type;

    public VolcanoData() {
        this(0L, 0, null, null, 0L, null, null, null, null, null, null, null, null, null, null, false, 65535, null);
    }

    public VolcanoData(long j4, int i2, @Nullable String str, @NotNull String bhv_type, long j5, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable String str10, @Nullable String str11, boolean z3) {
        Intrinsics.checkNotNullParameter(bhv_type, "bhv_type");
        this.user_id = j4;
        this.user_type = i2;
        this.goods_id = str;
        this.bhv_type = bhv_type;
        this.bhv_time = j5;
        this.device_model = str2;
        this.device_id = str3;
        this.client_version = str4;
        this.os_version = str5;
        this.network = str6;
        this.ip = str7;
        this.spm = str8;
        this.scm = str9;
        this.req_id = str10;
        this.trans_data = str11;
        this.net_game = z3;
    }

    public final long component1() {
        return this.user_id;
    }

    @Nullable
    public final String component10() {
        return this.network;
    }

    @Nullable
    public final String component11() {
        return this.ip;
    }

    @Nullable
    public final String component12() {
        return this.spm;
    }

    @Nullable
    public final String component13() {
        return this.scm;
    }

    @Nullable
    public final String component14() {
        return this.req_id;
    }

    @Nullable
    public final String component15() {
        return this.trans_data;
    }

    public final boolean component16() {
        return this.net_game;
    }

    public final int component2() {
        return this.user_type;
    }

    @Nullable
    public final String component3() {
        return this.goods_id;
    }

    @NotNull
    public final String component4() {
        return this.bhv_type;
    }

    public final long component5() {
        return this.bhv_time;
    }

    @Nullable
    public final String component6() {
        return this.device_model;
    }

    @Nullable
    public final String component7() {
        return this.device_id;
    }

    @Nullable
    public final String component8() {
        return this.client_version;
    }

    @Nullable
    public final String component9() {
        return this.os_version;
    }

    @NotNull
    public final VolcanoData copy(long j4, int i2, @Nullable String str, @NotNull String bhv_type, long j5, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable String str10, @Nullable String str11, boolean z3) {
        Intrinsics.checkNotNullParameter(bhv_type, "bhv_type");
        return new VolcanoData(j4, i2, str, bhv_type, j5, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, z3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof VolcanoData) {
                VolcanoData volcanoData = (VolcanoData) obj;
                return this.user_id == volcanoData.user_id && this.user_type == volcanoData.user_type && Intrinsics.areEqual(this.goods_id, volcanoData.goods_id) && Intrinsics.areEqual(this.bhv_type, volcanoData.bhv_type) && this.bhv_time == volcanoData.bhv_time && Intrinsics.areEqual(this.device_model, volcanoData.device_model) && Intrinsics.areEqual(this.device_id, volcanoData.device_id) && Intrinsics.areEqual(this.client_version, volcanoData.client_version) && Intrinsics.areEqual(this.os_version, volcanoData.os_version) && Intrinsics.areEqual(this.network, volcanoData.network) && Intrinsics.areEqual(this.ip, volcanoData.ip) && Intrinsics.areEqual(this.spm, volcanoData.spm) && Intrinsics.areEqual(this.scm, volcanoData.scm) && Intrinsics.areEqual(this.req_id, volcanoData.req_id) && Intrinsics.areEqual(this.trans_data, volcanoData.trans_data) && this.net_game == volcanoData.net_game;
            }
            return false;
        }
        return true;
    }

    public final long getBhv_time() {
        return this.bhv_time;
    }

    @NotNull
    public final String getBhv_type() {
        return this.bhv_type;
    }

    @Nullable
    public final String getClient_version() {
        return this.client_version;
    }

    @Nullable
    public final String getDevice_id() {
        return this.device_id;
    }

    @Nullable
    public final String getDevice_model() {
        return this.device_model;
    }

    @Nullable
    public final String getGoods_id() {
        return this.goods_id;
    }

    @Nullable
    public final String getIp() {
        return this.ip;
    }

    public final boolean getNet_game() {
        return this.net_game;
    }

    @Nullable
    public final String getNetwork() {
        return this.network;
    }

    @Nullable
    public final String getOs_version() {
        return this.os_version;
    }

    @Nullable
    public final String getReq_id() {
        return this.req_id;
    }

    @Nullable
    public final String getScm() {
        return this.scm;
    }

    @Nullable
    public final String getSpm() {
        return this.spm;
    }

    @Nullable
    public final String getTrans_data() {
        return this.trans_data;
    }

    public final long getUser_id() {
        return this.user_id;
    }

    public final int getUser_type() {
        return this.user_type;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int a4 = ((a.a(this.user_id) * 31) + this.user_type) * 31;
        String str = this.goods_id;
        int hashCode = (a4 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.bhv_type;
        int hashCode2 = (((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + a.a(this.bhv_time)) * 31;
        String str3 = this.device_model;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.device_id;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.client_version;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.os_version;
        int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.network;
        int hashCode7 = (hashCode6 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.ip;
        int hashCode8 = (hashCode7 + (str8 != null ? str8.hashCode() : 0)) * 31;
        String str9 = this.spm;
        int hashCode9 = (hashCode8 + (str9 != null ? str9.hashCode() : 0)) * 31;
        String str10 = this.scm;
        int hashCode10 = (hashCode9 + (str10 != null ? str10.hashCode() : 0)) * 31;
        String str11 = this.req_id;
        int hashCode11 = (hashCode10 + (str11 != null ? str11.hashCode() : 0)) * 31;
        String str12 = this.trans_data;
        int hashCode12 = (hashCode11 + (str12 != null ? str12.hashCode() : 0)) * 31;
        boolean z3 = this.net_game;
        int i2 = z3;
        if (z3 != 0) {
            i2 = 1;
        }
        return hashCode12 + i2;
    }

    public final void setBhv_time(long j4) {
        this.bhv_time = j4;
    }

    public final void setBhv_type(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.bhv_type = str;
    }

    public final void setClient_version(@Nullable String str) {
        this.client_version = str;
    }

    public final void setDevice_id(@Nullable String str) {
        this.device_id = str;
    }

    public final void setDevice_model(@Nullable String str) {
        this.device_model = str;
    }

    public final void setGoods_id(@Nullable String str) {
        this.goods_id = str;
    }

    public final void setIp(@Nullable String str) {
        this.ip = str;
    }

    public final void setNet_game(boolean z3) {
        this.net_game = z3;
    }

    public final void setNetwork(@Nullable String str) {
        this.network = str;
    }

    public final void setOs_version(@Nullable String str) {
        this.os_version = str;
    }

    public final void setReq_id(@Nullable String str) {
        this.req_id = str;
    }

    public final void setScm(@Nullable String str) {
        this.scm = str;
    }

    public final void setSpm(@Nullable String str) {
        this.spm = str;
    }

    public final void setTrans_data(@Nullable String str) {
        this.trans_data = str;
    }

    public final void setUser_id(long j4) {
        this.user_id = j4;
    }

    public final void setUser_type(int i2) {
        this.user_type = i2;
    }

    @NotNull
    public String toString() {
        return "VolcanoData(user_id=" + this.user_id + ", user_type=" + this.user_type + ", goods_id=" + this.goods_id + ", bhv_type=" + this.bhv_type + ", bhv_time=" + this.bhv_time + ", device_model=" + this.device_model + ", device_id=" + this.device_id + ", client_version=" + this.client_version + ", os_version=" + this.os_version + ", network=" + this.network + ", ip=" + this.ip + ", spm=" + this.spm + ", scm=" + this.scm + ", req_id=" + this.req_id + ", trans_data=" + this.trans_data + ", net_game=" + this.net_game + ")";
    }

    public /* synthetic */ VolcanoData(long j4, int i2, String str, String str2, long j5, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, boolean z3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 0L : j4, (i4 & 2) != 0 ? 0 : i2, (i4 & 4) != 0 ? "" : str, (i4 & 8) != 0 ? "" : str2, (i4 & 16) == 0 ? j5 : 0L, (i4 & 32) != 0 ? "" : str3, (i4 & 64) != 0 ? "" : str4, (i4 & 128) != 0 ? "" : str5, (i4 & 256) != 0 ? "" : str6, (i4 & 512) != 0 ? "" : str7, (i4 & 1024) != 0 ? "" : str8, (i4 & 2048) != 0 ? "" : str9, (i4 & 4096) != 0 ? "" : str10, (i4 & 8192) != 0 ? "" : str11, (i4 & 16384) != 0 ? "" : str12, (i4 & 32768) != 0 ? false : z3);
    }
}
