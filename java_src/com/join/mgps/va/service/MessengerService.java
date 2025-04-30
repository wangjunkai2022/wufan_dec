package com.join.mgps.va.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import androidx.annotation.Nullable;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.u0;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.SpValue;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import com.papa91.arc.util.StringUtils;
import f1.a;
/* loaded from: classes4.dex */
public class MessengerService extends Service {
    public static final int A = 31;
    public static final String B = "com.upload.wufun.screenshot";

    /* renamed from: a  reason: collision with root package name */
    private static final int f52372a = 1;

    /* renamed from: b  reason: collision with root package name */
    private static final int f52373b = 2;

    /* renamed from: c  reason: collision with root package name */
    private static final int f52374c = 3;

    /* renamed from: d  reason: collision with root package name */
    private static final int f52375d = 4;

    /* renamed from: e  reason: collision with root package name */
    private static final int f52376e = 5;

    /* renamed from: f  reason: collision with root package name */
    private static final int f52377f = 6;

    /* renamed from: g  reason: collision with root package name */
    private static final int f52378g = 7;

    /* renamed from: h  reason: collision with root package name */
    private static final int f52379h = 8;

    /* renamed from: i  reason: collision with root package name */
    private static final int f52380i = 9;

    /* renamed from: j  reason: collision with root package name */
    private static final int f52381j = 10;

    /* renamed from: k  reason: collision with root package name */
    private static final int f52382k = 11;

    /* renamed from: l  reason: collision with root package name */
    private static final int f52383l = 12;

    /* renamed from: m  reason: collision with root package name */
    private static final int f52384m = 13;

    /* renamed from: n  reason: collision with root package name */
    private static final int f52385n = 14;

    /* renamed from: o  reason: collision with root package name */
    public static final int f52386o = 15;

    /* renamed from: p  reason: collision with root package name */
    public static final int f52387p = 16;

    /* renamed from: q  reason: collision with root package name */
    public static final int f52388q = 17;

    /* renamed from: r  reason: collision with root package name */
    public static final int f52389r = 18;

    /* renamed from: s  reason: collision with root package name */
    public static final int f52390s = 19;

    /* renamed from: t  reason: collision with root package name */
    public static final int f52391t = 20;

    /* renamed from: u  reason: collision with root package name */
    public static final int f52392u = 21;

    /* renamed from: v  reason: collision with root package name */
    public static final int f52393v = 26;

    /* renamed from: w  reason: collision with root package name */
    public static final int f52394w = 27;

    /* renamed from: x  reason: collision with root package name */
    public static final int f52395x = 28;

    /* renamed from: y  reason: collision with root package name */
    public static final int f52396y = 29;

    /* renamed from: z  reason: collision with root package name */
    public static final int f52397z = 30;

    /* loaded from: classes4.dex */
    class IncomingHandler extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private Context f52398a;

        public IncomingHandler(Context context) {
            this.f52398a = context;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Context context = this.f52398a;
            if (context == null) {
                return;
            }
            Context applicationContext = context.getApplicationContext();
            Bundle data = message.getData();
            if (data == null) {
                return;
            }
            String string = data.getString("gameId");
            Ext ext = new Ext();
            ext.setGameId(string);
            String str = "";
            ext.setFrom(data.getString("from", ""));
            ext.setPosition(data.getString("position", ""));
            String string2 = data.getString(CommonService_.b0.f51756b, "");
            ext.setUid(MessengerService.this.c());
            ext.setFromTabId(data.getString("fromTabId", ""));
            ext.setArticleId(data.getString("articleId", ""));
            String string3 = data.getString("where", "");
            ext.setLiveTime(data.getLong(CommonService_.d0.f51773c, 0L));
            switch (message.what) {
                case 1:
                    p.l(applicationContext).K1(Event.showMod, ext);
                    break;
                case 2:
                    p.l(applicationContext).K1(Event.onclickMod, ext);
                    break;
                case 3:
                    p.l(applicationContext).K1(Event.openMod, ext);
                    break;
                case 4:
                    p.l(applicationContext).K1(Event.showVippopupMod, ext);
                    break;
                case 5:
                    p.l(applicationContext).K1(Event.onclickVippopupMod, ext);
                    break;
                case 6:
                    p.l(applicationContext).K1(Event.exitMod, ext);
                    p.l(applicationContext).K1(Event.exitVirtualGame, ext);
                    Intent intent = new Intent();
                    intent.setAction(a.F0);
                    this.f52398a.sendBroadcast(intent);
                    break;
                case 7:
                    p.l(applicationContext).K1(Event.modgamestart, ext);
                    break;
                case 8:
                    p.l(applicationContext).K1(Event.assistShow, ext);
                    break;
                case 9:
                    p.l(applicationContext).K1(Event.clickAssist, ext);
                    break;
                case 10:
                    Intent intent2 = new Intent(MessengerService.B);
                    intent2.putExtra(CommonService_.b0.f51756b, string2);
                    MessengerService.this.sendBroadcast(intent2);
                    break;
                case 11:
                    Object obj = message.obj;
                    if (obj != null) {
                        if (obj instanceof Bundle) {
                            Bundle bundle = (Bundle) obj;
                            str = bundle.getString("action");
                            bundle.getString("fromCls");
                        }
                        Intent intent3 = new Intent(str);
                        intent3.putExtras(data);
                        MessengerService.this.sendBroadcast(intent3);
                        break;
                    }
                    break;
                case 13:
                    p.l(applicationContext).K1(Event.clickPiix, ext);
                    break;
                case 14:
                    p.l(applicationContext).K1(Event.clickNav, ext);
                    break;
                case 15:
                    p.l(applicationContext).K1(Event.realNameUpWindows, ext);
                    break;
                case 16:
                    p.l(applicationContext).K1(Event.clickKnowGoRealPage, ext);
                    break;
                case 17:
                    p.l(applicationContext).K1(Event.antiAddtionWindowUp, ext);
                    break;
                case 18:
                    p.l(applicationContext).K1(Event.realNameDisplayWindow, ext);
                    break;
                case 19:
                    p.l(applicationContext).K1(Event.clickClosedRealNameWindow, ext);
                    break;
                case 20:
                    p.l(applicationContext).K1(Event.nonageAstrictHint, ext);
                    break;
                case 21:
                    p.l(applicationContext).K1(Event.realNameClickSubmit, ext);
                    break;
                case 26:
                    p.l(applicationContext).K1(Event.closedRealNameWindow, ext);
                    break;
                case 27:
                    long j4 = data.getLong(CommonService_.d0.f51773c);
                    u0.e("liveTime:" + j4 + " receive");
                    if (j4 != 0) {
                        ext.setLiveTime(j4 / 1000);
                        u0.e("liveTime:" + j4 + " send");
                        p.l(applicationContext).K1(Event.gamePlayTimes, ext);
                        break;
                    } else {
                        return;
                    }
                case 28:
                    Data data2 = new Data();
                    if (StringUtils.isNotEmpty(string)) {
                        data2.setGameId(Long.parseLong(string));
                    }
                    p.l(MessengerService.this.getApplicationContext()).m1(Event.singleStartGamePageList, Event.valueOf(string3), String.valueOf(MessengerService.this.c()), ext, data2);
                    break;
                case 29:
                    Data data3 = new Data();
                    if (StringUtils.isNotEmpty(string)) {
                        data3.setGameId(Long.parseLong(string));
                    }
                    p.l(MessengerService.this.getApplicationContext()).m1(Event.singleStartGamePageDetail, Event.valueOf(string3), String.valueOf(MessengerService.this.c()), ext, data3);
                    break;
                case 30:
                    MessengerService.this.d(data.getBoolean("expand", false));
                    break;
                case 31:
                    u0.e("WF", "PluginEntry first_show_mod 1115" + data.get("first_show_mod"));
                    MessengerService.this.e("first_show_mod", Boolean.valueOf(data.getBoolean("first_show_mod")));
                    break;
            }
            super.handleMessage(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int c() {
        try {
            AccountBean b4 = b();
            if (b4 != null) {
                return b4.getUid();
            }
            return 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    public AccountBean b() {
        try {
            SharedPreferences sharedPreferences = getSharedPreferences("PrefDef", 4);
            String string = sharedPreferences.getString("accountDataV2", "");
            StringBuilder sb = new StringBuilder();
            sb.append("getAccountData: ");
            sb.append(string);
            if (StringUtils.isNotEmpty(string)) {
                return (AccountBean) JsonMapper.getInstance().fromJson(AESUtils.decrypt(string), AccountBean.class);
            }
            String string2 = sharedPreferences.getString("accountData", "");
            if (StringUtils.isNotEmpty(string2)) {
                AccountBean accountBean = (AccountBean) JsonMapper.getInstance().fromJson(string2, AccountBean.class);
                SharedPreferences.Editor edit = sharedPreferences.edit();
                if (accountBean != null) {
                    edit.putString("accountDataV2", AESUtils.encrypt(string2));
                    return accountBean;
                }
            }
            return new AccountBean();
        } catch (Exception e4) {
            e4.printStackTrace();
            return new AccountBean();
        }
    }

    public void d(boolean z3) {
        Intent intent = new Intent(a.H0);
        intent.putExtra(CommonService_.f0.f51794b, "expandIntroductionView_" + c());
        intent.putExtra(CommonService_.f0.f51795c, z3);
        sendBroadcast(intent);
    }

    public void e(String str, Object obj) {
        Intent intent = new Intent(a.I0);
        intent.putExtra(CommonService_.h0.f51811b, str);
        if (obj instanceof Boolean) {
            intent.putExtra(CommonService_.h0.f51812c, new SpValue((Boolean) obj));
        } else if (obj instanceof Integer) {
            intent.putExtra(CommonService_.h0.f51812c, new SpValue((Integer) obj));
        } else if (obj instanceof String) {
            intent.putExtra(CommonService_.h0.f51812c, new SpValue((String) obj));
        } else if (obj instanceof Float) {
            intent.putExtra(CommonService_.h0.f51812c, new SpValue((Float) obj));
        } else if (obj instanceof Long) {
            intent.putExtra(CommonService_.h0.f51812c, new SpValue((Long) obj));
        }
        sendBroadcast(intent);
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return new Messenger(new IncomingHandler(this)).getBinder();
    }
}
