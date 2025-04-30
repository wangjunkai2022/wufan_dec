package com.papa.gsyvideoplayer.player;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.view.Surface;
import com.papa.gsyvideoplayer.utils.p;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.ijk.media.player.IjkLibLoader;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;
/* compiled from: IjkPlayerManager.java */
/* loaded from: classes4.dex */
public class d extends com.papa.gsyvideoplayer.player.a {

    /* renamed from: e  reason: collision with root package name */
    private static int f54978e = 1;

    /* renamed from: f  reason: collision with root package name */
    private static IjkLibLoader f54979f;

    /* renamed from: b  reason: collision with root package name */
    private IjkMediaPlayer f54980b;

    /* renamed from: c  reason: collision with root package name */
    private List<com.papa.gsyvideoplayer.model.c> f54981c;

    /* renamed from: d  reason: collision with root package name */
    private Surface f54982d;

    /* compiled from: IjkPlayerManager.java */
    /* loaded from: classes4.dex */
    class a implements IjkMediaPlayer.OnNativeInvokeListener {
        a() {
        }

        @Override // tv.danmaku.ijk.media.player.IjkMediaPlayer.OnNativeInvokeListener
        public boolean onNativeInvoke(int i2, Bundle bundle) {
            return true;
        }
    }

    public static IjkLibLoader n() {
        return f54979f;
    }

    public static int o() {
        return f54978e;
    }

    private void q(IjkMediaPlayer ijkMediaPlayer, List<com.papa.gsyvideoplayer.model.c> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (com.papa.gsyvideoplayer.model.c cVar : list) {
            if (cVar.e() == 0) {
                ijkMediaPlayer.setOption(cVar.a(), cVar.b(), cVar.c());
            } else {
                ijkMediaPlayer.setOption(cVar.a(), cVar.b(), cVar.d());
            }
        }
    }

    public static void r(IjkLibLoader ijkLibLoader) {
        f54979f = ijkLibLoader;
    }

    public static void s(int i2) {
        f54978e = i2;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public int b() {
        return -1;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void c(float f4, boolean z3) {
        if (f4 > 0.0f) {
            try {
                IjkMediaPlayer ijkMediaPlayer = this.f54980b;
                if (ijkMediaPlayer != null) {
                    ijkMediaPlayer.setSpeed(f4);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if (z3) {
                com.papa.gsyvideoplayer.model.c cVar = new com.papa.gsyvideoplayer.model.c(4, "soundtouch", 1);
                List<com.papa.gsyvideoplayer.model.c> p3 = p();
                if (p3 != null) {
                    p3.add(cVar);
                } else {
                    p3 = new ArrayList<>();
                    p3.add(cVar);
                }
                t(p3);
            }
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public boolean d() {
        return true;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void f(float f4, boolean z3) {
        IjkMediaPlayer ijkMediaPlayer = this.f54980b;
        if (ijkMediaPlayer != null) {
            ijkMediaPlayer.setSpeed(f4);
            this.f54980b.setOption(4, "soundtouch", z3 ? 1L : 0L);
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public long getCurrentPosition() {
        IjkMediaPlayer ijkMediaPlayer = this.f54980b;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.getCurrentPosition();
        }
        return 0L;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public long getDuration() {
        IjkMediaPlayer ijkMediaPlayer = this.f54980b;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.getDuration();
        }
        return 0L;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public int getVideoHeight() {
        IjkMediaPlayer ijkMediaPlayer = this.f54980b;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public int getVideoSarDen() {
        IjkMediaPlayer ijkMediaPlayer = this.f54980b;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.getVideoSarDen();
        }
        return 1;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public int getVideoSarNum() {
        IjkMediaPlayer ijkMediaPlayer = this.f54980b;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.getVideoSarNum();
        }
        return 1;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public int getVideoWidth() {
        IjkMediaPlayer ijkMediaPlayer = this.f54980b;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public long h() {
        IjkMediaPlayer ijkMediaPlayer = this.f54980b;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.getTcpSpeed();
        }
        return 0L;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void i(Context context, Message message, List<com.papa.gsyvideoplayer.model.c> list, com.papa.gsyvideoplayer.cache.b bVar) {
        IjkMediaPlayer ijkMediaPlayer = f54979f == null ? new IjkMediaPlayer() : new IjkMediaPlayer(f54979f);
        this.f54980b = ijkMediaPlayer;
        ijkMediaPlayer.setAudioStreamType(3);
        this.f54980b.setOnNativeInvokeListener(new a());
        com.papa.gsyvideoplayer.model.a aVar = (com.papa.gsyvideoplayer.model.a) message.obj;
        String e4 = aVar.e();
        try {
            if (com.papa.gsyvideoplayer.utils.f.h()) {
                com.papa.gsyvideoplayer.utils.c.h("enable mediaCodec");
                this.f54980b.setOption(4, "mediacodec", 1L);
                this.f54980b.setOption(4, "mediacodec-auto-rotate", 1L);
                this.f54980b.setOption(4, "mediacodec-handle-resolution-change", 1L);
            }
            if (aVar.f() && bVar != null) {
                bVar.h(context, this.f54980b, e4, aVar.b(), aVar.a());
            } else if (!TextUtils.isEmpty(e4)) {
                Uri parse = Uri.parse(e4);
                if (parse.getScheme().equals(com.facebook.common.util.f.f11772h)) {
                    this.f54980b.setDataSource(p.a(context, parse));
                } else if (parse.getScheme().equals("content")) {
                    try {
                        this.f54980b.setDataSource(context.getContentResolver().openFileDescriptor(parse, net.lingala.zip4j.util.e.f73017f0).getFileDescriptor());
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                } else {
                    this.f54980b.setDataSource(e4, aVar.b());
                }
            } else {
                this.f54980b.setDataSource(e4, aVar.b());
            }
            this.f54980b.setLooping(aVar.g());
            if (aVar.d() != 1.0f && aVar.d() > 0.0f) {
                this.f54980b.setSpeed(aVar.d());
            }
            IjkMediaPlayer.native_setLogLevel(f54978e);
            q(this.f54980b, list);
        } catch (IOException e6) {
            e6.printStackTrace();
        }
        e(aVar);
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public boolean isPlaying() {
        IjkMediaPlayer ijkMediaPlayer = this.f54980b;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.isPlaying();
        }
        return false;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public IMediaPlayer j() {
        return this.f54980b;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void k(boolean z3) {
        IjkMediaPlayer ijkMediaPlayer = this.f54980b;
        if (ijkMediaPlayer != null) {
            if (z3) {
                ijkMediaPlayer.setVolume(0.0f, 0.0f);
            } else {
                ijkMediaPlayer.setVolume(1.0f, 1.0f);
            }
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void l(Message message) {
        IjkMediaPlayer ijkMediaPlayer;
        Object obj = message.obj;
        if (obj == null && (ijkMediaPlayer = this.f54980b) != null) {
            ijkMediaPlayer.setSurface(null);
            return;
        }
        Surface surface = (Surface) obj;
        this.f54982d = surface;
        if (this.f54980b == null || !surface.isValid()) {
            return;
        }
        this.f54980b.setSurface(surface);
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void m() {
        if (this.f54982d != null) {
            this.f54982d = null;
        }
    }

    public List<com.papa.gsyvideoplayer.model.c> p() {
        return this.f54981c;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void pause() {
        IjkMediaPlayer ijkMediaPlayer = this.f54980b;
        if (ijkMediaPlayer != null) {
            ijkMediaPlayer.pause();
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void release() {
        IjkMediaPlayer ijkMediaPlayer = this.f54980b;
        if (ijkMediaPlayer != null) {
            ijkMediaPlayer.release();
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void seekTo(long j4) {
        IjkMediaPlayer ijkMediaPlayer = this.f54980b;
        if (ijkMediaPlayer != null) {
            ijkMediaPlayer.seekTo(j4);
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void start() {
        IjkMediaPlayer ijkMediaPlayer = this.f54980b;
        if (ijkMediaPlayer != null) {
            ijkMediaPlayer.start();
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void stop() {
        IjkMediaPlayer ijkMediaPlayer = this.f54980b;
        if (ijkMediaPlayer != null) {
            ijkMediaPlayer.stop();
        }
    }

    public void t(List<com.papa.gsyvideoplayer.model.c> list) {
        this.f54981c = list;
    }
}
