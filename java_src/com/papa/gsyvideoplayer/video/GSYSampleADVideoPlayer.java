package com.papa.gsyvideoplayer.video;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.papa.gsyvideoplayer.R;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class GSYSampleADVideoPlayer extends ListGSYVideoPlayer {

    /* renamed from: c  reason: collision with root package name */
    protected View f55321c;

    /* renamed from: d  reason: collision with root package name */
    protected ViewGroup f55322d;

    /* renamed from: e  reason: collision with root package name */
    protected TextView f55323e;

    /* renamed from: f  reason: collision with root package name */
    protected boolean f55324f;

    /* renamed from: g  reason: collision with root package name */
    protected boolean f55325g;

    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GSYSampleADVideoPlayer.this.a();
        }
    }

    /* loaded from: classes4.dex */
    public static class b extends com.papa.gsyvideoplayer.model.b {

        /* renamed from: e  reason: collision with root package name */
        public static int f55327e = 0;

        /* renamed from: f  reason: collision with root package name */
        public static int f55328f = 1;

        /* renamed from: c  reason: collision with root package name */
        private int f55329c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f55330d;

        public b(String str, String str2, int i2) {
            this(str, str2, i2, false);
        }

        public boolean e() {
            return this.f55330d;
        }

        public void f(boolean z3) {
            this.f55330d = z3;
        }

        public void g(int i2) {
            this.f55329c = i2;
        }

        public int getType() {
            return this.f55329c;
        }

        public b(String str, String str2, int i2, boolean z3) {
            super(str, str2);
            this.f55329c = f55327e;
            this.f55329c = i2;
            this.f55330d = z3;
        }
    }

    public GSYSampleADVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
        this.f55324f = false;
        this.f55325g = false;
    }

    @Override // com.papa.gsyvideoplayer.video.ListGSYVideoPlayer
    public boolean b(List<com.papa.gsyvideoplayer.model.b> list, boolean z3, int i2) {
        return c(list, z3, i2, null);
    }

    @Override // com.papa.gsyvideoplayer.video.ListGSYVideoPlayer
    public boolean c(List<com.papa.gsyvideoplayer.model.b> list, boolean z3, int i2, File file) {
        return d(list, z3, i2, file, new HashMap());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.ListGSYVideoPlayer, com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    public void cloneParams(GSYBaseVideoPlayer gSYBaseVideoPlayer, GSYBaseVideoPlayer gSYBaseVideoPlayer2) {
        super.cloneParams(gSYBaseVideoPlayer, gSYBaseVideoPlayer2);
        GSYSampleADVideoPlayer gSYSampleADVideoPlayer = (GSYSampleADVideoPlayer) gSYBaseVideoPlayer;
        GSYSampleADVideoPlayer gSYSampleADVideoPlayer2 = (GSYSampleADVideoPlayer) gSYBaseVideoPlayer2;
        gSYSampleADVideoPlayer2.f55324f = gSYSampleADVideoPlayer.f55324f;
        gSYSampleADVideoPlayer2.f55325g = gSYSampleADVideoPlayer.f55325g;
        gSYSampleADVideoPlayer2.f();
    }

    @Override // com.papa.gsyvideoplayer.video.ListGSYVideoPlayer
    public boolean d(List<com.papa.gsyvideoplayer.model.b> list, boolean z3, int i2, File file, Map<String, String> map) {
        return e(list, z3, i2, file, map, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.ListGSYVideoPlayer
    public boolean e(List<com.papa.gsyvideoplayer.model.b> list, boolean z3, int i2, File file, Map<String, String> map, boolean z4) {
        com.papa.gsyvideoplayer.model.b bVar = list.get(i2);
        if (bVar instanceof b) {
            b bVar2 = (b) bVar;
            if (bVar2.e() && i2 < list.size() - 1) {
                return e(list, z3, i2 + 1, file, map, z4);
            }
            this.f55324f = bVar2.getType() == b.f55328f;
        }
        f();
        return super.e(list, z3, i2, file, map, z4);
    }

    protected void f() {
        View view = this.f55321c;
        int i2 = 8;
        boolean z3 = false;
        if (view != null) {
            view.setVisibility((this.f55325g && this.f55324f) ? 0 : 8);
        }
        TextView textView = this.f55323e;
        if (textView != null) {
            textView.setVisibility((this.f55325g && this.f55324f) ? 0 : 8);
        }
        ViewGroup viewGroup = this.f55322d;
        if (viewGroup != null) {
            viewGroup.setVisibility((this.f55325g && this.f55324f) ? 0 : 0);
        }
        if (this.mBottomContainer != null) {
            this.mBottomContainer.setBackgroundColor((this.f55325g && this.f55324f) ? 0 : getContext().getResources().getColor(R.color.bottom_container_bg));
        }
        TextView textView2 = this.mCurrentTimeTextView;
        int i4 = 4;
        if (textView2 != null) {
            textView2.setVisibility((this.f55325g && this.f55324f) ? 4 : 0);
        }
        TextView textView3 = this.mTotalTimeTextView;
        if (textView3 != null) {
            textView3.setVisibility((this.f55325g && this.f55324f) ? 4 : 0);
        }
        SeekBar seekBar = this.mProgressBar;
        if (seekBar != null) {
            seekBar.setVisibility((this.f55325g && this.f55324f) ? 0 : 0);
            this.mProgressBar.setEnabled((this.f55325g && this.f55324f) ? true : true);
        }
    }

    public boolean g(ArrayList<b> arrayList, boolean z3, int i2) {
        return b((ArrayList) arrayList.clone(), z3, i2);
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public int getLayoutId() {
        return R.layout.video_layout_sample_ad;
    }

    public boolean h(ArrayList<b> arrayList, boolean z3, int i2, File file) {
        return c((ArrayList) arrayList.clone(), z3, i2, file);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void hideAllWidget() {
        if (this.f55325g && this.f55324f) {
            return;
        }
        super.hideAllWidget();
    }

    public boolean i(ArrayList<b> arrayList, boolean z3, int i2, File file, Map<String, String> map) {
        return d((ArrayList) arrayList.clone(), z3, i2, file, map);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void init(Context context) {
        super.init(context);
        this.f55321c = findViewById(R.id.jump_ad);
        this.f55323e = (TextView) findViewById(R.id.ad_time);
        this.f55322d = (ViewGroup) findViewById(R.id.widget_container);
        View view = this.f55321c;
        if (view != null) {
            view.setOnClickListener(new a());
        }
    }

    @Override // com.papa.gsyvideoplayer.video.ListGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView, c2.a
    public void onPrepared() {
        super.onPrepared();
        this.f55325g = true;
        f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void setProgressAndTime(int i2, int i4, int i5, int i6, boolean z3) {
        super.setProgressAndTime(i2, i4, i5, i6, z3);
        TextView textView = this.f55323e;
        if (textView == null || i5 <= 0) {
            return;
        }
        textView.setText("" + ((i6 / 1000) - (i5 / 1000)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void touchDoubleUp() {
        if (this.f55324f) {
            return;
        }
        super.touchDoubleUp();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void touchSurfaceMove(float f4, float f5, float f6) {
        if (this.mChangePosition && this.f55324f) {
            return;
        }
        super.touchSurfaceMove(f4, f5, f6);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void touchSurfaceMoveFullLogic(float f4, float f5) {
        int i2 = this.mThreshold;
        if (f4 > i2 || f5 > i2) {
            int h4 = com.papa.gsyvideoplayer.utils.b.h(getContext());
            if (this.f55324f && f4 >= this.mThreshold && Math.abs(h4 - this.mDownX) > this.mSeekEndOffset) {
                this.mChangePosition = true;
                this.mDownPosition = getCurrentPositionWhenPlaying();
                return;
            }
            super.touchSurfaceMoveFullLogic(f4, f5);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void touchSurfaceUp() {
        if (this.mChangePosition && this.f55324f) {
            return;
        }
        super.touchSurfaceUp();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer
    public void updateStartImage() {
        View view = this.mStartButton;
        if (view == null || !(view instanceof ImageView)) {
            return;
        }
        ImageView imageView = (ImageView) view;
        int i2 = this.mCurrentState;
        if (i2 == 2) {
            imageView.setImageResource(R.drawable.video_click_pause_selector);
        } else if (i2 == 7) {
            imageView.setImageResource(R.drawable.video_click_play_selector);
        } else {
            imageView.setImageResource(R.drawable.video_click_play_selector);
        }
    }

    public GSYSampleADVideoPlayer(Context context) {
        super(context);
        this.f55324f = false;
        this.f55325g = false;
    }

    public GSYSampleADVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f55324f = false;
        this.f55325g = false;
    }
}
