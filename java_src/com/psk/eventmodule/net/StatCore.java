package com.psk.eventmodule.net;

import android.content.Context;
import android.os.Build;
import com.psk.eventmodule.net.modle.VolcanoData;
import com.psk.frame.roomlibrary.volcano.a;
import com.psk.frame.roomlibrary.volcano.dao.VolcanoEventDao;
import com.psk.frame.roomlibrary.volcano.entity.VolcanoEventTab;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.i;
import kotlinx.coroutines.u0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StatCore.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R$\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcom/psk/eventmodule/net/StatCore;", "", "Lcom/psk/eventmodule/net/modle/VolcanoData;", "statRequest", "", "insertDataToDB", "offlineAll", "send", "Lkotlinx/coroutines/c2;", "jobInfo", "Lkotlinx/coroutines/c2;", "getJobInfo", "()Lkotlinx/coroutines/c2;", "setJobInfo", "(Lkotlinx/coroutines/c2;)V", "<init>", "()V", "Companion", "EventModule_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class StatCore {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static Context context;
    private static StatCore instance;
    @Nullable
    private c2 jobInfo;

    /* compiled from: StatCore.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/psk/eventmodule/net/StatCore$Companion;", "", "Landroid/content/Context;", "context", "Lcom/psk/eventmodule/net/StatCore;", "getInstance", "Landroid/content/Context;", "instance", "Lcom/psk/eventmodule/net/StatCore;", "<init>", "()V", "EventModule_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        @NotNull
        public final StatCore getInstance(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (StatCore.instance == null) {
                a.f56255c.a(context);
                StatCore.instance = new StatCore();
            }
            if (StatCore.context == null) {
                StatCore.context = context;
            }
            StatCore statCore = StatCore.instance;
            Intrinsics.checkNotNull(statCore);
            return statCore;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final void insertDataToDB(VolcanoData volcanoData) {
        a aVar = a.f56255c;
        VolcanoEventDao b4 = aVar.b();
        VolcanoEventTab volcanoEventTab = new VolcanoEventTab(0, 0, System.currentTimeMillis(), volcanoData.getBhv_type(), volcanoData.getGoods_id(), volcanoData.getUser_id(), volcanoData.getUser_type(), volcanoData.getScm(), volcanoData.getSpm(), volcanoData.getTrans_data(), volcanoData.getReq_id(), volcanoData.getIp(), volcanoData.getClient_version(), Build.MODEL, volcanoData.getNetwork(), String.valueOf(Build.VERSION.SDK_INT), volcanoData.getDevice_id(), volcanoData.getNet_game(), 3, null);
        if (volcanoEventTab.getUser_id() != 0) {
            String device_id = volcanoEventTab.getDevice_id();
            if (!(device_id == null || device_id.length() == 0)) {
                for (VolcanoEventTab volcanoEventTab2 : aVar.b().queryForAll()) {
                    if (volcanoEventTab2.getUser_id() == 0) {
                        volcanoEventTab2.setUser_id(volcanoEventTab.getUser_id());
                        volcanoEventTab2.setUser_type(volcanoEventTab.getUser_type());
                        a.f56255c.b().update(volcanoEventTab2);
                    }
                    String device_id2 = volcanoEventTab2.getDevice_id();
                    if (device_id2 == null || device_id2.length() == 0) {
                        volcanoEventTab2.setDevice_id(volcanoEventTab.getDevice_id());
                        a.f56255c.b().update(volcanoEventTab2);
                    }
                }
            }
        }
        if (volcanoEventTab.getNet_game()) {
            String scm = volcanoEventTab.getScm();
            if (!(scm == null || scm.length() == 0)) {
                String req_id = volcanoEventTab.getReq_id();
                if (!(req_id == null || req_id.length() == 0)) {
                    for (VolcanoEventTab volcanoEventTab3 : a.f56255c.b().queryForAll()) {
                        String scm2 = volcanoEventTab3.getScm();
                        if (scm2 == null || scm2.length() == 0) {
                            String req_id2 = volcanoEventTab3.getReq_id();
                            if (!(req_id2 == null || req_id2.length() == 0)) {
                                volcanoEventTab3.setScm(volcanoEventTab.getScm());
                                a.f56255c.b().update(volcanoEventTab3);
                            }
                        }
                    }
                }
            }
        }
        b4.insertTab(volcanoEventTab);
        offlineAll();
    }

    private final void offlineAll() {
        c2 c2Var = this.jobInfo;
        if (c2Var != null) {
            c2.a.b(c2Var, null, 1, null);
        }
        this.jobInfo = i.e(u0.a(g1.c()), null, null, new StatCore$offlineAll$1(null), 3, null);
    }

    @Nullable
    public final c2 getJobInfo() {
        return this.jobInfo;
    }

    public final void send(@NotNull VolcanoData statRequest) {
        Intrinsics.checkNotNullParameter(statRequest, "statRequest");
        insertDataToDB(statRequest);
    }

    public final void setJobInfo(@Nullable c2 c2Var) {
        this.jobInfo = c2Var;
    }
}
