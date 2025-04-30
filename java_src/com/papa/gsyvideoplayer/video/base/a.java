package com.papa.gsyvideoplayer.video.base;

import android.content.Context;
import android.view.Surface;
import com.papa.gsyvideoplayer.player.c;
import java.io.File;
import java.util.Map;
/* compiled from: GSYVideoViewBridge.java */
/* loaded from: classes4.dex */
public interface a {
    boolean A();

    void B(int i2);

    void a(Context context, File file, String str);

    int b();

    void c(float f4, boolean z3);

    boolean d();

    boolean e(Context context, File file, String str);

    void f(float f4, boolean z3);

    long getCurrentPosition();

    int getCurrentVideoHeight();

    int getCurrentVideoWidth();

    long getDuration();

    int getVideoHeight();

    int getVideoSarDen();

    int getVideoSarNum();

    int getVideoWidth();

    long h();

    void i(c2.a aVar);

    boolean isPlaying();

    void j(Surface surface);

    void k(String str);

    int l();

    void m(String str, Map<String, String> map, boolean z3, float f4, boolean z4, File file, String str2);

    void n(int i2);

    int o();

    void p(c2.a aVar);

    void pause();

    String q();

    c2.a r();

    void s(Surface surface);

    void seekTo(long j4);

    void start();

    void stop();

    int t();

    void u(int i2);

    c v();

    void w(String str, Map<String, String> map, boolean z3, float f4, boolean z4, File file);

    void x(int i2);

    c2.a y();

    void z();
}
