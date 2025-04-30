package com.psk.eventmodule;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.Util.g0;
import com.psk.eventmodule.net.StatCore;
import com.psk.eventmodule.net.modle.VolcanoData;
import com.psk.eventmodule.net.util.AESUtilV2;
import com.psk.eventmodule.net.util.DeviceIdUtil;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;
/* compiled from: StatFactory.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u00152\u00020\u0001:\u0004\u0015\u0016\u0017\u0018B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J2\u0010\u000b\u001a\u00020\n2\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002J\u001e\u0010\u000f\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0002J\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0010¨\u0006\u0019"}, d2 = {"Lcom/psk/eventmodule/StatFactory;", "", "", "ipInit", "", "userId", "", "userType", "client_versionInit", "networkInit", "", "initDatas", "scmUpdate", "trans_dataUpdate", "request_idUpdate", "updateNewNewDatas", "Lcom/psk/eventmodule/StatFactory$VolcanoEvent;", NotificationCompat.CATEGORY_EVENT, "sendEvent", "<init>", "()V", "Companion", "SpmData", "VolcanoEvent", "VolcanoOther", "EventModule_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class StatFactory {
    private static StatFactory instance;
    @Nullable
    private static String oaid;
    private static StatCore statCore;
    private static long user_id;
    private static int user_type;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static String ip = "";
    private static String client_version = "";
    private static String network = "";
    private static String device_id = "";
    private static String scm = "";
    private static String trans_data = "";
    private static String request_id = "";

    /* compiled from: StatFactory.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001f\u0010 J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R$\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0016\u0010\r\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\bR\u0016\u0010\u000e\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\bR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\bR\u0016\u0010\u0012\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\bR\u0016\u0010\u0013\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\bR\u0016\u0010\u0014\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\bR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0018\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\bR\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006!"}, d2 = {"Lcom/psk/eventmodule/StatFactory$Companion;", "", "Landroid/content/Context;", "context", "Lcom/psk/eventmodule/StatFactory;", "getInstance", "", "oaid", "Ljava/lang/String;", "getOaid", "()Ljava/lang/String;", "setOaid", "(Ljava/lang/String;)V", "client_version", "device_id", "instance", "Lcom/psk/eventmodule/StatFactory;", IjkMediaPlayer.OnNativeInvokeListener.ARG_IP, "network", "request_id", "scm", "Lcom/psk/eventmodule/net/StatCore;", "statCore", "Lcom/psk/eventmodule/net/StatCore;", "trans_data", "", "user_id", "J", "", "user_type", "I", "<init>", "()V", "EventModule_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        @NotNull
        public final StatFactory getInstance(@NotNull Context context) {
            String replace$default;
            String replace$default2;
            Intrinsics.checkNotNullParameter(context, "context");
            if (StatFactory.instance == null) {
                StatFactory.instance = new StatFactory();
            }
            if (StatFactory.statCore == null) {
                StatFactory.statCore = StatCore.Companion.getInstance(context);
            }
            String android_id = Settings.System.getString(context.getContentResolver(), "android_id");
            DeviceIdUtil deviceIdUtil = DeviceIdUtil.getInstance(context);
            Intrinsics.checkNotNullExpressionValue(deviceIdUtil, "DeviceIdUtil.getInstance(context)");
            String oaid = deviceIdUtil.getOaid();
            DeviceIdUtil deviceIdUtil2 = DeviceIdUtil.getInstance(context);
            Intrinsics.checkNotNullExpressionValue(deviceIdUtil2, "DeviceIdUtil.getInstance(context)");
            String imei = deviceIdUtil2.getImei();
            DeviceIdUtil deviceIdUtil3 = DeviceIdUtil.getInstance(context);
            Intrinsics.checkNotNullExpressionValue(deviceIdUtil3, "DeviceIdUtil.getInstance(context)");
            String umKey = deviceIdUtil3.getUmengKey();
            if (!TextUtils.equals(android_id, "0") && !TextUtils.isEmpty(android_id)) {
                Intrinsics.checkNotNullExpressionValue(android_id, "android_id");
                replace$default = StringsKt__StringsJVMKt.replace$default(android_id, "0", "", false, 4, (Object) null);
                replace$default2 = StringsKt__StringsJVMKt.replace$default(replace$default, "-", "", false, 4, (Object) null);
                if (!TextUtils.isEmpty(replace$default2)) {
                    StatFactory.device_id = android_id;
                    StatFactory statFactory = StatFactory.instance;
                    Intrinsics.checkNotNull(statFactory);
                    return statFactory;
                }
            }
            boolean z3 = false;
            if (!(oaid == null || oaid.length() == 0)) {
                StatFactory.device_id = oaid;
            } else {
                if (!((imei == null || imei.length() == 0) ? true : true)) {
                    StatFactory.device_id = imei;
                } else {
                    Intrinsics.checkNotNullExpressionValue(umKey, "umKey");
                    StatFactory.device_id = umKey;
                }
            }
            StatFactory statFactory2 = StatFactory.instance;
            Intrinsics.checkNotNull(statFactory2);
            return statFactory2;
        }

        @Nullable
        public final String getOaid() {
            return StatFactory.oaid;
        }

        public final void setOaid(@Nullable String str) {
            StatFactory.oaid = str;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: StatFactory.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0002HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J;\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u0007HÆ\u0001J\t\u0010\u000f\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0010HÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012HÖ\u0003R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0015\u001a\u0004\b\u0018\u0010\u0017R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0015\u001a\u0004\b\u0019\u0010\u0017R\u0019\u0010\r\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0019\u0010\f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0015\u001a\u0004\b\u001d\u0010\u0017¨\u0006 "}, d2 = {"Lcom/psk/eventmodule/StatFactory$SpmData;", "Ljava/io/Serializable;", "", "component1", "component2", "component3", "component4", "", "component5", "bussnes", "page", "arena", "position", "detail", "copy", "toString", "", TTDownloadField.TT_HASHCODE, "", "other", "equals", "Ljava/lang/String;", "getBussnes", "()Ljava/lang/String;", "getPage", "getArena", "Z", "getDetail", "()Z", "getPosition", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "EventModule_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes4.dex */
    public static final class SpmData implements Serializable {
        @NotNull
        private final String arena;
        @NotNull
        private final String bussnes;
        private final boolean detail;
        @NotNull
        private final String page;
        @NotNull
        private final String position;

        public SpmData() {
            this(null, null, null, null, false, 31, null);
        }

        public SpmData(@NotNull String bussnes, @NotNull String page, @NotNull String arena, @NotNull String position, boolean z3) {
            Intrinsics.checkNotNullParameter(bussnes, "bussnes");
            Intrinsics.checkNotNullParameter(page, "page");
            Intrinsics.checkNotNullParameter(arena, "arena");
            Intrinsics.checkNotNullParameter(position, "position");
            this.bussnes = bussnes;
            this.page = page;
            this.arena = arena;
            this.position = position;
            this.detail = z3;
        }

        public static /* synthetic */ SpmData copy$default(SpmData spmData, String str, String str2, String str3, String str4, boolean z3, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = spmData.bussnes;
            }
            if ((i2 & 2) != 0) {
                str2 = spmData.page;
            }
            String str5 = str2;
            if ((i2 & 4) != 0) {
                str3 = spmData.arena;
            }
            String str6 = str3;
            if ((i2 & 8) != 0) {
                str4 = spmData.position;
            }
            String str7 = str4;
            if ((i2 & 16) != 0) {
                z3 = spmData.detail;
            }
            return spmData.copy(str, str5, str6, str7, z3);
        }

        @NotNull
        public final String component1() {
            return this.bussnes;
        }

        @NotNull
        public final String component2() {
            return this.page;
        }

        @NotNull
        public final String component3() {
            return this.arena;
        }

        @NotNull
        public final String component4() {
            return this.position;
        }

        public final boolean component5() {
            return this.detail;
        }

        @NotNull
        public final SpmData copy(@NotNull String bussnes, @NotNull String page, @NotNull String arena, @NotNull String position, boolean z3) {
            Intrinsics.checkNotNullParameter(bussnes, "bussnes");
            Intrinsics.checkNotNullParameter(page, "page");
            Intrinsics.checkNotNullParameter(arena, "arena");
            Intrinsics.checkNotNullParameter(position, "position");
            return new SpmData(bussnes, page, arena, position, z3);
        }

        public boolean equals(@Nullable Object obj) {
            if (this != obj) {
                if (obj instanceof SpmData) {
                    SpmData spmData = (SpmData) obj;
                    return Intrinsics.areEqual(this.bussnes, spmData.bussnes) && Intrinsics.areEqual(this.page, spmData.page) && Intrinsics.areEqual(this.arena, spmData.arena) && Intrinsics.areEqual(this.position, spmData.position) && this.detail == spmData.detail;
                }
                return false;
            }
            return true;
        }

        @NotNull
        public final String getArena() {
            return this.arena;
        }

        @NotNull
        public final String getBussnes() {
            return this.bussnes;
        }

        public final boolean getDetail() {
            return this.detail;
        }

        @NotNull
        public final String getPage() {
            return this.page;
        }

        @NotNull
        public final String getPosition() {
            return this.position;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            String str = this.bussnes;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.page;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.arena;
            int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.position;
            int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
            boolean z3 = this.detail;
            int i2 = z3;
            if (z3 != 0) {
                i2 = 1;
            }
            return hashCode4 + i2;
        }

        @NotNull
        public String toString() {
            return "SpmData(bussnes=" + this.bussnes + ", page=" + this.page + ", arena=" + this.arena + ", position=" + this.position + ", detail=" + this.detail + ")";
        }

        public /* synthetic */ SpmData(String str, String str2, String str3, String str4, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? "wufan" : str, (i2 & 2) != 0 ? "home" : str2, (i2 & 4) != 0 ? "" : str3, (i2 & 8) == 0 ? str4 : "", (i2 & 16) != 0 ? false : z3);
        }
    }

    /* compiled from: StatFactory.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0013\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\u0010\u001a\u00020\n¢\u0006\u0004\b&\u0010'J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\t\u001a\u0004\u0018\u00010\bHÆ\u0003J\t\u0010\u000b\u001a\u00020\nHÆ\u0003J=\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u000e\u001a\u00020\u00062\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\u0010\u001a\u00020\nHÆ\u0001J\t\u0010\u0012\u001a\u00020\u0004HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0013HÖ\u0001J\u0013\u0010\u0016\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0015HÖ\u0003R\u0019\u0010\u0010\u001a\u00020\n8\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001b\u0010\u000f\u001a\u0004\u0018\u00010\b8\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0019\u0010\r\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0019\u0010\u000e\u001a\u00020\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010 \u001a\u0004\b!\u0010\"R\u0019\u0010\f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010#\u001a\u0004\b$\u0010%¨\u0006("}, d2 = {"Lcom/psk/eventmodule/StatFactory$VolcanoEvent;", "Ljava/io/Serializable;", "Lcom/psk/eventmodule/Event;", "component1", "", "component2", "Lcom/psk/eventmodule/StatFactory$SpmData;", "component3", "Lcom/psk/eventmodule/StatFactory$VolcanoOther;", "component4", "", "component5", NotificationCompat.CATEGORY_EVENT, "goods_id", "spm", "other", "net_game", "copy", "toString", "", TTDownloadField.TT_HASHCODE, "", "equals", "Z", "getNet_game", "()Z", "Lcom/psk/eventmodule/StatFactory$VolcanoOther;", "getOther", "()Lcom/psk/eventmodule/StatFactory$VolcanoOther;", "Ljava/lang/String;", "getGoods_id", "()Ljava/lang/String;", "Lcom/psk/eventmodule/StatFactory$SpmData;", "getSpm", "()Lcom/psk/eventmodule/StatFactory$SpmData;", "Lcom/psk/eventmodule/Event;", "getEvent", "()Lcom/psk/eventmodule/Event;", "<init>", "(Lcom/psk/eventmodule/Event;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$SpmData;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V", "EventModule_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes4.dex */
    public static final class VolcanoEvent implements Serializable {
        @NotNull
        private final Event event;
        @NotNull
        private final String goods_id;
        private final boolean net_game;
        @Nullable
        private final VolcanoOther other;
        @NotNull
        private final SpmData spm;

        public VolcanoEvent(@NotNull Event event, @NotNull String goods_id, @NotNull SpmData spm, @Nullable VolcanoOther volcanoOther, boolean z3) {
            Intrinsics.checkNotNullParameter(event, "event");
            Intrinsics.checkNotNullParameter(goods_id, "goods_id");
            Intrinsics.checkNotNullParameter(spm, "spm");
            this.event = event;
            this.goods_id = goods_id;
            this.spm = spm;
            this.other = volcanoOther;
            this.net_game = z3;
        }

        public static /* synthetic */ VolcanoEvent copy$default(VolcanoEvent volcanoEvent, Event event, String str, SpmData spmData, VolcanoOther volcanoOther, boolean z3, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                event = volcanoEvent.event;
            }
            if ((i2 & 2) != 0) {
                str = volcanoEvent.goods_id;
            }
            String str2 = str;
            if ((i2 & 4) != 0) {
                spmData = volcanoEvent.spm;
            }
            SpmData spmData2 = spmData;
            if ((i2 & 8) != 0) {
                volcanoOther = volcanoEvent.other;
            }
            VolcanoOther volcanoOther2 = volcanoOther;
            if ((i2 & 16) != 0) {
                z3 = volcanoEvent.net_game;
            }
            return volcanoEvent.copy(event, str2, spmData2, volcanoOther2, z3);
        }

        @NotNull
        public final Event component1() {
            return this.event;
        }

        @NotNull
        public final String component2() {
            return this.goods_id;
        }

        @NotNull
        public final SpmData component3() {
            return this.spm;
        }

        @Nullable
        public final VolcanoOther component4() {
            return this.other;
        }

        public final boolean component5() {
            return this.net_game;
        }

        @NotNull
        public final VolcanoEvent copy(@NotNull Event event, @NotNull String goods_id, @NotNull SpmData spm, @Nullable VolcanoOther volcanoOther, boolean z3) {
            Intrinsics.checkNotNullParameter(event, "event");
            Intrinsics.checkNotNullParameter(goods_id, "goods_id");
            Intrinsics.checkNotNullParameter(spm, "spm");
            return new VolcanoEvent(event, goods_id, spm, volcanoOther, z3);
        }

        public boolean equals(@Nullable Object obj) {
            if (this != obj) {
                if (obj instanceof VolcanoEvent) {
                    VolcanoEvent volcanoEvent = (VolcanoEvent) obj;
                    return Intrinsics.areEqual(this.event, volcanoEvent.event) && Intrinsics.areEqual(this.goods_id, volcanoEvent.goods_id) && Intrinsics.areEqual(this.spm, volcanoEvent.spm) && Intrinsics.areEqual(this.other, volcanoEvent.other) && this.net_game == volcanoEvent.net_game;
                }
                return false;
            }
            return true;
        }

        @NotNull
        public final Event getEvent() {
            return this.event;
        }

        @NotNull
        public final String getGoods_id() {
            return this.goods_id;
        }

        public final boolean getNet_game() {
            return this.net_game;
        }

        @Nullable
        public final VolcanoOther getOther() {
            return this.other;
        }

        @NotNull
        public final SpmData getSpm() {
            return this.spm;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            Event event = this.event;
            int hashCode = (event != null ? event.hashCode() : 0) * 31;
            String str = this.goods_id;
            int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
            SpmData spmData = this.spm;
            int hashCode3 = (hashCode2 + (spmData != null ? spmData.hashCode() : 0)) * 31;
            VolcanoOther volcanoOther = this.other;
            int hashCode4 = (hashCode3 + (volcanoOther != null ? volcanoOther.hashCode() : 0)) * 31;
            boolean z3 = this.net_game;
            int i2 = z3;
            if (z3 != 0) {
                i2 = 1;
            }
            return hashCode4 + i2;
        }

        @NotNull
        public String toString() {
            return "VolcanoEvent(event=" + this.event + ", goods_id=" + this.goods_id + ", spm=" + this.spm + ", other=" + this.other + ", net_game=" + this.net_game + ")";
        }
    }

    /* compiled from: StatFactory.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J'\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u0002HÆ\u0001J\t\u0010\n\u001a\u00020\u0002HÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rHÖ\u0003R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0019\u0010\b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0011\u001a\u0004\b\u0014\u0010\u0013R\u0019\u0010\u0006\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0011\u001a\u0004\b\u0015\u0010\u0013¨\u0006\u0018"}, d2 = {"Lcom/psk/eventmodule/StatFactory$VolcanoOther;", "Ljava/io/Serializable;", "", "component1", "component2", "component3", "scm", "req_id", "trans_data", "copy", "toString", "", TTDownloadField.TT_HASHCODE, "", "other", "", "equals", "Ljava/lang/String;", "getReq_id", "()Ljava/lang/String;", "getTrans_data", "getScm", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "EventModule_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes4.dex */
    public static final class VolcanoOther implements Serializable {
        @NotNull
        private final String req_id;
        @NotNull
        private final String scm;
        @NotNull
        private final String trans_data;

        public VolcanoOther() {
            this(null, null, null, 7, null);
        }

        public VolcanoOther(@NotNull String scm, @NotNull String req_id, @NotNull String trans_data) {
            Intrinsics.checkNotNullParameter(scm, "scm");
            Intrinsics.checkNotNullParameter(req_id, "req_id");
            Intrinsics.checkNotNullParameter(trans_data, "trans_data");
            this.scm = scm;
            this.req_id = req_id;
            this.trans_data = trans_data;
        }

        public static /* synthetic */ VolcanoOther copy$default(VolcanoOther volcanoOther, String str, String str2, String str3, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = volcanoOther.scm;
            }
            if ((i2 & 2) != 0) {
                str2 = volcanoOther.req_id;
            }
            if ((i2 & 4) != 0) {
                str3 = volcanoOther.trans_data;
            }
            return volcanoOther.copy(str, str2, str3);
        }

        @NotNull
        public final String component1() {
            return this.scm;
        }

        @NotNull
        public final String component2() {
            return this.req_id;
        }

        @NotNull
        public final String component3() {
            return this.trans_data;
        }

        @NotNull
        public final VolcanoOther copy(@NotNull String scm, @NotNull String req_id, @NotNull String trans_data) {
            Intrinsics.checkNotNullParameter(scm, "scm");
            Intrinsics.checkNotNullParameter(req_id, "req_id");
            Intrinsics.checkNotNullParameter(trans_data, "trans_data");
            return new VolcanoOther(scm, req_id, trans_data);
        }

        public boolean equals(@Nullable Object obj) {
            if (this != obj) {
                if (obj instanceof VolcanoOther) {
                    VolcanoOther volcanoOther = (VolcanoOther) obj;
                    return Intrinsics.areEqual(this.scm, volcanoOther.scm) && Intrinsics.areEqual(this.req_id, volcanoOther.req_id) && Intrinsics.areEqual(this.trans_data, volcanoOther.trans_data);
                }
                return false;
            }
            return true;
        }

        @NotNull
        public final String getReq_id() {
            return this.req_id;
        }

        @NotNull
        public final String getScm() {
            return this.scm;
        }

        @NotNull
        public final String getTrans_data() {
            return this.trans_data;
        }

        public int hashCode() {
            String str = this.scm;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.req_id;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.trans_data;
            return hashCode2 + (str3 != null ? str3.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            return "VolcanoOther(scm=" + this.scm + ", req_id=" + this.req_id + ", trans_data=" + this.trans_data + ")";
        }

        public /* synthetic */ VolcanoOther(String str, String str2, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? "" : str3);
        }
    }

    public static /* synthetic */ void initDatas$default(StatFactory statFactory, String str, long j4, int i2, String str2, String str3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = "";
        }
        statFactory.initDatas(str, j4, i2, str2, str3);
    }

    public final void initDatas(@Nullable String str, long j4, int i2, @NotNull String client_versionInit, @NotNull String networkInit) {
        boolean contains$default;
        Intrinsics.checkNotNullParameter(client_versionInit, "client_versionInit");
        Intrinsics.checkNotNullParameter(networkInit, "networkInit");
        String str2 = "";
        if (!TextUtils.isEmpty(str)) {
            Intrinsics.checkNotNull(str);
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) g0.f27568a, false, 2, (Object) null);
            if (!contains$default) {
                str = AESUtilV2.decrypt(str, "");
            }
            Intrinsics.checkNotNullExpressionValue(str, "if (ipInit!!.contains(\".…tilV2.decrypt(ipInit, \"\")");
            str2 = str;
        }
        ip = str2;
        user_id = j4;
        user_type = i2;
        client_version = client_versionInit;
        network = networkInit;
    }

    public final void sendEvent(@NotNull VolcanoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if ((event.getSpm().getArena().length() == 0) || Intrinsics.areEqual(event.getSpm().getPosition(), "0")) {
            return;
        }
        VolcanoData volcanoData = new VolcanoData(0L, 0, null, null, 0L, null, null, null, null, null, null, null, null, null, null, false, 65535, null);
        volcanoData.setIp(ip);
        volcanoData.setUser_id(user_id);
        volcanoData.setUser_type(user_type);
        volcanoData.setClient_version(client_version);
        volcanoData.setNetwork(network);
        volcanoData.setDevice_id(device_id);
        volcanoData.setGoods_id(event.getGoods_id());
        StringBuilder sb = new StringBuilder();
        sb.append(event.getSpm().getBussnes());
        sb.append("$##$");
        sb.append(event.getSpm().getPage());
        sb.append("$##$");
        sb.append(event.getSpm().getArena());
        sb.append("$##$");
        sb.append(Intrinsics.areEqual(event.getSpm().getPosition(), "x") ? "1" : event.getSpm().getPosition());
        sb.append(event.getSpm().getDetail() ? "$##$详情" : "");
        volcanoData.setSpm(sb.toString());
        volcanoData.setBhv_type(event.getEvent().name());
        VolcanoOther other = event.getOther();
        volcanoData.setReq_id(other != null ? other.getReq_id() : null);
        VolcanoOther other2 = event.getOther();
        volcanoData.setScm(other2 != null ? other2.getScm() : null);
        VolcanoOther other3 = event.getOther();
        volcanoData.setTrans_data(other3 != null ? other3.getTrans_data() : null);
        volcanoData.setNet_game(event.getNet_game());
        StatCore statCore2 = statCore;
        Intrinsics.checkNotNull(statCore2);
        statCore2.send(volcanoData);
    }

    public final void updateNewNewDatas(@NotNull String scmUpdate, @NotNull String trans_dataUpdate, @NotNull String request_idUpdate) {
        Intrinsics.checkNotNullParameter(scmUpdate, "scmUpdate");
        Intrinsics.checkNotNullParameter(trans_dataUpdate, "trans_dataUpdate");
        Intrinsics.checkNotNullParameter(request_idUpdate, "request_idUpdate");
        scm = scmUpdate;
        trans_data = trans_dataUpdate;
        request_id = request_idUpdate;
    }
}
