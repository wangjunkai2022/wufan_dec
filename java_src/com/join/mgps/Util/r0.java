package com.join.mgps.Util;

import android.content.Context;
import android.os.AsyncTask;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
/* compiled from: JpegOptimizer.java */
/* loaded from: classes3.dex */
public class r0 {

    /* renamed from: j  reason: collision with root package name */
    public static final String f27794j = "jpegoptim";

    /* renamed from: a  reason: collision with root package name */
    private String f27795a;

    /* renamed from: b  reason: collision with root package name */
    private String f27796b;

    /* renamed from: c  reason: collision with root package name */
    private String f27797c;

    /* renamed from: d  reason: collision with root package name */
    private int f27798d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f27799e;

    /* renamed from: f  reason: collision with root package name */
    private int f27800f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f27801g;

    /* renamed from: h  reason: collision with root package name */
    private String[] f27802h;

    /* renamed from: i  reason: collision with root package name */
    private AsyncTask f27803i;

    /* compiled from: JpegOptimizer.java */
    /* loaded from: classes3.dex */
    class a extends AsyncTask {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f27804a;

        a(b bVar) {
            this.f27804a = bVar;
        }

        @Override // android.os.AsyncTask
        protected Object doInBackground(Object[] objArr) {
            boolean z3;
            String[] strArr = objArr != null ? (String[]) objArr : r0.this.f27802h != null ? r0.this.f27802h : null;
            if (strArr == null) {
                return null;
            }
            String c4 = r0.c(strArr);
            if (d2.h(c4)) {
                z3 = false;
            } else {
                String[] split = c4.split(",");
                z3 = split[split.length - 1].equals("optimized");
            }
            b bVar = this.f27804a;
            if (bVar != null) {
                bVar.a(z3, c4);
            }
            return c4;
        }

        @Override // android.os.AsyncTask
        protected void onCancelled(Object obj) {
            super.onCancelled(obj);
        }

        @Override // android.os.AsyncTask
        protected void onPostExecute(Object obj) {
            super.onPostExecute(obj);
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
        }
    }

    /* compiled from: JpegOptimizer.java */
    /* loaded from: classes3.dex */
    public interface b {
        void a(boolean z3, String str);
    }

    public r0(String str, String str2, String str3, int i2, int i4, boolean z3) {
        this.f27795a = str;
        this.f27796b = str2;
        this.f27797c = str3;
        this.f27798d = i2;
        this.f27800f = i4;
        this.f27801g = z3;
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String c(String[] strArr) {
        IOException e4;
        String str;
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(strArr).getInputStream()));
            str = "";
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    str = str + readLine + "";
                } catch (IOException e5) {
                    e4 = e5;
                    e4.printStackTrace();
                    return str;
                }
            }
        } catch (IOException e6) {
            e4 = e6;
            str = "";
        }
        return str;
    }

    public static void e(Context context, String str) {
        f(context, "jpegoptim", str);
    }

    private static void f(Context context, String str, String str2) {
        FileOutputStream fileOutputStream;
        Throwable th;
        InputStream inputStream;
        File file = new File(str2);
        if (file.exists()) {
            return;
        }
        file.getParentFile().mkdirs();
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                inputStream = context.getAssets().open(str);
                try {
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        byte[] bArr = new byte[8192];
                        while (true) {
                            int read = inputStream.read(bArr);
                            if (read > 0) {
                                fileOutputStream.write(bArr, 0, read);
                            } else {
                                fileOutputStream.close();
                                inputStream.close();
                                Runtime.getRuntime().exec(new String[]{"chmod", "755", file.getAbsolutePath()});
                                return;
                            }
                        }
                    } catch (Exception unused) {
                        fileOutputStream2 = fileOutputStream;
                        if (fileOutputStream2 != null) {
                            fileOutputStream2.close();
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        Runtime.getRuntime().exec(new String[]{"chmod", "755", file.getAbsolutePath()});
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused2) {
                                throw th;
                            }
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        Runtime.getRuntime().exec(new String[]{"chmod", "755", file.getAbsolutePath()});
                        throw th;
                    }
                } catch (Exception unused3) {
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = null;
                }
            } catch (IOException unused4) {
            }
        } catch (Exception unused5) {
            inputStream = null;
        } catch (Throwable th4) {
            fileOutputStream = null;
            th = th4;
            inputStream = null;
        }
    }

    private void g() {
        if (this.f27800f >= 0) {
            this.f27799e = true;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f27795a);
        arrayList.add(this.f27796b);
        arrayList.add("-b");
        arrayList.add("-T" + this.f27798d);
        if (this.f27799e) {
            arrayList.add("-m" + this.f27800f);
        }
        if (this.f27801g) {
            arrayList.add("-p");
        }
        if (this.f27797c != null) {
            arrayList.add("-od" + this.f27797c);
        }
        String[] strArr = new String[arrayList.size()];
        this.f27802h = strArr;
        arrayList.toArray(strArr);
    }

    void d(b bVar) {
        AsyncTask asyncTask = this.f27803i;
        if (asyncTask == null || asyncTask.getStatus() == AsyncTask.Status.FINISHED) {
            this.f27803i = new a(bVar);
        }
        if (this.f27803i.getStatus() != AsyncTask.Status.RUNNING) {
            this.f27803i.execute(this.f27802h);
        }
    }
}
