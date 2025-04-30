package com.mob.tools.b;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import com.join.mgps.Util.g0;
import com.mob.MobSDK;
import com.mob.tools.MobLog;
import com.mob.tools.a.c;
import com.mob.tools.a.d;
import com.mob.tools.log.NLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final List<String> f53850a = Arrays.asList("bgmdl", "gmnft", "gbrd", "govsit", "govsnm", "golgu", "gocnty", "galgu", "gtmne", "gsnmd", "gpgnm", "gpnmmt", "gpvsnm", "gpvsme", "cinmnps", "ckpmsi", "gaplcn", "gpgif", "gpgiffist", "gbrdm", "unrgrcv", "rgrcv", "gcrtpcnm", "gscpt", "cird", "cknavbl", "ipgist", "ckua", "ubenbl", "dvenbl", "vnmt", "iwpxy", "cx", "degb", "istvdv", "gdtlnktpfs", "gpgiffcin", "gpgifstrg", "gtaif", "gtaifprm", "rsaciy", "gisi", "gsnmdfp", "gcrie", "gcriefce", "gdvk", "gdvkfc", "gssn");

    @b
    public static Object a(String str, ArrayList<Object> arrayList) {
        try {
            return b(str, arrayList);
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }

    private static Object b(String str, ArrayList<Object> arrayList) throws Throwable {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        com.mob.tools.a.a a4 = a(str);
        if ("cird".equals(str)) {
            return Boolean.valueOf(a4.a());
        }
        if ("cx".equals(str)) {
            return Boolean.valueOf(a4.b());
        }
        if ("ckpd".equals(str)) {
            return Boolean.valueOf(a4.c());
        }
        if ("degb".equals(str)) {
            return Boolean.valueOf(a4.d());
        }
        if ("vnmt".equals(str)) {
            return Boolean.valueOf(a4.e());
        }
        if ("ckua".equals(str)) {
            return Boolean.valueOf(a4.f());
        }
        if ("dvenbl".equals(str)) {
            return Boolean.valueOf(a4.g());
        }
        if ("ubenbl".equals(str)) {
            return Boolean.valueOf(a4.h());
        }
        if ("iwpxy".equals(str)) {
            return Boolean.valueOf(a4.i());
        }
        if ("ismlt".equals(str)) {
            return Boolean.valueOf(a4.j());
        }
        if ("ifkps".equals(str)) {
            if (arrayList != null && arrayList.size() == 1) {
                return Boolean.valueOf(a4.a((String) arrayList.get(0)));
            }
            throw new Throwable("array illegal: " + arrayList);
        } else if ("istvdv".equals(str)) {
            return Boolean.valueOf(a4.k());
        } else {
            if ("gsrln".equals(str)) {
                return a4.l();
            }
            if ("gavti".equals(str)) {
                return a4.m();
            }
            if ("gimi".equals(str)) {
                return a4.n();
            }
            if ("gimip".equals(str)) {
                if (arrayList != null && arrayList.size() == 1) {
                    return a4.a(((Boolean) arrayList.get(0)).booleanValue());
                }
                throw new Throwable("array illegal: " + arrayList);
            } else if ("gimimem".equals(str)) {
                return a4.o();
            } else {
                if ("gisi".equals(str)) {
                    return a4.p();
                }
                if ("gisip".equals(str)) {
                    if (arrayList != null && arrayList.size() == 1) {
                        return a4.b(((Boolean) arrayList.get(0)).booleanValue());
                    }
                    throw new Throwable("array illegal: " + arrayList);
                } else if ("qryisi".equals(str)) {
                    return a4.q();
                } else {
                    if ("gsimt".equals(str)) {
                        return a4.r();
                    }
                    if ("gbsi".equals(str)) {
                        return a4.s();
                    }
                    if ("gcrie".equals(str)) {
                        return a4.t();
                    }
                    if ("gcriefce".equals(str)) {
                        if (arrayList != null && arrayList.size() == 1) {
                            return a4.c(((Boolean) arrayList.get(0)).booleanValue());
                        }
                        throw new Throwable("array illegal: " + arrayList);
                    } else if ("gcrnmfce".equals(str)) {
                        if (arrayList != null && arrayList.size() == 1) {
                            return a4.d(((Boolean) arrayList.get(0)).booleanValue());
                        }
                        throw new Throwable("array illegal: " + arrayList);
                    } else if ("gcrnm".equals(str)) {
                        return a4.u();
                    } else {
                        if ("gssn".equals(str)) {
                            return a4.v();
                        }
                        if ("gmivsn".equals(str)) {
                            return a4.w();
                        }
                        if ("godmt".equals(str)) {
                            return a4.x();
                        }
                        if ("bgmdl".equals(str)) {
                            return a4.y();
                        }
                        if ("gmnft".equals(str)) {
                            return a4.z();
                        }
                        if ("gbrd".equals(str)) {
                            return a4.A();
                        }
                        if ("gdvtp".equals(str)) {
                            return a4.B();
                        }
                        if ("qriei".equals(str)) {
                            return a4.C();
                        }
                        if ("gbhnm".equals(str)) {
                            return a4.D();
                        }
                        if ("gcld".equals(str)) {
                            return Integer.valueOf(a4.E());
                        }
                        if ("gcllc".equals(str)) {
                            return Integer.valueOf(a4.F());
                        }
                        if ("gpcmt".equals(str)) {
                            return Integer.valueOf(a4.G());
                        }
                        if ("gcmlt".equals(str)) {
                            return Integer.valueOf(a4.H());
                        }
                        if ("gcmln".equals(str)) {
                            return Integer.valueOf(a4.I());
                        }
                        if ("gcmbd".equals(str)) {
                            return Integer.valueOf(a4.J());
                        }
                        if ("gcmsd".equals(str)) {
                            return Integer.valueOf(a4.K());
                        }
                        if ("gcmnd".equals(str)) {
                            return Integer.valueOf(a4.L());
                        }
                        if ("gnbclin".equals(str)) {
                            return a4.M();
                        }
                        if ("wmcwi".equals(str)) {
                            return a4.N();
                        }
                        if ("gavlwls".equals(str)) {
                            return a4.O();
                        }
                        if ("scwls".equals(str)) {
                            return Boolean.valueOf(a4.P());
                        }
                        if ("govsit".equals(str)) {
                            return Integer.valueOf(a4.Q());
                        }
                        if ("govsnm".equals(str)) {
                            return a4.R();
                        }
                        if ("golgu".equals(str)) {
                            return a4.S();
                        }
                        if ("gocnty".equals(str)) {
                            return a4.T();
                        }
                        if ("gcuin".equals(str)) {
                            return a4.U();
                        }
                        if ("gtydvin".equals(str)) {
                            return a4.V();
                        }
                        if ("gbtrstt".equals(str)) {
                            if (arrayList != null && arrayList.size() == 1) {
                                a4.a((Handler.Callback) arrayList.get(0));
                                return null;
                            }
                            throw new Throwable("array illegal: " + arrayList);
                        } else if ("gsnbtns".equals(str)) {
                            return Integer.valueOf(a4.W());
                        } else {
                            if ("gsnbtmd".equals(str)) {
                                return Integer.valueOf(a4.X());
                            }
                            if ("gqmkn".equals(str)) {
                                return a4.Y();
                            }
                            if ("gszin".equals(str)) {
                                return a4.Z();
                            }
                            if ("gmrin".equals(str)) {
                                return a4.aa();
                            }
                            if ("gabct".equals(str)) {
                                return Integer.valueOf(a4.ab());
                            }
                            if ("galgu".equals(str)) {
                                return a4.ac();
                            }
                            if ("gscsz".equals(str)) {
                                return a4.ad();
                            }
                            if ("gneyp".equals(str)) {
                                return a4.ae();
                            }
                            if ("gnktpfs".equals(str)) {
                                return a4.af();
                            }
                            if ("gdtlnktpfs".equals(str)) {
                                return a4.ag();
                            }
                            if ("cknavbl".equals(str)) {
                                return Boolean.valueOf(a4.ah());
                            }
                            if ("gdntp".equals(str)) {
                                return Integer.valueOf(a4.ai());
                            }
                            if ("gcrslt".equals(str)) {
                                return a4.aj();
                            }
                            if ("gtmne".equals(str)) {
                                return a4.ak();
                            }
                            if ("gspt".equals(str)) {
                                return a4.al();
                            }
                            if ("gcfre".equals(str)) {
                                return a4.am();
                            }
                            if ("gctp".equals(str)) {
                                return a4.an();
                            }
                            if ("gflv".equals(str)) {
                                return a4.ao();
                            }
                            if ("gtrc".equals(str)) {
                                return a4.ap();
                            }
                            if ("gbsbd".equals(str)) {
                                return a4.aq();
                            }
                            if ("gbfspy".equals(str)) {
                                return a4.ar();
                            }
                            if ("gbplfo".equals(str)) {
                                return a4.as();
                            }
                            if ("gdvmua".equals(str)) {
                                return a4.at();
                            }
                            if ("giads".equals(str)) {
                                return a4.au();
                            }
                            if ("gia".equals(str)) {
                                if (arrayList != null && arrayList.size() == 1) {
                                    return a4.e(((Boolean) arrayList.get(0)).booleanValue());
                                }
                                throw new Throwable("array illegal: " + arrayList);
                            } else if ("gal".equals(str)) {
                                return a4.av();
                            } else {
                                if ("gsl".equals(str)) {
                                    return a4.aw();
                                }
                                if ("glctn".equals(str)) {
                                    if (arrayList != null && arrayList.size() == 3) {
                                        return a4.a(((Integer) arrayList.get(0)).intValue(), ((Integer) arrayList.get(1)).intValue(), ((Boolean) arrayList.get(2)).booleanValue());
                                    }
                                    throw new Throwable("array illegal: " + arrayList);
                                } else if ("gstmpts".equals(str)) {
                                    if (arrayList != null && arrayList.size() == 1) {
                                        return a4.b((String) arrayList.get(0));
                                    }
                                    throw new Throwable("array illegal: " + arrayList);
                                } else if ("gdvci".equals(str)) {
                                    return a4.ax();
                                } else {
                                    if ("gdvk".equals(str)) {
                                        return a4.ay();
                                    }
                                    if ("gdvkfc".equals(str)) {
                                        if (arrayList != null && arrayList.size() == 1) {
                                            return a4.f(((Boolean) arrayList.get(0)).booleanValue());
                                        }
                                        throw new Throwable("array illegal: " + arrayList);
                                    } else if ("gdfrspg".equals(str)) {
                                        if (arrayList != null && arrayList.size() == 1) {
                                            return a4.c((String) arrayList.get(0));
                                        }
                                        throw new Throwable("array illegal: " + arrayList);
                                    } else if ("grsvps".equals(str)) {
                                        if (arrayList != null && arrayList.size() == 1) {
                                            return a4.d((String) arrayList.get(0));
                                        }
                                        throw new Throwable("array illegal: " + arrayList);
                                    } else if ("gdltmpg".equals(str)) {
                                        return a4.az();
                                    } else {
                                        if ("gdltm".equals(str)) {
                                            return a4.aA();
                                        }
                                        if ("gmlt".equals(str)) {
                                            return a4.aB();
                                        }
                                        if ("ipgist".equals(str)) {
                                            if (arrayList != null && arrayList.size() == 1) {
                                                return Boolean.valueOf(a4.e((String) arrayList.get(0)));
                                            }
                                            throw new Throwable("array illegal: " + arrayList);
                                        } else if ("gscpt".equals(str)) {
                                            return a4.aC();
                                        } else {
                                            if ("gsnmd".equals(str)) {
                                                return a4.aD();
                                            }
                                            if ("gsnmdfp".equals(str)) {
                                                if (arrayList != null && arrayList.size() == 1) {
                                                    return a4.f((String) arrayList.get(0));
                                                }
                                                throw new Throwable("array illegal: " + arrayList);
                                            } else if ("gpgnm".equals(str)) {
                                                return a4.aE();
                                            } else {
                                                if ("gpnmmt".equals(str)) {
                                                    return a4.aF();
                                                }
                                                if ("gpnmfp".equals(str)) {
                                                    if (arrayList != null && arrayList.size() == 1) {
                                                        return a4.g((String) arrayList.get(0));
                                                    }
                                                    throw new Throwable("array illegal: " + arrayList);
                                                } else if ("gpvsnm".equals(str)) {
                                                    return Integer.valueOf(a4.aG());
                                                } else {
                                                    if ("gpvsme".equals(str)) {
                                                        return a4.aH();
                                                    }
                                                    if ("cinmnps".equals(str)) {
                                                        return Boolean.valueOf(a4.aI());
                                                    }
                                                    if ("gcrtpcnm".equals(str)) {
                                                        return a4.aJ();
                                                    }
                                                    if ("ciafgd".equals(str)) {
                                                        return Boolean.valueOf(a4.aK());
                                                    }
                                                    if ("ckpmsi".equals(str)) {
                                                        if (arrayList != null && arrayList.size() == 1) {
                                                            return Boolean.valueOf(a4.h((String) arrayList.get(0)));
                                                        }
                                                        throw new Throwable("array illegal: " + arrayList);
                                                    } else if ("crtavthd".equals(str)) {
                                                        return a4.aL();
                                                    } else {
                                                        if ("gaplcn".equals(str)) {
                                                            return a4.aM();
                                                        }
                                                        if ("qritsvc".equals(str)) {
                                                            if (arrayList != null && arrayList.size() == 2) {
                                                                return a4.a((Intent) arrayList.get(0), ((Integer) arrayList.get(1)).intValue());
                                                            }
                                                            throw new Throwable("array illegal: " + arrayList);
                                                        } else if ("rsaciy".equals(str)) {
                                                            if (arrayList != null && arrayList.size() == 2) {
                                                                return a4.b((Intent) arrayList.get(0), ((Integer) arrayList.get(1)).intValue());
                                                            }
                                                            throw new Throwable("array illegal: " + arrayList);
                                                        } else if ("gpgif".equals(str)) {
                                                            if (arrayList != null && arrayList.size() == 2) {
                                                                return a4.a(false, 0, (String) arrayList.get(0), ((Integer) arrayList.get(1)).intValue());
                                                            }
                                                            throw new Throwable("array illegal: " + arrayList);
                                                        } else if ("gpgiffcin".equals(str)) {
                                                            if (arrayList != null && arrayList.size() == 3) {
                                                                return a4.a(((Boolean) arrayList.get(0)).booleanValue(), 0, (String) arrayList.get(1), ((Integer) arrayList.get(2)).intValue());
                                                            }
                                                            throw new Throwable("array illegal: " + arrayList);
                                                        } else if ("gpgifstrg".equals(str)) {
                                                            if (arrayList != null && arrayList.size() == 3) {
                                                                return a4.a(false, ((Integer) arrayList.get(0)).intValue(), (String) arrayList.get(1), ((Integer) arrayList.get(2)).intValue());
                                                            }
                                                            throw new Throwable("array illegal: " + arrayList);
                                                        } else if ("gpgiffist".equals(str)) {
                                                            if (arrayList != null && arrayList.size() == 4) {
                                                                return a4.a(((Boolean) arrayList.get(0)).booleanValue(), ((Integer) arrayList.get(1)).intValue(), (String) arrayList.get(2), ((Integer) arrayList.get(3)).intValue());
                                                            }
                                                            throw new Throwable("array illegal: " + arrayList);
                                                        } else if ("hdstipu".equals(str)) {
                                                            if (arrayList != null && arrayList.size() == 1) {
                                                                a4.a((View) arrayList.get(0));
                                                                return null;
                                                            }
                                                            throw new Throwable("array illegal: " + arrayList);
                                                        } else if ("swstin".equals(str)) {
                                                            if (arrayList != null && arrayList.size() == 1) {
                                                                a4.b((View) arrayList.get(0));
                                                                return null;
                                                            }
                                                            throw new Throwable("array illegal: " + arrayList);
                                                        } else if ("gdvda".equals(str)) {
                                                            return a4.aN();
                                                        } else {
                                                            if ("gdvdtnas".equals(str)) {
                                                                return a4.aO();
                                                            }
                                                            if ("bsasm".equals(str)) {
                                                                if (arrayList != null && arrayList.size() == 2) {
                                                                    return a4.a((String) arrayList.get(0), (String) arrayList.get(1));
                                                                }
                                                                throw new Throwable("array illegal: " + arrayList);
                                                            } else if ("galtut".equals(str)) {
                                                                return Long.valueOf(a4.aP());
                                                            } else {
                                                                if ("gbrdm".equals(str)) {
                                                                    return a4.aQ();
                                                                }
                                                                if ("gdvme".equals(str)) {
                                                                    return a4.aR();
                                                                }
                                                                if ("gdpyd".equals(str)) {
                                                                    return a4.aS();
                                                                }
                                                                if ("gfgrnt".equals(str)) {
                                                                    return a4.aT();
                                                                }
                                                                if ("grivsn".equals(str)) {
                                                                    return a4.aU();
                                                                }
                                                                if ("gcrup".equals(str)) {
                                                                    return a4.aV();
                                                                }
                                                                if ("gcifm".equals(str)) {
                                                                    return a4.aW();
                                                                }
                                                                if ("godm".equals(str)) {
                                                                    return a4.aX();
                                                                }
                                                                if ("godhm".equals(str)) {
                                                                    return a4.aY();
                                                                }
                                                                if ("gadm".equals(str)) {
                                                                    return a4.aZ();
                                                                }
                                                                if ("gvdm".equals(str)) {
                                                                    return a4.ba();
                                                                }
                                                                if ("gudm".equals(str)) {
                                                                    return a4.bb();
                                                                }
                                                                if ("galdm".equals(str)) {
                                                                    return a4.bc();
                                                                }
                                                                if ("unrgrcv".equals(str)) {
                                                                    if (arrayList != null && arrayList.size() == 1) {
                                                                        a4.a((BroadcastReceiver) arrayList.get(0));
                                                                        return null;
                                                                    }
                                                                    throw new Throwable("array illegal: " + arrayList);
                                                                } else if ("rgrcv".equals(str)) {
                                                                    if (arrayList != null && arrayList.size() == 2) {
                                                                        a4.a((BroadcastReceiver) arrayList.get(0), (IntentFilter) arrayList.get(1));
                                                                        return null;
                                                                    }
                                                                    throw new Throwable("array illegal: " + arrayList);
                                                                } else if ("rgwsr".equals(str)) {
                                                                    if (arrayList != null && arrayList.size() == 1) {
                                                                        a4.a((BlockingQueue) arrayList.get(0));
                                                                        return null;
                                                                    }
                                                                    throw new Throwable("array illegal: " + arrayList);
                                                                } else if ("gtaif".equals(str)) {
                                                                    return a4.bd();
                                                                } else {
                                                                    if ("gtaifok".equals(str)) {
                                                                        return a4.be();
                                                                    }
                                                                    if ("gtaifprm".equals(str)) {
                                                                        if (arrayList != null && arrayList.size() == 2) {
                                                                            return a4.a((String) arrayList.get(0), ((Integer) arrayList.get(1)).intValue());
                                                                        }
                                                                        throw new Throwable("array illegal: " + arrayList);
                                                                    }
                                                                    return null;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private static com.mob.tools.a.a a(String str) {
        CountDownLatch c4;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            NLog mobLog = MobLog.getInstance();
            mobLog.w("WARNING: Call in main: key = " + str);
            b();
        }
        if (!f53850a.contains(str) && !d.b() && (c4 = d.a(MobSDK.getContext()).c()) != null) {
            try {
                NLog mobLog2 = MobLog.getInstance();
                mobLog2.d("dhs_ivkr k: " + str + ", cdl: " + c4, new Object[0]);
                c4.await(3500L, TimeUnit.MILLISECONDS);
            } catch (Throwable th) {
                MobLog.getInstance().d(th);
            }
        }
        return a();
    }

    private static com.mob.tools.a.a a() {
        if (d.b()) {
            return c.a(MobSDK.getContext()).f();
        }
        return c.a(MobSDK.getContext()).a();
    }

    private static void b() {
        try {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            if (stackTrace != null) {
                String str = "";
                for (StackTraceElement stackTraceElement : stackTrace) {
                    if (stackTraceElement != null) {
                        str = str + stackTraceElement.getClassName() + g0.f27568a + stackTraceElement.getMethodName() + "(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")\n";
                    }
                }
                MobLog.getInstance().d(str, new Object[0]);
            }
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
    }
}
