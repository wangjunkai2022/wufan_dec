package com.papa.gsyvideoplayer.video;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import c2.e;
import c2.f;
import com.papa.gsyvideoplayer.R;
import com.papa.gsyvideoplayer.utils.c;
import com.papa.gsyvideoplayer.utils.l;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYVideoPlayer;
import java.io.File;
import moe.codeest.enviews.ENDownloadView;
import moe.codeest.enviews.ENPlayView;
/* loaded from: classes4.dex */
public class StandardGSYVideoPlayer extends GSYVideoPlayer {
    protected Drawable mBottomProgressDrawable;
    protected Drawable mBottomShowProgressDrawable;
    protected Drawable mBottomShowProgressThumbDrawable;
    protected Dialog mBrightnessDialog;
    protected TextView mBrightnessDialogTv;
    protected ImageView mDialogIcon;
    protected ProgressBar mDialogProgressBar;
    protected Drawable mDialogProgressBarDrawable;
    protected int mDialogProgressHighLightColor;
    protected int mDialogProgressNormalColor;
    protected TextView mDialogSeekTime;
    protected TextView mDialogTotalTime;
    protected ProgressBar mDialogVolumeProgressBar;
    protected Dialog mProgressDialog;
    protected Dialog mVolumeDialog;
    protected Drawable mVolumeProgressDrawable;

    /* loaded from: classes4.dex */
    class a implements DialogInterface.OnClickListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            dialogInterface.dismiss();
            StandardGSYVideoPlayer.this.startPlayLogic();
        }
    }

    /* loaded from: classes4.dex */
    class b implements DialogInterface.OnClickListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            dialogInterface.dismiss();
        }
    }

    public StandardGSYVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
        this.mDialogProgressHighLightColor = -11;
        this.mDialogProgressNormalColor = -11;
    }

    private void initFullUI(StandardGSYVideoPlayer standardGSYVideoPlayer) {
        int i2;
        Drawable drawable;
        Drawable drawable2 = this.mBottomProgressDrawable;
        if (drawable2 != null) {
            standardGSYVideoPlayer.setBottomProgressBarDrawable(drawable2);
        }
        Drawable drawable3 = this.mBottomShowProgressDrawable;
        if (drawable3 != null && (drawable = this.mBottomShowProgressThumbDrawable) != null) {
            standardGSYVideoPlayer.setBottomShowProgressBarDrawable(drawable3, drawable);
        }
        Drawable drawable4 = this.mVolumeProgressDrawable;
        if (drawable4 != null) {
            standardGSYVideoPlayer.setDialogVolumeProgressBar(drawable4);
        }
        Drawable drawable5 = this.mDialogProgressBarDrawable;
        if (drawable5 != null) {
            standardGSYVideoPlayer.setDialogProgressBar(drawable5);
        }
        int i4 = this.mDialogProgressHighLightColor;
        if (i4 < 0 || (i2 = this.mDialogProgressNormalColor) < 0) {
            return;
        }
        standardGSYVideoPlayer.setDialogProgressColor(i4, i2);
    }

    protected void changeUiToClear() {
        c.h("changeUiToClear");
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
    }

    protected void changeUiToCompleteClear() {
        c.h("changeUiToCompleteClear");
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 4);
        int i2 = 0;
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 0);
        setViewShowState(this.mBottomProgressBar, 0);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 8 : 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
        updateStartImage();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToCompleteShow() {
        c.h("changeUiToCompleteShow");
        int i2 = 0;
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 0);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 0);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 8 : 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
        updateStartImage();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToError() {
        c.h("changeUiToError");
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 4);
        int i2 = 0;
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 8 : 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
        updateStartImage();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToNormal() {
        c.h("changeUiToNormal");
        int i2 = 0;
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 0);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 8 : 8);
        updateStartImage();
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void changeUiToPauseClear() {
        c.h("changeUiToPauseClear");
        changeUiToClear();
        setViewShowState(this.mBottomProgressBar, 0);
        updatePauseCover();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToPauseShow() {
        c.h("changeUiToPauseShow");
        int i2 = 0;
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 0);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
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
    public void changeUiToPlayingBufferingClear() {
        c.h("changeUiToPlayingBufferingClear");
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 0);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 0);
        setViewShowState(this.mLockScreen, 8);
        View view = this.mLoadingProgressBar;
        if ((view instanceof ENDownloadView) && ((ENDownloadView) view).getCurrentState() == 0) {
            ((ENDownloadView) this.mLoadingProgressBar).n();
        }
        updateStartImage();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToPlayingBufferingShow() {
        c.h("changeUiToPlayingBufferingShow");
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 0);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 0);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        View view = this.mLoadingProgressBar;
        if ((view instanceof ENDownloadView) && ((ENDownloadView) view).getCurrentState() == 0) {
            ((ENDownloadView) this.mLoadingProgressBar).n();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void changeUiToPlayingClear() {
        c.h("changeUiToPlayingClear");
        changeUiToClear();
        setViewShowState(this.mBottomProgressBar, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToPlayingShow() {
        c.h("changeUiToPlayingShow");
        int i2 = 0;
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 0);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 8 : 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
        updateStartImage();
    }

    protected void changeUiToPrepareingClear() {
        c.h("changeUiToPrepareingClear");
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToPreparingShow() {
        c.h("changeUiToPreparingShow");
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 0);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 0);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        View view = this.mLoadingProgressBar;
        if ((view instanceof ENDownloadView) && ((ENDownloadView) view).getCurrentState() == 0) {
            ((ENDownloadView) this.mLoadingProgressBar).n();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    public void cloneParams(GSYBaseVideoPlayer gSYBaseVideoPlayer, GSYBaseVideoPlayer gSYBaseVideoPlayer2) {
        TextView textView;
        TextView textView2;
        SeekBar seekBar;
        super.cloneParams(gSYBaseVideoPlayer, gSYBaseVideoPlayer2);
        StandardGSYVideoPlayer standardGSYVideoPlayer = (StandardGSYVideoPlayer) gSYBaseVideoPlayer;
        StandardGSYVideoPlayer standardGSYVideoPlayer2 = (StandardGSYVideoPlayer) gSYBaseVideoPlayer2;
        SeekBar seekBar2 = standardGSYVideoPlayer2.mProgressBar;
        if (seekBar2 != null && (seekBar = standardGSYVideoPlayer.mProgressBar) != null) {
            seekBar2.setProgress(seekBar.getProgress());
            standardGSYVideoPlayer2.mProgressBar.setSecondaryProgress(standardGSYVideoPlayer.mProgressBar.getSecondaryProgress());
        }
        TextView textView3 = standardGSYVideoPlayer2.mTotalTimeTextView;
        if (textView3 != null && (textView2 = standardGSYVideoPlayer.mTotalTimeTextView) != null) {
            textView3.setText(textView2.getText());
        }
        TextView textView4 = standardGSYVideoPlayer2.mCurrentTimeTextView;
        if (textView4 == null || (textView = standardGSYVideoPlayer.mCurrentTimeTextView) == null) {
            return;
        }
        textView4.setText(textView.getText());
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void dismissBrightnessDialog() {
        Dialog dialog = this.mBrightnessDialog;
        if (dialog != null) {
            dialog.dismiss();
            this.mBrightnessDialog = null;
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void dismissProgressDialog() {
        Dialog dialog = this.mProgressDialog;
        if (dialog != null) {
            dialog.dismiss();
            this.mProgressDialog = null;
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void dismissVolumeDialog() {
        Dialog dialog = this.mVolumeDialog;
        if (dialog != null) {
            dialog.dismiss();
            this.mVolumeDialog = null;
        }
    }

    protected int getBrightnessLayoutId() {
        return R.layout.video_brightness;
    }

    protected int getBrightnessTextId() {
        return R.id.app_video_brightness;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView
    public int getLayoutId() {
        return R.layout.video_layout_standard;
    }

    protected int getProgressDialogAllDurationTextId() {
        return R.id.tv_duration;
    }

    protected int getProgressDialogCurrentDurationTextId() {
        return R.id.tv_current;
    }

    protected int getProgressDialogImageId() {
        return R.id.duration_image_tip;
    }

    protected int getProgressDialogLayoutId() {
        return R.layout.video_progress_dialog;
    }

    protected int getProgressDialogProgressId() {
        return R.id.duration_progressbar;
    }

    protected int getVolumeLayoutId() {
        return R.layout.video_volume_dialog;
    }

    protected int getVolumeProgressId() {
        return R.id.volume_progressbar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void hideAllWidget() {
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomProgressBar, 0);
        setViewShowState(this.mStartButton, 4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void init(Context context) {
        super.init(context);
        Drawable drawable = this.mBottomProgressDrawable;
        if (drawable != null) {
            this.mBottomProgressBar.setProgressDrawable(drawable);
        }
        if (this.mBottomShowProgressDrawable != null) {
            this.mProgressBar.setProgressDrawable(this.mBottomProgressDrawable);
        }
        Drawable drawable2 = this.mBottomShowProgressThumbDrawable;
        if (drawable2 != null) {
            this.mProgressBar.setThumb(drawable2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void onClickUiToggle() {
        ViewGroup viewGroup;
        if (this.mIfCurrentIsFullscreen && this.mLockCurScreen && this.mNeedLockFull) {
            setViewShowState(this.mLockScreen, 0);
            return;
        }
        int i2 = this.mCurrentState;
        if (i2 == 1) {
            ViewGroup viewGroup2 = this.mBottomContainer;
            if (viewGroup2 != null) {
                if (viewGroup2.getVisibility() == 0) {
                    changeUiToPrepareingClear();
                } else {
                    changeUiToPreparingShow();
                }
            }
        } else if (i2 == 2) {
            ViewGroup viewGroup3 = this.mBottomContainer;
            if (viewGroup3 != null) {
                if (viewGroup3.getVisibility() == 0) {
                    changeUiToPlayingClear();
                } else {
                    changeUiToPlayingShow();
                }
            }
        } else if (i2 == 5) {
            ViewGroup viewGroup4 = this.mBottomContainer;
            if (viewGroup4 != null) {
                if (viewGroup4.getVisibility() == 0) {
                    changeUiToPauseClear();
                } else {
                    changeUiToPauseShow();
                }
            }
        } else if (i2 == 6) {
            ViewGroup viewGroup5 = this.mBottomContainer;
            if (viewGroup5 != null) {
                if (viewGroup5.getVisibility() == 0) {
                    changeUiToCompleteClear();
                } else {
                    changeUiToCompleteShow();
                }
            }
        } else if (i2 != 3 || (viewGroup = this.mBottomContainer) == null) {
        } else {
            if (viewGroup.getVisibility() == 0) {
                changeUiToPlayingBufferingClear();
            } else {
                changeUiToPlayingBufferingShow();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        dismissVolumeDialog();
        dismissBrightnessDialog();
    }

    public void restartTimerTask() {
        startProgressTimer();
        startDismissControlViewTimer();
    }

    public void saveFrame(File file, f fVar) {
        saveFrame(file, false, fVar);
    }

    public void setBottomProgressBarDrawable(Drawable drawable) {
        this.mBottomProgressDrawable = drawable;
        ProgressBar progressBar = this.mBottomProgressBar;
        if (progressBar != null) {
            progressBar.setProgressDrawable(drawable);
        }
    }

    public void setBottomShowProgressBarDrawable(Drawable drawable, Drawable drawable2) {
        this.mBottomShowProgressDrawable = drawable;
        this.mBottomShowProgressThumbDrawable = drawable2;
        SeekBar seekBar = this.mProgressBar;
        if (seekBar != null) {
            seekBar.setProgressDrawable(drawable);
            this.mProgressBar.setThumb(drawable2);
        }
    }

    public void setDialogProgressBar(Drawable drawable) {
        this.mDialogProgressBarDrawable = drawable;
    }

    public void setDialogProgressColor(int i2, int i4) {
        this.mDialogProgressHighLightColor = i2;
        this.mDialogProgressNormalColor = i4;
    }

    public void setDialogVolumeProgressBar(Drawable drawable) {
        this.mVolumeProgressDrawable = drawable;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void showBrightnessDialog(float f4) {
        if (this.mBrightnessDialog == null) {
            View inflate = LayoutInflater.from(getActivityContext()).inflate(getBrightnessLayoutId(), (ViewGroup) null);
            if (inflate.findViewById(getBrightnessTextId()) instanceof TextView) {
                this.mBrightnessDialogTv = (TextView) inflate.findViewById(getBrightnessTextId());
            }
            Dialog dialog = new Dialog(getActivityContext(), R.style.video_style_dialog_progress);
            this.mBrightnessDialog = dialog;
            dialog.setContentView(inflate);
            this.mBrightnessDialog.getWindow().addFlags(8);
            this.mBrightnessDialog.getWindow().addFlags(32);
            this.mBrightnessDialog.getWindow().addFlags(16);
            this.mBrightnessDialog.getWindow().getDecorView().setSystemUiVisibility(2);
            this.mBrightnessDialog.getWindow().setLayout(-2, -2);
            WindowManager.LayoutParams attributes = this.mBrightnessDialog.getWindow().getAttributes();
            attributes.gravity = 8388661;
            attributes.width = getWidth();
            attributes.height = getHeight();
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            attributes.x = iArr[0];
            attributes.y = iArr[1];
            this.mBrightnessDialog.getWindow().setAttributes(attributes);
        }
        if (!this.mBrightnessDialog.isShowing()) {
            this.mBrightnessDialog.show();
        }
        TextView textView = this.mBrightnessDialogTv;
        if (textView != null) {
            textView.setText(((int) (f4 * 100.0f)) + "%");
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void showProgressDialog(float f4, String str, int i2, String str2, int i4) {
        ProgressBar progressBar;
        TextView textView;
        TextView textView2;
        if (this.mProgressDialog == null) {
            View inflate = LayoutInflater.from(getActivityContext()).inflate(getProgressDialogLayoutId(), (ViewGroup) null);
            if (inflate.findViewById(getProgressDialogProgressId()) instanceof ProgressBar) {
                ProgressBar progressBar2 = (ProgressBar) inflate.findViewById(getProgressDialogProgressId());
                this.mDialogProgressBar = progressBar2;
                Drawable drawable = this.mDialogProgressBarDrawable;
                if (drawable != null) {
                    progressBar2.setProgressDrawable(drawable);
                }
            }
            if (inflate.findViewById(getProgressDialogCurrentDurationTextId()) instanceof TextView) {
                this.mDialogSeekTime = (TextView) inflate.findViewById(getProgressDialogCurrentDurationTextId());
            }
            if (inflate.findViewById(getProgressDialogAllDurationTextId()) instanceof TextView) {
                this.mDialogTotalTime = (TextView) inflate.findViewById(getProgressDialogAllDurationTextId());
            }
            if (inflate.findViewById(getProgressDialogImageId()) instanceof ImageView) {
                this.mDialogIcon = (ImageView) inflate.findViewById(getProgressDialogImageId());
            }
            Dialog dialog = new Dialog(getActivityContext(), R.style.video_style_dialog_progress);
            this.mProgressDialog = dialog;
            dialog.setContentView(inflate);
            this.mProgressDialog.getWindow().addFlags(8);
            this.mProgressDialog.getWindow().addFlags(32);
            this.mProgressDialog.getWindow().addFlags(16);
            this.mProgressDialog.getWindow().setLayout(getWidth(), getHeight());
            int i5 = this.mDialogProgressNormalColor;
            if (i5 != -11 && (textView2 = this.mDialogTotalTime) != null) {
                textView2.setTextColor(i5);
            }
            int i6 = this.mDialogProgressHighLightColor;
            if (i6 != -11 && (textView = this.mDialogSeekTime) != null) {
                textView.setTextColor(i6);
            }
            WindowManager.LayoutParams attributes = this.mProgressDialog.getWindow().getAttributes();
            attributes.gravity = 48;
            attributes.width = getWidth();
            attributes.height = getHeight();
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            attributes.x = iArr[0];
            attributes.y = iArr[1];
            this.mProgressDialog.getWindow().setAttributes(attributes);
        }
        if (!this.mProgressDialog.isShowing()) {
            this.mProgressDialog.show();
        }
        TextView textView3 = this.mDialogSeekTime;
        if (textView3 != null) {
            textView3.setText(str);
        }
        TextView textView4 = this.mDialogTotalTime;
        if (textView4 != null) {
            textView4.setText(" / " + str2);
        }
        if (i4 > 0 && (progressBar = this.mDialogProgressBar) != null) {
            progressBar.setProgress((i2 * 100) / i4);
        }
        if (f4 > 0.0f) {
            ImageView imageView = this.mDialogIcon;
            if (imageView != null) {
                imageView.setBackgroundResource(R.drawable.video_forward_icon);
                return;
            }
            return;
        }
        ImageView imageView2 = this.mDialogIcon;
        if (imageView2 != null) {
            imageView2.setBackgroundResource(R.drawable.video_backward_icon);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void showVolumeDialog(float f4, int i2) {
        if (this.mVolumeDialog == null) {
            View inflate = LayoutInflater.from(getActivityContext()).inflate(getVolumeLayoutId(), (ViewGroup) null);
            if (inflate.findViewById(getVolumeProgressId()) instanceof ProgressBar) {
                ProgressBar progressBar = (ProgressBar) inflate.findViewById(getVolumeProgressId());
                this.mDialogVolumeProgressBar = progressBar;
                Drawable drawable = this.mVolumeProgressDrawable;
                if (drawable != null && progressBar != null) {
                    progressBar.setProgressDrawable(drawable);
                }
            }
            Dialog dialog = new Dialog(getActivityContext(), R.style.video_style_dialog_progress);
            this.mVolumeDialog = dialog;
            dialog.setContentView(inflate);
            this.mVolumeDialog.getWindow().addFlags(8);
            this.mVolumeDialog.getWindow().addFlags(32);
            this.mVolumeDialog.getWindow().addFlags(16);
            this.mVolumeDialog.getWindow().setLayout(-2, -2);
            WindowManager.LayoutParams attributes = this.mVolumeDialog.getWindow().getAttributes();
            attributes.gravity = 8388659;
            attributes.width = getWidth();
            attributes.height = getHeight();
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            attributes.x = iArr[0];
            attributes.y = iArr[1];
            this.mVolumeDialog.getWindow().setAttributes(attributes);
        }
        if (!this.mVolumeDialog.isShowing()) {
            this.mVolumeDialog.show();
        }
        ProgressBar progressBar2 = this.mDialogVolumeProgressBar;
        if (progressBar2 != null) {
            progressBar2.setProgress(i2);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void showWifiDialog() {
        if (!l.g(this.mContext)) {
            startPlayLogic();
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivityContext());
        builder.setMessage(getResources().getString(R.string.tips_not_wifi));
        builder.setPositiveButton(getResources().getString(R.string.tips_not_wifi_confirm), new a());
        builder.setNegativeButton(getResources().getString(R.string.tips_not_wifi_cancel), new b());
        builder.create().show();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void startPlayLogic() {
        if (this.mVideoAllCallBack != null) {
            c.h("onClickStartThumb");
            this.mVideoAllCallBack.h0(this.mOriginUrl, this.mTitle, this);
        }
        prepareVideo();
        startDismissControlViewTimer();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    public GSYBaseVideoPlayer startWindowFullscreen(Context context, boolean z3, boolean z4) {
        GSYBaseVideoPlayer startWindowFullscreen = super.startWindowFullscreen(context, z3, z4);
        if (startWindowFullscreen != null) {
            StandardGSYVideoPlayer standardGSYVideoPlayer = (StandardGSYVideoPlayer) startWindowFullscreen;
            standardGSYVideoPlayer.setLockClickListener(this.mLockClickListener);
            standardGSYVideoPlayer.setNeedLockFull(isNeedLockFull());
            initFullUI(standardGSYVideoPlayer);
        }
        return startWindowFullscreen;
    }

    public void taskShotPic(e eVar) {
        taskShotPic(eVar, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateStartImage() {
        View view = this.mStartButton;
        if (view instanceof ENPlayView) {
            ENPlayView eNPlayView = (ENPlayView) view;
            eNPlayView.setDuration(500);
            int i2 = this.mCurrentState;
            if (i2 == 2) {
                eNPlayView.d();
            } else if (i2 == 7) {
                eNPlayView.c();
            } else {
                eNPlayView.c();
            }
        } else if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            int i4 = this.mCurrentState;
            if (i4 == 2) {
                imageView.setImageResource(R.drawable.video_click_pause_selector);
            } else if (i4 == 7) {
                imageView.setImageResource(R.drawable.video_click_error_selector);
            } else {
                imageView.setImageResource(R.drawable.video_click_play_selector);
            }
        }
    }

    public void saveFrame(File file, boolean z3, f fVar) {
        if (getCurrentPlayer().getRenderProxy() != null) {
            getCurrentPlayer().getRenderProxy().q(file, z3, fVar);
        }
    }

    public void taskShotPic(e eVar, boolean z3) {
        if (getCurrentPlayer().getRenderProxy() != null) {
            getCurrentPlayer().getRenderProxy().z(eVar, z3);
        }
    }

    public StandardGSYVideoPlayer(Context context) {
        super(context);
        this.mDialogProgressHighLightColor = -11;
        this.mDialogProgressNormalColor = -11;
    }

    public StandardGSYVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDialogProgressHighLightColor = -11;
        this.mDialogProgressNormalColor = -11;
    }
}
