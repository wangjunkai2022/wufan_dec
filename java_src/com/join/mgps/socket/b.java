package com.join.mgps.socket;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.socket.entity.h;
import java.util.ArrayList;
import java.util.List;
/* compiled from: SocketCommendManager.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private static final String f52016b = "b";

    /* renamed from: c  reason: collision with root package name */
    private static final int f52017c = 5;

    /* renamed from: a  reason: collision with root package name */
    com.join.mgps.socket.a f52018a = com.join.mgps.socket.a.b();

    /* compiled from: SocketCommendManager.java */
    /* loaded from: classes4.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final b f52019a = new b();

        private a() {
        }
    }

    public static List<List<DownloadTask>> c(List<DownloadTask> list, int i2) {
        int i4;
        ArrayList arrayList = new ArrayList();
        int size = list.size() % i2 == 0 ? list.size() / i2 : (list.size() / i2) + 1;
        int i5 = 0;
        while (i5 < size) {
            ArrayList arrayList2 = new ArrayList();
            int i6 = i5 * i2;
            while (true) {
                i4 = i5 + 1;
                if (i6 <= (i2 * i4) - 1) {
                    if (i6 <= list.size() - 1) {
                        arrayList2.add(list.get(i6));
                    }
                    i6++;
                }
            }
            arrayList.add(arrayList2);
            i5 = i4;
        }
        return arrayList;
    }

    public static b d() {
        return a.f52019a;
    }

    public void a() {
        if (this.f52018a == null) {
            return;
        }
        this.f52018a.d(new h(com.join.mgps.socket.entity.a.f52075n));
    }

    public void b() {
        this.f52018a.a();
    }

    public void e(String str) {
        if (str != null) {
            this.f52018a.d(new h(com.join.mgps.socket.entity.a.f52079r + str));
        }
    }

    public void f() {
        if (this.f52018a == null) {
            return;
        }
        this.f52018a.d(new h(com.join.mgps.socket.entity.a.f52068g + com.join.mgps.Util.h.a()));
    }

    public void g() {
        if (this.f52018a == null) {
            return;
        }
        this.f52018a.d(new h(com.join.mgps.socket.entity.a.f52076o));
    }

    public void h() {
        if (this.f52018a == null) {
            return;
        }
        this.f52018a.d(new h(com.join.mgps.socket.entity.a.f52072k));
    }

    public void i() {
        if (this.f52018a == null) {
            return;
        }
        this.f52018a.d(new h(com.join.mgps.socket.entity.a.f52071j));
    }

    public void j(com.join.mgps.socket.entity.d dVar) {
        if (dVar != null) {
            this.f52018a.d(dVar);
        }
    }

    public void k() {
        if (this.f52018a == null) {
            return;
        }
        this.f52018a.d(new h(com.join.mgps.socket.entity.a.f52067f));
    }

    public void l(String str) {
        if (str != null) {
            this.f52018a.d(new h(com.join.mgps.socket.entity.a.f52078q + str));
        }
    }

    public void m(String str) {
        if (str != null) {
            this.f52018a.d(new h(com.join.mgps.socket.entity.a.f52070i + str));
        }
    }

    public void n(List<DownloadTask> list) {
        if (list != null) {
            List<List<DownloadTask>> c4 = c(list, 5);
            int size = list.size();
            for (List<DownloadTask> list2 : c4) {
                String json = JsonMapper.getInstance().toJson(list2);
                StringBuilder sb = new StringBuilder();
                sb.append("Task列表: ");
                sb.append(json);
                this.f52018a.d(new h(com.join.mgps.socket.entity.a.f52074m + size + ":" + json));
            }
        }
    }

    public void o() {
        if (this.f52018a == null) {
            return;
        }
        this.f52018a.d(new h(com.join.mgps.socket.entity.a.f52077p));
    }

    public void p() {
        if (this.f52018a == null) {
            return;
        }
        this.f52018a.d(new h(com.join.mgps.socket.entity.a.f52069h));
    }

    public void q() {
        if (this.f52018a == null) {
            return;
        }
        this.f52018a.d(new h(com.join.mgps.socket.entity.a.f52073l));
    }
}
