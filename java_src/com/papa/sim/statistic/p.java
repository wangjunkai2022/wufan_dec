package com.papa.sim.statistic;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.join.mgps.dialog.DownloadMethodPromptDialog_;
import com.papa.sim.statistic.db.EMUApkTable;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* compiled from: StatFactory.java */
/* loaded from: classes4.dex */
public class p {

    /* renamed from: i  reason: collision with root package name */
    public static String f55578i;

    /* renamed from: j  reason: collision with root package name */
    public static p f55579j;

    /* renamed from: b  reason: collision with root package name */
    private Context f55582b;

    /* renamed from: c  reason: collision with root package name */
    private com.papa.sim.statistic.o f55583c;

    /* renamed from: d  reason: collision with root package name */
    private com.papa.sim.statistic.db.b f55584d;

    /* renamed from: e  reason: collision with root package name */
    com.papa.sim.statistic.h f55585e;

    /* renamed from: g  reason: collision with root package name */
    private static ThreadPoolExecutor f55576g = new ThreadPoolExecutor(1, 1, 500, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: h  reason: collision with root package name */
    public static String f55577h = "";

    /* renamed from: k  reason: collision with root package name */
    private static String f55580k = "1280*720";

    /* renamed from: a  reason: collision with root package name */
    private final String f55581a = p.class.getSimpleName();

    /* renamed from: f  reason: collision with root package name */
    private int f55586f = 1;

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55587a;

        a(String str) {
            this.f55587a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.VsGameOverSuccess;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55587a));
                statRequest.getExt().setUid(statRequest.getUid());
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class a0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55589a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55590b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55591c;

        a0(String str, String str2, String str3) {
            this.f55589a = str;
            this.f55590b = str2;
            this.f55591c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(Event.arenaGameListItem.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55589a));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f55590b);
                statRequest.getExt().setPosition(this.f55591c);
                try {
                    statRequest.getData().setGameId(Long.parseLong(this.f55590b));
                } catch (Exception unused) {
                }
                p.this.f55583c.A(Event.arenaGameListItem, statRequest);
            } catch (Exception unused2) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class a1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55593a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55594b;

        a1(String str, String str2) {
            this.f55593a = str;
            this.f55594b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.I(Event.clickCreateLocalNetBattleRoomBtn, this.f55593a, this.f55594b);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class a2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55596a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55597b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ long f55598c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f55599d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f55600e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ int f55601f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ int f55602g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ int f55603h;

        a2(String str, String str2, long j4, int i2, String str3, int i4, int i5, int i6) {
            this.f55596a = str;
            this.f55597b = str2;
            this.f55598c = j4;
            this.f55599d = i2;
            this.f55600e = str3;
            this.f55601f = i4;
            this.f55602g = i5;
            this.f55603h = i6;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.L(Event.gameDownloadCompleted, this.f55596a, this.f55597b, this.f55598c, this.f55599d, this.f55600e, -1L, this.f55601f, this.f55602g, this.f55603h);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class a3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55605a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f55606b;

        a3(String str, int i2) {
            this.f55605a = str;
            this.f55606b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.x(Event.clickFunGameMainBtn, Event.forum, this.f55605a, this.f55606b);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class a4 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Where f55608a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55609b;

        a4(Where where, String str) {
            this.f55608a = where;
            this.f55609b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.C(Event.visitSearchPage, this.f55608a, this.f55609b);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55611a;

        b(String str) {
            this.f55611a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.VsSelectSilentBtn;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55611a));
                statRequest.getExt().setUid(statRequest.getUid());
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class b0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55613a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f55614b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55615c;

        b0(String str, int i2, String str2) {
            this.f55613a = str;
            this.f55614b = i2;
            this.f55615c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.areaRoomFromInvite;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55613a));
                statRequest.getExt().setUid(statRequest.getUid());
                Ext ext = statRequest.getExt();
                ext.setRoomID(this.f55614b + "");
                statRequest.getExt().setFightId(this.f55615c);
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    public class b1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55617a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55618b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55619c;

        b1(String str, String str2, String str3) {
            this.f55617a = str;
            this.f55618b = str2;
            this.f55619c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.c0(Event.gameStart, this.f55617a, this.f55618b, this.f55619c);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class b2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55621a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55622b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ long f55623c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f55624d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f55625e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ String f55626f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ int f55627g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ int f55628h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ int f55629i;

        b2(String str, String str2, long j4, int i2, String str3, String str4, int i4, int i5, int i6) {
            this.f55621a = str;
            this.f55622b = str2;
            this.f55623c = j4;
            this.f55624d = i2;
            this.f55625e = str3;
            this.f55626f = str4;
            this.f55627g = i4;
            this.f55628h = i5;
            this.f55629i = i6;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.M(Event.gameDownloadCompleted, this.f55621a, this.f55622b, this.f55623c, this.f55624d, this.f55625e, this.f55626f, -1L, this.f55627g, this.f55628h, this.f55629i);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class b3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55631a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f55632b;

        b3(String str, int i2) {
            this.f55631a = str;
            this.f55632b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.x(Event.clickGameMainBtn, Event.practice, this.f55631a, this.f55632b);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class b4 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55634a;

        b4(String str) {
            this.f55634a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.clickVsBtn;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55634a));
                statRequest.getExt().setUid(statRequest.getUid());
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55636a;

        c(String str) {
            this.f55636a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.VsCreateSilentRoom;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55636a));
                statRequest.getExt().setUid(statRequest.getUid());
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class c0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55638a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55639b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55640c;

        c0(String str, String str2, String str3) {
            this.f55638a = str;
            this.f55639b = str2;
            this.f55640c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(Event.sharePasteClick.name());
                try {
                    statRequest.getData().setGameId(Long.parseLong(this.f55638a));
                } catch (Exception unused) {
                }
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55639b));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f55638a);
                statRequest.getExt().setFightId(this.f55640c);
                p.this.f55583c.A(Event.sharePasteClick, statRequest);
            } catch (Exception unused2) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class c1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55642a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55643b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f55644c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f55645d;

        c1(String str, String str2, int i2, String str3) {
            this.f55642a = str;
            this.f55643b = str2;
            this.f55644c = i2;
            this.f55645d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.K(Event.inviteBattleShareSuccess, this.f55642a, this.f55643b, this.f55644c, this.f55645d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    public class c2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55647a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55648b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55649c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f55650d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ long f55651e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ int f55652f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ long f55653g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ String f55654h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ int f55655i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ int f55656j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ int f55657k;

        c2(String str, String str2, String str3, String str4, long j4, int i2, long j5, String str5, int i4, int i5, int i6) {
            this.f55647a = str;
            this.f55648b = str2;
            this.f55649c = str3;
            this.f55650d = str4;
            this.f55651e = j4;
            this.f55652f = i2;
            this.f55653g = j5;
            this.f55654h = str5;
            this.f55655i = i4;
            this.f55656j = i5;
            this.f55657k = i6;
        }

        @Override // java.lang.Runnable
        public void run() {
            String string;
            StatRequest statRequest = new StatRequest();
            if (!TextUtils.isEmpty(this.f55647a)) {
                statRequest.getExt().setPage(this.f55647a);
            }
            if (!TextUtils.isEmpty(this.f55648b)) {
                statRequest.setEvent(Event.gameDownload.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.getData().setGameId(Long.parseLong(this.f55649c));
                statRequest.setUid(Integer.parseInt(this.f55650d));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setDuration(this.f55651e);
                statRequest.getExt().setInterrupt(this.f55652f);
                statRequest.getExt().setZipCost(this.f55653g);
                statRequest.getExt().setKeyWord(this.f55654h);
                statRequest.getExt().setGameFlag(this.f55655i);
                if (this.f55656j == 1) {
                    statRequest.getData().setWhere(Where.search.name());
                    statRequest.getExt().setReMarks(this.f55654h);
                    statRequest.getExt().setFrom("103");
                } else {
                    statRequest.getData().setWhere(this.f55654h);
                    try {
                        if (!TextUtils.isEmpty(this.f55648b)) {
                            JSONObject jSONObject = new JSONObject(this.f55648b);
                            String string2 = jSONObject.has("from") ? jSONObject.getString("from") : "";
                            statRequest.getExt().setFrom(string2);
                            statRequest.getExt().setPosition(jSONObject.has("position") ? jSONObject.getString("position") : "");
                            statRequest.getExt().setReMarks(jSONObject.has("location") ? jSONObject.getString("location") : "");
                            if (jSONObject.has(DownloadMethodPromptDialog_.G) && (string = jSONObject.getString(DownloadMethodPromptDialog_.G)) != null) {
                                statRequest.getExt().setFrom(string2);
                                statRequest.getExt().setPosition(string);
                                if (jSONObject.has("recPosition")) {
                                    statRequest.getExt().setRecPosition(jSONObject.getString("recPosition"));
                                }
                                if (jSONObject.has("reMarks")) {
                                    statRequest.getExt().setReMarks(jSONObject.getString("reMarks"));
                                }
                                if (jSONObject.has("nodeId")) {
                                    statRequest.getExt().setNodeId(jSONObject.getString("nodeId"));
                                }
                            }
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
                p.this.f55583c.A(Event.gameDownload, statRequest);
            } else if (this.f55656j == 1) {
                Event event = Event.gameDownload;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.getData().setGameId(Long.parseLong(this.f55649c));
                statRequest.getData().setWhere(Where.search.name());
                statRequest.setUid(Integer.parseInt(this.f55650d));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setKeyWord(this.f55654h);
                statRequest.getExt().setDuration(this.f55651e);
                statRequest.getExt().setInterrupt(this.f55652f);
                statRequest.getExt().setZipCost(this.f55653g);
                statRequest.getExt().setFrom("103");
                Ext ext = statRequest.getExt();
                ext.setPosition(this.f55657k + "");
                statRequest.getExt().setGameFlag(this.f55655i);
                p.this.f55583c.A(event, statRequest);
            } else {
                Ext ext2 = new Ext();
                Data data = new Data();
                try {
                    data.setGameId(Long.parseLong(this.f55649c));
                    ext2.setUid(Integer.parseInt(this.f55650d));
                } catch (Exception unused) {
                }
                data.setWhere(this.f55654h);
                ext2.setZipCost(this.f55653g);
                ext2.setDuration(this.f55651e);
                ext2.setInterrupt(this.f55652f);
                ext2.setFrom(this.f55656j + "");
                if (this.f55656j == 101) {
                    ext2.setPosition(this.f55657k + "");
                }
                ext2.setGameFlag(this.f55655i);
                p.this.f55583c.N(Event.gameDownload, this.f55649c, this.f55650d, ext2);
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class c3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55659a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f55660b;

        c3(String str, int i2) {
            this.f55659a = str;
            this.f55660b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.x(Event.clickFunGameMainBtn, Event.practice, this.f55659a, this.f55660b);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class c4 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55662a;

        c4(String str) {
            this.f55662a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.clickVsHallBtn;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55662a));
                statRequest.getExt().setUid(statRequest.getUid());
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55664a;

        d(String str) {
            this.f55664a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.VsSilentTransform;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55664a));
                statRequest.getExt().setUid(statRequest.getUid());
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class d0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Event f55666a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55667b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55668c;

        d0(Event event, String str, String str2) {
            this.f55666a = event;
            this.f55667b = str;
            this.f55668c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(this.f55666a.name());
                try {
                    statRequest.getData().setGameId(Long.parseLong(this.f55667b));
                } catch (Exception unused) {
                }
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55668c));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f55667b);
                p.this.f55583c.A(this.f55666a, statRequest);
            } catch (Exception unused2) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class d1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55670a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f55671b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f55672c;

        d1(String str, int i2, int i4) {
            this.f55670a = str;
            this.f55671b = i2;
            this.f55672c = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.E(Event.gameRecovery, this.f55670a, this.f55671b, this.f55672c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    public class d2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55674a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55675b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55676c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f55677d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f55678e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ long f55679f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ int f55680g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ long f55681h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ String f55682i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ int f55683j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ int f55684k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ int f55685l;

        d2(String str, String str2, String str3, String str4, String str5, long j4, int i2, long j5, String str6, int i4, int i5, int i6) {
            this.f55674a = str;
            this.f55675b = str2;
            this.f55676c = str3;
            this.f55677d = str4;
            this.f55678e = str5;
            this.f55679f = j4;
            this.f55680g = i2;
            this.f55681h = j5;
            this.f55682i = str6;
            this.f55683j = i4;
            this.f55684k = i5;
            this.f55685l = i6;
        }

        @Override // java.lang.Runnable
        public void run() {
            String string;
            StatRequest statRequest = new StatRequest();
            if (!TextUtils.isEmpty(this.f55674a)) {
                statRequest.getExt().setPage(this.f55674a);
            }
            if (TextUtils.isEmpty(this.f55675b)) {
                p.this.f55583c.M(Event.gameDownload, this.f55676c, this.f55677d, this.f55679f, this.f55680g, this.f55678e, this.f55682i, this.f55681h, this.f55684k, this.f55685l, this.f55683j);
                return;
            }
            statRequest.setEvent(Event.gameDownload.name());
            statRequest.setTime(System.currentTimeMillis());
            statRequest.getData().setGameId(Long.parseLong(this.f55676c));
            statRequest.getData().setWhere(this.f55677d);
            statRequest.setUid(Integer.parseInt(this.f55678e));
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setKeyWord(this.f55677d);
            statRequest.getExt().setDuration(this.f55679f);
            statRequest.getExt().setInterrupt(this.f55680g);
            statRequest.getExt().setZipCost(this.f55681h);
            statRequest.getExt().setArticleId(this.f55682i);
            statRequest.getExt().setGameFlag(this.f55683j);
            try {
                if (!TextUtils.isEmpty(this.f55675b)) {
                    JSONObject jSONObject = new JSONObject(this.f55675b);
                    String string2 = jSONObject.getString("from");
                    String string3 = jSONObject.getString("position");
                    jSONObject.getString("location");
                    statRequest.getExt().setFrom(string2);
                    statRequest.getExt().setPosition(string3);
                    if (jSONObject.has(DownloadMethodPromptDialog_.G) && (string = jSONObject.getString(DownloadMethodPromptDialog_.G)) != null) {
                        statRequest.getExt().setFrom(string2);
                        statRequest.getExt().setPosition(string);
                        if (jSONObject.has("recPosition")) {
                            statRequest.getExt().setRecPosition(jSONObject.getString("recPosition"));
                        }
                        if (jSONObject.has("reMarks")) {
                            statRequest.getExt().setReMarks(jSONObject.getString("reMarks"));
                        }
                        if (jSONObject.has("nodeId")) {
                            statRequest.getExt().setNodeId(jSONObject.getString("nodeId"));
                        }
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            p.this.f55583c.A(Event.gameDownload, statRequest);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class d3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55687a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f55688b;

        d3(String str, int i2) {
            this.f55687a = str;
            this.f55688b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.x(Event.clickGameMainBtn, Event.welcomeGameMain, this.f55687a, this.f55688b);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class d4 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55690a;

        d4(String str) {
            this.f55690a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.visitVsRoomPage;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55690a));
                statRequest.getExt().setUid(statRequest.getUid());
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55692a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55693b;

        e(String str, String str2) {
            this.f55692a = str;
            this.f55693b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.clickVsLocalBat;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55692a));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f55693b);
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    public class e0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Event f55695a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55696b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55697c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f55698d;

        e0(Event event, String str, String str2, String str3) {
            this.f55695a = event;
            this.f55696b = str;
            this.f55697c = str2;
            this.f55698d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(this.f55695a.name());
                try {
                    statRequest.getData().setGameId(Long.parseLong(this.f55696b));
                } catch (Exception unused) {
                }
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55697c));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f55696b);
                statRequest.getExt().setNodeId(this.f55698d);
                p.this.f55583c.A(this.f55695a, statRequest);
            } catch (Exception unused2) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class e1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55700a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55701b;

        e1(String str, String str2) {
            this.f55700a = str;
            this.f55701b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.I(Event.inviteBattleAutoJoinSuccess, this.f55700a, this.f55701b);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class e2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55703a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55704b;

        e2(String str, String str2) {
            this.f55703a = str;
            this.f55704b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.I(Event.gameList, this.f55703a, this.f55704b);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class e3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55706a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55707b;

        e3(String str, String str2) {
            this.f55706a = str;
            this.f55707b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Ext ext = new Ext();
            ext.setArticleId(this.f55706a);
            p.this.f55583c.z(Event.articleClickDownload, ext, this.f55707b);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class e4 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55709a;

        e4(String str) {
            this.f55709a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.visitVsMainPage;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55709a));
                statRequest.getExt().setUid(statRequest.getUid());
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55711a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55712b;

        f(String str, String str2) {
            this.f55711a = str;
            this.f55712b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.clickVsNetBattleMatch;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55711a));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f55712b);
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    public class f0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Event f55714a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55715b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55716c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f55717d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f55718e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ String f55719f;

        f0(Event event, String str, String str2, String str3, int i2, String str4) {
            this.f55714a = event;
            this.f55715b = str;
            this.f55716c = str2;
            this.f55717d = str3;
            this.f55718e = i2;
            this.f55719f = str4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(this.f55714a.name());
                try {
                    statRequest.getData().setGameId(Long.parseLong(this.f55715b));
                } catch (Exception unused) {
                }
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55716c));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f55715b);
                statRequest.getExt().setPosition(this.f55717d);
                statRequest.getExt().setGameFlag(this.f55718e);
                statRequest.getExt().setFrom(this.f55719f);
                p.this.f55583c.A(this.f55714a, statRequest);
            } catch (Exception unused2) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class f1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55721a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55722b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f55723c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f55724d;

        f1(String str, String str2, int i2, String str3) {
            this.f55721a = str;
            this.f55722b = str2;
            this.f55723c = i2;
            this.f55724d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.K(Event.joinLocalNetBattleRoomSuccess, this.f55721a, this.f55722b, this.f55723c, this.f55724d);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class f2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55726a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55727b;

        f2(String str, String str2) {
            this.f55726a = str;
            this.f55727b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.I(Event.appPageVisit, this.f55726a, this.f55727b);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class f3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55729a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f55730b;

        f3(String str, int i2) {
            this.f55729a = str;
            this.f55730b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.x(Event.clickFunGameMainBtn, Event.welcomeGameMain, this.f55729a, this.f55730b);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class f4 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f55732a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55733b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f55734c;

        f4(int i2, String str, int i4) {
            this.f55732a = i2;
            this.f55733b = str;
            this.f55734c = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                int i2 = this.f55732a;
                if (i2 == 0) {
                    p.this.f55583c.x(Event.VsGameStart, Event.VsSingle, this.f55733b, this.f55734c);
                } else if (i2 == 1) {
                    p.this.f55583c.x(Event.VsGameStart, Event.VsHall, this.f55733b, this.f55734c);
                } else if (i2 == 2) {
                    p.this.f55583c.x(Event.VsGameStart, Event.VsLocal, this.f55733b, this.f55734c);
                }
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55736a;

        g(String str) {
            this.f55736a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.clickVslLocalCreateRoom;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55736a));
                statRequest.getExt().setUid(statRequest.getUid());
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class g0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55738a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55739b;

        g0(String str, String str2) {
            this.f55738a = str;
            this.f55739b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.I(Event.clickLocalNetBattleStartBtn, this.f55738a, this.f55739b);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class g1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55741a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55742b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f55743c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f55744d;

        g1(String str, String str2, int i2, String str3) {
            this.f55741a = str;
            this.f55742b = str2;
            this.f55743c = i2;
            this.f55744d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.K(Event.clickLocalNetBattleJoinRoomBtn, this.f55741a, this.f55742b, this.f55743c, this.f55744d);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class g2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StatJsonRawData f55746a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55747b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55748c;

        g2(StatJsonRawData statJsonRawData, String str, String str2) {
            this.f55746a = statJsonRawData;
            this.f55747b = str;
            this.f55748c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f55746a.setGameId(Long.parseLong(this.f55747b));
                this.f55746a.setUid(Integer.parseInt(this.f55748c));
                p.this.f55583c.I(Event.netBattleMatchEfficiency, JsonMapper.e().toJson(this.f55746a), this.f55748c);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class g3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f55750a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55751b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f55752c;

        g3(int i2, String str, int i4) {
            this.f55750a = i2;
            this.f55751b = str;
            this.f55752c = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.w(Event.clickGameMainBtn, Event.ad, this.f55750a, this.f55751b, this.f55752c);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class g4 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55754a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55755b;

        g4(String str, String str2) {
            this.f55754a = str;
            this.f55755b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.clickVsForumBtn;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55754a));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f55755b);
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55757a;

        h(String str) {
            this.f55757a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.clickVsJoinRoom;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55757a));
                statRequest.getExt().setUid(statRequest.getUid());
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    public class h0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Event f55759a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55760b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55761c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f55762d;

        h0(Event event, String str, String str2, String str3) {
            this.f55759a = event;
            this.f55760b = str;
            this.f55761c = str2;
            this.f55762d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(this.f55759a.name());
                statRequest.getExt().setReMarks(this.f55760b);
                statRequest.getExt().setPlugId(this.f55761c);
                statRequest.getExt().setPlugVersion(this.f55762d);
                p.this.f55583c.A(this.f55759a, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class h1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55764a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55765b;

        h1(String str, String str2) {
            this.f55764a = str;
            this.f55765b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.I(Event.clickLocalNetBattleRoomStartBtn, this.f55764a, this.f55765b);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class h2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55767a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55768b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55769c;

        h2(String str, String str2, String str3) {
            this.f55767a = str;
            this.f55768b = str2;
            this.f55769c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.O(Event.plugEfficiency, this.f55767a, this.f55768b, this.f55769c);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class h3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f55771a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55772b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f55773c;

        h3(int i2, String str, int i4) {
            this.f55771a = i2;
            this.f55772b = str;
            this.f55773c = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                switch (this.f55771a) {
                    case 1:
                        p.this.f55583c.x(Event.pspMemberADDialog, Event.pspADOneKey, this.f55772b, this.f55773c);
                        break;
                    case 2:
                        p.this.f55583c.x(Event.pspMemberADDialog, Event.pspADCheat, this.f55772b, this.f55773c);
                        break;
                    case 3:
                        p.this.f55583c.x(Event.pspMemberADDialog, Event.pspADGArchiving, this.f55772b, this.f55773c);
                        break;
                    case 4:
                        p.this.f55583c.x(Event.pspMemberADDialog, Event.pspADSelLevel, this.f55772b, this.f55773c);
                        break;
                    case 5:
                        p.this.f55583c.x(Event.pspMemberADDialog, Event.pspADBattle, this.f55772b, this.f55773c);
                        break;
                    case 6:
                        p.this.f55583c.x(Event.pspMemberADDialog, Event.pspADOpenInstant, this.f55772b, this.f55773c);
                        break;
                }
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class h4 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55775a;

        h4(String str) {
            this.f55775a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.clickVsAdvBtn;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55775a));
                statRequest.getExt().setUid(statRequest.getUid());
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55777a;

        i(String str) {
            this.f55777a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.f2fRequestScanQrcode;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55777a));
                statRequest.getExt().setUid(statRequest.getUid());
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class i0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55779a;

        i0(String str) {
            this.f55779a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.onMainPageShow;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55779a));
                statRequest.getExt().setUid(statRequest.getUid());
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    public class i1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55781a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55782b;

        i1(String str, String str2) {
            this.f55781a = str;
            this.f55782b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.I(Event.joyStickConfigPost, JsonMapper.f().toJson(this.f55781a), this.f55782b);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class i2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55784a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55785b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f55786c;

        i2(String str, String str2, int i2) {
            this.f55784a = str;
            this.f55785b = str2;
            this.f55786c = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.i0(Event.unzipFailed, this.f55784a, this.f55785b, this.f55786c);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class i3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f55788a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55789b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f55790c;

        i3(int i2, String str, int i4) {
            this.f55788a = i2;
            this.f55789b = str;
            this.f55790c = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.w(Event.clickFunGameMainBtn, Event.ad, this.f55788a, this.f55789b, this.f55790c);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class i4 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55792a;

        i4(String str) {
            this.f55792a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.clickVsCreateRoom;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55792a));
                statRequest.getExt().setUid(statRequest.getUid());
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55794a;

        j(String str) {
            this.f55794a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.f2fConnectQrcodeSuccess;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55794a));
                statRequest.getExt().setUid(statRequest.getUid());
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    public class j0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Event f55796a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ext f55797b;

        j0(Event event, Ext ext) {
            this.f55796a = event;
            this.f55797b = ext;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.R(this.f55796a.name(), this.f55797b);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    public class j1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55799a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55800b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55801c;

        j1(String str, String str2, String str3) {
            this.f55799a = str;
            this.f55800b = str2;
            this.f55801c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.startDownloadPlug.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f55799a));
            } catch (Exception unused) {
            }
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getData().setPlugId(Integer.parseInt(this.f55800b));
            Ext ext = statRequest.getExt();
            ext.setPlugVersion(this.f55801c + "_" + this.f55800b);
            statRequest.getData().setUid(this.f55799a);
            p.this.f55583c.A(Event.startDownloadPlug, statRequest);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    public class j2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55803a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55804b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55805c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f55806d;

        j2(String str, String str2, String str3, String str4) {
            this.f55803a = str;
            this.f55804b = str2;
            this.f55805c = str3;
            this.f55806d = str4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.H(Event.pluginPlayTime, this.f55803a, Long.parseLong(this.f55804b), this.f55805c, this.f55806d);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class j3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f55808a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55809b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f55810c;

        j3(int i2, String str, int i4) {
            this.f55808a = i2;
            this.f55809b = str;
            this.f55810c = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.w(Event.clickGameMainBtn, Event.post, this.f55808a, this.f55809b, this.f55810c);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class j4 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55812a;

        j4(String str) {
            this.f55812a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.clickVsQuickJoin;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55812a));
                statRequest.getExt().setUid(statRequest.getUid());
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55814a;

        k(String str) {
            this.f55814a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.I(Event.startApp, "", this.f55814a);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class k0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Event f55816a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f55817b;

        k0(Event event, int i2) {
            this.f55816a = event;
            this.f55817b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(this.f55816a.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(this.f55817b);
                statRequest.getExt().setUid(statRequest.getUid());
                p.this.f55583c.A(this.f55816a, statRequest);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    public class k1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55819a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55820b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55821c;

        k1(String str, String str2, String str3) {
            this.f55819a = str;
            this.f55820b = str2;
            this.f55821c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.downloadPlugCompleted.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f55819a));
            } catch (Exception unused) {
            }
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getData().setPlugId(Integer.parseInt(this.f55820b));
            Ext ext = statRequest.getExt();
            ext.setPlugVersion(this.f55821c + "_" + this.f55820b);
            statRequest.getData().setUid(this.f55819a);
            p.this.f55583c.A(Event.downloadPlugCompleted, statRequest);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class k2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55823a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55824b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55825c;

        k2(String str, String str2, String str3) {
            this.f55823a = str;
            this.f55824b = str2;
            this.f55825c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.O(Event.appPageClick, this.f55823a, this.f55824b, this.f55825c);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class k3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55827a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55828b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55829c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f55830d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f55831e;

        k3(String str, String str2, String str3, String str4, String str5) {
            this.f55827a = str;
            this.f55828b = str2;
            this.f55829c = str3;
            this.f55830d = str4;
            this.f55831e = str5;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.Q(Event.visitAppInternalPage, this.f55827a, this.f55828b, this.f55829c, this.f55830d, this.f55831e);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class k4 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55833a;

        k4(String str) {
            this.f55833a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.VsCreateWaitOver;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55833a));
                statRequest.getExt().setUid(statRequest.getUid());
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55835a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55836b;

        l(String str, String str2) {
            this.f55835a = str;
            this.f55836b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.f2fRequestTransferGame;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55835a));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f55836b);
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class l0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Event f55838a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ext f55839b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55840c;

        l0(Event event, Ext ext, String str) {
            this.f55838a = event;
            this.f55839b = ext;
            this.f55840c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.d0(this.f55838a.name(), this.f55839b, this.f55840c);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class l1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55842a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55843b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55844c;

        l1(String str, String str2, String str3) {
            this.f55842a = str;
            this.f55843b = str2;
            this.f55844c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.installPlugCompleted.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f55842a));
            } catch (Exception unused) {
            }
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getData().setPlugId(Integer.parseInt(this.f55843b));
            Ext ext = statRequest.getExt();
            ext.setPlugVersion(this.f55844c + "_" + this.f55843b);
            statRequest.getData().setUid(this.f55842a);
            p.this.f55583c.A(Event.installPlugCompleted, statRequest);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class l2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.e f55846a;

        l2(com.papa.sim.statistic.e eVar) {
            this.f55846a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.papa.sim.statistic.o oVar = p.this.f55583c;
                String name = Event.clickShopHomeEvent.name();
                oVar.W(name, this.f55846a.e() + "", this.f55846a.b(), this.f55846a.a(), this.f55846a.d(), this.f55846a.c());
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    public class l3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.pref.a f55848a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55849b;

        l3(com.papa.sim.statistic.pref.a aVar, String str) {
            this.f55848a = aVar;
            this.f55849b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.I(Event.appUseTime, JsonMapper.e().toJson(this.f55848a), this.f55849b);
                com.papa.sim.statistic.pref.b.j(p.this.f55582b).E(null);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class l4 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55851a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55852b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55853c;

        l4(String str, String str2, String str3) {
            this.f55851a = str;
            this.f55852b = str2;
            this.f55853c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.T(this.f55851a, this.f55852b, this.f55853c);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55855a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55856b;

        m(String str, String str2) {
            this.f55855a = str;
            this.f55856b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.f2fTransferGameDone;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55855a));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f55856b);
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class m0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Event f55858a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55859b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55860c;

        m0(Event event, String str, String str2) {
            this.f55858a = event;
            this.f55859b = str;
            this.f55860c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.e0(this.f55858a.name(), this.f55859b, this.f55860c);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class m1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55862a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55863b;

        m1(String str, String str2) {
            this.f55862a = str;
            this.f55863b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.I(Event.gameRemove, this.f55862a, this.f55863b);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class m2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f55865a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.e f55866b;

        m2(boolean z3, com.papa.sim.statistic.e eVar) {
            this.f55865a = z3;
            this.f55866b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.f55865a) {
                    com.papa.sim.statistic.o oVar = p.this.f55583c;
                    String name = Event.clickButtonEvent.name();
                    oVar.W(name, this.f55866b.e() + "", this.f55866b.b(), this.f55866b.a(), this.f55866b.d(), this.f55866b.c());
                } else {
                    com.papa.sim.statistic.o oVar2 = p.this.f55583c;
                    String name2 = Event.requestEvent.name();
                    oVar2.W(name2, this.f55866b.e() + "", this.f55866b.b(), this.f55866b.a(), this.f55866b.d(), this.f55866b.c());
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    public class m3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55868a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55869b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f55870c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f55871d;

        m3(String str, String str2, int i2, String str3) {
            this.f55868a = str;
            this.f55869b = str2;
            this.f55870c = i2;
            this.f55871d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.K(Event.gameStart, this.f55868a, this.f55869b, this.f55870c, this.f55871d);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55873a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55874b;

        n(String str, String str2) {
            this.f55873a = str;
            this.f55874b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.f2fInterruptTransferGame;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55873a));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f55874b);
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class n0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Event f55876a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ext f55877b;

        n0(Event event, Ext ext) {
            this.f55876a = event;
            this.f55877b = ext;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.f0(this.f55876a.name(), this.f55877b);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class n1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55879a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55880b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f55881c;

        n1(String str, String str2, int i2) {
            this.f55879a = str;
            this.f55880b = str2;
            this.f55881c = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.J(Event.visitGamePage, this.f55879a, this.f55880b, this.f55881c);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class n2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55883a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55884b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55885c;

        n2(String str, String str2, String str3) {
            this.f55883a = str;
            this.f55884b = str2;
            this.f55885c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.O(Event.appPageDownload, this.f55883a, this.f55884b, this.f55885c);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    public class n3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55887a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f55888b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55889c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f55890d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f55891e;

        n3(String str, boolean z3, String str2, String str3, int i2) {
            this.f55887a = str;
            this.f55888b = z3;
            this.f55889c = str2;
            this.f55890d = str3;
            this.f55891e = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatDataCenterReq m4 = p.this.m(Event.joystickSetting);
                m4.setUid(this.f55887a);
                m4.setIs_visitors(this.f55888b ? 1 : 0);
                m4.setJoystick_name(this.f55889c);
                m4.setJoystick_mac(this.f55890d);
                m4.setPapa_joy_type(this.f55891e);
                p.this.f55583c.Z(m4);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55893a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55894b;

        o(String str, String str2) {
            this.f55893a = str;
            this.f55894b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.visitAppInternalPage;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55893a));
                statRequest.getExt().setModule("forum");
                statRequest.getExt().setPage("index");
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setPosition(this.f55894b);
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class o0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ext f55896a;

        o0(Ext ext) {
            this.f55896a = ext;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.g0(Event.opHomePageButton.name(), this.f55896a);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    public class o1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55898a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55899b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55900c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f55901d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f55902e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ String f55903f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ String f55904g;

        o1(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
            this.f55898a = str;
            this.f55899b = str2;
            this.f55900c = str3;
            this.f55901d = str4;
            this.f55902e = str5;
            this.f55903f = str6;
            this.f55904g = str7;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            Ext ext = new Ext();
            statRequest.setExt(ext);
            statRequest.setEvent(Event.visitGamePage.name());
            statRequest.setTime(System.currentTimeMillis());
            String str = this.f55898a;
            if (str != null && !str.equals("")) {
                try {
                    statRequest.setUid(Integer.parseInt(this.f55898a));
                    statRequest.getExt().setUid(Integer.parseInt(this.f55898a));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            if (String.valueOf(this.f55899b).startsWith("20")) {
                ext.setPage(ExtFrom.home.name());
            }
            ext.setGameId(this.f55900c);
            ext.setFrom(this.f55899b);
            ext.setPosition(this.f55901d);
            ext.setReMarks(this.f55902e);
            ext.setRecPosition(this.f55902e);
            ext.setNodeId(this.f55903f);
            ext.setReMarks1(this.f55904g);
            Data data = new Data();
            data.setLocation(this.f55902e);
            statRequest.setData(data);
            try {
                if (!TextUtils.isEmpty(this.f55900c)) {
                    statRequest.getData().setGameId(Long.parseLong(this.f55900c));
                }
            } catch (Exception e5) {
                e5.printStackTrace();
            }
            p.this.f55583c.A(Event.visitGamePage, statRequest);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class o2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55906a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f55907b;

        o2(String str, int i2) {
            this.f55906a = str;
            this.f55907b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.x(Event.clickGameMainBtn, Event.standalone, this.f55906a, this.f55907b);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class o3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55909a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f55910b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55911c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f55912d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f55913e;

        o3(String str, boolean z3, String str2, String str3, int i2) {
            this.f55909a = str;
            this.f55910b = z3;
            this.f55911c = str2;
            this.f55912d = str3;
            this.f55913e = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatDataCenterReq m4 = p.this.m(Event.joystickJoin);
                m4.setUid(this.f55909a);
                m4.setIs_visitors(this.f55910b ? 1 : 0);
                m4.setJoystick_name(this.f55911c);
                m4.setJoystick_mac(this.f55912d);
                m4.setPapa_joy_type(this.f55913e);
                p.this.f55583c.Z(m4);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* renamed from: com.papa.sim.statistic.p$p  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class RunnableC0278p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55915a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55916b;

        RunnableC0278p(String str, String str2) {
            this.f55915a = str;
            this.f55916b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.visitAppInternalPage;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55915a));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setModule("forum");
                Ext ext = statRequest.getExt();
                ext.setPage("fid" + this.f55916b);
                statRequest.getExt().setPosition("banner1");
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class p0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Event f55918a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ext f55919b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55920c;

        p0(Event event, Ext ext, String str) {
            this.f55918a = event;
            this.f55919b = ext;
            this.f55920c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.S(this.f55918a.name(), this.f55919b, this.f55920c);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    public class p1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55922a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55923b;

        p1(String str, String str2) {
            this.f55922a = str;
            this.f55923b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.I(Event.startLocalNetBattleSuccess, this.f55922a, this.f55923b);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class p2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55925a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f55926b;

        p2(String str, int i2) {
            this.f55925a = str;
            this.f55926b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.x(Event.clickFunGameMainBtn, Event.standalone, this.f55925a, this.f55926b);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class p3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55928a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55929b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f55930c;

        p3(String str, String str2, int i2) {
            this.f55928a = str;
            this.f55929b = str2;
            this.f55930c = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.i0(Event.gameUnzip, this.f55928a, this.f55929b, this.f55930c);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55932a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55933b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55934c;

        q(String str, String str2, String str3) {
            this.f55932a = str;
            this.f55933b = str2;
            this.f55934c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(Event.visitAppInternalPage.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55932a));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setModule("forum");
                Ext ext = statRequest.getExt();
                ext.setPage("game" + this.f55933b);
                statRequest.getExt().setGameId(this.f55934c);
                Ext ext2 = statRequest.getExt();
                ext2.setPosition("gamelist" + this.f55934c);
                try {
                    statRequest.getData().setGameId(Long.parseLong(this.f55934c));
                } catch (Exception unused) {
                }
                p.this.f55583c.A(Event.visitAppInternalPage, statRequest);
            } catch (Exception unused2) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class q0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Event f55936a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f55937b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f55938c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f55939d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f55940e;

        q0(Event event, int i2, int i4, String str, int i5) {
            this.f55936a = event;
            this.f55937b = i2;
            this.f55938c = i4;
            this.f55939d = str;
            this.f55940e = i5;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(this.f55936a.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(this.f55937b);
                if (this.f55938c != 0) {
                    statRequest.getData().setPageVersion(this.f55938c);
                }
                statRequest.getData().setUid(String.valueOf(this.f55937b));
                statRequest.getData().setGameId(Long.parseLong(this.f55939d));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f55939d);
                if (this.f55940e >= 0) {
                    statRequest.getExt().setFrom(String.valueOf(this.f55940e));
                }
                p.this.f55583c.A(this.f55936a, statRequest);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class q1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55942a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55943b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55944c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ long f55945d;

        q1(String str, String str2, String str3, long j4) {
            this.f55942a = str;
            this.f55943b = str2;
            this.f55944c = str3;
            this.f55945d = j4;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.startLocalNetBattleSuccessEmu.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f55942a));
                statRequest.getData().setGameId(Long.parseLong(this.f55943b));
            } catch (Exception unused) {
            }
            statRequest.getExt().setUid2(this.f55944c);
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setPlugVersion(p.f55577h);
            statRequest.getExt().setDuration(this.f55945d);
            statRequest.getData().setUid(this.f55942a);
            p.this.f55583c.A(Event.startLocalNetBattleSuccessEmu, statRequest);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class q2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55947a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f55948b;

        q2(String str, int i2) {
            this.f55947a = str;
            this.f55948b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.x(Event.clickGameMainBtn, Event.localBattle, this.f55947a, this.f55948b);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    public class q3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55950a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f55951b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55952c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f55953d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f55954e;

        q3(String str, boolean z3, String str2, String str3, int i2) {
            this.f55950a = str;
            this.f55951b = z3;
            this.f55952c = str2;
            this.f55953d = str3;
            this.f55954e = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatDataCenterReq m4 = p.this.m(Event.joystickConfigChanged);
                m4.setUid(this.f55950a);
                m4.setIs_visitors(this.f55951b ? 1 : 0);
                m4.setJoystick_name(this.f55952c);
                m4.setJoystick_mac(this.f55953d);
                m4.setPapa_joy_type(this.f55954e);
                p.this.f55583c.Z(m4);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55956a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55957b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55958c;

        r(String str, String str2, String str3) {
            this.f55956a = str;
            this.f55957b = str2;
            this.f55958c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(Event.visitAppInternalPage.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55956a));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setModule("forum");
                Ext ext = statRequest.getExt();
                ext.setPage("game" + this.f55957b);
                statRequest.getExt().setGameId(this.f55958c);
                Ext ext2 = statRequest.getExt();
                ext2.setPosition("gamebtn" + this.f55958c);
                try {
                    statRequest.getData().setGameId(Long.parseLong(this.f55958c));
                } catch (Exception unused) {
                }
                p.this.f55583c.A(Event.visitAppInternalPage, statRequest);
            } catch (Exception unused2) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class r0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55960a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55961b;

        r0(String str, String str2) {
            this.f55960a = str;
            this.f55961b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.I(Event.createLocalNetBattleRoomSuccess, this.f55960a, this.f55961b);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class r1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55963a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55964b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55965c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ long f55966d;

        r1(String str, String str2, String str3, long j4) {
            this.f55963a = str;
            this.f55964b = str2;
            this.f55965c = str3;
            this.f55966d = j4;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.endLocalNetBattleSuccessEmu.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f55963a));
                statRequest.getData().setGameId(Long.parseLong(this.f55964b));
            } catch (Exception unused) {
            }
            statRequest.getExt().setUid2(this.f55965c);
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setPlugVersion(p.f55577h);
            statRequest.getExt().setDuration(this.f55966d);
            statRequest.getData().setUid(this.f55963a);
            p.this.f55583c.A(Event.endLocalNetBattleSuccessEmu, statRequest);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class r2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55968a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f55969b;

        r2(String str, int i2) {
            this.f55968a = str;
            this.f55969b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.x(Event.clickFunGameMainBtn, Event.localBattle, this.f55968a, this.f55969b);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class r3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55971a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f55972b;

        r3(String str, boolean z3) {
            this.f55971a = str;
            this.f55972b = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatDataCenterReq m4 = p.this.m(Event.click_vs_hall);
                m4.setUid(this.f55971a);
                m4.setIs_visitors(this.f55972b ? 1 : 0);
                p.this.f55583c.Z(m4);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55974a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55975b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55976c;

        s(String str, String str2, String str3) {
            this.f55974a = str;
            this.f55975b = str2;
            this.f55976c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(Event.arenaGameList.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f55974a));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setFrom(this.f55975b);
                statRequest.getExt().setGameId(this.f55976c);
                try {
                    statRequest.getData().setGameId(Long.parseLong(this.f55976c));
                } catch (Exception unused) {
                }
                p.this.f55583c.A(Event.arenaGameList, statRequest);
            } catch (Exception unused2) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class s0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Event f55978a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f55979b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f55980c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f55981d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f55982e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ int f55983f;

        s0(Event event, int i2, int i4, String str, String str2, int i5) {
            this.f55978a = event;
            this.f55979b = i2;
            this.f55980c = i4;
            this.f55981d = str;
            this.f55982e = str2;
            this.f55983f = i5;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(this.f55978a.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(this.f55979b);
                if (this.f55980c != 0) {
                    statRequest.getData().setPageVersion(this.f55980c);
                }
                statRequest.getData().setUid(String.valueOf(this.f55979b));
                statRequest.getData().setGameId(Long.parseLong(this.f55981d));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f55982e);
                statRequest.getExt().setFrom(String.valueOf(this.f55983f));
                p.this.f55583c.A(this.f55978a, statRequest);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class s1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55985a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55986b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f55987c;

        s1(String str, String str2, int i2) {
            this.f55985a = str;
            this.f55986b = str2;
            this.f55987c = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.i0(Event.installAndroidCompleted, this.f55985a, this.f55986b, this.f55987c);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class s2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55989a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f55990b;

        s2(String str, int i2) {
            this.f55989a = str;
            this.f55990b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.x(Event.clickGameMainBtn, Event.matchBattle, this.f55989a, this.f55990b);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class s3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55992a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f55993b;

        s3(String str, boolean z3) {
            this.f55992a = str;
            this.f55993b = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatDataCenterReq m4 = p.this.m(Event.click_vs_create_room);
                m4.setUid(this.f55992a);
                m4.setIs_visitors(this.f55993b ? 1 : 0);
                p.this.f55583c.Z(m4);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class t implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55995a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55996b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55997c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f55998d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f55999e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ String f56000f;

        t(String str, String str2, String str3, String str4, String str5, String str6) {
            this.f55995a = str;
            this.f55996b = str2;
            this.f55997c = str3;
            this.f55998d = str4;
            this.f55999e = str5;
            this.f56000f = str6;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.W(this.f55995a, this.f55996b, this.f55997c, this.f55998d, this.f55999e, this.f56000f);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class t0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Data f56002a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Event f56003b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f56004c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Ext f56005d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Event f56006e;

        t0(Data data, Event event, String str, Ext ext, Event event2) {
            this.f56002a = data;
            this.f56003b = event;
            this.f56004c = str;
            this.f56005d = ext;
            this.f56006e = event2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                if (this.f56002a != null) {
                    statRequest.getData().setGameId(this.f56002a.getGameId());
                    statRequest.getData().setWhere(this.f56003b.name());
                }
                if (!"".equals(this.f56004c)) {
                    statRequest.setUid(Integer.parseInt(this.f56004c));
                }
                if (this.f56005d != null) {
                    statRequest.getExt().setFromTabId(this.f56005d.getFromTabId());
                    statRequest.getExt().setArticleId(this.f56005d.getArticleId());
                    statRequest.getExt().setFrom(this.f56005d.getFrom());
                    statRequest.getExt().setLiveTime(this.f56005d.getLiveTime());
                }
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setRequest(true);
                statRequest.setEvent(this.f56006e.name());
                p.this.f55583c.h0(statRequest);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class t1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56008a;

        t1(String str) {
            this.f56008a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.I(Event.setpapaerror, this.f56008a, null);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class t2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56010a;

        t2(String str) {
            this.f56010a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.I(Event.visitBattlePage, "", this.f56010a);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class t3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f56012a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56013b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f56014c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f56015d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ boolean f56016e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ byte f56017f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ byte f56018g;

        t3(int i2, String str, String str2, String str3, boolean z3, byte b4, byte b5) {
            this.f56012a = i2;
            this.f56013b = str;
            this.f56014c = str2;
            this.f56015d = str3;
            this.f56016e = z3;
            this.f56017f = b4;
            this.f56018g = b5;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatDataCenterReq m4 = p.this.m(Event.user_filters_refresh);
                m4.setPlug_id(this.f56012a);
                m4.setGame_type(this.f56013b);
                m4.setZone(this.f56014c);
                m4.setUid(this.f56015d);
                m4.setIs_visitors(this.f56016e ? 1 : 0);
                m4.setPapa_allow_spectators(this.f56017f);
                m4.setPapa_has_slot(this.f56018g);
                p.this.f55583c.Z(m4);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class u implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56020a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56021b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f56022c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f56023d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f56024e;

        u(String str, String str2, String str3, String str4, String str5) {
            this.f56020a = str;
            this.f56021b = str2;
            this.f56022c = str3;
            this.f56023d = str4;
            this.f56024e = str5;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.W(Event.requestEvent.name(), this.f56020a, this.f56021b, this.f56022c, this.f56023d, this.f56024e);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class u0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Event f56026a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56027b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f56028c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f56029d;

        u0(Event event, String str, String str2, String str3) {
            this.f56026a = event;
            this.f56027b = str;
            this.f56028c = str2;
            this.f56029d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(this.f56026a.name());
                if (!TextUtils.isEmpty(this.f56027b)) {
                    statRequest.getData().setGameId(Long.parseLong(this.f56027b));
                }
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f56028c));
                statRequest.getExt().setChannel_id(Integer.parseInt(this.f56029d));
                statRequest.getExt().setUid(statRequest.getUid());
                p.this.f55583c.A(this.f56026a, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    public class u1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56031a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56032b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f56033c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ long f56034d;

        u1(String str, String str2, String str3, long j4) {
            this.f56031a = str;
            this.f56032b = str2;
            this.f56033c = str3;
            this.f56034d = j4;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.gameOut.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f56031a));
                statRequest.getData().setGameId(Long.parseLong(this.f56032b));
            } catch (Exception unused) {
            }
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setPlugVersion(this.f56033c);
            statRequest.getExt().setDuration(this.f56034d);
            statRequest.getData().setUid(this.f56031a);
            p.this.f55583c.A(Event.gameOut, statRequest);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class u2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56036a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f56037b;

        u2(String str, int i2) {
            this.f56036a = str;
            this.f56037b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.x(Event.clickFunGameMainBtn, Event.matchBattle, this.f56036a, this.f56037b);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class u3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56039a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f56040b;

        u3(String str, int i2) {
            this.f56039a = str;
            this.f56040b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.startShare;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f56039a));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setShareType(this.f56040b);
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    public class v implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f56042a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f56043b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f56044c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f56045d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f56046e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ int f56047f;

        v(int i2, int i4, String str, String str2, String str3, int i5) {
            this.f56042a = i2;
            this.f56043b = i4;
            this.f56044c = str;
            this.f56045d = str2;
            this.f56046e = str3;
            this.f56047f = i5;
        }

        @Override // java.lang.Runnable
        public void run() {
            String optString;
            StatRequest statRequest = new StatRequest();
            statRequest.getExt().setFrom(String.valueOf(this.f56042a));
            statRequest.getExt().setPosition(String.valueOf(this.f56043b));
            if (!TextUtils.isEmpty(this.f56044c)) {
                try {
                    if (!TextUtils.isEmpty(this.f56044c)) {
                        JSONObject jSONObject = new JSONObject(this.f56044c);
                        String optString2 = jSONObject.optString("from");
                        String optString3 = jSONObject.optString("position");
                        jSONObject.optString("location");
                        statRequest.getExt().setFrom(optString2);
                        statRequest.getExt().setPosition(optString3);
                        if (jSONObject.has(DownloadMethodPromptDialog_.G) && (optString = jSONObject.optString(DownloadMethodPromptDialog_.G)) != null) {
                            statRequest.getExt().setFrom(optString2);
                            statRequest.getExt().setPosition(optString);
                            if (jSONObject.has("recPosition")) {
                                statRequest.getExt().setRecPosition(jSONObject.optString("recPosition"));
                            }
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            p.this.f55583c.j0(Event.gameStart, this.f56045d, this.f56046e, this.f56047f, statRequest);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class v0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56049a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56050b;

        v0(String str, String str2) {
            this.f56049a = str;
            this.f56050b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.clickGameDetailModel.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f56049a));
            } catch (Exception unused) {
            }
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setPosition(this.f56050b);
            statRequest.getData().setUid(this.f56049a);
            p.this.f55583c.A(Event.clickGameDetailModel, statRequest);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class v1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56052a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56053b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f56054c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f56055d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f56056e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ String f56057f;

        v1(String str, String str2, int i2, String str3, int i4, String str4) {
            this.f56052a = str;
            this.f56053b = str2;
            this.f56054c = i2;
            this.f56055d = str3;
            this.f56056e = i4;
            this.f56057f = str4;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            try {
                statRequest.setUid(Integer.parseInt(this.f56052a));
            } catch (Exception unused) {
            }
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setKeyWord(this.f56053b);
            Ext ext = statRequest.getExt();
            ext.setFrom(this.f56054c + "");
            statRequest.getExt().setPosition(this.f56055d);
            statRequest.getExt().setGameFlag(this.f56056e);
            statRequest.getData().setUid(this.f56052a);
            try {
                statRequest.getData().setGameId(Long.parseLong(this.f56057f));
            } catch (Exception unused2) {
            }
            if (this.f56054c == 103) {
                statRequest.getData().setWhere(Where.search.name());
            }
            statRequest.setTime(System.currentTimeMillis());
            Event event = Event.gameRequest;
            statRequest.setEvent(event.name());
            p.this.f55583c.A(event, statRequest);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class v2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56059a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f56060b;

        v2(String str, int i2) {
            this.f56059a = str;
            this.f56060b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.x(Event.clickGameMainBtn, Event.inviteBattle, this.f56059a, this.f56060b);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class v3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56062a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56063b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f56064c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f56065d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f56066e;

        v3(String str, String str2, String str3, int i2, int i4) {
            this.f56062a = str;
            this.f56063b = str2;
            this.f56064c = str3;
            this.f56065d = i2;
            this.f56066e = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(Event.shareChannel.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f56062a));
                try {
                    statRequest.getData().setGameId(Long.parseLong(this.f56063b));
                } catch (Exception unused) {
                }
                statRequest.getExt().setGameId(this.f56063b);
                statRequest.getExt().setArticleId(this.f56064c);
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setShareMfr(this.f56065d);
                statRequest.getExt().setShareType(this.f56066e);
                p.this.f55583c.A(Event.shareChannel, statRequest);
            } catch (Exception unused2) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class w implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56068a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56069b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f56070c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f56071d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f56072e;

        w(String str, String str2, String str3, String str4, String str5) {
            this.f56068a = str;
            this.f56069b = str2;
            this.f56070c = str3;
            this.f56071d = str4;
            this.f56072e = str5;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.W(Event.clickButtonEvent.name(), this.f56068a, this.f56069b, this.f56070c, this.f56071d, this.f56072e);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class w0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56074a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56075b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f56076c;

        w0(String str, String str2, String str3) {
            this.f56074a = str;
            this.f56075b = str2;
            this.f56076c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.enterUserGameList.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f56074a));
            } catch (Exception unused) {
            }
            statRequest.getExt().setArticleId(this.f56075b);
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setPosition(this.f56076c);
            statRequest.getData().setUid(this.f56074a);
            p.this.f55583c.A(Event.enterUserGameList, statRequest);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class w1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56078a;

        w1(String str) {
            this.f56078a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.D(Event.submitPost, this.f56078a);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class w2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56080a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f56081b;

        w2(String str, int i2) {
            this.f56080a = str;
            this.f56081b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.x(Event.clickGameMainBtn, Event.login, this.f56080a, this.f56081b);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class w3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56083a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f56084b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f56085c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f56086d;

        w3(String str, int i2, int i4, int i5) {
            this.f56083a = str;
            this.f56084b = i2;
            this.f56085c = i4;
            this.f56086d = i5;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.shareResult;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f56083a));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setShareMfr(this.f56084b);
                statRequest.getExt().setShareType(this.f56085c);
                statRequest.getExt().setShareResult(this.f56086d);
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    public class x implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56088a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56089b;

        x(String str, String str2) {
            this.f56088a = str;
            this.f56089b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.U(this.f56088a, this.f56089b);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class x0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56091a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56092b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f56093c;

        x0(String str, String str2, String str3) {
            this.f56091a = str;
            this.f56092b = str2;
            this.f56093c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.clickSearchAdPosition.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f56091a));
            } catch (Exception unused) {
            }
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setPosition(this.f56092b);
            statRequest.getExt().setGameId(this.f56093c);
            statRequest.getData().setUid(this.f56091a);
            p.this.f55583c.A(Event.clickSearchAdPosition, statRequest);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class x1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56095a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56096b;

        x1(String str, String str2) {
            this.f56095a = str;
            this.f56096b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f55583c.I(Event.downloadStop, this.f56095a, this.f56096b);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class x2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56098a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f56099b;

        x2(String str, int i2) {
            this.f56098a = str;
            this.f56099b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.x(Event.clickGameMainBtn, Event.logout, this.f56098a, this.f56099b);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class x3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56101a;

        x3(String str) {
            this.f56101a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.f2fRequestCreateQrcode;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f56101a));
                statRequest.getExt().setUid(statRequest.getUid());
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class y implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56103a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56104b;

        y(String str, String str2) {
            this.f56103a = str;
            this.f56104b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.V(Event.findButtonEvent.name(), this.f56103a, this.f56104b);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class y0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56106a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56107b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f56108c;

        y0(String str, String str2, String str3) {
            this.f56106a = str;
            this.f56107b = str2;
            this.f56108c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.downloadFromSearchResult.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f56106a));
            } catch (Exception unused) {
            }
            statRequest.getExt().setGameId(this.f56107b);
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setPosition(this.f56108c);
            statRequest.getData().setUid(this.f56106a);
            p.this.f55583c.A(Event.downloadFromSearchResult, statRequest);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class y1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56110a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56111b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f56112c;

        y1(String str, String str2, String str3) {
            this.f56110a = str;
            this.f56111b = str2;
            this.f56112c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.netBattleMatchStart.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f56110a));
                statRequest.getData().setGameId(Long.parseLong(this.f56111b));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setPlugVersion(this.f56112c);
            statRequest.getData().setUid(this.f56110a);
            p.this.f55583c.A(Event.netBattleMatchStart, statRequest);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class y2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56114a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f56115b;

        y2(String str, int i2) {
            this.f56114a = str;
            this.f56115b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.x(Event.clickFunGameMainBtn, Event.logout, this.f56114a, this.f56115b);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class y3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56117a;

        y3(String str) {
            this.f56117a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.f2fCreateQrcodeSuccess;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f56117a));
                statRequest.getExt().setUid(statRequest.getUid());
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class z implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56119a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56120b;

        z(String str, String str2) {
            this.f56119a = str;
            this.f56120b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.arenaGameListBanner;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f56119a));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setPosition(this.f56120b);
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class z0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56122a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56123b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f56124c;

        z0(String str, String str2, String str3) {
            this.f56122a = str;
            this.f56123b = str2;
            this.f56124c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.clickDetailFromSearchResult.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f56122a));
            } catch (Exception unused) {
            }
            statRequest.getExt().setGameId(this.f56123b);
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setPosition(this.f56124c);
            statRequest.getData().setUid(this.f56122a);
            p.this.f55583c.A(Event.clickDetailFromSearchResult, statRequest);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class z1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56126a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56127b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ long f56128c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f56129d;

        z1(String str, String str2, long j4, String str3) {
            this.f56126a = str;
            this.f56127b = str2;
            this.f56128c = j4;
            this.f56129d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.netBattleMatchFinish.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f56126a));
                statRequest.getData().setGameId(Long.parseLong(this.f56127b));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            statRequest.getExt().setDuration(this.f56128c);
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setPlugVersion(this.f56129d);
            statRequest.getData().setUid(this.f56126a);
            p.this.f55583c.A(Event.netBattleMatchFinish, statRequest);
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class z2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56131a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f56132b;

        z2(String str, int i2) {
            this.f56131a = str;
            this.f56132b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p.this.f55583c.x(Event.clickGameMainBtn, Event.forum, this.f56131a, this.f56132b);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StatFactory.java */
    /* loaded from: classes4.dex */
    class z3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56134a;

        z3(String str) {
            this.f56134a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.liveResDownloaded;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f56134a));
                statRequest.getExt().setUid(statRequest.getUid());
                p.this.f55583c.A(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    private p(Context context) {
        this.f55582b = context;
        this.f55584d = com.papa.sim.statistic.db.b.o(context);
        this.f55583c = com.papa.sim.statistic.o.l(context);
    }

    private void A2(com.papa.sim.statistic.pref.a aVar, String str) {
        f55576g.execute(new l3(aVar, str));
    }

    public static p l(Context context) {
        if (f55579j == null) {
            f55579j = new p(context);
            DisplayMetrics displayMetrics = new DisplayMetrics();
            try {
                ((Activity) context).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                f55580k = displayMetrics.heightPixels + WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD + displayMetrics.widthPixels;
            } catch (Exception unused) {
            }
        }
        return f55579j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public StatDataCenterReq m(Event event) {
        StatDataCenterReq statDataCenterReq = new StatDataCenterReq();
        statDataCenterReq.setEvent(event.name());
        statDataCenterReq.setGame_time(System.currentTimeMillis() / 1000);
        statDataCenterReq.setDid(com.papa.sim.statistic.q.f(this.f55582b).b());
        statDataCenterReq.setAdv_id(com.papa.sim.statistic.k.a(this.f55582b));
        String str = Build.VERSION.RELEASE;
        statDataCenterReq.setOs(str);
        statDataCenterReq.setPhone(str);
        statDataCenterReq.setModel(Build.MODEL);
        statDataCenterReq.setMfr(Build.MANUFACTURER);
        statDataCenterReq.setRes(f55580k);
        statDataCenterReq.setIs_test(this.f55586f);
        statDataCenterReq.setApp_version(com.papa.sim.statistic.q.f(this.f55582b).o());
        return statDataCenterReq;
    }

    public void A(String str, String str2) {
        f55576g.execute(new e3(str, str2));
    }

    public void A0(String str, String str2, long j5, int i5, String str3, long j6, int i6, int i7, String str4, int i8, String str5) {
        f55576g.execute(new c2(str5, str4, str, str3, j5, i5, j6, str2, i8, i6, i7));
    }

    public void A1(String str, String str2, String str3) {
        f55576g.execute(new y1(str2, str, str3));
    }

    public void B(String str, String str2) {
        Ext ext = new Ext();
        ext.setArticleId(str);
        this.f55583c.z(Event.articleClickPraise, ext, str2);
    }

    public void B0(String str, String str2, long j5, int i5, String str3, String str4, long j6, int i6, int i7, String str5, int i8) {
        C0(str, str2, j5, i5, str3, str4, j6, i6, i7, str5, i8, null);
    }

    public void B1(String str, String str2) {
        this.f55583c.I(Event.netMatchBtnClick, str, str2);
    }

    public void B2(String str, String str2, String str3, long j5) {
        f55576g.execute(new q1(str2, str, str3, j5));
    }

    public void C(String str, String str2) {
        f55576g.execute(new a1(str, str2));
    }

    public void C0(String str, String str2, long j5, int i5, String str3, String str4, long j6, int i6, int i7, String str5, int i8, String str6) {
        f55576g.execute(new d2(str6, str5, str, str2, str3, j5, i5, j6, str4, i8, i6, i7));
    }

    public void C1(Ext ext) {
        f55576g.execute(new o0(ext));
    }

    public void C2(int i5, String str) {
        com.papa.sim.statistic.pref.a l5;
        StringBuilder sb = new StringBuilder();
        sb.append("method updateLiveStat() called.step=");
        sb.append(i5);
        if (i5 == 0) {
            com.papa.sim.statistic.pref.a l6 = com.papa.sim.statistic.pref.b.j(this.f55582b).l();
            if (l6 != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("liveStat=");
                sb2.append(l6.toString());
                if (l6.a() == 0) {
                    return;
                }
                A2(l6, str);
            } else {
                l6 = new com.papa.sim.statistic.pref.a();
            }
            l6.f((byte) 0);
            l6.g(System.currentTimeMillis());
            l6.e(0L);
            com.papa.sim.statistic.pref.b.j(this.f55582b).E(l6);
        } else if (i5 == 1) {
            com.papa.sim.statistic.pref.a l7 = com.papa.sim.statistic.pref.b.j(this.f55582b).l();
            if (l7 != null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("step=");
                sb3.append(i5);
                sb3.append(";liveStat=");
                sb3.append(l7.toString());
                l7.e(System.currentTimeMillis());
                com.papa.sim.statistic.pref.b.j(this.f55582b).E(l7);
                A2(l7, str);
            }
        } else if (i5 != 2 || (l5 = com.papa.sim.statistic.pref.b.j(this.f55582b).l()) == null) {
        } else {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("step=");
            sb4.append(i5);
            sb4.append(";liveStat=");
            sb4.append(l5.toString());
            if (System.currentTimeMillis() - l5.a() <= q.a.f73955b || l5.a() <= 0) {
                return;
            }
            A2(l5, str);
            com.papa.sim.statistic.pref.a aVar = new com.papa.sim.statistic.pref.a();
            aVar.g(System.currentTimeMillis());
            aVar.f((byte) 0);
            com.papa.sim.statistic.pref.b.j(this.f55582b).E(aVar);
        }
    }

    public void D(String str, String str2, String str3) {
        f55576g.execute(new z0(str3, str2, str));
    }

    public void D0(String str, String str2, long j5, int i5, String str3, int i6, int i7, int i8) {
        f55576g.execute(new a2(str, str2, j5, i5, str3, i6, i7, i8));
    }

    public void D1(String str) {
        this.f55583c.I(Event.newbieGuideLoad, "", str);
    }

    public void D2(String str, String str2, String str3, String str4, String str5) {
        f55576g.execute(new k3(str, str2, str3, str4, str5));
    }

    public void E(String str, String str2) {
        f55576g.execute(new v0(str2, str));
    }

    public void E0(String str, String str2, long j5, int i5, String str3, String str4, int i6, int i7, int i8) {
        f55576g.execute(new b2(str, str2, j5, i5, str3, str4, i6, i7, i8));
    }

    public void E1(String str) {
        this.f55583c.I(Event.newbieGuidePlay, "", str);
    }

    public void F(String str, String str2) {
        this.f55583c.I(Event.clickLocalNetBattleJoinRoomBtn, str, str2);
    }

    public void F0(String str, int i5) {
        f55576g.execute(new p2(str, i5));
    }

    public void F1(String str) {
        this.f55583c.I(Event.newbieGuidePlayGame, "", str);
    }

    public void G(String str, String str2, int i5, String str3) {
        f55576g.execute(new g1(str, str2, i5, str3));
    }

    public void G0(String str, String str2) {
        f55576g.execute(new e2(str, str2));
    }

    public void G1(String str) {
        f55576g.execute(new i0(str));
    }

    public void H(String str, String str2) {
        f55576g.execute(new h1(str, str2));
    }

    public void H0(String str, int i5, int i6) {
        f55576g.execute(new g3(i6, str, i5));
    }

    public void H1(String str) {
        f55576g.execute(new t1(str));
    }

    public void I(String str, String str2) {
        f55576g.execute(new g0(str, str2));
    }

    public void I0(String str, int i5) {
        f55576g.execute(new u2(str, i5));
    }

    public void I1(String str, String str2, String str3) {
        f55576g.execute(new h2(str, str2, str3));
    }

    public void J(String str, String str2, String str3) {
        f55576g.execute(new x0(str2, str, str3));
    }

    public void J0(String str, int i5) {
        f55576g.execute(new z2(str, i5));
    }

    public void J1(String str, String str2, String str3, String str4) {
        f55576g.execute(new j2(str, str2, str3, str4));
    }

    public void K(String str) {
        f55576g.execute(new h4(str));
    }

    public void K0(String str, int i5) {
        f55576g.execute(new v2(str, i5));
    }

    public void K1(Event event, Ext ext) {
        f55576g.execute(new j0(event, ext));
    }

    public void L(String str) {
        f55576g.execute(new b4(str));
    }

    public void L0(String str, int i5) {
        f55576g.execute(new q2(str, i5));
    }

    public void L1(Event event, int i5, String str, int i6, int i7) {
        f55576g.execute(new q0(event, i5, i7, str, i6));
    }

    public void M(String str) {
        f55576g.execute(new i4(str));
    }

    public void M0(String str, int i5) {
        f55576g.execute(new w2(str, i5));
    }

    public void M1(Event event, int i5) {
        f55576g.execute(new k0(event, i5));
    }

    public void N(String str, boolean z4) {
        f55576g.execute(new s3(str, z4));
    }

    public void N0(String str, int i5) {
        f55576g.execute(new x2(str, i5));
    }

    public void N1(String str, int i5, int i6) {
        f55576g.execute(new h3(i5, str, i6));
    }

    public void O(String str, String str2) {
        f55576g.execute(new g4(str, str2));
    }

    public void O0(String str, int i5) {
        f55576g.execute(new s2(str, i5));
    }

    public void O1(String str, int i5, int i6, String str2, String str3) {
        f55576g.execute(new v3(str, str2, str3, i6, i5));
    }

    public void P(String str, boolean z4) {
        f55576g.execute(new r3(str, z4));
    }

    public void P0(String str, int i5, int i6) {
        f55576g.execute(new j3(i6, str, i5));
    }

    public void P1(String str, int i5, int i6, int i7) {
        f55576g.execute(new w3(str, i6, i5, i7));
    }

    public void Q(String str) {
        f55576g.execute(new c4(str));
    }

    public void Q0(String str, int i5) {
        f55576g.execute(new b3(str, i5));
    }

    public void Q1(Event event, String str, String str2, String str3) {
        f55576g.execute(new h0(event, str3, str2, str));
    }

    public void R(String str) {
        f55576g.execute(new h(str));
    }

    public void R0(String str, int i5) {
        f55576g.execute(new o2(str, i5));
    }

    public void R1(String str) {
        f55576g.execute(new k(str));
    }

    public void S(String str, String str2) {
        f55576g.execute(new e(str, str2));
    }

    public void S0(String str, long j5, String str2) {
        this.f55583c.G(Event.gameOut, str, j5, str2);
    }

    public void S1(String str) {
        this.f55583c.I(Event.startApp2, "", str);
    }

    public void T(String str, String str2) {
        f55576g.execute(new f(str, str2));
    }

    public void T0(String str, long j5, String str2, String str3) {
        f55576g.execute(new u1(str2, str, str3, j5));
    }

    public void T1(String str, String str2) {
        this.f55583c.I(Event.startDownloadPlug, str, str2);
    }

    public void U(String str) {
        f55576g.execute(new j4(str));
    }

    public void U0(Event event, String str, String str2, String str3) {
        f55576g.execute(new e0(event, str2, str, str3));
    }

    public void U1(String str, String str2, String str3) {
        f55576g.execute(new j1(str3, str, str2));
    }

    public void V(String str) {
        f55576g.execute(new g(str));
    }

    public void V0(Event event, String str, String str2) {
        f55576g.execute(new d0(event, str2, str));
    }

    public void V1(String str, String str2) {
        f55576g.execute(new p1(str, str2));
    }

    public void W(Event event, Ext ext, String str) {
        f55576g.execute(new p0(event, ext, str));
    }

    public void W0(Event event, String str, String str2, String str3, int i5) {
        X0(event, str, str2, str3, i5, "");
    }

    public void W1(String str, int i5) {
        f55576g.execute(new u3(str, i5));
    }

    public void X(String str, String str2) {
        f55576g.execute(new r0(str, str2));
    }

    public void X0(Event event, String str, String str2, String str3, int i5, String str4) {
        f55576g.execute(new f0(event, str2, str, str3, i5, str4));
    }

    public void X1(String str) {
        f55576g.execute(new w1(str));
    }

    public void Y(String str, boolean z4, String str2, String str3, int i5) {
        f55576g.execute(new q3(str, z4, str2, str3, i5));
    }

    public void Y0(String str, int i5, int i6) {
        f55576g.execute(new d1(str, i5, i6));
    }

    public void Y1(String str, String str2, int i5) {
        f55576g.execute(new i2(str, str2, i5));
    }

    public void Z(String str, boolean z4, String str2, String str3, int i5) {
        f55576g.execute(new o3(str, z4, str2, str3, i5));
    }

    public void Z0(String str, String str2) {
        f55576g.execute(new m1(str, str2));
    }

    public void Z1(String str, String str2) {
        this.f55583c.I(Event.unzipIOFailed, str, str2);
    }

    public void a0(String str, boolean z4, String str2, String str3, int i5) {
        f55576g.execute(new n3(str, z4, str2, str3, i5));
    }

    public void a1(String str, String str2) {
        this.f55583c.I(Event.gameRemove1, str, str2);
    }

    public void a2(String str, String str2) {
        this.f55583c.I(Event.unzipIndexFailed, str, str2);
    }

    public void b0(String str, String str2, String str3) {
        f55576g.execute(new y0(str3, str2, str));
    }

    public void b1(String str, String str2) {
        this.f55583c.I(Event.gameRemove2, str, str2);
    }

    public void b2(String str, boolean z4, String str2, int i5, String str3, byte b5, byte b6) {
        f55576g.execute(new t3(i5, str3, str2, str, z4, b5, b6));
    }

    public void c0(String str, String str2) {
        this.f55583c.I(Event.downloadPlugCompleted, str, str2);
    }

    public void c1(String str, int i5, String str2, String str3, String str4, int i6) {
        f55576g.execute(new v1(str3, str2, i5, str4, i6, str));
    }

    public void c2(String str, String str2, String str3, String str4, String str5) {
        f55576g.execute(new w(str, str2, str3, str4, str5));
    }

    public void d(String str, int i5) {
        File[] listFiles;
        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + (i5 == 0 ? "/mgpapa/aidlservice" : "/wufan91/aidlservice"));
        if (file.exists() && file.isDirectory() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                String name = file2.getName();
                if (name.toLowerCase().startsWith("game_start15")) {
                    try {
                        j(name.split("_")[2], name.split("_")[3], str);
                        file2.delete();
                    } catch (Exception unused) {
                    }
                } else if (name.toLowerCase().startsWith("game_startbattle15")) {
                    V1(name.split("_")[2], name.split("_")[3]);
                    file2.delete();
                } else if (name.toLowerCase().startsWith("game_start160")) {
                    i(name.split("_")[2], name.split("_")[3], Integer.parseInt(name.split("_")[4]), str);
                    file2.delete();
                } else if (name.toLowerCase().startsWith("play_time_")) {
                    J1(name.split("_")[2], name.split("_")[4] + "", name.split("_")[3], UUID.randomUUID().toString());
                    file2.delete();
                } else if (name.toLowerCase().startsWith("game_out_")) {
                    T0(name.split("_")[2], Long.parseLong(name.split("_")[3]), name.split("_")[4], str);
                    file2.delete();
                }
            }
        }
    }

    public void d0(String str, String str2, String str3) {
        f55576g.execute(new k1(str3, str, str2));
    }

    public void d1(String str, String str2, int i5, int i6, int i7, String str3) {
        f55576g.execute(new v(i6, i7, str3, str, str2, i5));
    }

    public void d2(String str) {
        h2(Event.clickHomePageEvent.name(), str);
    }

    public void e() {
        this.f55584d.b();
    }

    public void e0(String str, String str2) {
        f55576g.execute(new x1(str, str2));
    }

    public void e1(String str) {
        this.f55583c.D(Event.gameUnlockSp, str);
    }

    public void e2(String str, String str2, String str3, String str4, String str5) {
        f55576g.execute(new u(str, str2, str3, str4, str5));
    }

    public void f(String str) {
        this.f55583c.I(Event.joystickConfigChanged, "", str);
    }

    public void f0(String str) {
        this.f55583c.I(Event.setemuerror, str, null);
    }

    public void f1(String str, String str2, int i5) {
        f55576g.execute(new p3(str, str2, i5));
    }

    public void f2(String str, String str2) {
        f55576g.execute(new y(str, str2));
    }

    public void g(String str, int i5, String str2) {
        JoyStickConfig joyStickConfig = new JoyStickConfig();
        joyStickConfig.setUid(Integer.parseInt(str));
        joyStickConfig.setType(i5);
        joyStickConfig.setFile(str2);
        com.papa.sim.statistic.o.l(this.f55582b).D(Event.joyStickConfigPost, JsonMapper.f().toJson(joyStickConfig));
    }

    public void g0(String str, String str2, String str3) {
        f55576g.execute(new w0(str3, str2, str));
    }

    public void g1(String str, String str2, String str3) {
        f55576g.execute(new c0(str2, str, str3));
    }

    public void g2(String str, String str2, String str3, String str4, String str5, String str6) {
        f55576g.execute(new t(str, str2, str3, str4, str5, str6));
    }

    public void h(String str, String str2, String str3, long j5) {
        f55576g.execute(new r1(str2, str, str3, j5));
    }

    public void h0(Event event, Ext ext, String str) {
        f55576g.execute(new l0(event, ext, str));
    }

    public void h1(Event event, String str, String str2) {
        f55576g.execute(new m0(event, str, str2));
    }

    public void h2(String str, String str2) {
        f55576g.execute(new x(str, str2));
    }

    public void i(String str, String str2, int i5, String str3) {
        f55576g.execute(new m3(str, str2, i5, str3));
    }

    public void i0(String str) {
        f55576g.execute(new j(str));
    }

    public void i1(Event event, Ext ext) {
        f55576g.execute(new n0(event, ext));
    }

    public void i2(String str) {
        f55576g.execute(new t2(str));
    }

    public void j(String str, String str2, String str3) {
        f55576g.execute(new b1(str, str2, str3));
    }

    public void j0(String str) {
        f55576g.execute(new y3(str));
    }

    public void j1(String str, String str2, int i5) {
        f55576g.execute(new s1(str, str2, i5));
    }

    public void j2(String str, String str2, int i5) {
        f55576g.execute(new n1(str, str2, i5));
    }

    public void k(String str, String str2) {
        this.f55583c.I(Event.startLocalNetBattleSuccess, str, str2);
    }

    public void k0(String str, String str2) {
        f55576g.execute(new n(str2, str));
    }

    public void k1(String str, String str2, String str3) {
        f55576g.execute(new l1(str3, str, str2));
    }

    public void k2(String str, String str2, String str3, String str4, String str5, String str6) {
        l2(str, str2, str3, str4, str5, str6, "");
    }

    public void l0(String str) {
        f55576g.execute(new x3(str));
    }

    public void l1(String str, String str2) {
        this.f55583c.I(Event.insufficientStorage, str, str2);
    }

    public void l2(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        f55576g.execute(new o1(str2, str3, str, str4, str5, str6, str7));
    }

    public void m0(String str) {
        f55576g.execute(new i(str));
    }

    public void m1(Event event, Event event2, String str, Ext ext, Data data) {
        f55576g.execute(new t0(data, event2, str, ext, event));
    }

    public void m2(Where where, String str) {
        f55576g.execute(new a4(where, str));
    }

    public com.papa.sim.statistic.h n() {
        return this.f55585e;
    }

    public void n0(String str, String str2) {
        f55576g.execute(new l(str2, str));
    }

    public void n1(String str, String str2) {
        f55576g.execute(new e1(str, str2));
    }

    public void n2(String str) {
        f55576g.execute(new e4(str));
    }

    public void o() {
    }

    public void o0(String str, String str2) {
        f55576g.execute(new m(str2, str));
    }

    public void o1(String str, String str2, int i5, String str3) {
        f55576g.execute(new c1(str, str2, i5, str3));
    }

    public void o2(String str) {
        f55576g.execute(new d4(str));
    }

    public void p(String str, String str2, String str3) {
        f55576g.execute(new l4(str, str2, str3));
    }

    public void p0(String str, String str2, String str3) {
        f55576g.execute(new r(str3, str, str2));
    }

    public void p1(String str, String str2) {
        this.f55583c.I(Event.joinLocalNetBattleRoomSuccess, str, str2);
    }

    public void p2(String str) {
        f55576g.execute(new c(str));
    }

    public void q(Event event, String str, String str2, String str3) {
        f55576g.execute(new u0(event, str, str3, str2));
    }

    public void q0(String str, String str2, String str3) {
        f55576g.execute(new q(str3, str, str2));
    }

    public void q1(String str, String str2, int i5, String str3) {
        f55576g.execute(new f1(str, str2, i5, str3));
    }

    public void q2(String str) {
        f55576g.execute(new k4(str));
    }

    public void r(com.papa.sim.statistic.e eVar) {
        f55576g.execute(new l2(eVar));
    }

    public void r0(String str, String str2) {
        f55576g.execute(new o(str2, str));
    }

    public void r1(String str, String str2) {
        f55576g.execute(new i1(str, str2));
    }

    public void r2(String str) {
        f55576g.execute(new a(str));
    }

    public void s(String str, String str2, String str3) {
        f55576g.execute(new k2(str, str2, str3));
    }

    public void s0(String str, String str2) {
        f55576g.execute(new RunnableC0278p(str2, str));
    }

    public void s1(Ext ext, String str) {
        this.f55583c.z(Event.joystickJoinApp, ext, str);
    }

    public void s2(int i5, String str, int i6) {
        f55576g.execute(new f4(i6, str, i5));
    }

    public void t(String str, String str2, String str3) {
        f55576g.execute(new n2(str, str2, str3));
    }

    public void t0(String str, int i5, int i6) {
        f55576g.execute(new i3(i6, str, i5));
    }

    public void t1(String str) {
        f55576g.execute(new z3(str));
    }

    public void t2(String str) {
        f55576g.execute(new b(str));
    }

    public void u(String str, String str2) {
        f55576g.execute(new f2(str, str2));
    }

    public void u0(String str, int i5) {
        f55576g.execute(new a3(str, i5));
    }

    public void u1(Ext ext, String str) {
        this.f55583c.z(Event.memberClickRegister, ext, str);
    }

    public void u2(String str) {
        f55576g.execute(new d(str));
    }

    public void v(com.papa.sim.statistic.e eVar, boolean z4) {
        f55576g.execute(new m2(z4, eVar));
    }

    public void v0(String str, int i5) {
        f55576g.execute(new r2(str, i5));
    }

    public void v1(Event event, int i5, String str, String str2, int i6, int i7) {
        f55576g.execute(new s0(event, i5, i7, str2, str, i6));
    }

    public void v2(String str, int i5) {
        f55576g.execute(new d3(str, i5));
    }

    public void w(String str, int i5, String str2) {
        f55576g.execute(new b0(str, i5, str2));
    }

    public void w0(String str, int i5) {
        f55576g.execute(new y2(str, i5));
    }

    public void w1(String str, String str2, String str3) {
        f55576g.execute(new g2((StatJsonRawData) JsonMapper.e().fromJson(str2.toLowerCase(), StatJsonRawData.class), str, str3));
    }

    public void w2(boolean z4, String str) {
        this.f55583c.l0(z4);
        if (!z4 || str == null || str.equals("")) {
            return;
        }
        this.f55584d.a();
        List<EMUApkTable> list = (List) JsonMapper.e().fromJson(str, JsonMapper.e().createCollectionType(ArrayList.class, EMUApkTable.class));
        if (list == null) {
            return;
        }
        this.f55584d.u(list);
    }

    public void x(String str, String str2, String str3) {
        f55576g.execute(new s(str, str3, str2));
    }

    public void x0(String str, int i5) {
        f55576g.execute(new c3(str, i5));
    }

    public void x1(String str, long j5, String str2) {
        this.f55583c.G(Event.netBattleMatchFinish, str, j5, str2);
    }

    public void x2(boolean z4) {
        this.f55583c.m0(z4);
    }

    public void y(String str, String str2) {
        f55576g.execute(new z(str, str2));
    }

    public void y0(String str, int i5) {
        f55576g.execute(new f3(str, i5));
    }

    public void y1(String str, long j5, String str2, String str3) {
        f55576g.execute(new z1(str2, str, j5, str3));
    }

    public void y2(boolean z4) {
        this.f55583c.n0(z4);
    }

    public void z(String str, String str2, String str3) {
        f55576g.execute(new a0(str, str2, str3));
    }

    public void z0(String str, String str2, long j5, int i5, String str3, long j6, int i6, int i7, String str4, int i8) {
        A0(str, str2, j5, i5, str3, j6, i6, i7, str4, i8, null);
    }

    public void z1(String str, String str2) {
        this.f55583c.I(Event.netBattleMatchStart, str, str2);
    }

    public void z2(com.papa.sim.statistic.h hVar) {
        this.f55585e = hVar;
    }
}
