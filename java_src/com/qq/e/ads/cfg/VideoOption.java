package com.qq.e.ads.cfg;

import com.qq.e.comm.util.GDTLogger;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class VideoOption {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f56290a;

    /* renamed from: b  reason: collision with root package name */
    private final int f56291b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f56292c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f56293d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f56294e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f56295f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f56296g;

    /* renamed from: h  reason: collision with root package name */
    private final int f56297h;

    /* renamed from: i  reason: collision with root package name */
    private final int f56298i;

    /* loaded from: classes4.dex */
    public static final class AutoPlayPolicy {
        public static final int ALWAYS = 1;
        public static final int NEVER = 2;
        public static final int WIFI = 0;
    }

    /* loaded from: classes4.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private boolean f56299a = true;

        /* renamed from: b  reason: collision with root package name */
        private int f56300b = 1;

        /* renamed from: c  reason: collision with root package name */
        private boolean f56301c = true;

        /* renamed from: d  reason: collision with root package name */
        private boolean f56302d = true;

        /* renamed from: e  reason: collision with root package name */
        private boolean f56303e = true;

        /* renamed from: f  reason: collision with root package name */
        private boolean f56304f = false;

        /* renamed from: g  reason: collision with root package name */
        private boolean f56305g = false;

        /* renamed from: h  reason: collision with root package name */
        private int f56306h;

        /* renamed from: i  reason: collision with root package name */
        private int f56307i;

        public VideoOption build() {
            return new VideoOption(this);
        }

        public Builder setAutoPlayMuted(boolean z3) {
            this.f56299a = z3;
            return this;
        }

        public Builder setAutoPlayPolicy(int i2) {
            if (i2 < 0 || i2 > 2) {
                i2 = 1;
                GDTLogger.e("setAutoPlayPolicy 设置失败，值只能为0到2之间的数值, 重置为 : 1");
            }
            this.f56300b = i2;
            return this;
        }

        public Builder setDetailPageMuted(boolean z3) {
            this.f56305g = z3;
            return this;
        }

        public Builder setEnableDetailPage(boolean z3) {
            this.f56303e = z3;
            return this;
        }

        public Builder setEnableUserControl(boolean z3) {
            this.f56304f = z3;
            return this;
        }

        public Builder setMaxVideoDuration(int i2) {
            this.f56306h = i2;
            return this;
        }

        public Builder setMinVideoDuration(int i2) {
            this.f56307i = i2;
            return this;
        }

        public Builder setNeedCoverImage(boolean z3) {
            this.f56302d = z3;
            return this;
        }

        public Builder setNeedProgressBar(boolean z3) {
            this.f56301c = z3;
            return this;
        }
    }

    private VideoOption(Builder builder) {
        this.f56290a = builder.f56299a;
        this.f56291b = builder.f56300b;
        this.f56292c = builder.f56301c;
        this.f56293d = builder.f56302d;
        this.f56294e = builder.f56303e;
        this.f56295f = builder.f56304f;
        this.f56296g = builder.f56305g;
        this.f56297h = builder.f56306h;
        this.f56298i = builder.f56307i;
    }

    public boolean getAutoPlayMuted() {
        return this.f56290a;
    }

    public int getAutoPlayPolicy() {
        return this.f56291b;
    }

    public int getMaxVideoDuration() {
        return this.f56297h;
    }

    public int getMinVideoDuration() {
        return this.f56298i;
    }

    public JSONObject getOptions() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("autoPlayMuted", Boolean.valueOf(this.f56290a));
            jSONObject.putOpt("autoPlayPolicy", Integer.valueOf(this.f56291b));
            jSONObject.putOpt("detailPageMuted", Boolean.valueOf(this.f56296g));
        } catch (Exception e4) {
            GDTLogger.d("Get video options error: " + e4.getMessage());
        }
        return jSONObject;
    }

    public boolean isDetailPageMuted() {
        return this.f56296g;
    }

    public boolean isEnableDetailPage() {
        return this.f56294e;
    }

    public boolean isEnableUserControl() {
        return this.f56295f;
    }

    public boolean isNeedCoverImage() {
        return this.f56293d;
    }

    public boolean isNeedProgressBar() {
        return this.f56292c;
    }
}
