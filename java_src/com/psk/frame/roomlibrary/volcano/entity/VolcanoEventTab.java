package com.psk.frame.roomlibrary.volcano.entity;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import com.umeng.analytics.pro.ai;
import f2.a;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;
/* compiled from: VolcanoEventTab.kt */
@DatabaseTable(tableName = "volcano_event_tab")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\bK\b\u0087\b\u0018\u00002\u00020\u0001BÑ\u0001\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010)\u001a\u00020\u0016¢\u0006\u0004\b_\u0010`J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\n\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0016HÆ\u0003JÓ\u0001\u0010*\u001a\u00020\u00002\b\b\u0002\u0010\u0018\u001a\u00020\u00022\b\b\u0002\u0010\u0019\u001a\u00020\u00022\b\b\u0002\u0010\u001a\u001a\u00020\u00052\b\b\u0002\u0010\u001b\u001a\u00020\u00072\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\u001d\u001a\u00020\u00052\b\b\u0002\u0010\u001e\u001a\u00020\u00022\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010)\u001a\u00020\u0016HÆ\u0001J\t\u0010+\u001a\u00020\u0007HÖ\u0001J\t\u0010,\u001a\u00020\u0002HÖ\u0001J\u0013\u0010.\u001a\u00020\u00162\b\u0010-\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R$\u0010$\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b$\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R$\u0010%\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b%\u00104\u001a\u0004\b9\u00106\"\u0004\b:\u00108R\"\u0010)\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b)\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\"\u0010\u001a\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR$\u0010\u001f\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001f\u00104\u001a\u0004\bE\u00106\"\u0004\bF\u00108R$\u0010 \u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b \u00104\u001a\u0004\bG\u00106\"\u0004\bH\u00108R$\u0010!\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b!\u00104\u001a\u0004\bI\u00106\"\u0004\bJ\u00108R$\u0010(\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b(\u00104\u001a\u0004\bK\u00106\"\u0004\bL\u00108R\"\u0010\u001d\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010@\u001a\u0004\bM\u0010B\"\u0004\bN\u0010DR$\u0010#\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b#\u00104\u001a\u0004\bO\u00106\"\u0004\bP\u00108R$\u0010'\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b'\u00104\u001a\u0004\bQ\u00106\"\u0004\bR\u00108R\"\u0010\u001b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001b\u00104\u001a\u0004\bS\u00106\"\u0004\bT\u00108R$\u0010\u001c\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001c\u00104\u001a\u0004\bU\u00106\"\u0004\bV\u00108R\"\u0010\u001e\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010/\u001a\u0004\bW\u00101\"\u0004\bX\u00103R$\u0010&\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b&\u00104\u001a\u0004\bY\u00106\"\u0004\bZ\u00108R\"\u0010\u0018\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010/\u001a\u0004\b[\u00101\"\u0004\b\\\u00103R$\u0010\"\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\"\u00104\u001a\u0004\b]\u00106\"\u0004\b^\u00108¨\u0006a"}, d2 = {"Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;", "", "", "component1", "component2", "", "component3", "", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "", "component18", "id", "repeatNumber", "bhv_time", "bhv_type", "goods_id", "user_id", "user_type", "scm", "spm", "trans_data", "req_id", IjkMediaPlayer.OnNativeInvokeListener.ARG_IP, "client_version", "device_model", "network", ai.f60425y, "device_id", "net_game", "copy", "toString", TTDownloadField.TT_HASHCODE, "other", "equals", "I", "getRepeatNumber", "()I", "setRepeatNumber", "(I)V", "Ljava/lang/String;", "getClient_version", "()Ljava/lang/String;", "setClient_version", "(Ljava/lang/String;)V", "getDevice_model", "setDevice_model", "Z", "getNet_game", "()Z", "setNet_game", "(Z)V", "J", "getBhv_time", "()J", "setBhv_time", "(J)V", "getScm", "setScm", "getSpm", "setSpm", "getTrans_data", "setTrans_data", "getDevice_id", "setDevice_id", "getUser_id", "setUser_id", "getIp", "setIp", "getOs_version", "setOs_version", "getBhv_type", "setBhv_type", "getGoods_id", "setGoods_id", "getUser_type", "setUser_type", "getNetwork", "setNetwork", "getId", "setId", "getReq_id", "setReq_id", "<init>", "(IIJLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "RoomLibrary_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes.dex */
public final class VolcanoEventTab {
    @DatabaseField
    private long bhv_time;
    @DatabaseField
    @NotNull
    private String bhv_type;
    @DatabaseField
    @Nullable
    private String client_version;
    @DatabaseField
    @Nullable
    private String device_id;
    @DatabaseField
    @Nullable
    private String device_model;
    @DatabaseField
    @Nullable
    private String goods_id;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    @Nullable
    private String ip;
    @DatabaseField
    private boolean net_game;
    @DatabaseField
    @Nullable
    private String network;
    @DatabaseField
    @Nullable
    private String os_version;
    @DatabaseField
    private int repeatNumber;
    @DatabaseField
    @Nullable
    private String req_id;
    @DatabaseField
    @Nullable
    private String scm;
    @DatabaseField
    @Nullable
    private String spm;
    @DatabaseField
    @Nullable
    private String trans_data;
    @DatabaseField
    private long user_id;
    @DatabaseField
    private int user_type;

    public VolcanoEventTab() {
        this(0, 0, 0L, null, null, 0L, 0, null, null, null, null, null, null, null, null, null, null, false, 262143, null);
    }

    public VolcanoEventTab(int i2, int i4, long j4, @NotNull String bhv_type, @Nullable String str, long j5, int i5, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable String str10, @Nullable String str11, boolean z3) {
        Intrinsics.checkNotNullParameter(bhv_type, "bhv_type");
        this.id = i2;
        this.repeatNumber = i4;
        this.bhv_time = j4;
        this.bhv_type = bhv_type;
        this.goods_id = str;
        this.user_id = j5;
        this.user_type = i5;
        this.scm = str2;
        this.spm = str3;
        this.trans_data = str4;
        this.req_id = str5;
        this.ip = str6;
        this.client_version = str7;
        this.device_model = str8;
        this.network = str9;
        this.os_version = str10;
        this.device_id = str11;
        this.net_game = z3;
    }

    public final int component1() {
        return this.id;
    }

    @Nullable
    public final String component10() {
        return this.trans_data;
    }

    @Nullable
    public final String component11() {
        return this.req_id;
    }

    @Nullable
    public final String component12() {
        return this.ip;
    }

    @Nullable
    public final String component13() {
        return this.client_version;
    }

    @Nullable
    public final String component14() {
        return this.device_model;
    }

    @Nullable
    public final String component15() {
        return this.network;
    }

    @Nullable
    public final String component16() {
        return this.os_version;
    }

    @Nullable
    public final String component17() {
        return this.device_id;
    }

    public final boolean component18() {
        return this.net_game;
    }

    public final int component2() {
        return this.repeatNumber;
    }

    public final long component3() {
        return this.bhv_time;
    }

    @NotNull
    public final String component4() {
        return this.bhv_type;
    }

    @Nullable
    public final String component5() {
        return this.goods_id;
    }

    public final long component6() {
        return this.user_id;
    }

    public final int component7() {
        return this.user_type;
    }

    @Nullable
    public final String component8() {
        return this.scm;
    }

    @Nullable
    public final String component9() {
        return this.spm;
    }

    @NotNull
    public final VolcanoEventTab copy(int i2, int i4, long j4, @NotNull String bhv_type, @Nullable String str, long j5, int i5, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable String str10, @Nullable String str11, boolean z3) {
        Intrinsics.checkNotNullParameter(bhv_type, "bhv_type");
        return new VolcanoEventTab(i2, i4, j4, bhv_type, str, j5, i5, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, z3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof VolcanoEventTab) {
                VolcanoEventTab volcanoEventTab = (VolcanoEventTab) obj;
                return this.id == volcanoEventTab.id && this.repeatNumber == volcanoEventTab.repeatNumber && this.bhv_time == volcanoEventTab.bhv_time && Intrinsics.areEqual(this.bhv_type, volcanoEventTab.bhv_type) && Intrinsics.areEqual(this.goods_id, volcanoEventTab.goods_id) && this.user_id == volcanoEventTab.user_id && this.user_type == volcanoEventTab.user_type && Intrinsics.areEqual(this.scm, volcanoEventTab.scm) && Intrinsics.areEqual(this.spm, volcanoEventTab.spm) && Intrinsics.areEqual(this.trans_data, volcanoEventTab.trans_data) && Intrinsics.areEqual(this.req_id, volcanoEventTab.req_id) && Intrinsics.areEqual(this.ip, volcanoEventTab.ip) && Intrinsics.areEqual(this.client_version, volcanoEventTab.client_version) && Intrinsics.areEqual(this.device_model, volcanoEventTab.device_model) && Intrinsics.areEqual(this.network, volcanoEventTab.network) && Intrinsics.areEqual(this.os_version, volcanoEventTab.os_version) && Intrinsics.areEqual(this.device_id, volcanoEventTab.device_id) && this.net_game == volcanoEventTab.net_game;
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

    public final int getId() {
        return this.id;
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

    public final int getRepeatNumber() {
        return this.repeatNumber;
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
        int a4 = ((((this.id * 31) + this.repeatNumber) * 31) + a.a(this.bhv_time)) * 31;
        String str = this.bhv_type;
        int hashCode = (a4 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.goods_id;
        int hashCode2 = (((((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + a.a(this.user_id)) * 31) + this.user_type) * 31;
        String str3 = this.scm;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.spm;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.trans_data;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.req_id;
        int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.ip;
        int hashCode7 = (hashCode6 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.client_version;
        int hashCode8 = (hashCode7 + (str8 != null ? str8.hashCode() : 0)) * 31;
        String str9 = this.device_model;
        int hashCode9 = (hashCode8 + (str9 != null ? str9.hashCode() : 0)) * 31;
        String str10 = this.network;
        int hashCode10 = (hashCode9 + (str10 != null ? str10.hashCode() : 0)) * 31;
        String str11 = this.os_version;
        int hashCode11 = (hashCode10 + (str11 != null ? str11.hashCode() : 0)) * 31;
        String str12 = this.device_id;
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

    public final void setId(int i2) {
        this.id = i2;
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

    public final void setRepeatNumber(int i2) {
        this.repeatNumber = i2;
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
        return "VolcanoEventTab(id=" + this.id + ", repeatNumber=" + this.repeatNumber + ", bhv_time=" + this.bhv_time + ", bhv_type=" + this.bhv_type + ", goods_id=" + this.goods_id + ", user_id=" + this.user_id + ", user_type=" + this.user_type + ", scm=" + this.scm + ", spm=" + this.spm + ", trans_data=" + this.trans_data + ", req_id=" + this.req_id + ", ip=" + this.ip + ", client_version=" + this.client_version + ", device_model=" + this.device_model + ", network=" + this.network + ", os_version=" + this.os_version + ", device_id=" + this.device_id + ", net_game=" + this.net_game + ")";
    }

    public /* synthetic */ VolcanoEventTab(int i2, int i4, long j4, String str, String str2, long j5, int i5, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, boolean z3, int i6, DefaultConstructorMarker defaultConstructorMarker) {
        this((i6 & 1) != 0 ? 0 : i2, (i6 & 2) != 0 ? 0 : i4, (i6 & 4) != 0 ? 0L : j4, (i6 & 8) != 0 ? "" : str, (i6 & 16) != 0 ? "" : str2, (i6 & 32) == 0 ? j5 : 0L, (i6 & 64) != 0 ? 0 : i5, (i6 & 128) != 0 ? "" : str3, (i6 & 256) != 0 ? "" : str4, (i6 & 512) != 0 ? "" : str5, (i6 & 1024) != 0 ? "" : str6, (i6 & 2048) != 0 ? "" : str7, (i6 & 4096) != 0 ? "" : str8, (i6 & 8192) != 0 ? "" : str9, (i6 & 16384) != 0 ? "" : str10, (i6 & 32768) != 0 ? "" : str11, (i6 & 65536) != 0 ? "" : str12, (i6 & 131072) != 0 ? false : z3);
    }
}
