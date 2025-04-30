package com.join.android.app.component.album.lib;

import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.provider.MediaStore;
import android.widget.Toast;
import com.join.mgps.Util.d2;
import com.join.mgps.activity.LocalGameActivity;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* compiled from: ImageScaner.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: j  reason: collision with root package name */
    private static b f17468j = null;

    /* renamed from: k  reason: collision with root package name */
    private static final int f17469k = 0;

    /* renamed from: l  reason: collision with root package name */
    private static final int f17470l = 2;

    /* renamed from: m  reason: collision with root package name */
    private static final int f17471m = 4;

    /* renamed from: n  reason: collision with root package name */
    private static final int f17472n = 8;

    /* renamed from: b  reason: collision with root package name */
    private final Context f17474b;

    /* renamed from: g  reason: collision with root package name */
    private ProgressDialog f17479g;

    /* renamed from: i  reason: collision with root package name */
    private g f17481i;

    /* renamed from: a  reason: collision with root package name */
    private final String f17473a = getClass().getSimpleName();

    /* renamed from: c  reason: collision with root package name */
    private Map<String, com.join.android.app.component.album.lib.a> f17475c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    int f17476d = 0;

    /* renamed from: e  reason: collision with root package name */
    private boolean f17477e = false;

    /* renamed from: f  reason: collision with root package name */
    List<com.join.android.app.component.album.lib.a> f17478f = new ArrayList();

    /* renamed from: h  reason: collision with root package name */
    private Handler f17480h = new a();

    /* compiled from: ImageScaner.java */
    /* loaded from: classes.dex */
    class a extends Handler {

        /* compiled from: ImageScaner.java */
        /* renamed from: com.join.android.app.component.album.lib.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0137a implements Comparator<com.join.android.app.component.album.lib.a> {
            C0137a() {
            }

            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(com.join.android.app.component.album.lib.a aVar, com.join.android.app.component.album.lib.a aVar2) {
                return aVar.c() < aVar2.c() ? 1 : -1;
            }
        }

        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (b.this.f17481i == null) {
                return;
            }
            int i2 = message.what;
            if (i2 == 0) {
                b.this.f17481i.c(message.obj);
            } else if (i2 == 2) {
                b.this.f17481i.b(message.obj);
            } else if (i2 != 4) {
                if (i2 != 8) {
                    return;
                }
                b.this.f17481i.b(message.obj);
            } else {
                b.this.f17475c.clear();
                b.this.f17475c.putAll((Map) message.obj);
                b.this.f17478f.clear();
                for (String str : b.this.f17475c.keySet()) {
                    b bVar = b.this;
                    bVar.f17478f.add((com.join.android.app.component.album.lib.a) bVar.f17475c.get(str));
                }
                Collections.sort(b.this.f17478f, new C0137a());
                b.this.f17481i.c(b.this.f17475c);
                b bVar2 = b.this;
                if (bVar2.f17476d == 0 && bVar2.f17477e) {
                    Toast.makeText(b.this.f17474b, "没扫描到一张图片", 0).show();
                }
            }
        }
    }

    /* compiled from: ImageScaner.java */
    /* renamed from: com.join.android.app.component.album.lib.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class RunnableC0138b implements Runnable {
        RunnableC0138b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z3;
            com.join.android.app.component.album.lib.a aVar;
            HashMap hashMap = new HashMap();
            ArrayList arrayList = new ArrayList();
            Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
            ContentResolver contentResolver = b.this.f17474b.getContentResolver();
            arrayList.clear();
            hashMap.clear();
            com.join.android.app.component.album.lib.a aVar2 = new com.join.android.app.component.album.lib.a();
            aVar2.j("All");
            aVar2.k("");
            aVar2.i(1);
            aVar2.l(LocalGameActivity.f32927r);
            aVar2.g(arrayList);
            hashMap.put("ALL", aVar2);
            Cursor query = contentResolver.query(uri, new String[]{"_data", "bucket_display_name"}, "mime_type=? or mime_type=?", new String[]{"image/jpeg", "image/png"}, "datetaken DESC ");
            if (query == null) {
                return;
            }
            String str = null;
            while (query.moveToNext()) {
                String string = query.getString(query.getColumnIndex("_data"));
                String string2 = query.getString(query.getColumnIndex("bucket_display_name"));
                if (str == null) {
                    str = string;
                }
                File parentFile = new File(string).getParentFile();
                if (parentFile != null) {
                    arrayList.add(string);
                    String absolutePath = parentFile.getAbsolutePath();
                    if (hashMap.get(absolutePath) != null) {
                        ((com.join.android.app.component.album.lib.a) hashMap.get(absolutePath)).a().add(string);
                        ((com.join.android.app.component.album.lib.a) hashMap.get(absolutePath)).i(((com.join.android.app.component.album.lib.a) hashMap.get(absolutePath)).a().size());
                    } else {
                        Iterator it2 = hashMap.values().iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                z3 = true;
                                break;
                            }
                            com.join.android.app.component.album.lib.a aVar3 = (com.join.android.app.component.album.lib.a) it2.next();
                            if (!d2.h(string2) && string2.equals(aVar3.b())) {
                                aVar3.a().add(string);
                                aVar3.i(aVar3.a().size());
                                z3 = false;
                                break;
                            }
                        }
                        if (z3) {
                            aVar = new com.join.android.app.component.album.lib.a();
                            aVar.j(absolutePath);
                            aVar.k(string);
                            aVar.g(new ArrayList());
                            aVar.a().add(string);
                            aVar.i(1);
                            aVar.h(string2);
                            hashMap.put(absolutePath, aVar);
                        } else {
                            aVar = null;
                        }
                        Message obtainMessage = b.this.f17480h.obtainMessage();
                        obtainMessage.what = 8;
                        obtainMessage.obj = aVar;
                        b.this.f17480h.sendMessage(obtainMessage);
                    }
                }
            }
            query.close();
            aVar2.i(aVar2.a().size());
            Message obtainMessage2 = b.this.f17480h.obtainMessage();
            obtainMessage2.what = 4;
            obtainMessage2.obj = hashMap;
            b.this.f17480h.sendMessage(obtainMessage2);
        }
    }

    /* compiled from: ImageScaner.java */
    /* loaded from: classes.dex */
    class c extends Thread {
        c() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            try {
                ArrayList arrayList = new ArrayList();
                Cursor query = b.this.f17474b.getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, null, "mime_type=? or mime_type=?", new String[]{"image/jpeg", "image/png"}, "date_modified");
                while (query.moveToNext()) {
                    String string = query.getString(query.getColumnIndex("_data"));
                    Message obtainMessage = b.this.f17480h.obtainMessage();
                    obtainMessage.what = 2;
                    obtainMessage.obj = string;
                    b.this.f17480h.sendMessage(obtainMessage);
                    arrayList.add(string);
                }
                query.close();
                Message obtainMessage2 = b.this.f17480h.obtainMessage();
                obtainMessage2.what = 0;
                obtainMessage2.obj = arrayList;
                b.this.f17480h.sendMessage(obtainMessage2);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImageScaner.java */
    /* loaded from: classes.dex */
    public class d implements FilenameFilter {
        d() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.endsWith(".jpg") || str.endsWith(".png") || str.endsWith(".jpeg") || str.endsWith(".JPG") || str.endsWith(".PNG") || str.endsWith(".JPEG");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImageScaner.java */
    /* loaded from: classes.dex */
    public class e implements Comparator<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f17487a;

        e(String str) {
            this.f17487a = str;
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(String str, String str2) {
            File file = new File(this.f17487a + net.lingala.zip4j.util.e.F0 + str);
            File file2 = new File(this.f17487a + net.lingala.zip4j.util.e.F0 + str2);
            if (file.exists() && file2.exists()) {
                return file.lastModified() < file2.lastModified() ? 1 : -1;
            }
            return 0;
        }
    }

    /* compiled from: ImageScaner.java */
    /* loaded from: classes.dex */
    class f implements Comparator<String> {
        f() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(String str, String str2) {
            File file = new File(str);
            File file2 = new File(str2);
            if (file.exists() && file2.exists()) {
                return file.lastModified() < file2.lastModified() ? 1 : -1;
            }
            return 0;
        }
    }

    /* compiled from: ImageScaner.java */
    /* loaded from: classes.dex */
    public interface g {
        void a();

        void b(Object obj);

        void c(Object obj);
    }

    public b(Context context) {
        this.f17474b = context;
    }

    public static b g(Context context) {
        if (f17468j == null) {
            synchronized (b.class) {
                f17468j = new b(context);
            }
        }
        return f17468j;
    }

    private FilenameFilter h() {
        return new d();
    }

    public List<com.join.android.app.component.album.lib.a> f() {
        return this.f17478f;
    }

    public synchronized void i() {
        if (this.f17474b == null) {
            return;
        }
        if (!Environment.getExternalStorageState().equals("mounted")) {
            Toast.makeText(this.f17474b, "暂无外部存储", 0).show();
            return;
        }
        if (this.f17477e) {
            this.f17479g = ProgressDialog.show(this.f17474b, null, "正在加载...");
        }
        g gVar = this.f17481i;
        if (gVar != null) {
            gVar.a();
        }
        new Thread(new RunnableC0138b()).start();
    }

    public synchronized void j(String str) {
        g gVar = this.f17481i;
        if (gVar != null) {
            gVar.a();
        }
        new c().start();
    }

    public List<String> k(String str) {
        String[] list;
        List<String> arrayList = new ArrayList<>();
        if (str != null) {
            try {
                if (str.equals("") || (list = new File(str).list(h())) == null) {
                    return arrayList;
                }
                arrayList = Arrays.asList(list);
                m(str, arrayList);
                return arrayList;
            } catch (Exception e4) {
                e4.printStackTrace();
                return arrayList;
            }
        }
        return arrayList;
    }

    public void l(g gVar) {
        this.f17481i = gVar;
    }

    void m(String str, List<String> list) {
        Collections.sort(list, new e(str));
    }

    void n(List<String> list) {
        Collections.sort(list, new f());
    }
}
