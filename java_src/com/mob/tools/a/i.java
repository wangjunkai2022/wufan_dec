package com.mob.tools.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.location.Location;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import com.mob.commons.s;
import com.mob.tools.MobLog;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class i implements com.mob.tools.a.a {

    /* renamed from: a  reason: collision with root package name */
    private ConcurrentHashMap<String, Object> f53694a = new ConcurrentHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private ConcurrentHashMap<String, Integer> f53695b = new ConcurrentHashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private ConcurrentHashMap<String, Long> f53696c = new ConcurrentHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private Context f53697d;

    /* renamed from: e  reason: collision with root package name */
    private b f53698e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static abstract class a<T> {

        /* renamed from: e  reason: collision with root package name */
        public T f53841e;

        /* renamed from: f  reason: collision with root package name */
        public int f53842f;

        /* renamed from: g  reason: collision with root package name */
        public long f53843g;

        public a(T t3) {
            this(t3, 1, 0L);
        }

        protected abstract T b() throws Throwable;

        public a(T t3, long j4) {
            this(t3, 1, j4);
        }

        public a(T t3, int i2, long j4) {
            this.f53842f = 1;
            this.f53843g = 0L;
            this.f53841e = t3;
            this.f53842f = i2;
            this.f53843g = j4;
        }
    }

    public i(Context context) {
        this.f53697d = context;
        this.f53698e = b.a(context);
    }

    @Override // com.mob.tools.a.a
    public String A() {
        return (String) a("brd", new a<String>(null) { // from class: com.mob.tools.a.i.41
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.aF();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String B() {
        return (String) a("dte", new a<String>(null) { // from class: com.mob.tools.a.i.42
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.T();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String[] C() {
        return (String[]) a("ieia", new a<String[]>(null) { // from class: com.mob.tools.a.i.43
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String[] b() throws Throwable {
                return i.this.f53698e.h();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String D() {
        return (String) a("bne", new a<String>(null) { // from class: com.mob.tools.a.i.45
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.u();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public int E() {
        return ((Integer) a("bscld", new a<Integer>(-1, 180000L) { // from class: com.mob.tools.a.i.46
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Integer b() throws Throwable {
                return Integer.valueOf(i.this.f53698e.K());
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int F() {
        return ((Integer) a("bscllc", new a<Integer>(-1, 180000L) { // from class: com.mob.tools.a.i.47
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Integer b() throws Throwable {
                return Integer.valueOf(i.this.f53698e.L());
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int G() {
        return ((Integer) a("bsps", new a<Integer>(-1, 180000L) { // from class: com.mob.tools.a.i.48
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Integer b() throws Throwable {
                return Integer.valueOf(i.this.f53698e.M());
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int H() {
        return ((Integer) a("bscalt", new a<Integer>(-1, 180000L) { // from class: com.mob.tools.a.i.49
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Integer b() throws Throwable {
                return Integer.valueOf(i.this.f53698e.N());
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int I() {
        return ((Integer) a("bscaln", new a<Integer>(-1, 180000L) { // from class: com.mob.tools.a.i.50
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Integer b() throws Throwable {
                return Integer.valueOf(i.this.f53698e.O());
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int J() {
        return ((Integer) a("bscabd", new a<Integer>(-1, 180000L) { // from class: com.mob.tools.a.i.51
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Integer b() throws Throwable {
                return Integer.valueOf(i.this.f53698e.P());
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int K() {
        return ((Integer) a("bscasd", new a<Integer>(-1, 180000L) { // from class: com.mob.tools.a.i.52
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Integer b() throws Throwable {
                return Integer.valueOf(i.this.f53698e.Q());
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int L() {
        return ((Integer) a("bscnd", new a<Integer>(-1, 180000L) { // from class: com.mob.tools.a.i.53
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Integer b() throws Throwable {
                return Integer.valueOf(i.this.f53698e.R());
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, Object>> M() {
        return (ArrayList) a("bsnbcl", new a<ArrayList<HashMap<String, Object>>>(null, 180000L) { // from class: com.mob.tools.a.i.54
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public ArrayList<HashMap<String, Object>> b() throws Throwable {
                return i.this.f53698e.S();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Object> N() {
        return (HashMap) a("crtwfo", new a<HashMap<String, Object>>(null, 180000L) { // from class: com.mob.tools.a.i.56
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public HashMap<String, Object> b() throws Throwable {
                return i.this.f53698e.W();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, Object>> O() {
        return (ArrayList) a((String) null, new a<ArrayList<HashMap<String, Object>>>(null, 180000L) { // from class: com.mob.tools.a.i.57
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public ArrayList<HashMap<String, Object>> b() throws Throwable {
                return i.this.f53698e.X();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean P() {
        return ((Boolean) a((String) null, new a<Boolean>(Boolean.FALSE, 180000L) { // from class: com.mob.tools.a.i.58
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Boolean b() throws Throwable {
                return Boolean.valueOf(i.this.f53698e.Y());
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public int Q() {
        return ((Integer) a("ovit", new a<Integer>(-1) { // from class: com.mob.tools.a.i.59
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Integer b() throws Throwable {
                return Integer.valueOf(i.this.f53698e.l());
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public String R() {
        return (String) a("ovne", new a<String>(null) { // from class: com.mob.tools.a.i.60
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.m();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String S() {
        return (String) a("ole", new a<String>(null) { // from class: com.mob.tools.a.i.61
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.n();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String T() {
        return (String) a("ocy", new a<String>(null) { // from class: com.mob.tools.a.i.62
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.p();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Object> U() {
        return (HashMap) a("cio0", new a<HashMap<String, Object>>(null) { // from class: com.mob.tools.a.i.63
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public HashMap<String, Object> b() throws Throwable {
                return i.this.f53698e.Z();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ArrayList<ArrayList<String>> V() {
        return (ArrayList) a("tdio", new a<ArrayList<ArrayList<String>>>(null) { // from class: com.mob.tools.a.i.64
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public ArrayList<ArrayList<String>> b() throws Throwable {
                return i.this.f53698e.aa();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public int W() {
        return ((Integer) a("snbrtn", new a<Integer>(-1) { // from class: com.mob.tools.a.i.67
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Integer b() throws Throwable {
                return Integer.valueOf(i.this.f53698e.ab());
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int X() {
        return ((Integer) a("snbrtnmd", new a<Integer>(-1) { // from class: com.mob.tools.a.i.68
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Integer b() throws Throwable {
                return Integer.valueOf(i.this.f53698e.ac());
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public String Y() {
        return (String) a("qkl", new a<String>(null) { // from class: com.mob.tools.a.i.69
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.ad();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, HashMap<String, Long>> Z() {
        return (HashMap) a("siio", new a<HashMap<String, HashMap<String, Long>>>(null) { // from class: com.mob.tools.a.i.70
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public HashMap<String, HashMap<String, Long>> b() throws Throwable {
                return i.this.f53698e.ae();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Object> aA() {
        return (HashMap) a("dfim", new a<HashMap<String, Object>>(null) { // from class: com.mob.tools.a.i.105
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public HashMap<String, Object> b() throws Throwable {
                return i.this.f53698e.aD();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, Object>> aB() {
        return (ArrayList) a("iml", new a<ArrayList<HashMap<String, Object>>>(null) { // from class: com.mob.tools.a.i.106
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public ArrayList<HashMap<String, Object>> b() throws Throwable {
                return i.this.f53698e.aE();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aC() {
        return (String) a("scph", new a<String>(null) { // from class: com.mob.tools.a.i.108
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.G();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aD() {
        return (String) a("snm", new a<String>(null) { // from class: com.mob.tools.a.i.109
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.v();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aE() {
        return (String) a("pne", new a<String>(null) { // from class: com.mob.tools.a.i.112
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.B();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aF() {
        return (String) a("ane", new a<String>(null) { // from class: com.mob.tools.a.i.113
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.C();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public int aG() {
        return ((Integer) a("avn", new a<Integer>(-1) { // from class: com.mob.tools.a.i.115
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Integer b() throws Throwable {
                return Integer.valueOf(i.this.f53698e.D());
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public String aH() {
        return (String) a("avne", new a<String>(null) { // from class: com.mob.tools.a.i.116
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.E();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean aI() {
        return ((Boolean) a("imp", new a<Boolean>(Boolean.FALSE) { // from class: com.mob.tools.a.i.117
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Boolean b() throws Throwable {
                return Boolean.valueOf(i.this.f53698e.aJ());
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public String aJ() {
        return (String) a("cpne", new a<String>(null) { // from class: com.mob.tools.a.i.118
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.aK();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean aK() {
        return s.a();
    }

    @Override // com.mob.tools.a.a
    public Object aL() {
        return a("catd", new a<Object>(null) { // from class: com.mob.tools.a.i.120
            @Override // com.mob.tools.a.i.a
            protected Object b() throws Throwable {
                b unused = i.this.f53698e;
                return b.U();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public Context aM() {
        return (Context) a((String) null, new a<Context>(null) { // from class: com.mob.tools.a.i.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Context b() throws Throwable {
                if (i.this.f53697d != null) {
                    return i.this.f53697d;
                }
                Context V = b.V();
                if (V != null) {
                    i.this.f53697d = V;
                }
                return V;
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aN() {
        return this.f53698e.j();
    }

    @Override // com.mob.tools.a.a
    public String aO() {
        return this.f53698e.k();
    }

    @Override // com.mob.tools.a.a
    public long aP() {
        return ((Long) a("alut", new a<Long>(0L) { // from class: com.mob.tools.a.i.7
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Long b() throws Throwable {
                return Long.valueOf(i.this.f53698e.aL());
            }
        })).longValue();
    }

    @Override // com.mob.tools.a.a
    public String aQ() {
        return (String) a("bard", new a<String>(null) { // from class: com.mob.tools.a.i.8
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.aM();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aR() {
        return (String) a("dvcnm", new a<String>(null) { // from class: com.mob.tools.a.i.9
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.aN();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aS() {
        return (String) a("dspid", new a<String>(null) { // from class: com.mob.tools.a.i.10
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.aO();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aT() {
        return (String) a("fngprt", new a<String>(null) { // from class: com.mob.tools.a.i.11
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.aP();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aU() {
        return (String) a("rdvsn", new a<String>(null) { // from class: com.mob.tools.a.i.12
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.aQ();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aV() {
        return (String) a("cgrp", new a<String>(null) { // from class: com.mob.tools.a.i.14
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.aR();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aW() {
        return (String) a("cinfo", new a<String>(null) { // from class: com.mob.tools.a.i.15
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.aS();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aX() {
        return (String) a("odmt", new a<String>(null) { // from class: com.mob.tools.a.i.16
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.aT();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aY() {
        return (String) a("odhmt", new a<String>(null) { // from class: com.mob.tools.a.i.17
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.aU();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aZ() {
        return (String) a("admt", new a<String>(null) { // from class: com.mob.tools.a.i.18
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.aV();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Long> aa() {
        return (HashMap) a("meio", new a<HashMap<String, Long>>(null) { // from class: com.mob.tools.a.i.71
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public HashMap<String, Long> b() throws Throwable {
                return i.this.f53698e.af();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public int ab() {
        return ((Integer) a("alct", new a<Integer>(-1) { // from class: com.mob.tools.a.i.72
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Integer b() throws Throwable {
                return Integer.valueOf(i.this.f53698e.ah());
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public String ac() {
        return (String) a("ale", new a<String>(null) { // from class: com.mob.tools.a.i.73
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.o();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ad() {
        return (String) a("sse", new a<String>(null) { // from class: com.mob.tools.a.i.74
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.q();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ae() {
        return (String) a("nte", new a<String>(null, 180000L) { // from class: com.mob.tools.a.i.75
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.w();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String af() {
        return (String) a((String) null, new a<String>(null) { // from class: com.mob.tools.a.i.76
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.y();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ag() {
        return (String) a((String) null, new a<String>(null) { // from class: com.mob.tools.a.i.78
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.z();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean ah() {
        return ((Boolean) a((String) null, new a<Boolean>(Boolean.FALSE) { // from class: com.mob.tools.a.i.79
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Boolean b() throws Throwable {
                return Boolean.valueOf(i.this.f53698e.x());
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public int ai() {
        return ((Integer) a("dtnttp", new a<Integer>(-1, 180000L) { // from class: com.mob.tools.a.i.80
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Integer b() throws Throwable {
                return Integer.valueOf(i.this.f53698e.aB());
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, String>> aj() {
        return (ArrayList) a("carn", new a<ArrayList<HashMap<String, String>>>(null) { // from class: com.mob.tools.a.i.81
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public ArrayList<HashMap<String, String>> b() throws Throwable {
                return i.this.f53698e.ar();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ak() {
        return (String) a("tize", new a<String>(null) { // from class: com.mob.tools.a.i.82
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.as();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Object> al() {
        return (HashMap) a("surt", new a<HashMap<String, Object>>(null) { // from class: com.mob.tools.a.i.83
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public HashMap<String, Object> b() throws Throwable {
                return i.this.f53698e.at();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, String> am() {
        return (HashMap) a("cpfq", new a<HashMap<String, String>>(null, 180000L) { // from class: com.mob.tools.a.i.84
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public HashMap<String, String> b() throws Throwable {
                return i.this.f53698e.au();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String an() {
        return (String) a("cpte", new a<String>(null) { // from class: com.mob.tools.a.i.85
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.av();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ao() {
        return (String) a("flvr", new a<String>(null) { // from class: com.mob.tools.a.i.86
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.aw();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Object> ap() {
        return (HashMap) a("trfc", new a<HashMap<String, Object>>(null, 180000L) { // from class: com.mob.tools.a.i.87
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public HashMap<String, Object> b() throws Throwable {
                return i.this.f53698e.ax();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aq() {
        return (String) a("babd", new a<String>(null) { // from class: com.mob.tools.a.i.89
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.ay();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ar() {
        return (String) a("bfsp", new a<String>(null) { // from class: com.mob.tools.a.i.90
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.az();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String as() {
        return (String) a("bopm", new a<String>(null) { // from class: com.mob.tools.a.i.91
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.aA();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Object> at() {
        return (HashMap) a("dmue", new a<HashMap<String, Object>>(null) { // from class: com.mob.tools.a.i.92
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public HashMap<String, Object> b() throws Throwable {
                return i.this.f53698e.aH();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String au() {
        return (String) a("iades", new a<String>(null, 180000L) { // from class: com.mob.tools.a.i.93
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                try {
                    Enumeration<NetworkInterface> c4 = l.a(i.this.f53697d).a().c();
                    while (c4.hasMoreElements()) {
                        Enumeration<InetAddress> a4 = l.a(i.this.f53697d).a().a(c4.nextElement());
                        while (a4.hasMoreElements()) {
                            InetAddress nextElement = a4.nextElement();
                            if (!nextElement.isLoopbackAddress() && (nextElement instanceof Inet4Address)) {
                                return nextElement.getHostAddress();
                            }
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    MobLog.getInstance().w(th);
                    return null;
                }
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, String>> av() {
        return (ArrayList) a((String) null, new a<ArrayList<HashMap<String, String>>>(null) { // from class: com.mob.tools.a.i.95
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public ArrayList<HashMap<String, String>> b() throws Throwable {
                return i.this.f53698e.a(false, false, true);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, String>> aw() {
        return (ArrayList) a("sal", new a<ArrayList<HashMap<String, String>>>(null) { // from class: com.mob.tools.a.i.96
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public ArrayList<HashMap<String, String>> b() throws Throwable {
                return i.this.f53698e.a(true, true, true);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ax() {
        return (String) a("ded0", new a<String>(null) { // from class: com.mob.tools.a.i.100
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.f();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ay() {
        return (String) a("deky", new a<String>(null) { // from class: com.mob.tools.a.i.101
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.A();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String az() {
        return (String) a("dfimp", new a<String>(null) { // from class: com.mob.tools.a.i.104
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.aC();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ba() {
        return (String) a("vdmt", new a<String>(null) { // from class: com.mob.tools.a.i.19
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.aW();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String bb() {
        return (String) a("udmt", new a<String>(null) { // from class: com.mob.tools.a.i.20
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.aX();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Object> bc() {
        return (HashMap) a("alldmt", new a<HashMap<String, Object>>(null) { // from class: com.mob.tools.a.i.21
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public HashMap<String, Object> b() throws Throwable {
                return i.this.f53698e.aY();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ApplicationInfo bd() {
        return (ApplicationInfo) a("gtaif", new a<ApplicationInfo>(null) { // from class: com.mob.tools.a.i.22
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public ApplicationInfo b() throws Throwable {
                return l.a(i.this.f53697d).a().f();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, Object>> be() {
        return (ArrayList) a("gtwflok", new a<ArrayList<HashMap<String, Object>>>(null, 180000L) { // from class: com.mob.tools.a.i.23
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public ArrayList<HashMap<String, Object>> b() throws Throwable {
                Boolean bool;
                if (i.this.h("android.permission.CHANGE_WIFI_STATE") && i.this.h("android.permission.ACCESS_WIFI_STATE")) {
                    LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
                    i.this.a(linkedBlockingQueue);
                    i.this.P();
                    try {
                        bool = (Boolean) linkedBlockingQueue.poll(20000L, TimeUnit.MILLISECONDS);
                    } catch (Throwable th) {
                        MobLog.getInstance().d(th);
                        bool = null;
                    }
                    if (bool == null || !bool.booleanValue()) {
                        return null;
                    }
                    return i.this.O();
                }
                return null;
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean c() {
        return ((Boolean) a("pd0", new a<Boolean>(Boolean.FALSE) { // from class: com.mob.tools.a.i.44
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Boolean b() {
                return Boolean.valueOf(i.this.f53698e.aj());
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public List<String> d(String str) {
        return null;
    }

    @Override // com.mob.tools.a.a
    public boolean d() {
        return ((Boolean) a("dee", new a<Boolean>(Boolean.FALSE) { // from class: com.mob.tools.a.i.55
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Boolean b() {
                return Boolean.valueOf(i.this.f53698e.ao());
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean e() {
        return ((Boolean) a("vn0", new a<Boolean>(Boolean.FALSE) { // from class: com.mob.tools.a.i.66
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Boolean b() {
                return Boolean.valueOf(i.this.f53698e.an());
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean f() {
        return ((Boolean) a("ua0", new a<Boolean>(Boolean.FALSE, 180000L) { // from class: com.mob.tools.a.i.77
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Boolean b() {
                return Boolean.valueOf(i.this.f53698e.am());
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean g() {
        return ((Boolean) a("dee1", new a<Boolean>(Boolean.FALSE, 180000L) { // from class: com.mob.tools.a.i.88
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Boolean b() {
                return Boolean.valueOf(i.this.f53698e.al());
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean h() {
        return ((Boolean) a("uee", new a<Boolean>(Boolean.FALSE, 180000L) { // from class: com.mob.tools.a.i.99
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Boolean b() {
                return Boolean.valueOf(i.this.f53698e.ak());
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean i() {
        return ((Boolean) a("wpy", new a<Boolean>(Boolean.FALSE, 180000L) { // from class: com.mob.tools.a.i.110
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Boolean b() {
                return Boolean.valueOf(i.this.f53698e.ap());
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean j() {
        return ((Boolean) a("smlt", new a<Boolean>(Boolean.FALSE) { // from class: com.mob.tools.a.i.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Boolean b() {
                return Boolean.valueOf(i.this.f53698e.aG());
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean k() {
        return ((Boolean) a("sde", new a<Boolean>(Boolean.FALSE) { // from class: com.mob.tools.a.i.24
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Boolean b() {
                return Boolean.valueOf(i.this.f53698e.aI());
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public String l() {
        return (String) a("sln", new a<String>(null) { // from class: com.mob.tools.a.i.26
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() {
                return i.this.f53698e.i();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String m() {
        return (String) a("agi", new a<String>(null) { // from class: com.mob.tools.a.i.27
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.H();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String n() {
        return a(false);
    }

    @Override // com.mob.tools.a.a
    public String o() {
        ConcurrentHashMap<String, Object> concurrentHashMap = this.f53694a;
        if (concurrentHashMap == null || !concurrentHashMap.containsKey("iei")) {
            return null;
        }
        return (String) this.f53694a.get("iei");
    }

    @Override // com.mob.tools.a.a
    public String p() {
        return b(false);
    }

    @Override // com.mob.tools.a.a
    public String[] q() {
        return (String[]) a("isia", new a<String[]>(null) { // from class: com.mob.tools.a.i.30
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String[] b() throws Throwable {
                return i.this.f53698e.J();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String r() {
        return (String) a("ssd", new a<String>(null, 180000L) { // from class: com.mob.tools.a.i.31
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.b();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String s() {
        return (String) a("bsd", new a<String>(null, 180000L) { // from class: com.mob.tools.a.i.32
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.c();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String t() {
        return c(false);
    }

    @Override // com.mob.tools.a.a
    public String u() {
        return d(false);
    }

    @Override // com.mob.tools.a.a
    public String v() {
        return (String) a("ssnr", new a<String>(null) { // from class: com.mob.tools.a.i.36
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.t();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String w() {
        return (String) a("mvn", new a<String>(null) { // from class: com.mob.tools.a.i.37
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.ag();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String x() {
        return (String) a("oad", new a<String>(null) { // from class: com.mob.tools.a.i.38
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return com.mob.commons.b.d.c(i.this.f53697d);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String y() {
        return (String) a("mol", new a<String>(null) { // from class: com.mob.tools.a.i.39
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.d();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String z() {
        return (String) a("mar", new a<String>(null) { // from class: com.mob.tools.a.i.40
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.e();
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean b() {
        return ((Boolean) a("cx0", new a<Boolean>(Boolean.FALSE) { // from class: com.mob.tools.a.i.33
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Boolean b() {
                return Boolean.valueOf(i.this.f53698e.ai());
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public String c(boolean z3) {
        return (String) a("car", new a<String>(null) { // from class: com.mob.tools.a.i.34
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.r();
            }
        }, z3);
    }

    @Override // com.mob.tools.a.a
    public String d(boolean z3) {
        return (String) a("cne", new a<String>(null) { // from class: com.mob.tools.a.i.35
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.s();
            }
        }, z3);
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, String>> e(final boolean z3) {
        return (ArrayList) a((String) null, new a<ArrayList<HashMap<String, String>>>(null) { // from class: com.mob.tools.a.i.94
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public ArrayList<HashMap<String, String>> b() throws Throwable {
                return i.this.f53698e.a(false, z3, true);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String f(final boolean z3) {
        return (String) a((String) null, new a<String>(null) { // from class: com.mob.tools.a.i.102
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.a(z3);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String g(final String str) {
        return (String) a((String) null, new a<String>(null) { // from class: com.mob.tools.a.i.114
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.e(str);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean h(final String str) {
        return ((Boolean) a((String) null, new a<Boolean>(Boolean.FALSE) { // from class: com.mob.tools.a.i.119
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Boolean b() throws Throwable {
                return Boolean.valueOf(i.this.f53698e.f(str));
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean a() {
        return ((Boolean) a("ird", new a<Boolean>(Boolean.FALSE) { // from class: com.mob.tools.a.i.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Boolean b() {
                return Boolean.valueOf(i.this.f53698e.a());
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public String b(boolean z3) {
        return (String) a("isi", new a<String>(null) { // from class: com.mob.tools.a.i.29
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.I();
            }
        }, z3);
    }

    @Override // com.mob.tools.a.a
    public String c(final String str) {
        return (String) a((String) null, new a<String>(null) { // from class: com.mob.tools.a.i.103
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.g(str);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean e(final String str) {
        return ((Boolean) a((String) null, new a<Boolean>(Boolean.FALSE) { // from class: com.mob.tools.a.i.107
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Boolean b() throws Throwable {
                return Boolean.valueOf(i.this.f53698e.h(str));
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public String f(final String str) {
        return (String) a("snm_" + str, new a<String>(null) { // from class: com.mob.tools.a.i.111
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.c(str);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean a(final String str) {
        return ((Boolean) a("fps-" + str, new a<Boolean>(Boolean.FALSE) { // from class: com.mob.tools.a.i.13
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Boolean b() {
                return Boolean.valueOf(i.this.f53698e.j(str));
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public String b(final String str) {
        return (String) a("syprt-" + str, new a<String>(null) { // from class: com.mob.tools.a.i.98
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.b(str);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String a(boolean z3) {
        return (String) a("iei", new a<String>(null) { // from class: com.mob.tools.a.i.28
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public String b() throws Throwable {
                return i.this.f53698e.g();
            }
        }, z3);
    }

    @Override // com.mob.tools.a.a
    public ResolveInfo b(final Intent intent, final int i2) {
        return (ResolveInfo) a((String) null, new a<ResolveInfo>(null) { // from class: com.mob.tools.a.i.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public ResolveInfo b() throws Throwable {
                return l.a(i.this.f53697d).a().b(intent, i2);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public void a(Handler.Callback callback) {
        if (callback != null) {
            callback.handleMessage((Message) a("batrst", new a<Message>(Message.obtain(), 180000L) { // from class: com.mob.tools.a.i.65
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.mob.tools.a.i.a
                /* renamed from: a */
                public Message b() throws Throwable {
                    final LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
                    i.this.f53698e.a(new Handler.Callback() { // from class: com.mob.tools.a.i.65.1
                        @Override // android.os.Handler.Callback
                        public boolean handleMessage(Message message) {
                            try {
                                linkedBlockingQueue.offer(message);
                                return false;
                            } catch (Throwable th) {
                                MobLog.getInstance().d(th);
                                return false;
                            }
                        }
                    });
                    return (Message) linkedBlockingQueue.poll(3000L, TimeUnit.MILLISECONDS);
                }
            }));
        }
    }

    @Override // com.mob.tools.a.a
    public void b(View view) {
        this.f53698e.b(view);
    }

    @Override // com.mob.tools.a.a
    public Location a(final int i2, final int i4, final boolean z3) {
        return (Location) a("loc-" + i2 + "-" + i4 + "-" + z3, new a<Location>(null, 180000L) { // from class: com.mob.tools.a.i.97
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public Location b() throws Throwable {
                return i.this.f53698e.a(i2, i4, z3);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public List<ResolveInfo> a(final Intent intent, final int i2) {
        return (List) a((String) null, new a<List<ResolveInfo>>(null) { // from class: com.mob.tools.a.i.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public List<ResolveInfo> b() throws Throwable {
                return l.a(i.this.f53697d).a().a(intent, i2);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public PackageInfo a(boolean z3, int i2, final String str, final int i4) {
        return (PackageInfo) a("gpi-" + i2 + "-" + str + "-" + i4, new a<PackageInfo>(null, i2) { // from class: com.mob.tools.a.i.6
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public PackageInfo b() throws Throwable {
                return l.a(i.this.f53697d).a().a(str, i4);
            }
        }, z3);
    }

    @Override // com.mob.tools.a.a
    public void a(View view) {
        this.f53698e.a(view);
    }

    @Override // com.mob.tools.a.a
    public String a(String str, String str2) {
        return this.f53698e.a(str, str2);
    }

    @Override // com.mob.tools.a.a
    public void a(BroadcastReceiver broadcastReceiver) throws Throwable {
        this.f53698e.a(broadcastReceiver);
    }

    @Override // com.mob.tools.a.a
    public void a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) throws Throwable {
        this.f53698e.a(broadcastReceiver, intentFilter);
    }

    @Override // com.mob.tools.a.a
    public void a(BlockingQueue<Boolean> blockingQueue) {
        this.f53698e.a(blockingQueue);
    }

    @Override // com.mob.tools.a.a
    public ApplicationInfo a(final String str, final int i2) {
        return (ApplicationInfo) a((String) null, new a<ApplicationInfo>(null) { // from class: com.mob.tools.a.i.25
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.mob.tools.a.i.a
            /* renamed from: a */
            public ApplicationInfo b() throws Throwable {
                return l.a(i.this.f53697d).a().b(str, i2);
            }
        });
    }

    private <T> T a(String str, a<T> aVar) {
        return (T) a(str, (a<Object>) aVar, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <T> T a(java.lang.String r10, com.mob.tools.a.i.a<T> r11, boolean r12) {
        /*
            r9 = this;
            r0 = 0
            if (r10 != 0) goto L9
            java.lang.Object r10 = r11.b()     // Catch: java.lang.Throwable -> L85
            goto L8e
        L9:
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Integer> r1 = r9.f53695b     // Catch: java.lang.Throwable -> L85
            java.lang.Object r1 = r1.get(r10)     // Catch: java.lang.Throwable -> L85
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> L85
            if (r1 == 0) goto L28
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Object> r2 = r9.f53694a     // Catch: java.lang.Throwable -> L85
            java.lang.Object r0 = r2.get(r10)     // Catch: java.lang.Throwable -> L85
            if (r0 != 0) goto L28
            int r2 = r1.intValue()     // Catch: java.lang.Throwable -> L85
            int r3 = r11.f53842f     // Catch: java.lang.Throwable -> L85
            if (r2 < r3) goto L28
            if (r12 != 0) goto L28
            T r10 = r11.f53841e     // Catch: java.lang.Throwable -> L85
            return r10
        L28:
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Long> r2 = r9.f53696c     // Catch: java.lang.Throwable -> L85
            java.lang.Object r2 = r2.get(r10)     // Catch: java.lang.Throwable -> L85
            java.lang.Long r2 = (java.lang.Long) r2     // Catch: java.lang.Throwable -> L85
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L41
            long r5 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L85
            long r7 = r2.longValue()     // Catch: java.lang.Throwable -> L85
            int r2 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r2 < 0) goto L41
            r3 = 1
        L41:
            if (r0 == 0) goto L47
            if (r3 != 0) goto L47
            if (r12 == 0) goto L8d
        L47:
            java.lang.Object r0 = r11.b()     // Catch: java.lang.Throwable -> L85
            if (r0 == 0) goto L6a
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Object> r12 = r9.f53694a     // Catch: java.lang.Throwable -> L85
            r12.put(r10, r0)     // Catch: java.lang.Throwable -> L85
            long r2 = r11.f53843g     // Catch: java.lang.Throwable -> L85
            r5 = 0
            int r12 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r12 <= 0) goto L6a
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Long> r12 = r9.f53696c     // Catch: java.lang.Throwable -> L85
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L85
            long r5 = r11.f53843g     // Catch: java.lang.Throwable -> L85
            long r2 = r2 + r5
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L85
            r12.put(r10, r2)     // Catch: java.lang.Throwable -> L85
        L6a:
            if (r1 != 0) goto L76
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Integer> r12 = r9.f53695b     // Catch: java.lang.Throwable -> L85
            java.lang.Integer r1 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L85
            r12.put(r10, r1)     // Catch: java.lang.Throwable -> L85
            goto L8d
        L76:
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Integer> r12 = r9.f53695b     // Catch: java.lang.Throwable -> L85
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L85
            int r1 = r1 + r4
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L85
            r12.put(r10, r1)     // Catch: java.lang.Throwable -> L85
            goto L8d
        L85:
            r10 = move-exception
            com.mob.tools.log.NLog r12 = com.mob.tools.MobLog.getInstance()
            r12.d(r10)
        L8d:
            r10 = r0
        L8e:
            if (r10 != 0) goto L92
            T r10 = r11.f53841e
        L92:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.tools.a.i.a(java.lang.String, com.mob.tools.a.i$a, boolean):java.lang.Object");
    }
}
