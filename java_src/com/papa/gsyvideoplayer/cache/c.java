package com.papa.gsyvideoplayer.cache;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.danikula.videocache.file.f;
import com.danikula.videocache.i;
import com.papa.gsyvideoplayer.cache.b;
import com.papa.gsyvideoplayer.utils.q;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import tv.danmaku.ijk.media.player.IMediaPlayer;
/* compiled from: ProxyCacheManager.java */
/* loaded from: classes4.dex */
public class c implements b, com.danikula.videocache.d {

    /* renamed from: f  reason: collision with root package name */
    public static int f54951f = 536870912;

    /* renamed from: g  reason: collision with root package name */
    private static c f54952g;

    /* renamed from: h  reason: collision with root package name */
    private static com.danikula.videocache.file.c f54953h;

    /* renamed from: a  reason: collision with root package name */
    protected i f54954a;

    /* renamed from: b  reason: collision with root package name */
    protected File f54955b;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f54956c;

    /* renamed from: d  reason: collision with root package name */
    private b.a f54957d;

    /* renamed from: e  reason: collision with root package name */
    protected d f54958e = new d();

    public static void b() {
        f54953h = null;
    }

    protected static i c(Context context) {
        i iVar = j().f54954a;
        if (iVar == null) {
            c j4 = j();
            i k4 = j().k(context);
            j4.f54954a = k4;
            return k4;
        }
        return iVar;
    }

    public static i d(Context context, File file) {
        if (file == null) {
            return c(context);
        }
        if (j().f54955b != null && !j().f54955b.getAbsolutePath().equals(file.getAbsolutePath())) {
            i iVar = j().f54954a;
            if (iVar != null) {
                iVar.r();
            }
            c j4 = j();
            i l4 = j().l(context, file);
            j4.f54954a = l4;
            return l4;
        }
        i iVar2 = j().f54954a;
        if (iVar2 == null) {
            c j5 = j();
            i l5 = j().l(context, file);
            j5.f54954a = l5;
            return l5;
        }
        return iVar2;
    }

    public static synchronized c j() {
        c cVar;
        synchronized (c.class) {
            if (f54952g == null) {
                f54952g = new c();
            }
            cVar = f54952g;
        }
        return cVar;
    }

    public static void m(com.danikula.videocache.file.c cVar) {
        f54953h = cVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.danikula.videocache.file.c] */
    @Override // com.papa.gsyvideoplayer.cache.b
    public void a(Context context, File file, String str) {
        if (TextUtils.isEmpty(str)) {
            com.papa.gsyvideoplayer.utils.d.a(new File(q.c(context.getApplicationContext()).getAbsolutePath()));
            return;
        }
        f fVar = new f();
        ?? r12 = f54953h;
        if (r12 != 0) {
            fVar = r12;
        }
        String a4 = fVar.a(str);
        if (file != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(file.getAbsolutePath());
            String str2 = File.separator;
            sb.append(str2);
            sb.append(a4);
            sb.append(".download");
            com.papa.gsyvideoplayer.utils.b.a(sb.toString());
            com.papa.gsyvideoplayer.utils.b.a(file.getAbsolutePath() + str2 + a4);
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(q.c(context.getApplicationContext()).getAbsolutePath());
        String str3 = File.separator;
        sb2.append(str3);
        sb2.append(a4);
        sb2.append(".download");
        com.papa.gsyvideoplayer.utils.b.a(sb2.toString());
        com.papa.gsyvideoplayer.utils.b.a(q.c(context.getApplicationContext()).getAbsolutePath() + str3 + a4);
    }

    @Override // com.papa.gsyvideoplayer.cache.b
    public boolean e(Context context, File file, String str) {
        i d4 = d(context.getApplicationContext(), file);
        if (d4 != null) {
            str = d4.j(str);
        }
        return !str.startsWith(com.facebook.common.util.f.f11765a);
    }

    @Override // com.papa.gsyvideoplayer.cache.b
    public boolean f() {
        return this.f54956c;
    }

    @Override // com.danikula.videocache.d
    public void g(File file, String str, int i2) {
        b.a aVar = this.f54957d;
        if (aVar != null) {
            aVar.g(file, str, i2);
        }
    }

    @Override // com.papa.gsyvideoplayer.cache.b
    public void h(Context context, IMediaPlayer iMediaPlayer, String str, Map<String, String> map, File file) {
        Map<String, String> map2 = d.f54959a;
        map2.clear();
        if (map != null) {
            map2.putAll(map);
        }
        if (str.startsWith(com.facebook.common.util.f.f11765a) && !str.contains("127.0.0.1") && !str.contains(".m3u8")) {
            i d4 = d(context.getApplicationContext(), file);
            if (d4 != null) {
                String j4 = d4.j(str);
                boolean z3 = !j4.startsWith(com.facebook.common.util.f.f11765a);
                this.f54956c = z3;
                if (!z3) {
                    d4.p(this, str);
                }
                str = j4;
            }
        } else if (!str.startsWith(com.facebook.common.util.f.f11765a) && !str.startsWith("rtmp") && !str.startsWith("rtsp") && !str.contains(".m3u8")) {
            this.f54956c = true;
        }
        try {
            iMediaPlayer.setDataSource(context, Uri.parse(str), map);
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.papa.gsyvideoplayer.cache.b
    public void i(b.a aVar) {
        this.f54957d = aVar;
    }

    public i k(Context context) {
        return new i.b(context.getApplicationContext()).g(this.f54958e).b();
    }

    public i l(Context context, File file) {
        if (!file.exists()) {
            file.mkdirs();
        }
        i.b bVar = new i.b(context);
        bVar.d(file);
        bVar.i(f54951f);
        bVar.g(this.f54958e);
        com.danikula.videocache.file.c cVar = f54953h;
        if (cVar != null) {
            bVar.f(cVar);
        }
        this.f54955b = file;
        return bVar.b();
    }

    public void n(i iVar) {
        this.f54954a = iVar;
    }

    @Override // com.papa.gsyvideoplayer.cache.b
    public void release() {
        i iVar = this.f54954a;
        if (iVar != null) {
            try {
                iVar.u(this);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }
}
