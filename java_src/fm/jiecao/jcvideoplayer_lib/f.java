package fm.jiecao.jcvideoplayer_lib;
/* compiled from: JCVideoPlayerManager.java */
/* loaded from: classes3.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public static JCVideoPlayer f65653a;

    /* renamed from: b  reason: collision with root package name */
    public static JCVideoPlayer f65654b;

    public static void a() {
        JCVideoPlayer jCVideoPlayer = f65654b;
        if (jCVideoPlayer != null) {
            jCVideoPlayer.q();
            f65654b = null;
        }
        JCVideoPlayer jCVideoPlayer2 = f65653a;
        if (jCVideoPlayer2 != null) {
            jCVideoPlayer2.q();
            f65653a = null;
        }
    }

    public static JCVideoPlayer b() {
        if (d() != null) {
            return d();
        }
        return c();
    }

    public static JCVideoPlayer c() {
        return f65653a;
    }

    public static JCVideoPlayer d() {
        return f65654b;
    }

    public static void e(JCVideoPlayer jCVideoPlayer) {
        f65653a = jCVideoPlayer;
    }

    public static void f(JCVideoPlayer jCVideoPlayer) {
        f65654b = jCVideoPlayer;
    }
}
