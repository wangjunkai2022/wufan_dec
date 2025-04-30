package com.join.mgps.mod.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.join.mgps.Util.d2;
import com.xinzhu.overmind.Overmind;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* compiled from: SoLibManager.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: b  reason: collision with root package name */
    private static final String f51095b = "e";

    /* renamed from: c  reason: collision with root package name */
    private static e f51096c = new e();

    /* renamed from: d  reason: collision with root package name */
    private static String f51097d = "";

    /* renamed from: a  reason: collision with root package name */
    private ExecutorService f51098a = Executors.newCachedThreadPool();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SoLibManager.java */
    /* loaded from: classes4.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private String f51099a;

        /* renamed from: b  reason: collision with root package name */
        private ZipFile f51100b;

        /* renamed from: c  reason: collision with root package name */
        private ZipEntry f51101c;

        /* renamed from: d  reason: collision with root package name */
        private Context f51102d;

        /* renamed from: e  reason: collision with root package name */
        private long f51103e;

        /* renamed from: f  reason: collision with root package name */
        private String f51104f;

        a(Context context, String str, ZipFile zipFile, ZipEntry zipEntry, long j4) {
            this.f51104f = str;
            File file = new File(str);
            try {
                if (!file.exists()) {
                    file.mkdirs();
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            this.f51100b = zipFile;
            this.f51102d = context;
            this.f51101c = zipEntry;
            this.f51099a = c(zipEntry.getName());
            this.f51103e = j4;
            try {
                this.f51100b = new ZipFile(zipFile.getName());
            } catch (IOException e5) {
                e5.printStackTrace();
            }
        }

        private int b(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return 0;
            }
            int available = inputStream.available();
            if (available <= 0) {
                return 1024;
            }
            return available;
        }

        private final String c(String str) {
            return str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
        }

        private void d() throws IOException {
            a(this.f51100b.getInputStream(this.f51101c), new FileOutputStream(new File(this.f51104f, this.f51099a)));
            this.f51100b.close();
        }

        public void a(InputStream inputStream, OutputStream outputStream) throws IOException {
            if (inputStream == null || outputStream == null) {
                return;
            }
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);
            int b4 = b(bufferedInputStream);
            byte[] bArr = new byte[b4];
            while (true) {
                int read = bufferedInputStream.read(bArr, 0, b4);
                if (read != -1) {
                    bufferedOutputStream.write(bArr, 0, read);
                } else {
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                    bufferedInputStream.close();
                    return;
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent;
            try {
                try {
                    Intent intent2 = new Intent(d.f51089s);
                    intent2.putExtra("soName", this.f51099a);
                    Overmind.getContext().sendBroadcast(intent2);
                    d();
                    Context context = this.f51102d;
                    if (context != null) {
                        PluginConfig.setSoLastModifiedTime(context, this.f51101c.getName(), this.f51103e);
                    }
                    String unused = e.f51095b;
                    StringBuilder sb = new StringBuilder();
                    sb.append("copy so lib success: ");
                    sb.append(this.f51101c.getName());
                    intent = new Intent(d.f51090t);
                } catch (IOException e4) {
                    String unused2 = e.f51095b;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("copy so lib failed: ");
                    sb2.append(e4.toString());
                    e4.printStackTrace();
                    intent = new Intent(d.f51090t);
                }
                intent.putExtra("soName", this.f51099a);
                Overmind.getContext().sendBroadcast(intent);
            } catch (Throwable th) {
                Intent intent3 = new Intent(d.f51090t);
                intent3.putExtra("soName", this.f51099a);
                Overmind.getContext().sendBroadcast(intent3);
                throw th;
            }
        }
    }

    private e() {
    }

    public static e d() {
        return f51096c;
    }

    @SuppressLint({"DefaultLocale"})
    private String e(String str) {
        if (!str.toLowerCase().contains("arm")) {
            if (str.toLowerCase().contains(d.f51075e)) {
                return d.f51075e;
            }
            if (str.toLowerCase().contains(d.f51076f)) {
                return d.f51076f;
            }
        }
        return d.f51074d;
    }

    private String f() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"));
            String readLine = bufferedReader.readLine();
            bufferedReader.close();
            String[] split = readLine.split(":\\s+", 2);
            if (split.length >= 2) {
                return split[1];
            }
            return null;
        } catch (FileNotFoundException e4) {
            e4.printStackTrace();
            return null;
        } catch (IOException e5) {
            e5.printStackTrace();
            return null;
        }
    }

    public void b(Context context, String str, String str2) {
        Context context2;
        Intent intent;
        long time;
        String str3;
        Enumeration<? extends ZipEntry> enumeration;
        String e4 = e(f());
        f51097d = str2;
        StringBuilder sb = new StringBuilder();
        sb.append("cpuArchitect: ");
        sb.append(e4);
        long currentTimeMillis = System.currentTimeMillis();
        try {
            try {
                Overmind.getContext().sendBroadcast(new Intent(d.f51089s));
                if (d2.i(str)) {
                    ZipFile zipFile = new ZipFile(str);
                    Enumeration<? extends ZipEntry> entries = zipFile.entries();
                    while (entries.hasMoreElements()) {
                        ZipEntry nextElement = entries.nextElement();
                        if (!nextElement.isDirectory()) {
                            if (Build.VERSION.SDK_INT >= 26) {
                                time = nextElement.getLastModifiedTime().toMillis();
                            } else {
                                time = nextElement.getTime();
                            }
                            long j4 = time;
                            String name = nextElement.getName();
                            if (name.endsWith(".so") && name.contains(e4)) {
                                if (context != null && j4 == PluginConfig.getSoLastModifiedTime(context, name)) {
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("skip copying, the so lib is exist and not change: ");
                                    sb2.append(name);
                                } else {
                                    str3 = e4;
                                    enumeration = entries;
                                    this.f51098a.execute(new a(context, str2, zipFile, nextElement, j4));
                                }
                            } else {
                                str3 = e4;
                                enumeration = entries;
                                if (name.endsWith("EXTDEX")) {
                                    if (context != null && j4 == PluginConfig.getSoLastModifiedTime(context, name)) {
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append("skip copying, the so lib is exist and not change: ");
                                        sb3.append(name);
                                    } else {
                                        this.f51098a.execute(new a(context, str2, zipFile, nextElement, j4));
                                    }
                                }
                            }
                            entries = enumeration;
                            e4 = str3;
                        }
                    }
                }
                context2 = Overmind.getContext();
                intent = new Intent(d.f51090t);
            } catch (IOException e5) {
                e5.printStackTrace();
                context2 = Overmind.getContext();
                intent = new Intent(d.f51090t);
            }
            context2.sendBroadcast(intent);
            long currentTimeMillis2 = System.currentTimeMillis();
            StringBuilder sb4 = new StringBuilder();
            sb4.append("### copy so time : ");
            sb4.append(currentTimeMillis2 - currentTimeMillis);
            sb4.append(" ms");
        } catch (Throwable th) {
            Overmind.getContext().sendBroadcast(new Intent(d.f51090t));
            throw th;
        }
    }

    public void c(Context context, String str, String str2, String str3, List<String> list) {
        Context context2;
        Intent intent;
        long time;
        String str4;
        Enumeration<? extends ZipEntry> enumeration;
        String str5;
        String e4 = e(f());
        f51097d = str2;
        StringBuilder sb = new StringBuilder();
        sb.append("cpuArchitect: ");
        sb.append(e4);
        long currentTimeMillis = System.currentTimeMillis();
        try {
            try {
                Overmind.getContext().sendBroadcast(new Intent(d.f51089s));
                ZipFile zipFile = new ZipFile(str);
                Enumeration<? extends ZipEntry> entries = zipFile.entries();
                while (entries.hasMoreElements()) {
                    ZipEntry nextElement = entries.nextElement();
                    if (!nextElement.isDirectory()) {
                        String name = nextElement.getName();
                        if (Build.VERSION.SDK_INT >= 26) {
                            time = nextElement.getLastModifiedTime().toMillis();
                        } else {
                            time = nextElement.getTime();
                        }
                        long j4 = time;
                        if (name.endsWith(".so") && name.contains(e4)) {
                            if (context != null && j4 == PluginConfig.getSoLastModifiedTime(context, name)) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("skip copying, the so lib is exist and not change: ");
                                sb2.append(name);
                            } else {
                                int i2 = 0;
                                while (true) {
                                    if (i2 >= list.size()) {
                                        str5 = str3;
                                        break;
                                    } else if (nextElement.getName().endsWith(list.get(i2))) {
                                        str5 = str2;
                                        break;
                                    } else {
                                        i2++;
                                    }
                                }
                                str4 = e4;
                                enumeration = entries;
                                this.f51098a.execute(new a(context, str5, zipFile, nextElement, j4));
                            }
                        } else {
                            str4 = e4;
                            enumeration = entries;
                            if (name.endsWith("EXTDEX")) {
                                if (context != null && j4 == PluginConfig.getSoLastModifiedTime(context, name)) {
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append("skip copying, the so lib is exist and not change: ");
                                    sb3.append(name);
                                } else {
                                    this.f51098a.execute(new a(context, str2, zipFile, nextElement, j4));
                                }
                            }
                        }
                        entries = enumeration;
                        e4 = str4;
                    }
                }
                context2 = Overmind.getContext();
                intent = new Intent(d.f51090t);
            } catch (IOException e5) {
                e5.printStackTrace();
                context2 = Overmind.getContext();
                intent = new Intent(d.f51090t);
            }
            context2.sendBroadcast(intent);
            long currentTimeMillis2 = System.currentTimeMillis();
            StringBuilder sb4 = new StringBuilder();
            sb4.append("### copy so time : ");
            sb4.append(currentTimeMillis2 - currentTimeMillis);
            sb4.append(" ms");
        } catch (Throwable th) {
            Overmind.getContext().sendBroadcast(new Intent(d.f51090t));
            throw th;
        }
    }

    public List<String> g(String str) {
        ArrayList arrayList = new ArrayList();
        String e4 = e(f());
        try {
            Enumeration<? extends ZipEntry> entries = new ZipFile(str).entries();
            while (entries.hasMoreElements()) {
                ZipEntry nextElement = entries.nextElement();
                if (!nextElement.isDirectory()) {
                    String name = nextElement.getName();
                    if (name.endsWith(".so") && name.contains(e4)) {
                        arrayList.add(name.substring(name.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1));
                    }
                }
            }
        } catch (IOException e5) {
            e5.printStackTrace();
        }
        return arrayList;
    }
}
