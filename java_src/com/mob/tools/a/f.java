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
import android.view.View;
import com.mob.tools.MobLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes4.dex */
public class f implements com.mob.tools.a.a {

    /* renamed from: a  reason: collision with root package name */
    private HashMap<String, Object> f53410a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public abstract class a<T> {

        /* renamed from: a  reason: collision with root package name */
        private Object[] f53546a;

        public a(Object... objArr) {
            this.f53546a = objArr;
        }

        /* JADX WARN: Multi-variable type inference failed */
        protected T a(Object obj) {
            return obj;
        }

        abstract T b(Object[] objArr);
    }

    public f(HashMap<String, Object> hashMap) {
        this.f53410a = hashMap;
    }

    @Override // com.mob.tools.a.a
    public String A() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.62
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gbrd", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String B() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.63
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gdvtp", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String[] C() {
        return (String[]) a(String[].class, new a<String[]>(new Object[0]) { // from class: com.mob.tools.a.f.64
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String[] b(Object[] objArr) {
                return a(f.this.a("qriei", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String D() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.65
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gbhnm", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public int E() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.f.66
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Integer b(Object[] objArr) {
                return a(f.this.a("gcld", objArr));
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int F() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.f.67
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Integer b(Object[] objArr) {
                return a(f.this.a("gcllc", objArr));
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int G() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.f.68
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Integer b(Object[] objArr) {
                return a(f.this.a("gpcmt", objArr));
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int H() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.f.69
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Integer b(Object[] objArr) {
                return a(f.this.a("gcmlt", objArr));
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int I() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.f.71
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Integer b(Object[] objArr) {
                return a(f.this.a("gcmln", objArr));
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int J() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.f.72
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Integer b(Object[] objArr) {
                return a(f.this.a("gcmbd", objArr));
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int K() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.f.73
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Integer b(Object[] objArr) {
                return a(f.this.a("gcmsd", objArr));
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int L() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.f.74
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Integer b(Object[] objArr) {
                return a(f.this.a("gcmnd", objArr));
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, Object>> M() {
        return (ArrayList) a(ArrayList.class, new a<ArrayList>(new Object[0]) { // from class: com.mob.tools.a.f.75
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public ArrayList b(Object[] objArr) {
                return a(f.this.a("gnbclin", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Object> N() {
        return (HashMap) a(HashMap.class, new a<HashMap>(new Object[0]) { // from class: com.mob.tools.a.f.76
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public HashMap b(Object[] objArr) {
                return a(f.this.a("wmcwi", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, Object>> O() {
        return (ArrayList) a(ArrayList.class, new a<ArrayList>(new Object[0]) { // from class: com.mob.tools.a.f.77
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public ArrayList b(Object[] objArr) {
                return a(f.this.a("gavlwls", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean P() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.f.78
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Boolean b(Object[] objArr) {
                return a(f.this.a("scwls", objArr));
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public int Q() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.f.79
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Integer b(Object[] objArr) {
                return a(f.this.a("govsit", objArr));
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public String R() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.80
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("govsnm", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String S() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.82
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("golgu", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String T() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.83
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gocnty", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Object> U() {
        return (HashMap) a(HashMap.class, new a<HashMap>(new Object[0]) { // from class: com.mob.tools.a.f.84
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public HashMap b(Object[] objArr) {
                return a(f.this.a("gcuin", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ArrayList<ArrayList<String>> V() {
        return (ArrayList) a(ArrayList.class, new a<ArrayList>(new Object[0]) { // from class: com.mob.tools.a.f.85
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public ArrayList b(Object[] objArr) {
                return a(f.this.a("gtydvin", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public int W() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.f.87
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Integer b(Object[] objArr) {
                return a(f.this.a("gsnbtns", objArr));
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int X() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.f.88
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Integer b(Object[] objArr) {
                return a(f.this.a("gsnbtmd", objArr));
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public String Y() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.89
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gqmkn", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, HashMap<String, Long>> Z() {
        return (HashMap) a(HashMap.class, new a<HashMap>(new Object[0]) { // from class: com.mob.tools.a.f.90
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public HashMap b(Object[] objArr) {
                return a(f.this.a("gszin", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Object> aA() {
        return (HashMap) a(HashMap.class, new a<HashMap>(new Object[0]) { // from class: com.mob.tools.a.f.127
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public HashMap b(Object[] objArr) {
                return a(f.this.a("gdltm", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, Object>> aB() {
        return (ArrayList) a(ArrayList.class, new a<ArrayList>(new Object[0]) { // from class: com.mob.tools.a.f.128
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public ArrayList b(Object[] objArr) {
                return a(f.this.a("gmlt", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aC() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.130
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gscpt", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aD() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.131
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gsnmd", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aE() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.133
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gpgnm", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aF() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.134
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gpnmmt", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public int aG() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.f.3
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Integer b(Object[] objArr) {
                return a(f.this.a("gpvsnm", objArr));
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public String aH() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.4
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gpvsme", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean aI() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.f.5
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Boolean b(Object[] objArr) {
                return a(f.this.a("cinmnps", objArr));
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public String aJ() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.6
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gcrtpcnm", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean aK() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.f.7
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Boolean b(Object[] objArr) {
                return a(f.this.a("ciafgd", objArr));
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public Object aL() {
        return a(Object.class, new a<Object>(new Object[0]) { // from class: com.mob.tools.a.f.9
            @Override // com.mob.tools.a.f.a
            Object b(Object[] objArr) {
                return a(f.this.a("crtavthd", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public Context aM() {
        return (Context) a(Context.class, new a<Context>(new Object[0]) { // from class: com.mob.tools.a.f.10
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Context b(Object[] objArr) {
                return a(f.this.a("gaplcn", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aN() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.17
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gdvda", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aO() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.18
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gdvdtnas", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public long aP() {
        return ((Long) a(Long.TYPE, new a<Long>(new Object[0]) { // from class: com.mob.tools.a.f.20
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Long b(Object[] objArr) {
                return a(f.this.a("galtut", objArr));
            }
        })).longValue();
    }

    @Override // com.mob.tools.a.a
    public String aQ() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.21
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gbrdm", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aR() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.22
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gdvme", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aS() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.23
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gdpyd", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aT() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.25
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gfgrnt", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aU() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.26
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("grivsn", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aV() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.27
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gcrup", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aW() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.28
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gcifm", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aX() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.29
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("godm", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aY() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.30
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("godhm", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aZ() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.31
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gadm", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Long> aa() {
        return (HashMap) a(HashMap.class, new a<HashMap>(new Object[0]) { // from class: com.mob.tools.a.f.91
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public HashMap b(Object[] objArr) {
                return a(f.this.a("gmrin", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public int ab() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.f.93
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Integer b(Object[] objArr) {
                return a(f.this.a("gabct", objArr));
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public String ac() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.94
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("galgu", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ad() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.95
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gscsz", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ae() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.96
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gneyp", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String af() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.97
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gnktpfs", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ag() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.98
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gdtlnktpfs", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean ah() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.f.99
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Boolean b(Object[] objArr) {
                return a(f.this.a("cknavbl", objArr));
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public int ai() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.f.100
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Integer b(Object[] objArr) {
                return a(f.this.a("gdntp", objArr));
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, String>> aj() {
        return (ArrayList) a(ArrayList.class, new a<ArrayList>(new Object[0]) { // from class: com.mob.tools.a.f.101
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public ArrayList b(Object[] objArr) {
                return a(f.this.a("gcrslt", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ak() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.102
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gtmne", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Object> al() {
        return (HashMap) a(HashMap.class, new a<HashMap>(new Object[0]) { // from class: com.mob.tools.a.f.104
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public HashMap b(Object[] objArr) {
                return a(f.this.a("gspt", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, String> am() {
        return (HashMap) a(HashMap.class, new a<HashMap>(new Object[0]) { // from class: com.mob.tools.a.f.105
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public HashMap b(Object[] objArr) {
                return a(f.this.a("gcfre", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String an() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.106
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gctp", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ao() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.107
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gflv", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Object> ap() {
        return (HashMap) a(HashMap.class, new a<HashMap>(new Object[0]) { // from class: com.mob.tools.a.f.108
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public HashMap b(Object[] objArr) {
                return a(f.this.a("gtrc", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aq() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.109
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gbsbd", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ar() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.110
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gbfspy", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String as() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.111
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gbplfo", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Object> at() {
        return (HashMap) a(HashMap.class, new a<HashMap>(new Object[0]) { // from class: com.mob.tools.a.f.112
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public HashMap b(Object[] objArr) {
                return a(f.this.a("gdvmua", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String au() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.113
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("giads", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, String>> av() {
        return (ArrayList) a(ArrayList.class, new a<ArrayList>(new Object[0]) { // from class: com.mob.tools.a.f.116
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public ArrayList b(Object[] objArr) {
                return a(f.this.a("gal", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, String>> aw() {
        return (ArrayList) a(ArrayList.class, new a<ArrayList>(new Object[0]) { // from class: com.mob.tools.a.f.117
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public ArrayList b(Object[] objArr) {
                return a(f.this.a("gsl", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ax() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.120
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gdvci", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ay() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.121
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gdvk", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String az() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.126
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gdltmpg", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean b() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.f.48
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Boolean b(Object[] objArr) {
                return a(f.this.a("cx", objArr));
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public String ba() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.32
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gvdm", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String bb() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.33
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gudm", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Object> bc() {
        return (HashMap) a(HashMap.class, new a<HashMap>(new Object[0]) { // from class: com.mob.tools.a.f.34
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public HashMap b(Object[] objArr) {
                return a(f.this.a("galdm", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ApplicationInfo bd() {
        return (ApplicationInfo) a(ApplicationInfo.class, new a<ApplicationInfo>(new Object[0]) { // from class: com.mob.tools.a.f.39
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public ApplicationInfo b(Object[] objArr) {
                return a(f.this.a("gtaif", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, Object>> be() {
        return (ArrayList) a(ArrayList.class, new a<ArrayList>(new Object[0]) { // from class: com.mob.tools.a.f.40
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public ArrayList b(Object[] objArr) {
                return a(f.this.a("gtaifok", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean c() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.f.59
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Boolean b(Object[] objArr) {
                return a(f.this.a("ckpd", objArr));
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean d() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.f.70
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Boolean b(Object[] objArr) {
                return a(f.this.a("degb", objArr));
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean e() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.f.81
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Boolean b(Object[] objArr) {
                return a(f.this.a("vnmt", objArr));
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean f() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.f.92
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Boolean b(Object[] objArr) {
                return a(f.this.a("ckua", objArr));
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean g() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.f.103
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Boolean b(Object[] objArr) {
                return a(f.this.a("dvenbl", objArr));
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean h() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.f.114
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Boolean b(Object[] objArr) {
                return a(f.this.a("ubenbl", objArr));
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean i() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.f.125
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Boolean b(Object[] objArr) {
                return a(f.this.a("iwpxy", objArr));
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean j() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.f.2
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Boolean b(Object[] objArr) {
                return a(f.this.a("ismlt", objArr));
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean k() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.f.24
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Boolean b(Object[] objArr) {
                return a(f.this.a("istvdv", objArr));
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public String l() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.35
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gsrln", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String m() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.42
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gavti", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String n() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.43
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gimi", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String o() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.45
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gimimem", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String p() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.46
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gisi", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String[] q() {
        return (String[]) a(String[].class, new a<String[]>(new Object[0]) { // from class: com.mob.tools.a.f.49
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String[] b(Object[] objArr) {
                return a(f.this.a("qryisi", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String r() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.50
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gsimt", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String s() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.51
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gbsi", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String t() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.52
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gcrie", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String u() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.54
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gcrnm", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String v() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.56
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gssn", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String w() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.57
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gmivsn", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String x() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.58
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("godmt", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String y() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.60
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("bgmdl", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String z() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.f.61
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gmnft", objArr));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object a(String str, Object[] objArr) {
        LinkedList<Object> a4;
        try {
            HashMap<String, Object> hashMap = this.f53410a;
            if (hashMap == null || !hashMap.containsKey(str) || (a4 = com.mob.commons.cc.a.a(this.f53410a.get(str), objArr)) == null || a4.isEmpty()) {
                return null;
            }
            return a4.get(0);
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }

    @Override // com.mob.tools.a.a
    public String b(boolean z3) {
        return (String) a(String.class, new a<String>(Boolean.valueOf(z3)) { // from class: com.mob.tools.a.f.47
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gisip", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String c(boolean z3) {
        return (String) a(String.class, new a<String>(Boolean.valueOf(z3)) { // from class: com.mob.tools.a.f.53
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gcriefce", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String d(boolean z3) {
        return (String) a(String.class, new a<String>(Boolean.valueOf(z3)) { // from class: com.mob.tools.a.f.55
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gcrnmfce", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, String>> e(boolean z3) {
        return (ArrayList) a(ArrayList.class, new a<ArrayList>(Boolean.valueOf(z3)) { // from class: com.mob.tools.a.f.115
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public ArrayList b(Object[] objArr) {
                return a(f.this.a("gia", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String f(boolean z3) {
        return (String) a(String.class, new a<String>(Boolean.valueOf(z3)) { // from class: com.mob.tools.a.f.122
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gdvkfc", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String g(String str) {
        return (String) a(String.class, new a<String>(str) { // from class: com.mob.tools.a.f.135
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gpnmfp", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean h(String str) {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(str) { // from class: com.mob.tools.a.f.8
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Boolean b(Object[] objArr) {
                return a(f.this.a("ckpmsi", objArr));
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public String b(String str) {
        return (String) a(String.class, new a<String>(str) { // from class: com.mob.tools.a.f.119
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gstmpts", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String c(String str) {
        return (String) a(String.class, new a<String>(str) { // from class: com.mob.tools.a.f.123
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gdfrspg", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public List<String> d(String str) {
        return (List) a(List.class, new a<List>(str) { // from class: com.mob.tools.a.f.124
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public List b(Object[] objArr) {
                return a(f.this.a("grsvps", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean e(String str) {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(str) { // from class: com.mob.tools.a.f.129
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Boolean b(Object[] objArr) {
                return a(f.this.a("ipgist", objArr));
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public String f(String str) {
        return (String) a(String.class, new a<String>(str) { // from class: com.mob.tools.a.f.132
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gsnmdfp", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ResolveInfo b(Intent intent, int i2) {
        return (ResolveInfo) a(ResolveInfo.class, new a<ResolveInfo>(intent, Integer.valueOf(i2)) { // from class: com.mob.tools.a.f.12
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public ResolveInfo b(Object[] objArr) {
                return a(f.this.a("rsaciy", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public void b(View view) {
        a(Void.class, new a<Void>(view) { // from class: com.mob.tools.a.f.16
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Void b(Object[] objArr) {
                return a(f.this.a("swstin", objArr));
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x007f, code lost:
        if (r3 != java.lang.Boolean.TYPE) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0086, code lost:
        if (r3 != java.lang.Integer.TYPE) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0091, code lost:
        if (r3 != java.lang.Byte.TYPE) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x009a, code lost:
        if (r3 != java.lang.Character.TYPE) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00a3, code lost:
        if (r3 != java.lang.Short.TYPE) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ac, code lost:
        if (r3 != java.lang.Long.TYPE) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00b7, code lost:
        if (r3 != java.lang.Float.TYPE) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00c1, code lost:
        if (r3 != java.lang.Double.TYPE) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00c9, code lost:
        return (T) java.lang.Double.valueOf(0.0d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:?, code lost:
        return (T) java.lang.Boolean.FALSE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:?, code lost:
        return (T) (-1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:?, code lost:
        return (T) (byte) 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:?, code lost:
        return (T) 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:?, code lost:
        return (T) 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:?, code lost:
        return (T) 0L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:?, code lost:
        return (T) java.lang.Float.valueOf(0.0f);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:?, code lost:
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <T> T a(java.lang.Class<T> r3, com.mob.tools.a.f.a<T> r4) {
        /*
            r2 = this;
            r0 = 0
            if (r3 == 0) goto L7b
            if (r4 == 0) goto L7b
            java.lang.Object[] r1 = com.mob.tools.a.f.a.a(r4)     // Catch: java.lang.Throwable -> L73
            java.lang.Object r4 = r4.b(r1)     // Catch: java.lang.Throwable -> L73
            if (r4 == 0) goto L7b
            java.lang.Class<java.lang.Void> r1 = java.lang.Void.class
            if (r3 != r1) goto L15
            goto L7b
        L15:
            java.lang.Class r1 = java.lang.Boolean.TYPE     // Catch: java.lang.Throwable -> L73
            if (r3 != r1) goto L21
            java.lang.Class<java.lang.Boolean> r1 = java.lang.Boolean.class
            java.lang.Object r4 = r1.cast(r4)     // Catch: java.lang.Throwable -> L73
        L1f:
            r0 = r4
            goto L7b
        L21:
            java.lang.Class r1 = java.lang.Integer.TYPE     // Catch: java.lang.Throwable -> L73
            if (r3 != r1) goto L2c
            java.lang.Class<java.lang.Integer> r1 = java.lang.Integer.class
            java.lang.Object r4 = r1.cast(r4)     // Catch: java.lang.Throwable -> L73
            goto L1f
        L2c:
            java.lang.Class r1 = java.lang.Byte.TYPE     // Catch: java.lang.Throwable -> L73
            if (r3 != r1) goto L37
            java.lang.Class<java.lang.Byte> r1 = java.lang.Byte.class
            java.lang.Object r4 = r1.cast(r4)     // Catch: java.lang.Throwable -> L73
            goto L1f
        L37:
            java.lang.Class r1 = java.lang.Character.TYPE     // Catch: java.lang.Throwable -> L73
            if (r3 != r1) goto L42
            java.lang.Class<java.lang.Character> r1 = java.lang.Character.class
            java.lang.Object r4 = r1.cast(r4)     // Catch: java.lang.Throwable -> L73
            goto L1f
        L42:
            java.lang.Class r1 = java.lang.Short.TYPE     // Catch: java.lang.Throwable -> L73
            if (r3 != r1) goto L4d
            java.lang.Class<java.lang.Short> r1 = java.lang.Short.class
            java.lang.Object r4 = r1.cast(r4)     // Catch: java.lang.Throwable -> L73
            goto L1f
        L4d:
            java.lang.Class r1 = java.lang.Long.TYPE     // Catch: java.lang.Throwable -> L73
            if (r3 != r1) goto L58
            java.lang.Class<java.lang.Long> r1 = java.lang.Long.class
            java.lang.Object r4 = r1.cast(r4)     // Catch: java.lang.Throwable -> L73
            goto L1f
        L58:
            java.lang.Class r1 = java.lang.Float.TYPE     // Catch: java.lang.Throwable -> L73
            if (r3 != r1) goto L63
            java.lang.Class<java.lang.Float> r1 = java.lang.Float.class
            java.lang.Object r4 = r1.cast(r4)     // Catch: java.lang.Throwable -> L73
            goto L1f
        L63:
            java.lang.Class r1 = java.lang.Double.TYPE     // Catch: java.lang.Throwable -> L73
            if (r3 != r1) goto L6e
            java.lang.Class<java.lang.Double> r1 = java.lang.Double.class
            java.lang.Object r4 = r1.cast(r4)     // Catch: java.lang.Throwable -> L73
            goto L1f
        L6e:
            java.lang.Object r4 = r3.cast(r4)     // Catch: java.lang.Throwable -> L73
            goto L1f
        L73:
            r4 = move-exception
            com.mob.tools.log.NLog r1 = com.mob.tools.MobLog.getInstance()
            r1.d(r4)
        L7b:
            if (r0 != 0) goto Lc9
            java.lang.Class r4 = java.lang.Boolean.TYPE
            if (r3 != r4) goto L84
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            goto Lc9
        L84:
            java.lang.Class r4 = java.lang.Integer.TYPE
            if (r3 != r4) goto L8e
            r3 = -1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r3)
            goto Lc9
        L8e:
            java.lang.Class r4 = java.lang.Byte.TYPE
            r1 = 0
            if (r3 != r4) goto L98
            java.lang.Byte r0 = java.lang.Byte.valueOf(r1)
            goto Lc9
        L98:
            java.lang.Class r4 = java.lang.Character.TYPE
            if (r3 != r4) goto La1
            java.lang.Character r0 = java.lang.Character.valueOf(r1)
            goto Lc9
        La1:
            java.lang.Class r4 = java.lang.Short.TYPE
            if (r3 != r4) goto Laa
            java.lang.Short r0 = java.lang.Short.valueOf(r1)
            goto Lc9
        Laa:
            java.lang.Class r4 = java.lang.Long.TYPE
            if (r3 != r4) goto Lb5
            r3 = 0
            java.lang.Long r0 = java.lang.Long.valueOf(r3)
            goto Lc9
        Lb5:
            java.lang.Class r4 = java.lang.Float.TYPE
            if (r3 != r4) goto Lbf
            r3 = 0
            java.lang.Float r0 = java.lang.Float.valueOf(r3)
            goto Lc9
        Lbf:
            java.lang.Class r4 = java.lang.Double.TYPE
            if (r3 != r4) goto Lc9
            r3 = 0
            java.lang.Double r0 = java.lang.Double.valueOf(r3)
        Lc9:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.tools.a.f.a(java.lang.Class, com.mob.tools.a.f$a):java.lang.Object");
    }

    @Override // com.mob.tools.a.a
    public boolean a() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.f.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Boolean b(Object[] objArr) {
                return a(f.this.a("cird", objArr));
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean a(String str) {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(str) { // from class: com.mob.tools.a.f.13
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Boolean b(Object[] objArr) {
                return a(f.this.a("ifkps", objArr));
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public String a(boolean z3) {
        return (String) a(String.class, new a<String>(Boolean.valueOf(z3)) { // from class: com.mob.tools.a.f.44
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("gimip", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public void a(Handler.Callback callback) {
        a(Void.class, new a<Void>(callback) { // from class: com.mob.tools.a.f.86
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Void b(Object[] objArr) {
                return a(f.this.a("gbtrstt", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public Location a(int i2, int i4, boolean z3) {
        return (Location) a(Location.class, new a<Location>(Integer.valueOf(i2), Integer.valueOf(i4), Boolean.valueOf(z3)) { // from class: com.mob.tools.a.f.118
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Location b(Object[] objArr) {
                return a(f.this.a("glctn", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public List<ResolveInfo> a(Intent intent, int i2) {
        return (List) a(List.class, new a<List>(intent, Integer.valueOf(i2)) { // from class: com.mob.tools.a.f.11
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public List b(Object[] objArr) {
                return a(f.this.a("qritsvc", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public PackageInfo a(boolean z3, int i2, String str, int i4) {
        return (PackageInfo) a(PackageInfo.class, new a<PackageInfo>(Boolean.valueOf(z3), Integer.valueOf(i2), str, Integer.valueOf(i4)) { // from class: com.mob.tools.a.f.14
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public PackageInfo b(Object[] objArr) {
                return a(f.this.a("gpgiffist", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public void a(View view) {
        a(Void.class, new a<Void>(view) { // from class: com.mob.tools.a.f.15
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Void b(Object[] objArr) {
                return a(f.this.a("hdstipu", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String a(String str, String str2) {
        return (String) a(String.class, new a<String>(str, str2) { // from class: com.mob.tools.a.f.19
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public String b(Object[] objArr) {
                return a(f.this.a("bsasm", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public void a(BroadcastReceiver broadcastReceiver) throws Throwable {
        a(Void.class, new a<Void>(broadcastReceiver) { // from class: com.mob.tools.a.f.36
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Void b(Object[] objArr) {
                return a(f.this.a("unrgrcv", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public void a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) throws Throwable {
        a(Void.class, new a<Void>(broadcastReceiver, intentFilter) { // from class: com.mob.tools.a.f.37
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Void b(Object[] objArr) {
                return a(f.this.a("rgrcv", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public void a(BlockingQueue<Boolean> blockingQueue) {
        a(Void.class, new a<Void>(blockingQueue) { // from class: com.mob.tools.a.f.38
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public Void b(Object[] objArr) {
                return a(f.this.a("rgwsr", objArr));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ApplicationInfo a(String str, int i2) {
        return (ApplicationInfo) a(ApplicationInfo.class, new a<ApplicationInfo>(str, Integer.valueOf(i2)) { // from class: com.mob.tools.a.f.41
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.mob.tools.a.f.a
            /* renamed from: a */
            public ApplicationInfo b(Object[] objArr) {
                return a(f.this.a("gtaifprm", objArr));
            }
        });
    }
}
