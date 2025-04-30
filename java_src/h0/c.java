package h0;

import com.facebook.imagepipeline.producers.c0;
import com.facebook.imagepipeline.producers.f;
import com.facebook.imagepipeline.producers.h;
import com.facebook.imagepipeline.producers.k;
import com.facebook.imagepipeline.producers.n;
import com.facebook.imagepipeline.producers.q;
import com.facebook.imagepipeline.producers.t;
import com.facebook.imagepipeline.producers.u;
import com.facebook.imagepipeline.producers.v;
import com.facebook.imagepipeline.producers.y;
import com.facebook.imagepipeline.producers.z;
/* compiled from: ImageOriginUtils.java */
/* loaded from: classes2.dex */
public class c {
    private c() {
    }

    public static int a(String str) {
        str.hashCode();
        char c4 = 65535;
        switch (str.hashCode()) {
            case -1914072202:
                if (str.equals(f.f13022f)) {
                    c4 = 0;
                    break;
                }
                break;
            case -1683996557:
                if (str.equals(z.f13290d)) {
                    c4 = 1;
                    break;
                }
                break;
            case -1579985851:
                if (str.equals(y.f13286c)) {
                    c4 = 2;
                    break;
                }
                break;
            case -1307634203:
                if (str.equals(q.f13196d)) {
                    c4 = 3;
                    break;
                }
                break;
            case -1224383234:
                if (str.equals(c0.f13003d)) {
                    c4 = 4;
                    break;
                }
                break;
            case 656304759:
                if (str.equals(n.f13145e)) {
                    c4 = 5;
                    break;
                }
                break;
            case 957714404:
                if (str.equals(h.f13055d)) {
                    c4 = 6;
                    break;
                }
                break;
            case 1019542023:
                if (str.equals(t.f13228d)) {
                    c4 = 7;
                    break;
                }
                break;
            case 1721672898:
                if (str.equals(k.f13106c)) {
                    c4 = '\b';
                    break;
                }
                break;
            case 1793127518:
                if (str.equals(v.f13247e)) {
                    c4 = '\t';
                    break;
                }
                break;
            case 2113652014:
                if (str.equals(u.f13240d)) {
                    c4 = '\n';
                    break;
                }
                break;
        }
        switch (c4) {
            case 0:
            case 6:
                return 5;
            case 1:
            case 2:
            case 7:
            case '\b':
            case '\t':
            case '\n':
                return 6;
            case 3:
                return 4;
            case 4:
                return 2;
            case 5:
                return 3;
            default:
                return 1;
        }
    }

    public static String b(int i2) {
        return i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? i2 != 6 ? "unknown" : "local" : "memory_bitmap" : "memory_encoded" : "disk" : "network";
    }
}
