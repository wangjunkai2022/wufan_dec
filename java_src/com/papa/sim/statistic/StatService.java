package com.papa.sim.statistic;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.papa.sim.statistic.db.EMUApkTable;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4.dex */
public class StatService extends Service {

    /* renamed from: m  reason: collision with root package name */
    private static final String f55369m = "StatService";

    /* renamed from: a  reason: collision with root package name */
    com.papa.sim.statistic.db.b f55370a;

    /* renamed from: c  reason: collision with root package name */
    List<com.papa.sim.statistic.db.a> f55372c;

    /* renamed from: d  reason: collision with root package name */
    com.papa.sim.statistic.pref.b f55373d;

    /* renamed from: e  reason: collision with root package name */
    o f55374e;

    /* renamed from: h  reason: collision with root package name */
    boolean f55377h;

    /* renamed from: i  reason: collision with root package name */
    private String f55378i;

    /* renamed from: j  reason: collision with root package name */
    private List<EMUApkTable> f55379j;

    /* renamed from: b  reason: collision with root package name */
    List<com.papa.sim.statistic.db.d> f55371b = new ArrayList(0);

    /* renamed from: f  reason: collision with root package name */
    Object f55375f = new Object();

    /* renamed from: g  reason: collision with root package name */
    final AtomicBoolean f55376g = new AtomicBoolean(false);

    /* renamed from: k  reason: collision with root package name */
    private List<EMUApkTable> f55380k = null;

    /* renamed from: l  reason: collision with root package name */
    private b f55381l = new b();

    /* loaded from: classes4.dex */
    class a extends Thread {
        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                try {
                    try {
                        Thread.sleep(30000L);
                        StringBuilder sb = new StringBuilder();
                        sb.append("[");
                        sb.append(Thread.currentThread().getId());
                        sb.append("]method statService is running...");
                        StatService.this.f55370a.g();
                        StatService statService = StatService.this;
                        statService.f55371b = statService.f55370a.k();
                        StatService.this.i();
                        StatService.this.j();
                        StatService.this.k();
                        try {
                            StatService.this.o();
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        List<com.papa.sim.statistic.db.d> list = StatService.this.f55371b;
                        if (list != null && list.size() >= 11) {
                            for (com.papa.sim.statistic.db.d dVar : StatService.this.f55371b) {
                                if (StatService.this.delete(dVar)) {
                                    if (dVar.f() != 1) {
                                        dVar.p(2);
                                    }
                                    if (StatService.this.f55374e.q() && dVar.getType().equals(Event.joyStickConfigPost.name())) {
                                        try {
                                            StatService.this.p(dVar);
                                        } catch (Exception e5) {
                                            e5.printStackTrace();
                                            StatService.this.n("", e5);
                                        }
                                    } else if (StatService.this.f55374e.r() && dVar.getType().equals(Event.joyStickInfoPost.name())) {
                                        try {
                                            StatService.this.q(dVar);
                                        } catch (Exception e6) {
                                            e6.printStackTrace();
                                            StatService.this.n("", e6);
                                        }
                                    } else if (dVar.getType().equals(Event.pluginPlayTime.name())) {
                                        arrayList2.add(dVar);
                                    } else {
                                        Thread.sleep(500L);
                                        if (dVar.getType() != null && (dVar.getType().equals(Event.click_vs_hall.name()) || dVar.getType().equals(Event.click_vs_create_room.name()) || dVar.getType().equals(Event.user_filters_refresh.name()) || dVar.getType().equals(Event.joystickSetting.name()) || dVar.getType().equals(Event.joystickJoin.name()) || dVar.getType().equals(Event.joystickConfigChanged.name()) || dVar.getType().equals(Event.clickVsBtn.name()) || dVar.getType().equals(Event.clickVsHallBtn.name()) || dVar.getType().equals(Event.visitVsRoomPage.name()) || dVar.getType().equals(Event.visitVsMainPage.name()) || dVar.getType().equals(Event.VsGameStart.name()) || dVar.getType().equals(Event.clickVsForumBtn.name()) || dVar.getType().equals(Event.clickVsAdvBtn.name()) || dVar.getType().equals(Event.clickVsCreateRoom.name()) || dVar.getType().equals(Event.clickVsQuickJoin.name()) || dVar.getType().equals(Event.VsCreateWaitOver.name()) || dVar.getType().equals(Event.VsGameOverSuccess.name()) || dVar.getType().equals(Event.VsSelectSilentBtn.name()) || dVar.getType().equals(Event.VsCreateSilentRoom.name()) || dVar.getType().equals(Event.VsSilentTransform.name()) || dVar.getType().equals(Event.clickVsLocalBat.name()) || dVar.getType().equals(Event.clickVslLocalCreateRoom.name()) || dVar.getType().equals(Event.clickVsJoinRoom.name()) || dVar.getType().equals(Event.clickVsNetBattleMatch.name()))) {
                                            try {
                                                StatService.this.f55374e.Z((StatDataCenterReq) JsonMapper.e().fromJson(dVar.b(), StatDataCenterReq.class));
                                            } catch (Exception e7) {
                                                e7.printStackTrace();
                                            }
                                        }
                                        arrayList.add(dVar);
                                    }
                                }
                            }
                            if (arrayList2.size() > 0) {
                                StatService statService2 = StatService.this;
                                statService2.f55374e.Y(statService2.getApplicationContext(), arrayList2);
                            }
                            StatService statService3 = StatService.this;
                            statService3.f55374e.t(statService3.getApplicationContext(), arrayList);
                            StatService.this.f55371b.clear();
                        }
                    } catch (Throwable th) {
                        StatService.this.f55376g.set(false);
                        throw th;
                    }
                } catch (Exception e8) {
                    e8.printStackTrace();
                    StatService.this.n("", e8);
                    StatService.this.f55376g.set(false);
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean delete(com.papa.sim.statistic.db.d dVar) {
        try {
            this.f55370a.delete(dVar);
            StringBuilder sb = new StringBuilder();
            sb.append("Statservice deleStat ");
            sb.append(dVar.e());
            sb.append(dVar.b());
            return true;
        } catch (Exception e4) {
            e4.printStackTrace();
            n(dVar.e() + "", e4);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        boolean m4 = m(Long.parseLong(this.f55373d.p()));
        boolean q3 = q.q(getApplicationContext());
        boolean r3 = q.r(getApplicationContext());
        StringBuilder sb = new StringBuilder();
        sb.append("isBackground=");
        sb.append(q3);
        if (m4 || q3 || !r3) {
            return;
        }
        boolean z3 = false;
        Iterator<com.papa.sim.statistic.db.d> it2 = this.f55371b.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            com.papa.sim.statistic.db.d next = it2.next();
            if (next.getType().equals(Event.startApp.name()) && m(Long.parseLong(next.i()))) {
                z3 = true;
                break;
            }
        }
        if (z3) {
            return;
        }
        p.l(getApplicationContext()).R1("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        h n4;
        boolean m4 = m(Long.parseLong(this.f55373d.g()));
        boolean q3 = q.q(getApplicationContext());
        boolean r3 = q.r(getApplicationContext());
        StringBuilder sb = new StringBuilder();
        sb.append("isBackground=");
        sb.append(q3);
        if (m4 || q3 || !r3) {
            return;
        }
        boolean z3 = false;
        Iterator<com.papa.sim.statistic.db.d> it2 = this.f55371b.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            com.papa.sim.statistic.db.d next = it2.next();
            if (next.getType().equals(Event.gameList.name()) && m(Long.parseLong(next.i()))) {
                z3 = true;
                break;
            }
        }
        if (z3 || (n4 = p.l(getApplicationContext()).n()) == null) {
            return;
        }
        String c4 = n4.c();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("gameList is =");
        sb2.append(c4);
        p.l(getApplicationContext()).G0(c4, n4.a(getApplicationContext()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
    }

    private void l() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(String str, Throwable th) {
        StringBuffer stringBuffer = new StringBuffer(q.f(getApplicationContext()).e() + ";error::");
        stringBuffer.append(th.getMessage());
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            try {
                stringBuffer.append(stackTraceElement.toString());
            } catch (Exception unused) {
            }
        }
        if (str == null || str.equals("") || !this.f55370a.i(Event.setpapaerror, str)) {
            this.f55374e.I(Event.setpapaerror, stringBuffer.toString(), str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        List<com.papa.sim.statistic.db.a> l4 = this.f55370a.l();
        this.f55372c = l4;
        if (l4 == null || l4.size() == 0) {
            return;
        }
        for (com.papa.sim.statistic.db.a aVar : this.f55372c) {
            if (delete(aVar) && !this.f55374e.a0(aVar)) {
                this.f55370a.t(aVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(com.papa.sim.statistic.db.d dVar) {
        String b4 = dVar.b();
        if (b4 == null || b4.equals("")) {
            return;
        }
        JoyStickConfig joyStickConfig = (JoyStickConfig) JsonMapper.f().fromJson(b4, JoyStickConfig.class);
        joyStickConfig.setId(dVar.e());
        this.f55374e.o0(getApplicationContext(), joyStickConfig);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(com.papa.sim.statistic.db.d dVar) {
        String b4 = dVar.b();
        if (b4 == null || b4.equals("")) {
            return;
        }
        try {
            JoyStickConfig joyStickConfig = (JoyStickConfig) JsonMapper.e().fromJson(b4, JoyStickConfig.class);
            joyStickConfig.setId(dVar.e());
            l.b(getApplicationContext(), joyStickConfig);
        } catch (Exception e4) {
            e4.printStackTrace();
            this.f55370a.r(dVar);
        }
    }

    public boolean m(long j4) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j4);
        int i2 = calendar.get(1);
        int i4 = calendar.get(2);
        int i5 = calendar.get(5);
        calendar.setTimeInMillis(System.currentTimeMillis());
        return i2 == calendar.get(1) && i4 == calendar.get(2) && i5 == calendar.get(5);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        p.l(getApplicationContext()).o();
    }

    @Override // android.app.Service
    public void onDestroy() {
        com.papa.sim.statistic.db.b bVar = this.f55370a;
        if (bVar != null) {
            bVar.b();
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i4) {
        this.f55377h = q.q(getApplicationContext());
        this.f55370a = com.papa.sim.statistic.db.b.o(getApplicationContext());
        synchronized (this.f55375f) {
            if (this.f55376g.compareAndSet(false, true)) {
                if (this.f55374e == null) {
                    this.f55374e = o.l(getApplicationContext());
                }
                if (this.f55373d == null) {
                    this.f55373d = com.papa.sim.statistic.pref.b.j(getApplicationContext());
                }
                if (this.f55370a == null) {
                    this.f55370a = com.papa.sim.statistic.db.b.o(getApplicationContext());
                }
                if (com.papa.sim.statistic.pref.b.j(this).r()) {
                    return super.onStartCommand(intent, i2, i4);
                }
                new a().start();
            }
            return super.onStartCommand(intent, i2, i4);
        }
    }

    private boolean delete(com.papa.sim.statistic.db.a aVar) {
        try {
            this.f55370a.d(aVar);
            return true;
        } catch (Exception e4) {
            e4.printStackTrace();
            n(aVar.e() + "", e4);
            return false;
        }
    }
}
