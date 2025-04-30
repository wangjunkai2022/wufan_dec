package com.join.mgps.activity.gamedetail;

import android.content.Context;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.papa.gsyvideoplayer.d;
import com.papa.gsyvideoplayer.render.a;
import com.papa.gsyvideoplayer.utils.f;
import com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer;
import moe.codeest.enviews.ENDownloadView;
/* loaded from: classes3.dex */
public class FulllScreenVideoView extends StandardGSYVideoPlayer {
    public static boolean mute = false;
    private static boolean muteFullScrBak = true;
    public ImageView backButton;
    public LinearLayout batteryTimeLayout;
    public ImageView battery_level;
    public ProgressBar bottomProgressBar;
    public TextView clarity;
    public SimpleDraweeView cover;
    private int fixedHeight;
    private int fixedWidth;
    private int heightRatio;
    public ProgressBar loadingProgressBar;
    protected ImageView mAutoPlay;
    private Matrix matrix;
    public ImageView muteImageView;
    private boolean muteWhenPlay;
    protected boolean noneNetFinishActivity;
    public TextView retryTextView;
    public SimpleDraweeView thumbImageView;
    public ImageView tinyBackImageView;
    public TextView titleTextView;
    public String url;
    public TextView video_current_time;
    private int widthRatio;

    public FulllScreenVideoView(Context context) {
        super(context);
        this.noneNetFinishActivity = false;
        this.muteWhenPlay = false;
        this.url = "";
    }

    private void transformVideo(int i2, int i4) {
        float max;
        if (getResizedHeight() == 0 || getResizedWidth() == 0) {
            return;
        }
        float f4 = i2;
        float resizedWidth = getResizedWidth() / f4;
        float f5 = i4;
        float resizedHeight = getResizedHeight() / f5;
        if (i2 > i4) {
            max = Math.min(resizedWidth, resizedHeight);
        } else {
            max = Math.max(resizedWidth, resizedHeight);
        }
        Matrix matrix = this.matrix;
        if (matrix == null) {
            this.matrix = new Matrix();
        } else {
            matrix.reset();
        }
        this.matrix.preTranslate((getResizedWidth() - i2) / 2, (getResizedHeight() - i4) / 2);
        this.matrix.preScale(f4 / getResizedWidth(), f5 / getResizedHeight());
        this.matrix.postScale(max, max, getResizedWidth() / 2, getResizedHeight() / 2);
        a aVar = this.mTextureView;
        if (aVar != null) {
            aVar.x(this.matrix);
        }
        postInvalidate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToCompleteShow() {
        int i2 = 0;
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 0);
        SimpleDraweeView simpleDraweeView = this.cover;
        if (simpleDraweeView != null) {
            simpleDraweeView.setVisibility(0);
        }
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 8 : 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
        updateStartImage();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToError() {
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        SimpleDraweeView simpleDraweeView = this.cover;
        if (simpleDraweeView != null) {
            simpleDraweeView.setVisibility(4);
        }
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 0 : 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
        updateStartImage();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToNormal() {
        int i2 = 0;
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 0);
        SimpleDraweeView simpleDraweeView = this.cover;
        if (simpleDraweeView != null) {
            simpleDraweeView.setVisibility(0);
        }
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 8 : 8);
        updateStartImage();
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToPauseShow() {
        int i2 = 0;
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        SimpleDraweeView simpleDraweeView = this.cover;
        if (simpleDraweeView != null) {
            simpleDraweeView.setVisibility(4);
        }
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 8 : 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
        updateStartImage();
        updatePauseCover();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToPlayingBufferingShow() {
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        SimpleDraweeView simpleDraweeView = this.cover;
        if (simpleDraweeView != null) {
            simpleDraweeView.setVisibility(4);
        }
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        View view = this.mLoadingProgressBar;
        if ((view instanceof ENDownloadView) && ((ENDownloadView) view).getCurrentState() == 0) {
            ((ENDownloadView) this.mLoadingProgressBar).n();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToPlayingShow() {
        int i2 = 0;
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        SimpleDraweeView simpleDraweeView = this.cover;
        if (simpleDraweeView != null) {
            simpleDraweeView.setVisibility(4);
        }
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 8 : 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
        updateStartImage();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToPreparingShow() {
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mThumbImageViewLayout, 0);
        SimpleDraweeView simpleDraweeView = this.cover;
        if (simpleDraweeView != null) {
            simpleDraweeView.setVisibility(0);
        }
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        View view = this.mLoadingProgressBar;
        if ((view instanceof ENDownloadView) && ((ENDownloadView) view).getCurrentState() == 0) {
            ((ENDownloadView) this.mLoadingProgressBar).n();
        }
    }

    public void clickPlay() {
        View view = this.mStartButton;
        if (view != null) {
            view.performClick();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public int getLayoutId() {
        return R.layout.standard_video_view_detail;
    }

    public int getResizedHeight() {
        int i2 = this.fixedHeight;
        return i2 == 0 ? getHeight() : i2;
    }

    public int getResizedWidth() {
        int i2 = this.fixedWidth;
        return i2 == 0 ? getWidth() : i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void hideAllWidget() {
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void init(final Context context) {
        int i2;
        super.init(context);
        findViewById(R.id.back).setVisibility(4);
        this.thumbImageView = (SimpleDraweeView) findViewById(R.id.thumbImageView);
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout != null && ((i2 = this.mCurrentState) == -1 || i2 == 0 || i2 == 7)) {
            relativeLayout.setVisibility(0);
        }
        getFullscreenButton().setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.gamedetail.FulllScreenVideoView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FulllScreenVideoView.this.startWindowFullscreen(context, false, true);
            }
        });
        setLooping(true);
        initCustomView();
        f.l(4);
    }

    void initCustomView() {
        this.muteImageView = (ImageView) findViewById(R.id.mute);
        this.mAutoPlay = (ImageView) findViewById(R.id.autoPlay);
        this.muteImageView.setOnClickListener(this);
        this.mAutoPlay.setOnClickListener(this);
        setMuteView(mute);
        this.mAutoPlay.setSelected(true);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView, c2.a
    public void onAutoCompletion() {
        super.onAutoCompletion();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView, c2.a
    public void onCompletion() {
        super.onCompletion();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        this.fixedWidth = View.MeasureSpec.getSize(i2);
        this.fixedHeight = View.MeasureSpec.getSize(i4);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView, c2.a
    public void onPrepared() {
        super.onPrepared();
        if (this.muteWhenPlay) {
            setMute(true);
            this.muteWhenPlay = false;
            return;
        }
        setMute(mute);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        super.onSizeChanged(i2, i4, i5, i6);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        super.onStopTrackingTouch(seekBar);
        startDismissControlViewTimer();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYTextureRenderView, d2.c
    public void onSurfaceAvailable(Surface surface) {
        RelativeLayout relativeLayout;
        super.onSurfaceAvailable(surface);
        if (f.e() == 0 || (relativeLayout = this.mThumbImageViewLayout) == null || relativeLayout.getVisibility() != 0) {
            return;
        }
        this.mThumbImageViewLayout.setVisibility(4);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYTextureRenderView, d2.c
    public void onSurfaceUpdated(Surface surface) {
        super.onSurfaceUpdated(surface);
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout == null || relativeLayout.getVisibility() != 0) {
            return;
        }
        this.mThumbImageViewLayout.setVisibility(4);
    }

    public void setCover(SimpleDraweeView simpleDraweeView) {
        this.cover = simpleDraweeView;
    }

    public void setMute(boolean z3) {
        setMuteOnly(z3);
        mute = z3;
    }

    public void setMuteOnly(boolean z3) {
        try {
            d.e0().W(z3);
            setMuteView(z3);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void setMuteView(boolean z3) {
        if (z3) {
            this.muteImageView.setImageResource(R.drawable.mute_on);
        } else {
            this.muteImageView.setImageResource(R.drawable.mute_off);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void setViewShowState(View view, int i2) {
        if (view != this.mThumbImageViewLayout || i2 == 0) {
            super.setViewShowState(view, i2);
        }
    }

    public FulllScreenVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.noneNetFinishActivity = false;
        this.muteWhenPlay = false;
        this.url = "";
    }
}
