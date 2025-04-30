package com.join.mgps.task;

import android.content.Context;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.List;
/* compiled from: ScanApClientThread.java */
/* loaded from: classes4.dex */
public class d implements Runnable {

    /* renamed from: f  reason: collision with root package name */
    private static final String f52274f = d.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private Context f52275a;

    /* renamed from: b  reason: collision with root package name */
    boolean f52276b;

    /* renamed from: c  reason: collision with root package name */
    List<com.join.mgps.event.d> f52277c;

    /* renamed from: d  reason: collision with root package name */
    long f52278d;

    /* renamed from: e  reason: collision with root package name */
    boolean f52279e = true;

    public d(Context context, boolean z3, long j4) {
        this.f52276b = false;
        this.f52277c = null;
        this.f52275a = context;
        this.f52276b = z3;
        this.f52277c = new ArrayList();
        this.f52278d = j4;
        StringBuilder sb = new StringBuilder();
        sb.append("ScanApClientThread: mTime::");
        sb.append(this.f52278d);
    }

    public ArrayList<com.join.mgps.event.d> a(boolean z3) {
        ArrayList<com.join.mgps.event.d> arrayList;
        BufferedReader bufferedReader = null;
        try {
            try {
                try {
                    arrayList = new ArrayList<>();
                    try {
                        BufferedReader bufferedReader2 = new BufferedReader(new FileReader("/proc/net/arp"));
                        while (true) {
                            try {
                                String readLine = bufferedReader2.readLine();
                                if (readLine == null) {
                                    break;
                                }
                                String[] split = readLine.split(" +");
                                if (split != null && split.length >= 4) {
                                    String str = split[3];
                                    String str2 = split[0];
                                    if (str.matches("..:..:..:..:..:..")) {
                                        boolean c4 = c(split[0]);
                                        if (!c4) {
                                            c4 = InetAddress.getByName(split[0]).isReachable(3000);
                                        }
                                        if (!z3 || c4) {
                                            arrayList.add(new com.join.mgps.event.d(c4, str, str2));
                                        }
                                    }
                                }
                            } catch (Exception unused) {
                                bufferedReader = bufferedReader2;
                                bufferedReader.close();
                                return arrayList;
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader = bufferedReader2;
                                try {
                                    bufferedReader.close();
                                } catch (IOException unused2) {
                                }
                                throw th;
                            }
                        }
                        bufferedReader2.close();
                    } catch (Exception unused3) {
                    }
                } catch (IOException unused4) {
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused5) {
            arrayList = null;
        }
        return arrayList;
    }

    void b() {
        com.join.mgps.event.d dVar = new com.join.mgps.event.d();
        dVar.f(false);
        org.greenrobot.eventbus.c.f().o(dVar);
    }

    public boolean c(String str) {
        try {
            Process exec = Runtime.getRuntime().exec("ping  -c 1 -W 1 " + str);
            try {
                exec.waitFor();
            } catch (InterruptedException e4) {
                e4.printStackTrace();
            }
            return exec.exitValue() == 0;
        } catch (IOException unused) {
            return false;
        }
    }

    public void d(boolean z3) {
        this.f52279e = z3;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (this.f52279e) {
            try {
                this.f52277c = a(this.f52276b);
                StringBuilder sb = new StringBuilder();
                sb.append("run: 数量");
                sb.append(this.f52277c.size());
                org.greenrobot.eventbus.c.f().o(this.f52277c);
                Thread.sleep(this.f52278d);
            } catch (InterruptedException e4) {
                Thread.interrupted();
                e4.printStackTrace();
            }
        }
    }
}
