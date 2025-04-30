package com.ss.android.socialbase.downloader.f;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.NonNull;
import org.json.JSONObject;
/* compiled from: SegmentStrategy.java */
/* loaded from: classes4.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private final JSONObject f58163a;

    /* renamed from: b  reason: collision with root package name */
    private int f58164b;

    private n(JSONObject jSONObject) {
        this.f58163a = jSONObject;
    }

    private int p() {
        return this.f58163a.optInt("url_balance", 2);
    }

    public void a(int i2) {
        this.f58164b = b(i2);
    }

    public boolean b() {
        return p() > 0;
    }

    public boolean c() {
        return p() == 1;
    }

    public int d() {
        return this.f58163a.optInt("buffer_count", 512);
    }

    public int e() {
        return this.f58163a.optInt("buffer_size", 8192);
    }

    public boolean f() {
        return this.f58163a.optInt("segment_mode", 1) == 0;
    }

    public long g() {
        long optInt = this.f58163a.optInt("segment_min_kb", 512) * 1024;
        if (optInt < 65536) {
            return 65536L;
        }
        return optInt;
    }

    public long h() {
        long optInt = this.f58163a.optInt("segment_min_init_mb", 10) * PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
        if (optInt < 5242880) {
            return 5242880L;
        }
        return optInt;
    }

    public long i() {
        long optInt = this.f58163a.optInt("segment_max_kb", 0) * PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
        if (optInt < g()) {
            return -1L;
        }
        return optInt;
    }

    public long j() {
        long optInt = this.f58163a.optInt("connect_timeout", -1);
        if (optInt >= 2000) {
            return optInt;
        }
        return -1L;
    }

    public long k() {
        long optInt = this.f58163a.optInt("read_timeout", -1);
        if (optInt >= 4000) {
            return optInt;
        }
        return -1L;
    }

    public int l() {
        return this.f58163a.optInt("ip_strategy", 0);
    }

    public float m() {
        return (float) this.f58163a.optDouble("main_ratio", 0.0d);
    }

    public int n() {
        return this.f58163a.optInt("ratio_segment", 0);
    }

    public float o() {
        return Math.min(Math.max(0.0f, (float) this.f58163a.optDouble("poor_speed_ratio", 0.0d)), 1.0f);
    }

    private int b(int i2) {
        int optInt = this.f58163a.optInt("thread_count", 4);
        if (optInt > 16) {
            optInt = 16;
        }
        if (optInt > 0) {
            return p() == 1 ? Math.min(optInt, i2) : optInt;
        } else if (p() > 0) {
            return i2;
        } else {
            return 1;
        }
    }

    public int a() {
        return this.f58164b;
    }

    @NonNull
    public static n a(@NonNull JSONObject jSONObject) {
        return new n(jSONObject);
    }
}
