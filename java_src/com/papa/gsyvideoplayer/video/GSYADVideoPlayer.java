package com.papa.gsyvideoplayer.video;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.papa.gsyvideoplayer.R;
import com.papa.gsyvideoplayer.utils.b;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
/* loaded from: classes4.dex */
public class GSYADVideoPlayer extends StandardGSYVideoPlayer {

    /* renamed from: a  reason: collision with root package name */
    protected View f55317a;

    /* renamed from: b  reason: collision with root package name */
    protected TextView f55318b;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f55319c;

    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (GSYADVideoPlayer.this.getGSYVideoManager().y() != null) {
                GSYADVideoPlayer.this.getGSYVideoManager().y().onAutoCompletion();
            }
        }
    }

    public GSYADVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
    }

    protected void a() {
        View view = this.f55317a;
        if (view != null) {
            view.setVisibility(this.f55319c ? 0 : 8);
        }
        TextView textView = this.f55318b;
        if (textView != null) {
            textView.setVisibility(this.f55319c ? 0 : 8);
        }
        if (this.mBottomContainer != null) {
            this.mBottomContainer.setBackgroundColor(this.f55319c ? 0 : getContext().getResources().getColor(R.color.bottom_container_bg));
        }
        TextView textView2 = this.mCurrentTimeTextView;
        if (textView2 != null) {
            textView2.setVisibility(this.f55319c ? 4 : 0);
        }
        TextView textView3 = this.mTotalTimeTextView;
        if (textView3 != null) {
            textView3.setVisibility(this.f55319c ? 4 : 0);
        }
        SeekBar seekBar = this.mProgressBar;
        if (seekBar != null) {
            seekBar.setVisibility(this.f55319c ? 4 : 0);
            this.mProgressBar.setEnabled(!this.f55319c);
        }
    }

    public void b() {
        ViewGroup viewGroup = (ViewGroup) b.o(getContext()).findViewById(16908290);
        View findViewById = viewGroup.findViewById(getFullId());
        if (findViewById != null && findViewById.getParent() != null) {
            viewGroup.removeView((ViewGroup) findViewById.getParent());
        }
        this.mIfCurrentIsFullscreen = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public boolean backFromFull(Context context) {
        return com.papa.gsyvideoplayer.b.c0(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    public void cloneParams(GSYBaseVideoPlayer gSYBaseVideoPlayer, GSYBaseVideoPlayer gSYBaseVideoPlayer2) {
        super.cloneParams(gSYBaseVideoPlayer, gSYBaseVideoPlayer2);
        GSYADVideoPlayer gSYADVideoPlayer = (GSYADVideoPlayer) gSYBaseVideoPlayer2;
        gSYADVideoPlayer.f55319c = ((GSYADVideoPlayer) gSYBaseVideoPlayer).f55319c;
        gSYADVideoPlayer.a();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected int getFullId() {
        return com.papa.gsyvideoplayer.b.A;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public com.papa.gsyvideoplayer.video.base.a getGSYVideoManager() {
        com.papa.gsyvideoplayer.b.d0().Q(getContext().getApplicationContext());
        return com.papa.gsyvideoplayer.b.d0();
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public int getLayoutId() {
        return R.layout.video_layout_ad;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected int getSmallId() {
        return com.papa.gsyvideoplayer.b.f54884z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void hideAllWidget() {
        if (this.f55319c) {
            return;
        }
        super.hideAllWidget();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void init(Context context) {
        super.init(context);
        this.f55317a = findViewById(R.id.jump_ad);
        this.f55318b = (TextView) findViewById(R.id.ad_time);
        View view = this.f55317a;
        if (view != null) {
            view.setOnClickListener(new a());
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.start) {
            if (this.mCurrentState == 7) {
                clickStartIcon();
                return;
            }
            return;
        }
        super.onClick(view);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView, c2.a
    public void onPrepared() {
        super.onPrepared();
        this.f55319c = true;
        a();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void release() {
        super.release();
        TextView textView = this.f55318b;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void releaseVideos() {
        com.papa.gsyvideoplayer.b.i0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void setProgressAndTime(int i2, int i4, int i5, int i6, boolean z3) {
        super.setProgressAndTime(i2, i4, i5, i6, z3);
        TextView textView = this.f55318b;
        if (textView == null || i5 <= 0) {
            return;
        }
        textView.setText("" + ((i6 / 1000) - (i5 / 1000)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void touchDoubleUp() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void touchSurfaceMove(float f4, float f5, float f6) {
        if (this.mChangePosition) {
            return;
        }
        super.touchSurfaceMove(f4, f5, f6);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void touchSurfaceMoveFullLogic(float f4, float f5) {
        int i2 = this.mThreshold;
        if (f4 > i2 || f5 > i2) {
            int h4 = b.h(getContext());
            if (f4 >= this.mThreshold && Math.abs(h4 - this.mDownX) > this.mSeekEndOffset) {
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
        if (this.mChangePosition) {
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
            imageView.setImageResource(R.drawable.empty_drawable);
        } else if (i2 == 7) {
            imageView.setImageResource(R.drawable.video_click_error_selector);
        } else {
            imageView.setImageResource(R.drawable.empty_drawable);
        }
    }

    public GSYADVideoPlayer(Context context) {
        super(context);
    }

    public GSYADVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
