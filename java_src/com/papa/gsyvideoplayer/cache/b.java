package com.papa.gsyvideoplayer.cache;

import android.content.Context;
import java.io.File;
import java.util.Map;
import tv.danmaku.ijk.media.player.IMediaPlayer;
/* compiled from: ICacheManager.java */
/* loaded from: classes4.dex */
public interface b {

    /* compiled from: ICacheManager.java */
    /* loaded from: classes4.dex */
    public interface a {
        void g(File file, String str, int i2);
    }

    void a(Context context, File file, String str);

    boolean e(Context context, File file, String str);

    boolean f();

    void h(Context context, IMediaPlayer iMediaPlayer, String str, Map<String, String> map, File file);

    void i(a aVar);

    void release();
}
