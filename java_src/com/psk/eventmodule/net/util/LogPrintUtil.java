package com.psk.eventmodule.net.util;

import com.join.mgps.activity.TagGameListActivity_;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: LogPrintUtil.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0016\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/psk/eventmodule/net/util/LogPrintUtil;", "", "<init>", "()V", "Companion", "EventModule_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public class LogPrintUtil {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final String LINE_SEPARATOR = System.getProperty("line.separator");
    private static final boolean printLog = false;

    /* compiled from: LogPrintUtil.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u000eJ \u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0007R\"\u0010\t\u001a\u00020\b8\u0006@\u0007X\u0087D¢\u0006\u0012\n\u0004\b\t\u0010\n\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u001e\u0010\u0010\u001a\n \u000f*\u0004\u0018\u00010\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Lcom/psk/eventmodule/net/util/LogPrintUtil$Companion;", "", "", TagGameListActivity_.f35885q0, "msg", "headString", "", "printOut", "", "printLog", "Z", "getPrintLog", "()Z", "getPrintLog$annotations", "()V", "kotlin.jvm.PlatformType", "LINE_SEPARATOR", "Ljava/lang/String;", "<init>", "EventModule_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        @JvmStatic
        public static /* synthetic */ void getPrintLog$annotations() {
        }

        public final boolean getPrintLog() {
            return LogPrintUtil.printLog;
        }

        @JvmStatic
        public final void printOut(@NotNull String tag, @NotNull String msg, @NotNull String headString) {
            boolean startsWith$default;
            boolean startsWith$default2;
            String jSONArray;
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
            Intrinsics.checkNotNullParameter(headString, "headString");
            try {
                startsWith$default = StringsKt__StringsJVMKt.startsWith$default(msg, "{", false, 2, null);
                if (startsWith$default) {
                    jSONArray = new JSONObject(msg).toString(4);
                } else {
                    startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(msg, "[", false, 2, null);
                    jSONArray = startsWith$default2 ? new JSONArray(msg).toString(4) : msg;
                }
                Intrinsics.checkNotNullExpressionValue(jSONArray, "if (msg.startsWith(\"{\"))…    msg\n                }");
                msg = jSONArray;
            } catch (JSONException unused) {
            }
            System.out.println((Object) (tag + (LogPrintUtil.LINE_SEPARATOR + "╔═══════════════════════════════════════════════════════════════════════════════════════" + LogPrintUtil.LINE_SEPARATOR + headString + LogPrintUtil.LINE_SEPARATOR + msg + LogPrintUtil.LINE_SEPARATOR + "╚═══════════════════════════════════════════════════════════════════════════════════════" + LogPrintUtil.LINE_SEPARATOR)));
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final boolean getPrintLog() {
        return printLog;
    }

    @JvmStatic
    public static final void printOut(@NotNull String str, @NotNull String str2, @NotNull String str3) {
        Companion.printOut(str, str2, str3);
    }
}
