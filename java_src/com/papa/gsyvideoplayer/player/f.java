package com.papa.gsyvideoplayer.player;

import android.content.Context;
import android.media.PlaybackParams;
import android.net.TrafficStats;
import android.net.Uri;
import android.os.Build;
import android.os.Message;
import android.view.Surface;
import java.util.List;
import tv.danmaku.ijk.media.player.AndroidMediaPlayer;
import tv.danmaku.ijk.media.player.IMediaPlayer;
/* compiled from: SystemPlayerManager.java */
/* loaded from: classes4.dex */
public class f extends a {

    /* renamed from: b  reason: collision with root package name */
    private Context f54985b;

    /* renamed from: c  reason: collision with root package name */
    private AndroidMediaPlayer f54986c;

    /* renamed from: d  reason: collision with root package name */
    private Surface f54987d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f54988e;

    /* renamed from: f  reason: collision with root package name */
    private long f54989f = 0;

    /* renamed from: g  reason: collision with root package name */
    private long f54990g = 0;

    /* renamed from: h  reason: collision with root package name */
    private boolean f54991h = false;

    private long n(Context context) {
        if (context == null) {
            return 0L;
        }
        long totalRxBytes = TrafficStats.getUidRxBytes(context.getApplicationInfo().uid) == -1 ? 0L : TrafficStats.getTotalRxBytes() / 1024;
        long currentTimeMillis = System.currentTimeMillis();
        long j4 = currentTimeMillis - this.f54990g;
        if (j4 == 0) {
            return j4;
        }
        long j5 = ((totalRxBytes - this.f54989f) * 1000) / j4;
        this.f54990g = currentTimeMillis;
        this.f54989f = totalRxBytes;
        return j5;
    }

    private void o(float f4) {
        AndroidMediaPlayer androidMediaPlayer;
        if (this.f54988e || (androidMediaPlayer = this.f54986c) == null || androidMediaPlayer.getInternalMediaPlayer() == null || !this.f54986c.isPlayable()) {
            return;
        }
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                PlaybackParams playbackParams = new PlaybackParams();
                playbackParams.setSpeed(f4);
                this.f54986c.getInternalMediaPlayer().setPlaybackParams(playbackParams);
            } else {
                com.papa.gsyvideoplayer.utils.c.e(" not support setSpeed");
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public int b() {
        return -1;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void c(float f4, boolean z3) {
        o(f4);
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public boolean d() {
        return false;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void f(float f4, boolean z3) {
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public long getCurrentPosition() {
        AndroidMediaPlayer androidMediaPlayer = this.f54986c;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getCurrentPosition();
        }
        return 0L;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public long getDuration() {
        AndroidMediaPlayer androidMediaPlayer = this.f54986c;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getDuration();
        }
        return 0L;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public int getVideoHeight() {
        AndroidMediaPlayer androidMediaPlayer = this.f54986c;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public int getVideoSarDen() {
        AndroidMediaPlayer androidMediaPlayer = this.f54986c;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getVideoSarDen();
        }
        return 1;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public int getVideoSarNum() {
        AndroidMediaPlayer androidMediaPlayer = this.f54986c;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getVideoSarNum();
        }
        return 1;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public int getVideoWidth() {
        AndroidMediaPlayer androidMediaPlayer = this.f54986c;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public long h() {
        if (this.f54986c != null) {
            return n(this.f54985b);
        }
        return 0L;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void i(Context context, Message message, List<com.papa.gsyvideoplayer.model.c> list, com.papa.gsyvideoplayer.cache.b bVar) {
        this.f54985b = context.getApplicationContext();
        AndroidMediaPlayer androidMediaPlayer = new AndroidMediaPlayer();
        this.f54986c = androidMediaPlayer;
        androidMediaPlayer.setAudioStreamType(3);
        this.f54988e = false;
        com.papa.gsyvideoplayer.model.a aVar = (com.papa.gsyvideoplayer.model.a) message.obj;
        try {
            if (aVar.f() && bVar != null) {
                bVar.h(context, this.f54986c, aVar.e(), aVar.b(), aVar.a());
            } else {
                this.f54986c.setDataSource(context, Uri.parse(aVar.e()), aVar.b());
            }
            this.f54986c.setLooping(aVar.g());
            if (aVar.d() != 1.0f && aVar.d() > 0.0f) {
                o(aVar.d());
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        e(aVar);
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public boolean isPlaying() {
        AndroidMediaPlayer androidMediaPlayer = this.f54986c;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.isPlaying();
        }
        return false;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public IMediaPlayer j() {
        return this.f54986c;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void k(boolean z3) {
        try {
            AndroidMediaPlayer androidMediaPlayer = this.f54986c;
            if (androidMediaPlayer != null && !this.f54988e) {
                if (z3) {
                    androidMediaPlayer.setVolume(0.0f, 0.0f);
                } else {
                    androidMediaPlayer.setVolume(1.0f, 1.0f);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void l(Message message) {
        AndroidMediaPlayer androidMediaPlayer;
        Object obj = message.obj;
        if (obj == null && (androidMediaPlayer = this.f54986c) != null && !this.f54988e) {
            androidMediaPlayer.setSurface(null);
        } else if (obj != null) {
            Surface surface = (Surface) obj;
            this.f54987d = surface;
            if (this.f54986c != null && surface.isValid() && !this.f54988e) {
                this.f54986c.setSurface(surface);
            }
            if (this.f54991h) {
                return;
            }
            pause();
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void m() {
        if (this.f54987d != null) {
            this.f54987d = null;
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void pause() {
        AndroidMediaPlayer androidMediaPlayer = this.f54986c;
        if (androidMediaPlayer != null) {
            androidMediaPlayer.pause();
            this.f54991h = false;
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void release() {
        AndroidMediaPlayer androidMediaPlayer = this.f54986c;
        if (androidMediaPlayer != null) {
            this.f54988e = true;
            androidMediaPlayer.release();
        }
        this.f54989f = 0L;
        this.f54990g = 0L;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void seekTo(long j4) {
        AndroidMediaPlayer androidMediaPlayer = this.f54986c;
        if (androidMediaPlayer != null) {
            androidMediaPlayer.seekTo(j4);
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void start() {
        AndroidMediaPlayer androidMediaPlayer = this.f54986c;
        if (androidMediaPlayer != null) {
            androidMediaPlayer.start();
            this.f54991h = true;
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void stop() {
        AndroidMediaPlayer androidMediaPlayer = this.f54986c;
        if (androidMediaPlayer != null) {
            androidMediaPlayer.stop();
            this.f54991h = false;
        }
    }
}
