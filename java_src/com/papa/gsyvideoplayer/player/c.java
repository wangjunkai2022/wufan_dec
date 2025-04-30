package com.papa.gsyvideoplayer.player;

import android.content.Context;
import android.os.Message;
import java.util.List;
import tv.danmaku.ijk.media.player.IMediaPlayer;
/* compiled from: IPlayerManager.java */
/* loaded from: classes4.dex */
public interface c {
    int b();

    void c(float f4, boolean z3);

    boolean d();

    void f(float f4, boolean z3);

    long getCurrentPosition();

    long getDuration();

    int getVideoHeight();

    int getVideoSarDen();

    int getVideoSarNum();

    int getVideoWidth();

    long h();

    void i(Context context, Message message, List<com.papa.gsyvideoplayer.model.c> list, com.papa.gsyvideoplayer.cache.b bVar);

    boolean isPlaying();

    IMediaPlayer j();

    void k(boolean z3);

    void l(Message message);

    void m();

    void pause();

    void release();

    void seekTo(long j4);

    void start();

    void stop();
}
