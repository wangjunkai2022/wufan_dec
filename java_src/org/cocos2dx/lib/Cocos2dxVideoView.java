package org.cocos2dx.lib;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.media.MediaPlayer;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.MediaController;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.chukong.cocosplay.client.CocosPlayClient;
import java.io.IOException;
import java.util.Map;
import net.lingala.zip4j.util.e;
import q.a;
/* loaded from: classes5.dex */
public class Cocos2dxVideoView extends SurfaceView implements MediaController.MediaPlayerControl {
    private static final String AssetResourceRoot = "assets/";
    private static final int EVENT_COMPLETED = 3;
    private static final int EVENT_PAUSED = 1;
    private static final int EVENT_PLAYING = 0;
    private static final int EVENT_STOPPED = 2;
    private static final int STATE_ERROR = -1;
    private static final int STATE_IDLE = 0;
    private static final int STATE_PAUSED = 4;
    private static final int STATE_PLAYBACK_COMPLETED = 5;
    private static final int STATE_PLAYING = 3;
    private static final int STATE_PREPARED = 2;
    private static final int STATE_PREPARING = 1;
    private String TAG;
    private MediaPlayer.OnBufferingUpdateListener mBufferingUpdateListener;
    protected Cocos2dxActivity mCocos2dxActivity;
    private MediaPlayer.OnCompletionListener mCompletionListener;
    private int mCurrentBufferPercentage;
    private int mCurrentState;
    private int mDuration;
    private MediaPlayer.OnErrorListener mErrorListener;
    protected boolean mFullScreenEnabled;
    protected int mFullScreenHeight;
    protected int mFullScreenWidth;
    private boolean mIsAssetRouse;
    private boolean mKeepRatio;
    private MediaPlayer mMediaPlayer;
    private boolean mNeedResume;
    private MediaPlayer.OnErrorListener mOnErrorListener;
    private MediaPlayer.OnPreparedListener mOnPreparedListener;
    private OnVideoEventListener mOnVideoEventListener;
    MediaPlayer.OnPreparedListener mPreparedListener;
    SurfaceHolder.Callback mSHCallback;
    private int mSeekWhenPrepared;
    protected MediaPlayer.OnVideoSizeChangedListener mSizeChangedListener;
    private SurfaceHolder mSurfaceHolder;
    private int mTargetState;
    private String mVideoFilePath;
    private int mVideoHeight;
    private Uri mVideoUri;
    private int mVideoWidth;
    protected int mViewHeight;
    protected int mViewLeft;
    private int mViewTag;
    protected int mViewTop;
    protected int mViewWidth;
    protected int mVisibleHeight;
    protected int mVisibleLeft;
    protected int mVisibleTop;
    protected int mVisibleWidth;

    /* loaded from: classes5.dex */
    public interface OnVideoEventListener {
        void onVideoEvent(int i2, int i4);
    }

    public Cocos2dxVideoView(Cocos2dxActivity cocos2dxActivity, int i2) {
        super(cocos2dxActivity);
        this.TAG = "Cocos2dxVideoView";
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mSurfaceHolder = null;
        this.mMediaPlayer = null;
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
        this.mCocos2dxActivity = null;
        this.mViewLeft = 0;
        this.mViewTop = 0;
        this.mViewWidth = 0;
        this.mViewHeight = 0;
        this.mVisibleLeft = 0;
        this.mVisibleTop = 0;
        this.mVisibleWidth = 0;
        this.mVisibleHeight = 0;
        this.mFullScreenEnabled = false;
        this.mFullScreenWidth = 0;
        this.mFullScreenHeight = 0;
        this.mViewTag = 0;
        this.mNeedResume = false;
        this.mIsAssetRouse = false;
        this.mVideoFilePath = null;
        this.mKeepRatio = false;
        this.mSizeChangedListener = new MediaPlayer.OnVideoSizeChangedListener() { // from class: org.cocos2dx.lib.Cocos2dxVideoView.1
            @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i4, int i5) {
                Cocos2dxVideoView.this.mVideoWidth = mediaPlayer.getVideoWidth();
                Cocos2dxVideoView.this.mVideoHeight = mediaPlayer.getVideoHeight();
                if (Cocos2dxVideoView.this.mVideoWidth == 0 || Cocos2dxVideoView.this.mVideoHeight == 0) {
                    return;
                }
                Cocos2dxVideoView.this.getHolder().setFixedSize(Cocos2dxVideoView.this.mVideoWidth, Cocos2dxVideoView.this.mVideoHeight);
            }
        };
        this.mPreparedListener = new MediaPlayer.OnPreparedListener() { // from class: org.cocos2dx.lib.Cocos2dxVideoView.2
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                Cocos2dxVideoView.this.mCurrentState = 2;
                if (Cocos2dxVideoView.this.mOnPreparedListener != null) {
                    Cocos2dxVideoView.this.mOnPreparedListener.onPrepared(Cocos2dxVideoView.this.mMediaPlayer);
                }
                Cocos2dxVideoView.this.mVideoWidth = mediaPlayer.getVideoWidth();
                Cocos2dxVideoView.this.mVideoHeight = mediaPlayer.getVideoHeight();
                int i4 = Cocos2dxVideoView.this.mSeekWhenPrepared;
                if (i4 != 0) {
                    Cocos2dxVideoView.this.seekTo(i4);
                }
                if (Cocos2dxVideoView.this.mVideoWidth != 0 && Cocos2dxVideoView.this.mVideoHeight != 0) {
                    Cocos2dxVideoView.this.fixSize();
                }
                if (Cocos2dxVideoView.this.mTargetState == 3) {
                    Cocos2dxVideoView.this.start();
                }
            }
        };
        this.mCompletionListener = new MediaPlayer.OnCompletionListener() { // from class: org.cocos2dx.lib.Cocos2dxVideoView.3
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                Cocos2dxVideoView.this.mCurrentState = 5;
                Cocos2dxVideoView.this.mTargetState = 5;
                Cocos2dxVideoView.this.release(true);
                if (Cocos2dxVideoView.this.mOnVideoEventListener != null) {
                    Cocos2dxVideoView.this.mOnVideoEventListener.onVideoEvent(Cocos2dxVideoView.this.mViewTag, 3);
                }
            }
        };
        this.mErrorListener = new MediaPlayer.OnErrorListener() { // from class: org.cocos2dx.lib.Cocos2dxVideoView.4
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i4, int i5) {
                int identifier;
                String unused = Cocos2dxVideoView.this.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("Error: ");
                sb.append(i4);
                sb.append(",");
                sb.append(i5);
                Cocos2dxVideoView.this.mCurrentState = -1;
                Cocos2dxVideoView.this.mTargetState = -1;
                if ((Cocos2dxVideoView.this.mOnErrorListener == null || !Cocos2dxVideoView.this.mOnErrorListener.onError(Cocos2dxVideoView.this.mMediaPlayer, i4, i5)) && Cocos2dxVideoView.this.getWindowToken() != null) {
                    Resources resources = Cocos2dxVideoView.this.mCocos2dxActivity.getResources();
                    if (i4 == 200) {
                        identifier = resources.getIdentifier("VideoView_error_text_invalid_progressive_playback", TypedValues.Custom.S_STRING, a.f73954a);
                    } else {
                        identifier = resources.getIdentifier("VideoView_error_text_unknown", TypedValues.Custom.S_STRING, a.f73954a);
                    }
                    new AlertDialog.Builder(Cocos2dxVideoView.this.mCocos2dxActivity).setTitle(resources.getString(resources.getIdentifier("VideoView_error_title", TypedValues.Custom.S_STRING, a.f73954a))).setMessage(identifier).setPositiveButton(resources.getString(resources.getIdentifier("VideoView_error_button", TypedValues.Custom.S_STRING, a.f73954a)), new DialogInterface.OnClickListener() { // from class: org.cocos2dx.lib.Cocos2dxVideoView.4.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i6) {
                            if (Cocos2dxVideoView.this.mOnVideoEventListener != null) {
                                Cocos2dxVideoView.this.mOnVideoEventListener.onVideoEvent(Cocos2dxVideoView.this.mViewTag, 3);
                            }
                        }
                    }).setCancelable(false).show();
                }
                return true;
            }
        };
        this.mBufferingUpdateListener = new MediaPlayer.OnBufferingUpdateListener() { // from class: org.cocos2dx.lib.Cocos2dxVideoView.5
            @Override // android.media.MediaPlayer.OnBufferingUpdateListener
            public void onBufferingUpdate(MediaPlayer mediaPlayer, int i4) {
                Cocos2dxVideoView.this.mCurrentBufferPercentage = i4;
            }
        };
        this.mSHCallback = new SurfaceHolder.Callback() { // from class: org.cocos2dx.lib.Cocos2dxVideoView.6
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i4, int i5, int i6) {
                boolean z3 = true;
                boolean z4 = Cocos2dxVideoView.this.mTargetState == 3;
                z3 = (Cocos2dxVideoView.this.mVideoWidth == i5 && Cocos2dxVideoView.this.mVideoHeight == i6) ? false : false;
                if (Cocos2dxVideoView.this.mMediaPlayer != null && z4 && z3) {
                    if (Cocos2dxVideoView.this.mSeekWhenPrepared != 0) {
                        Cocos2dxVideoView cocos2dxVideoView = Cocos2dxVideoView.this;
                        cocos2dxVideoView.seekTo(cocos2dxVideoView.mSeekWhenPrepared);
                    }
                    Cocos2dxVideoView.this.start();
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
                Cocos2dxVideoView.this.mSurfaceHolder = surfaceHolder;
                Cocos2dxVideoView.this.openVideo();
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                Cocos2dxVideoView.this.mSurfaceHolder = null;
                Cocos2dxVideoView.this.release(true);
            }
        };
        this.mViewTag = i2;
        this.mCocos2dxActivity = cocos2dxActivity;
        initVideoView();
    }

    private void initVideoView() {
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
        getHolder().addCallback(this.mSHCallback);
        getHolder().setType(3);
        setFocusable(true);
        setFocusableInTouchMode(true);
        this.mCurrentState = 0;
        this.mTargetState = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openVideo() {
        if (this.mSurfaceHolder == null) {
            return;
        }
        if (this.mIsAssetRouse) {
            if (this.mVideoFilePath == null) {
                return;
            }
        } else if (this.mVideoUri == null) {
            return;
        }
        Intent intent = new Intent("com.android.music.musicservicecommand");
        intent.putExtra("command", "pause");
        this.mCocos2dxActivity.sendBroadcast(intent);
        release(false);
        try {
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.mMediaPlayer = mediaPlayer;
            mediaPlayer.setOnPreparedListener(this.mPreparedListener);
            this.mMediaPlayer.setOnVideoSizeChangedListener(this.mSizeChangedListener);
            this.mMediaPlayer.setOnCompletionListener(this.mCompletionListener);
            this.mMediaPlayer.setOnErrorListener(this.mErrorListener);
            this.mMediaPlayer.setOnBufferingUpdateListener(this.mBufferingUpdateListener);
            this.mMediaPlayer.setDisplay(this.mSurfaceHolder);
            this.mMediaPlayer.setAudioStreamType(3);
            this.mMediaPlayer.setScreenOnWhilePlaying(true);
            this.mDuration = -1;
            this.mCurrentBufferPercentage = 0;
            if (this.mIsAssetRouse) {
                AssetFileDescriptor openFd = this.mCocos2dxActivity.getAssets().openFd(this.mVideoFilePath);
                this.mMediaPlayer.setDataSource(openFd.getFileDescriptor(), openFd.getStartOffset(), openFd.getLength());
            } else {
                this.mMediaPlayer.setDataSource(this.mCocos2dxActivity, this.mVideoUri);
            }
            this.mMediaPlayer.prepareAsync();
            this.mCurrentState = 1;
        } catch (IOException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Unable to open content: ");
            sb.append(this.mVideoUri);
            this.mCurrentState = -1;
            this.mTargetState = -1;
            this.mErrorListener.onError(this.mMediaPlayer, 1, 0);
        } catch (IllegalArgumentException unused2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unable to open content: ");
            sb2.append(this.mVideoUri);
            this.mCurrentState = -1;
            this.mTargetState = -1;
            this.mErrorListener.onError(this.mMediaPlayer, 1, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void release(boolean z3) {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
            this.mCurrentState = 0;
            if (z3) {
                this.mTargetState = 0;
            }
        }
    }

    private void setVideoURI(Uri uri, Map<String, String> map) {
        this.mVideoUri = uri;
        this.mSeekWhenPrepared = 0;
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
        openVideo();
        requestLayout();
        invalidate();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canPause() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekBackward() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekForward() {
        return true;
    }

    public void fixSize() {
        if (this.mFullScreenEnabled) {
            fixSize(0, 0, this.mFullScreenWidth, this.mFullScreenHeight);
        } else {
            fixSize(this.mViewLeft, this.mViewTop, this.mViewWidth, this.mViewHeight);
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getAudioSessionId() {
        return this.mMediaPlayer.getAudioSessionId();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getBufferPercentage() {
        if (this.mMediaPlayer != null) {
            return this.mCurrentBufferPercentage;
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        if (isInPlaybackState()) {
            return this.mMediaPlayer.getCurrentPosition();
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getDuration() {
        if (isInPlaybackState()) {
            int i2 = this.mDuration;
            if (i2 > 0) {
                return i2;
            }
            int duration = this.mMediaPlayer.getDuration();
            this.mDuration = duration;
            return duration;
        }
        this.mDuration = -1;
        return -1;
    }

    public boolean isInPlaybackState() {
        int i2;
        return (this.mMediaPlayer == null || (i2 = this.mCurrentState) == -1 || i2 == 0 || i2 == 1) ? false : true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean isPlaying() {
        return isInPlaybackState() && this.mMediaPlayer.isPlaying();
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int i2, int i4) {
        if (this.mVideoWidth != 0 && this.mVideoHeight != 0) {
            setMeasuredDimension(this.mVisibleWidth, this.mVisibleHeight);
            StringBuilder sb = new StringBuilder();
            sb.append("");
            sb.append(this.mVisibleWidth);
            sb.append(":");
            sb.append(this.mVisibleHeight);
            return;
        }
        setMeasuredDimension(this.mViewWidth, this.mViewHeight);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("");
        sb2.append(this.mViewWidth);
        sb2.append(":");
        sb2.append(this.mViewHeight);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if ((motionEvent.getAction() & 255) == 1) {
            if (isPlaying()) {
                pause();
            } else if (this.mCurrentState == 4) {
                resume();
            }
        }
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void pause() {
        if (isInPlaybackState() && this.mMediaPlayer.isPlaying()) {
            this.mMediaPlayer.pause();
            this.mCurrentState = 4;
            OnVideoEventListener onVideoEventListener = this.mOnVideoEventListener;
            if (onVideoEventListener != null) {
                onVideoEventListener.onVideoEvent(this.mViewTag, 1);
            }
        }
        this.mTargetState = 4;
    }

    public int resolveAdjustedSize(int i2, int i4) {
        int mode = View.MeasureSpec.getMode(i4);
        int size = View.MeasureSpec.getSize(i4);
        if (mode != Integer.MIN_VALUE) {
            return mode != 1073741824 ? i2 : size;
        }
        return Math.min(i2, size);
    }

    public void restart() {
        if (isInPlaybackState()) {
            this.mMediaPlayer.seekTo(0);
            this.mMediaPlayer.start();
            this.mCurrentState = 3;
            this.mTargetState = 3;
        }
    }

    public void resume() {
        if (isInPlaybackState() && this.mCurrentState == 4) {
            this.mMediaPlayer.start();
            this.mCurrentState = 3;
            OnVideoEventListener onVideoEventListener = this.mOnVideoEventListener;
            if (onVideoEventListener != null) {
                onVideoEventListener.onVideoEvent(this.mViewTag, 0);
            }
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void seekTo(int i2) {
        if (isInPlaybackState()) {
            this.mMediaPlayer.seekTo(i2);
            this.mSeekWhenPrepared = 0;
            return;
        }
        this.mSeekWhenPrepared = i2;
    }

    public void setFullScreenEnabled(boolean z3, int i2, int i4) {
        if (this.mFullScreenEnabled != z3) {
            this.mFullScreenEnabled = z3;
            if (i2 != 0 && i4 != 0) {
                this.mFullScreenWidth = i2;
                this.mFullScreenHeight = i4;
            }
            fixSize();
        }
    }

    public void setKeepRatio(boolean z3) {
        this.mKeepRatio = z3;
        fixSize();
    }

    public void setOnCompletionListener(OnVideoEventListener onVideoEventListener) {
        this.mOnVideoEventListener = onVideoEventListener;
    }

    public void setOnErrorListener(MediaPlayer.OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
    }

    public void setOnPreparedListener(MediaPlayer.OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
    }

    public void setVideoFileName(String str) {
        if (str.startsWith(AssetResourceRoot)) {
            str = str.substring(7);
        }
        if (CocosPlayClient.isEnabled() && !CocosPlayClient.isDemo()) {
            CocosPlayClient.updateAssets(str);
        }
        CocosPlayClient.notifyFileLoaded(str);
        if (str.startsWith(e.F0)) {
            this.mIsAssetRouse = false;
            setVideoURI(Uri.parse(str), null);
            return;
        }
        this.mVideoFilePath = str;
        this.mIsAssetRouse = true;
        setVideoURI(Uri.parse(str), null);
    }

    public void setVideoRect(int i2, int i4, int i5, int i6) {
        this.mViewLeft = i2;
        this.mViewTop = i4;
        this.mViewWidth = i5;
        this.mViewHeight = i6;
        fixSize(i2, i4, i5, i6);
    }

    public void setVideoURL(String str) {
        this.mIsAssetRouse = false;
        setVideoURI(Uri.parse(str), null);
    }

    @Override // android.view.SurfaceView, android.view.View
    public void setVisibility(int i2) {
        if (i2 == 4) {
            boolean isPlaying = isPlaying();
            this.mNeedResume = isPlaying;
            if (isPlaying) {
                this.mSeekWhenPrepared = getCurrentPosition();
            }
        } else if (this.mNeedResume) {
            start();
            this.mNeedResume = false;
        }
        super.setVisibility(i2);
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void start() {
        if (isInPlaybackState()) {
            this.mMediaPlayer.start();
            this.mCurrentState = 3;
            OnVideoEventListener onVideoEventListener = this.mOnVideoEventListener;
            if (onVideoEventListener != null) {
                onVideoEventListener.onVideoEvent(this.mViewTag, 0);
            }
        }
        this.mTargetState = 3;
    }

    public void stop() {
        if (isInPlaybackState() && this.mMediaPlayer.isPlaying()) {
            stopPlayback();
            OnVideoEventListener onVideoEventListener = this.mOnVideoEventListener;
            if (onVideoEventListener != null) {
                onVideoEventListener.onVideoEvent(this.mViewTag, 2);
            }
        }
    }

    public void stopPlayback() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
            this.mCurrentState = 0;
            this.mTargetState = 0;
        }
    }

    public void suspend() {
        release(false);
    }

    public void fixSize(int i2, int i4, int i5, int i6) {
        int i7;
        int i8 = this.mVideoWidth;
        if (i8 == 0 || (i7 = this.mVideoHeight) == 0) {
            this.mVisibleLeft = i2;
            this.mVisibleTop = i4;
            this.mVisibleWidth = i5;
            this.mVisibleHeight = i6;
        } else if (i5 != 0 && i6 != 0) {
            if (this.mKeepRatio) {
                if (i8 * i6 > i5 * i7) {
                    this.mVisibleWidth = i5;
                    this.mVisibleHeight = (i7 * i5) / i8;
                } else if (i8 * i6 < i5 * i7) {
                    this.mVisibleWidth = (i8 * i6) / i7;
                    this.mVisibleHeight = i6;
                }
                this.mVisibleLeft = i2 + ((i5 - this.mVisibleWidth) / 2);
                this.mVisibleTop = i4 + ((i6 - this.mVisibleHeight) / 2);
            } else {
                this.mVisibleLeft = i2;
                this.mVisibleTop = i4;
                this.mVisibleWidth = i5;
                this.mVisibleHeight = i6;
            }
        } else {
            this.mVisibleLeft = i2;
            this.mVisibleTop = i4;
            this.mVisibleWidth = i8;
            this.mVisibleHeight = i7;
        }
        getHolder().setFixedSize(this.mVisibleWidth, this.mVisibleHeight);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = this.mVisibleLeft;
        layoutParams.topMargin = this.mVisibleTop;
        layoutParams.gravity = 51;
        setLayoutParams(layoutParams);
    }
}
