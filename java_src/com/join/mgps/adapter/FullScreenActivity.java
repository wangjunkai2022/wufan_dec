package com.join.mgps.adapter;

import android.content.Context;
import android.content.res.Configuration;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.widget.AbsListView;
import com.BaseAppCompatActivity;
import com.MApplication;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.fullscreen_activity)
/* loaded from: classes3.dex */
public class FullScreenActivity extends BaseAppCompatActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    StandardVideoView f40634a;
    @Extra

    /* renamed from: b  reason: collision with root package name */
    VideoInfo f40635b;

    /* renamed from: c  reason: collision with root package name */
    boolean f40636c = false;

    /* renamed from: d  reason: collision with root package name */
    com.danikula.videocache.i f40637d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (FullScreenActivity.this.f40634a.getCurrentState() == 0 || FullScreenActivity.this.f40634a.getCurrentState() == 7) {
                FullScreenActivity.this.f40634a.setMute(false);
                FullScreenActivity.this.f40634a.startPlayLogic();
            }
        }
    }

    public void D0(AbsListView absListView) {
    }

    public com.danikula.videocache.i E0(Context context) {
        return MApplication.p(context);
    }

    void F0() {
        new Handler().postDelayed(new a(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        if (this.f40635b == null) {
            finish();
            return;
        }
        this.f40637d = E0(this);
        String e4 = this.f40635b.e();
        String a4 = this.f40635b.a();
        this.f40634a.setMuteWhenPlay(false);
        this.f40634a.setNoneNetFinishActivity(true);
        MyImageLoader.h(this.f40634a.f17628a, a4);
        this.f40634a.setPlayTag("FullScreenActivity");
        this.f40634a.setUp(e4, 1, "", a4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back() {
        finish();
    }

    @Override // com.BaseAppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (com.papa.gsyvideoplayer.d.c0(this)) {
            finish();
        } else {
            super.onBackPressed();
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration == null || configuration.orientation != 2) {
            this.f40634a.getBackButton().performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setSystemUiHide(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.papa.gsyvideoplayer.d.j0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        com.papa.gsyvideoplayer.d.j0();
        StandardVideoView.D = this.f40636c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f40636c = StandardVideoView.D;
        F0();
    }

    /* loaded from: classes3.dex */
    public static class VideoInfo implements Parcelable {
        public static final Parcelable.Creator<VideoInfo> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        private String f40638a;

        /* renamed from: b  reason: collision with root package name */
        private String f40639b;

        /* renamed from: c  reason: collision with root package name */
        private MediaPlayer f40640c;

        /* renamed from: d  reason: collision with root package name */
        private int f40641d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f40642e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f40643f;

        /* renamed from: g  reason: collision with root package name */
        private int f40644g;

        /* loaded from: classes3.dex */
        class a implements Parcelable.Creator<VideoInfo> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public VideoInfo createFromParcel(Parcel parcel) {
                return new VideoInfo(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public VideoInfo[] newArray(int i2) {
                return new VideoInfo[i2];
            }
        }

        public VideoInfo() {
            this.f40638a = "";
            this.f40639b = "";
            this.f40640c = null;
            this.f40641d = -1;
            this.f40642e = false;
            this.f40643f = false;
            this.f40644g = -1;
        }

        public String a() {
            return this.f40639b;
        }

        public int b() {
            return this.f40644g;
        }

        public MediaPlayer c() {
            return this.f40640c;
        }

        public int d() {
            return this.f40641d;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String e() {
            return this.f40638a;
        }

        public boolean f() {
            return this.f40643f;
        }

        public boolean g() {
            return this.f40642e;
        }

        public void h(String str) {
            this.f40639b = str;
        }

        public void i(int i2) {
            this.f40644g = i2;
        }

        public void j(MediaPlayer mediaPlayer) {
            this.f40640c = mediaPlayer;
        }

        public void k(boolean z3) {
            this.f40643f = z3;
        }

        public void l(int i2) {
            this.f40641d = i2;
        }

        public void n(String str) {
            this.f40638a = str;
        }

        public void o(boolean z3) {
            this.f40642e = z3;
        }

        public String toString() {
            return "VideoInfo{playUrl='" + this.f40638a + "', coverUrl='" + this.f40639b + "', mediaPlayer=" + this.f40640c + ", playPosition=" + this.f40641d + ", isPlaying=" + this.f40642e + ", isPaused=" + this.f40643f + ", currentPosition=" + this.f40644g + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.f40638a);
            parcel.writeString(this.f40639b);
            parcel.writeInt(this.f40641d);
            parcel.writeInt(this.f40644g);
        }

        public VideoInfo(String str, String str2, MediaPlayer mediaPlayer) {
            this.f40638a = "";
            this.f40639b = "";
            this.f40640c = null;
            this.f40641d = -1;
            this.f40642e = false;
            this.f40643f = false;
            this.f40644g = -1;
            this.f40638a = str;
            this.f40639b = str2;
            this.f40640c = mediaPlayer;
        }

        protected VideoInfo(Parcel parcel) {
            this.f40638a = "";
            this.f40639b = "";
            this.f40640c = null;
            this.f40641d = -1;
            this.f40642e = false;
            this.f40643f = false;
            this.f40644g = -1;
            this.f40638a = parcel.readString();
            this.f40639b = parcel.readString();
            this.f40641d = parcel.readInt();
            this.f40644g = parcel.readInt();
        }

        public VideoInfo(String str, String str2, int i2, boolean z3, boolean z4, int i4) {
            this.f40638a = "";
            this.f40639b = "";
            this.f40640c = null;
            this.f40641d = -1;
            this.f40642e = false;
            this.f40643f = false;
            this.f40644g = -1;
            this.f40638a = str;
            this.f40639b = str2;
            this.f40641d = i2;
            this.f40642e = z3;
            this.f40643f = z4;
            this.f40644g = i4;
        }
    }
}
