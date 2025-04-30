package com.join.mgps.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.k1;
import com.join.mgps.Util.t0;
import com.join.mgps.aidl.a;
import com.join.mgps.db.tables.PlayGameTimeTable;
import com.join.mgps.dto.EmuErrorDto;
import com.papa.sim.statistic.p;
import g1.f;
import java.util.List;
import java.util.UUID;
import n1.d0;
/* loaded from: classes4.dex */
public class MAIDLService extends Service {
    private static final String TAG = MAIDLService.class.getSimpleName();
    private final a.b mBinder = new a();

    /* loaded from: classes4.dex */
    class a extends a.b {

        /* renamed from: com.join.mgps.service.MAIDLService$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class C0221a implements k1.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f51974a;

            C0221a(String str) {
                this.f51974a = str;
            }

            @Override // com.join.mgps.Util.k1.b
            public void a(k1.c cVar) {
                Intent intent = new Intent("com.join.android.wufun.sdk.wfsg.broadcast." + this.f51974a);
                intent.putExtra("result", cVar.toString());
                t0.d("xxxxx", "send rs=" + cVar.toString());
                MAIDLService.this.sendBroadcast(intent);
            }
        }

        a() {
        }

        @Override // com.join.mgps.aidl.a
        public void emuConfigChanged() throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void emuConfigPost(String str, int i2, String str2) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void emuLogCat(String str, String str2, String str3, String str4, String str5) throws RemoteException {
            EmuErrorDto emuErrorDto = new EmuErrorDto();
            emuErrorDto.setGame_id(str);
            emuErrorDto.setUid(str2);
            emuErrorDto.setPlugin_package_name(str3);
            emuErrorDto.setPlugin_version(str4);
            emuErrorDto.setError(str5);
            p.l(MAIDLService.this.getApplicationContext()).f0(JsonMapper.getInstance().toJson(emuErrorDto));
        }

        @Override // com.join.mgps.aidl.a
        public void gameOut(String str, int i2, String str2) throws RemoteException {
            p.l(MAIDLService.this.getApplicationContext()).T0(str, i2, str2, f.G().H(str, MAIDLService.this.getApplicationContext()));
        }

        @Override // com.join.mgps.aidl.a
        public void gameStart(String str) throws RemoteException {
            p.l(MAIDLService.this.getApplicationContext()).j(str, "0", f.G().H(str, MAIDLService.this.getApplicationContext()));
        }

        @Override // com.join.mgps.aidl.a
        public void gameStart15(String str, String str2) throws RemoteException {
            if (d2.h(str)) {
                return;
            }
            p.l(MAIDLService.this.getApplicationContext()).j(str, str2, f.G().H(str, MAIDLService.this.getApplicationContext()));
        }

        @Override // com.join.mgps.aidl.a
        public void gameStart160(String str, String str2, int i2) throws RemoteException {
            p.l(MAIDLService.this.getApplicationContext()).i(str, str2, i2, f.G().H(str, MAIDLService.this.getApplicationContext()));
        }

        @Override // com.join.mgps.aidl.a
        public void gameStartBattle(String str) throws RemoteException {
            p.l(MAIDLService.this.getApplicationContext()).j(str, null, f.G().H(str, MAIDLService.this.getApplicationContext()));
        }

        @Override // com.join.mgps.aidl.a
        public void gameStartBattle15(String str, String str2) throws RemoteException {
            p.l(MAIDLService.this.getApplicationContext()).V1(str, str2);
        }

        @Override // com.join.mgps.aidl.a
        public void gameWorldData(String str) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void netBattleMatchEfficiency(String str, String str2, String str3) throws RemoteException {
            p.l(MAIDLService.this.getApplicationContext()).w1(str, str2, str3);
        }

        @Override // com.join.mgps.aidl.a
        public String oauth4StandaloneGame(String str) throws RemoteException {
            k1.c().b(MAIDLService.this.getApplicationContext(), str, new C0221a(str));
            return null;
        }

        @Override // com.join.mgps.aidl.a
        public void playTime(String str, String str2, long j4) throws RemoteException {
            List<PlayGameTimeTable> o3 = d0.n().o(str2, str);
            if (o3 != null && o3.size() > 0) {
                PlayGameTimeTable playGameTimeTable = o3.get(0);
                long gamePlayTotalTime = playGameTimeTable.getGamePlayTotalTime();
                playGameTimeTable.setGamePlayRecentlyTime(System.currentTimeMillis() / 1000);
                playGameTimeTable.setGamePlayTotalTime(gamePlayTotalTime + j4);
                d0.n().m(playGameTimeTable);
            }
            p l4 = p.l(MAIDLService.this.getApplicationContext());
            l4.J1(str, j4 + "", str2, UUID.randomUUID().toString());
        }

        @Override // com.join.mgps.aidl.a
        public void plugEfficiency(String str, String str2, String str3) throws RemoteException {
            p.l(MAIDLService.this.getApplicationContext()).I1(str, str2, str3);
        }

        @Override // com.join.mgps.aidl.a
        @Deprecated
        public boolean unLockSP(String str) throws RemoteException {
            return true;
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        super.onRebind(intent);
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return super.onUnbind(intent);
    }
}
