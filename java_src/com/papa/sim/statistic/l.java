package com.papa.sim.statistic;

import android.content.Context;
/* compiled from: PlainHttpClient.java */
/* loaded from: classes4.dex */
public class l {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlainHttpClient.java */
    /* loaded from: classes4.dex */
    public class a implements com.papa.sim.statistic.http.a<GameWorldResponse> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f55537a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ JoyStickConfig f55538b;

        a(Context context, JoyStickConfig joyStickConfig) {
            this.f55537a = context;
            this.f55538b = joyStickConfig;
        }

        @Override // com.papa.sim.statistic.http.a
        public void a(Exception exc) {
            com.papa.sim.statistic.db.b o3 = com.papa.sim.statistic.db.b.o(this.f55537a);
            com.papa.sim.statistic.db.d dVar = new com.papa.sim.statistic.db.d();
            try {
                dVar.t(Event.joyStickConfigPost.name());
                dVar.o(this.f55538b.getId());
                dVar.l(JsonMapper.e().toJson(this.f55538b));
                dVar.s(this.f55538b.getUpdate_time() + "");
                com.papa.sim.statistic.db.b.o(this.f55537a).r(dVar);
            } catch (Exception unused) {
                exc.printStackTrace();
                Event event = Event.setpapaerror;
                if (o3.i(event, this.f55538b.getId() + "")) {
                    return;
                }
                o l4 = o.l(this.f55537a);
                String b4 = dVar.b();
                l4.I(event, b4, this.f55538b.getId() + "");
            }
        }

        @Override // com.papa.sim.statistic.http.a
        /* renamed from: b */
        public void onSuccess(GameWorldResponse gameWorldResponse) {
            if (gameWorldResponse.getError() != 0) {
                com.papa.sim.statistic.db.b o3 = com.papa.sim.statistic.db.b.o(this.f55537a);
                com.papa.sim.statistic.db.d dVar = new com.papa.sim.statistic.db.d();
                try {
                    dVar.o(this.f55538b.getId());
                    dVar.t(Event.joyStickConfigPost.name());
                    dVar.l(JsonMapper.e().toJson(this.f55538b));
                    dVar.s(this.f55538b.getUpdate_time() + "");
                    com.papa.sim.statistic.db.b.o(this.f55537a).r(dVar);
                } catch (Exception e4) {
                    e4.printStackTrace();
                    Event event = Event.setpapaerror;
                    if (o3.i(event, this.f55538b.getId() + "")) {
                        return;
                    }
                    o l4 = o.l(this.f55537a);
                    String b4 = dVar.b();
                    l4.I(event, b4, this.f55538b.getId() + "");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlainHttpClient.java */
    /* loaded from: classes4.dex */
    public class b implements com.papa.sim.statistic.http.a<GameWorldResponse> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f55539a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ JoyStickConfig f55540b;

        b(Context context, JoyStickConfig joyStickConfig) {
            this.f55539a = context;
            this.f55540b = joyStickConfig;
        }

        @Override // com.papa.sim.statistic.http.a
        public void a(Exception exc) {
            com.papa.sim.statistic.db.b o3 = com.papa.sim.statistic.db.b.o(this.f55539a);
            com.papa.sim.statistic.db.d dVar = new com.papa.sim.statistic.db.d();
            try {
                dVar.o(this.f55540b.getId());
                dVar.t(Event.joyStickInfoPost.name());
                dVar.l(JsonMapper.e().toJson(this.f55540b));
                dVar.s(this.f55540b.getUpdate_time() + "");
                com.papa.sim.statistic.db.b.o(this.f55539a).r(dVar);
            } catch (Exception e4) {
                e4.printStackTrace();
                Event event = Event.setpapaerror;
                if (o3.i(event, this.f55540b.getId() + "")) {
                    return;
                }
                o l4 = o.l(this.f55539a);
                String b4 = dVar.b();
                l4.I(event, b4, this.f55540b.getId() + "");
            }
        }

        @Override // com.papa.sim.statistic.http.a
        /* renamed from: b */
        public void onSuccess(GameWorldResponse gameWorldResponse) {
            if (gameWorldResponse.getError() != 0) {
                com.papa.sim.statistic.db.b o3 = com.papa.sim.statistic.db.b.o(this.f55539a);
                com.papa.sim.statistic.db.d dVar = new com.papa.sim.statistic.db.d();
                try {
                    dVar.o(this.f55540b.getId());
                    dVar.t(Event.joyStickInfoPost.name());
                    dVar.l(JsonMapper.e().toJson(this.f55540b));
                    dVar.s(this.f55540b.getUpdate_time() + "");
                    com.papa.sim.statistic.db.b.o(this.f55539a).r(dVar);
                } catch (Exception e4) {
                    e4.printStackTrace();
                    Event event = Event.setpapaerror;
                    if (o3.i(event, this.f55540b.getId() + "")) {
                        return;
                    }
                    o l4 = o.l(this.f55539a);
                    String b4 = dVar.b();
                    l4.I(event, b4, this.f55540b.getId() + "");
                }
            }
        }
    }

    public static void a(Context context, JoyStickConfig joyStickConfig) {
        com.papa.sim.statistic.http.c.c().i(context, joyStickConfig, new a(context, joyStickConfig));
    }

    public static void b(Context context, JoyStickConfig joyStickConfig) {
        com.papa.sim.statistic.http.c.c().j(context, joyStickConfig, new b(context, joyStickConfig));
    }
}
