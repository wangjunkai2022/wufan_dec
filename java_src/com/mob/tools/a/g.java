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
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes4.dex */
public class g implements com.mob.tools.a.a {

    /* renamed from: a  reason: collision with root package name */
    private Context f53548a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public abstract class a<T> {

        /* renamed from: a  reason: collision with root package name */
        private ArrayList<Object> f53684a;

        public a(Object... objArr) {
            this.f53684a = new ArrayList<>(Arrays.asList(objArr));
        }

        /* JADX WARN: Multi-variable type inference failed */
        protected T a(Object obj) {
            return obj;
        }

        abstract T b(ArrayList<Object> arrayList);
    }

    public g(Context context) {
        this.f53548a = context;
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
    private <T> T a(java.lang.Class<T> r3, com.mob.tools.a.g.a<T> r4) {
        /*
            r2 = this;
            r0 = 0
            if (r3 == 0) goto L7b
            if (r4 == 0) goto L7b
            java.util.ArrayList r1 = com.mob.tools.a.g.a.a(r4)     // Catch: java.lang.Throwable -> L73
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
        throw new UnsupportedOperationException("Method not decompiled: com.mob.tools.a.g.a(java.lang.Class, com.mob.tools.a.g$a):java.lang.Object");
    }

    @Override // com.mob.tools.a.a
    public String A() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.62
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gbrd", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String B() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.63
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gdvtp", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String[] C() {
        return (String[]) a(String[].class, new a<String[]>(new Object[0]) { // from class: com.mob.tools.a.g.64
            String[] a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("qriei", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String[] b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String D() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.65
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gbhnm", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public int E() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.g.66
            Integer a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gcld", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Integer b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int F() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.g.67
            Integer a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gcllc", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Integer b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int G() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.g.68
            Integer a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gpcmt", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Integer b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int H() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.g.69
            Integer a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gcmlt", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Integer b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int I() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.g.71
            Integer a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gcmln", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Integer b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int J() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.g.72
            Integer a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gcmbd", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Integer b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int K() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.g.73
            Integer a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gcmsd", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Integer b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int L() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.g.74
            Integer a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gcmnd", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Integer b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, Object>> M() {
        return (ArrayList) a(ArrayList.class, new a<ArrayList>(new Object[0]) { // from class: com.mob.tools.a.g.75
            ArrayList a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gnbclin", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ ArrayList b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Object> N() {
        return (HashMap) a(HashMap.class, new a<HashMap>(new Object[0]) { // from class: com.mob.tools.a.g.76
            HashMap a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("wmcwi", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ HashMap b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, Object>> O() {
        return (ArrayList) a(ArrayList.class, new a<ArrayList>(new Object[0]) { // from class: com.mob.tools.a.g.77
            ArrayList a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gavlwls", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ ArrayList b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean P() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.g.78
            Boolean a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("scwls", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Boolean b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public int Q() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.g.79
            Integer a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("govsit", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Integer b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public String R() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.80
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("govsnm", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String S() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.82
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("golgu", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String T() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.83
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gocnty", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Object> U() {
        return (HashMap) a(HashMap.class, new a<HashMap>(new Object[0]) { // from class: com.mob.tools.a.g.84
            HashMap a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gcuin", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ HashMap b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ArrayList<ArrayList<String>> V() {
        return (ArrayList) a(ArrayList.class, new a<ArrayList>(new Object[0]) { // from class: com.mob.tools.a.g.85
            ArrayList a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gtydvin", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ ArrayList b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public int W() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.g.87
            Integer a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gsnbtns", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Integer b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public int X() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.g.88
            Integer a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gsnbtmd", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Integer b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public String Y() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.89
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gqmkn", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, HashMap<String, Long>> Z() {
        return (HashMap) a(HashMap.class, new a<HashMap>(new Object[0]) { // from class: com.mob.tools.a.g.90
            HashMap a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gszin", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ HashMap b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Object> aA() {
        return (HashMap) a(HashMap.class, new a<HashMap>(new Object[0]) { // from class: com.mob.tools.a.g.127
            HashMap a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gdltm", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ HashMap b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, Object>> aB() {
        return (ArrayList) a(ArrayList.class, new a<ArrayList>(new Object[0]) { // from class: com.mob.tools.a.g.128
            ArrayList a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gmlt", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ ArrayList b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aC() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.130
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gscpt", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aD() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.131
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gsnmd", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aE() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.133
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gpgnm", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aF() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.134
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gpnmmt", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public int aG() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.g.3
            Integer a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gpvsnm", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Integer b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public String aH() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.4
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gpvsme", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean aI() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.g.5
            Boolean a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("cinmnps", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Boolean b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public String aJ() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.6
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gcrtpcnm", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean aK() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.g.7
            Boolean a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("ciafgd", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Boolean b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public Object aL() {
        return a(Object.class, new a<Object>(new Object[0]) { // from class: com.mob.tools.a.g.9
            @Override // com.mob.tools.a.g.a
            Object b(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("crtavthd", arrayList));
            }
        });
    }

    @Override // com.mob.tools.a.a
    public Context aM() {
        return (Context) a(Context.class, new a<Context>(new Object[0]) { // from class: com.mob.tools.a.g.10
            Context a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gaplcn", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Context b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aN() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.17
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gdvda", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aO() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.18
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gdvdtnas", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public long aP() {
        return ((Long) a(Long.TYPE, new a<Long>(new Object[0]) { // from class: com.mob.tools.a.g.20
            Long a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("galtut", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Long b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).longValue();
    }

    @Override // com.mob.tools.a.a
    public String aQ() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.21
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gbrdm", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aR() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.22
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gdvme", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aS() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.23
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gdpyd", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aT() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.25
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gfgrnt", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aU() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.26
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("grivsn", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aV() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.27
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gcrup", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aW() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.28
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gcifm", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aX() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.29
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("godm", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aY() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.30
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("godhm", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aZ() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.31
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gadm", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Long> aa() {
        return (HashMap) a(HashMap.class, new a<HashMap>(new Object[0]) { // from class: com.mob.tools.a.g.91
            HashMap a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gmrin", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ HashMap b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public int ab() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.g.93
            Integer a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gabct", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Integer b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public String ac() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.94
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("galgu", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ad() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.95
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gscsz", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ae() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.96
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gneyp", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String af() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.97
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gnktpfs", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ag() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.98
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gdtlnktpfs", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean ah() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.g.99
            Boolean a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("cknavbl", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Boolean b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public int ai() {
        return ((Integer) a(Integer.TYPE, new a<Integer>(new Object[0]) { // from class: com.mob.tools.a.g.100
            Integer a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gdntp", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Integer b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).intValue();
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, String>> aj() {
        return (ArrayList) a(ArrayList.class, new a<ArrayList>(new Object[0]) { // from class: com.mob.tools.a.g.101
            ArrayList a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gcrslt", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ ArrayList b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ak() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.102
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gtmne", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Object> al() {
        return (HashMap) a(HashMap.class, new a<HashMap>(new Object[0]) { // from class: com.mob.tools.a.g.104
            HashMap a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gspt", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ HashMap b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, String> am() {
        return (HashMap) a(HashMap.class, new a<HashMap>(new Object[0]) { // from class: com.mob.tools.a.g.105
            HashMap a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gcfre", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ HashMap b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String an() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.106
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gctp", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ao() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.107
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gflv", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Object> ap() {
        return (HashMap) a(HashMap.class, new a<HashMap>(new Object[0]) { // from class: com.mob.tools.a.g.108
            HashMap a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gtrc", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ HashMap b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String aq() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.109
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gbsbd", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ar() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.110
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gbfspy", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String as() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.111
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gbplfo", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Object> at() {
        return (HashMap) a(HashMap.class, new a<HashMap>(new Object[0]) { // from class: com.mob.tools.a.g.112
            HashMap a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gdvmua", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ HashMap b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String au() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.113
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("giads", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, String>> av() {
        return (ArrayList) a(ArrayList.class, new a<ArrayList>(new Object[0]) { // from class: com.mob.tools.a.g.116
            ArrayList a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gal", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ ArrayList b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, String>> aw() {
        return (ArrayList) a(ArrayList.class, new a<ArrayList>(new Object[0]) { // from class: com.mob.tools.a.g.117
            ArrayList a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gsl", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ ArrayList b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ax() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.120
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gdvci", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String ay() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.121
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gdvk", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String az() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.126
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gdltmpg", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean b() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.g.48
            Boolean a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("cx", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Boolean b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public String ba() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.32
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gvdm", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String bb() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.33
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gudm", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public HashMap<String, Object> bc() {
        return (HashMap) a(HashMap.class, new a<HashMap>(new Object[0]) { // from class: com.mob.tools.a.g.34
            HashMap a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("galdm", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ HashMap b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ApplicationInfo bd() {
        return (ApplicationInfo) a(ApplicationInfo.class, new a<ApplicationInfo>(new Object[0]) { // from class: com.mob.tools.a.g.39
            ApplicationInfo a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gtaif", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ ApplicationInfo b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, Object>> be() {
        return (ArrayList) a(ArrayList.class, new a<ArrayList>(new Object[0]) { // from class: com.mob.tools.a.g.40
            ArrayList a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gtaifok", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ ArrayList b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean c() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.g.59
            Boolean a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("ckpd", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Boolean b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean d() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.g.70
            Boolean a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("degb", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Boolean b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean e() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.g.81
            Boolean a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("vnmt", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Boolean b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean f() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.g.92
            Boolean a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("ckua", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Boolean b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean g() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.g.103
            Boolean a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("dvenbl", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Boolean b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean h() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.g.114
            Boolean a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("ubenbl", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Boolean b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean i() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.g.125
            Boolean a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("iwpxy", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Boolean b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean j() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.g.2
            Boolean a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("ismlt", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Boolean b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean k() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.g.24
            Boolean a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("istvdv", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Boolean b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public String l() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.35
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gsrln", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String m() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.42
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gavti", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String n() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.43
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gimi", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String o() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.45
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gimimem", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String p() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.46
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gisi", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String[] q() {
        return (String[]) a(String[].class, new a<String[]>(new Object[0]) { // from class: com.mob.tools.a.g.49
            String[] a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("qryisi", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String[] b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String r() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.50
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gsimt", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String s() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.51
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gbsi", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String t() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.52
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gcrie", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String u() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.54
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gcrnm", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String v() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.56
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gssn", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String w() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.57
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gmivsn", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String x() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.58
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("godmt", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String y() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.60
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("bgmdl", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String z() {
        return (String) a(String.class, new a<String>(new Object[0]) { // from class: com.mob.tools.a.g.61
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gmnft", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String b(boolean z3) {
        return (String) a(String.class, new a<String>(Boolean.valueOf(z3)) { // from class: com.mob.tools.a.g.47
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gisip", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String c(boolean z3) {
        return (String) a(String.class, new a<String>(Boolean.valueOf(z3)) { // from class: com.mob.tools.a.g.53
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gcriefce", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String d(boolean z3) {
        return (String) a(String.class, new a<String>(Boolean.valueOf(z3)) { // from class: com.mob.tools.a.g.55
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gcrnmfce", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ArrayList<HashMap<String, String>> e(boolean z3) {
        return (ArrayList) a(ArrayList.class, new a<ArrayList>(Boolean.valueOf(z3)) { // from class: com.mob.tools.a.g.115
            ArrayList a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gia", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ ArrayList b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String f(boolean z3) {
        return (String) a(String.class, new a<String>(Boolean.valueOf(z3)) { // from class: com.mob.tools.a.g.122
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gdvkfc", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String g(String str) {
        return (String) a(String.class, new a<String>(str) { // from class: com.mob.tools.a.g.135
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gpnmfp", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean h(String str) {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(str) { // from class: com.mob.tools.a.g.8
            Boolean a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("ckpmsi", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Boolean b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public String b(String str) {
        return (String) a(String.class, new a<String>(str) { // from class: com.mob.tools.a.g.119
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gstmpts", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String c(String str) {
        return (String) a(String.class, new a<String>(str) { // from class: com.mob.tools.a.g.123
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gdfrspg", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public List<String> d(String str) {
        return (List) a(List.class, new a<List>(str) { // from class: com.mob.tools.a.g.124
            List a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("grsvps", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ List b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean e(String str) {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(str) { // from class: com.mob.tools.a.g.129
            Boolean a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("ipgist", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Boolean b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public String f(String str) {
        return (String) a(String.class, new a<String>(str) { // from class: com.mob.tools.a.g.132
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gsnmdfp", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ResolveInfo b(Intent intent, int i2) {
        return (ResolveInfo) a(ResolveInfo.class, new a<ResolveInfo>(intent, Integer.valueOf(i2)) { // from class: com.mob.tools.a.g.12
            ResolveInfo a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("rsaciy", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ ResolveInfo b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public void b(View view) {
        a(Void.class, new a<Void>(view) { // from class: com.mob.tools.a.g.16
            Void a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("swstin", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Void b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public boolean a() {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(new Object[0]) { // from class: com.mob.tools.a.g.1
            Boolean a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("cird", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Boolean b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public boolean a(String str) {
        return ((Boolean) a(Boolean.TYPE, new a<Boolean>(str) { // from class: com.mob.tools.a.g.13
            Boolean a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("ifkps", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Boolean b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        })).booleanValue();
    }

    @Override // com.mob.tools.a.a
    public String a(boolean z3) {
        return (String) a(String.class, new a<String>(Boolean.valueOf(z3)) { // from class: com.mob.tools.a.g.44
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gimip", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public void a(Handler.Callback callback) {
        a(Void.class, new a<Void>(callback) { // from class: com.mob.tools.a.g.86
            Void a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gbtrstt", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Void b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public Location a(int i2, int i4, boolean z3) {
        return (Location) a(Location.class, new a<Location>(Integer.valueOf(i2), Integer.valueOf(i4), Boolean.valueOf(z3)) { // from class: com.mob.tools.a.g.118
            Location a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("glctn", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Location b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public List<ResolveInfo> a(Intent intent, int i2) {
        return (List) a(List.class, new a<List>(intent, Integer.valueOf(i2)) { // from class: com.mob.tools.a.g.11
            List a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("qritsvc", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ List b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public PackageInfo a(boolean z3, int i2, String str, int i4) {
        return (PackageInfo) a(PackageInfo.class, new a<PackageInfo>(Boolean.valueOf(z3), Integer.valueOf(i2), str, Integer.valueOf(i4)) { // from class: com.mob.tools.a.g.14
            PackageInfo a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gpgiffist", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ PackageInfo b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public void a(View view) {
        a(Void.class, new a<Void>(view) { // from class: com.mob.tools.a.g.15
            Void a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("hdstipu", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Void b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public String a(String str, String str2) {
        return (String) a(String.class, new a<String>(str, str2) { // from class: com.mob.tools.a.g.19
            String a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("bsasm", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ String b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public void a(BroadcastReceiver broadcastReceiver) throws Throwable {
        a(Void.class, new a<Void>(broadcastReceiver) { // from class: com.mob.tools.a.g.36
            Void a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("unrgrcv", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Void b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public void a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) throws Throwable {
        a(Void.class, new a<Void>(broadcastReceiver, intentFilter) { // from class: com.mob.tools.a.g.37
            Void a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("rgrcv", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Void b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public void a(BlockingQueue<Boolean> blockingQueue) {
        a(Void.class, new a<Void>(blockingQueue) { // from class: com.mob.tools.a.g.38
            Void a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("rgwsr", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ Void b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }

    @Override // com.mob.tools.a.a
    public ApplicationInfo a(String str, int i2) {
        return (ApplicationInfo) a(ApplicationInfo.class, new a<ApplicationInfo>(str, Integer.valueOf(i2)) { // from class: com.mob.tools.a.g.41
            ApplicationInfo a(ArrayList<Object> arrayList) {
                return a(com.mob.tools.b.a.a("gtaifprm", arrayList));
            }

            @Override // com.mob.tools.a.g.a
            /* synthetic */ ApplicationInfo b(ArrayList arrayList) {
                return a((ArrayList<Object>) arrayList);
            }
        });
    }
}
