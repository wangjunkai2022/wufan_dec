package org.cocos2dx.lib;

import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.util.SparseArray;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import org.cocos2dx.lib.Cocos2dxVideoView;
/* loaded from: classes5.dex */
public class Cocos2dxVideoHelper {
    static final int KeyEventBack = 1000;
    private static final int VideoTaskCreate = 0;
    private static final int VideoTaskFullScreen = 12;
    private static final int VideoTaskKeepRatio = 11;
    private static final int VideoTaskPause = 5;
    private static final int VideoTaskRemove = 1;
    private static final int VideoTaskRestart = 10;
    private static final int VideoTaskResume = 6;
    private static final int VideoTaskSeek = 8;
    private static final int VideoTaskSetRect = 3;
    private static final int VideoTaskSetSource = 2;
    private static final int VideoTaskSetVisible = 9;
    private static final int VideoTaskStart = 4;
    private static final int VideoTaskStop = 7;
    static VideoHandler mVideoHandler;
    private static int videoTag;
    private Cocos2dxActivity mActivity;
    private FrameLayout mLayout;
    private SparseArray<Cocos2dxVideoView> sVideoViews;
    Cocos2dxVideoView.OnVideoEventListener videoEventListener = new Cocos2dxVideoView.OnVideoEventListener() { // from class: org.cocos2dx.lib.Cocos2dxVideoHelper.1
        @Override // org.cocos2dx.lib.Cocos2dxVideoView.OnVideoEventListener
        public void onVideoEvent(int i2, int i4) {
            Cocos2dxVideoHelper.this.mActivity.runOnGLThread(new VideoEventRunnable(i2, i4));
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class VideoEventRunnable implements Runnable {
        private int mVideoEvent;
        private int mVideoTag;

        public VideoEventRunnable(int i2, int i4) {
            this.mVideoTag = i2;
            this.mVideoEvent = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Cocos2dxVideoHelper.nativeExecuteVideoCallback(this.mVideoTag, this.mVideoEvent);
        }
    }

    /* loaded from: classes5.dex */
    static class VideoHandler extends Handler {
        WeakReference<Cocos2dxVideoHelper> mReference;

        VideoHandler(Cocos2dxVideoHelper cocos2dxVideoHelper) {
            this.mReference = new WeakReference<>(cocos2dxVideoHelper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 != 1000) {
                switch (i2) {
                    case 0:
                        this.mReference.get()._createVideoView(message.arg1);
                        break;
                    case 1:
                        this.mReference.get()._removeVideoView(message.arg1);
                        break;
                    case 2:
                        this.mReference.get()._setVideoURL(message.arg1, message.arg2, (String) message.obj);
                        break;
                    case 3:
                        Cocos2dxVideoHelper cocos2dxVideoHelper = this.mReference.get();
                        Rect rect = (Rect) message.obj;
                        cocos2dxVideoHelper._setVideoRect(message.arg1, rect.left, rect.top, rect.right, rect.bottom);
                        break;
                    case 4:
                        this.mReference.get()._startVideo(message.arg1);
                        break;
                    case 5:
                        this.mReference.get()._pauseVideo(message.arg1);
                        break;
                    case 6:
                        this.mReference.get()._resumeVideo(message.arg1);
                        break;
                    case 7:
                        this.mReference.get()._stopVideo(message.arg1);
                        break;
                    case 8:
                        this.mReference.get()._seekVideoTo(message.arg1, message.arg2);
                        break;
                    case 9:
                        Cocos2dxVideoHelper cocos2dxVideoHelper2 = this.mReference.get();
                        if (message.arg2 == 1) {
                            cocos2dxVideoHelper2._setVideoVisible(message.arg1, true);
                            break;
                        } else {
                            cocos2dxVideoHelper2._setVideoVisible(message.arg1, false);
                            break;
                        }
                    case 10:
                        this.mReference.get()._restartVideo(message.arg1);
                        break;
                    case 11:
                        Cocos2dxVideoHelper cocos2dxVideoHelper3 = this.mReference.get();
                        if (message.arg2 == 1) {
                            cocos2dxVideoHelper3._setVideoKeepRatio(message.arg1, true);
                            break;
                        } else {
                            cocos2dxVideoHelper3._setVideoKeepRatio(message.arg1, false);
                            break;
                        }
                    case 12:
                        Cocos2dxVideoHelper cocos2dxVideoHelper4 = this.mReference.get();
                        Rect rect2 = (Rect) message.obj;
                        if (message.arg2 == 1) {
                            cocos2dxVideoHelper4._setFullScreenEnabled(message.arg1, true, rect2.right, rect2.bottom);
                            break;
                        } else {
                            cocos2dxVideoHelper4._setFullScreenEnabled(message.arg1, false, rect2.right, rect2.bottom);
                            break;
                        }
                }
            } else {
                this.mReference.get().onBackKeyEvent();
            }
            super.handleMessage(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Cocos2dxVideoHelper(Cocos2dxActivity cocos2dxActivity, FrameLayout frameLayout) {
        this.mLayout = null;
        this.mActivity = null;
        this.sVideoViews = null;
        this.mActivity = cocos2dxActivity;
        this.mLayout = frameLayout;
        mVideoHandler = new VideoHandler(this);
        this.sVideoViews = new SparseArray<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _createVideoView(int i2) {
        Cocos2dxVideoView cocos2dxVideoView = new Cocos2dxVideoView(this.mActivity, i2);
        this.sVideoViews.put(i2, cocos2dxVideoView);
        this.mLayout.addView(cocos2dxVideoView, new FrameLayout.LayoutParams(-2, -2));
        cocos2dxVideoView.setZOrderOnTop(true);
        cocos2dxVideoView.setOnCompletionListener(this.videoEventListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _pauseVideo(int i2) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i2);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.pause();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _removeVideoView(int i2) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i2);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.stopPlayback();
            this.sVideoViews.remove(i2);
            this.mLayout.removeView(cocos2dxVideoView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _restartVideo(int i2) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i2);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.restart();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _resumeVideo(int i2) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i2);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.resume();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _seekVideoTo(int i2, int i4) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i2);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.seekTo(i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _setFullScreenEnabled(int i2, boolean z3, int i4, int i5) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i2);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.setFullScreenEnabled(z3, i4, i5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _setVideoKeepRatio(int i2, boolean z3) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i2);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.setKeepRatio(z3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _setVideoRect(int i2, int i4, int i5, int i6, int i7) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i2);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.setVideoRect(i4, i5, i6, i7);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _setVideoURL(int i2, int i4, String str) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i2);
        if (cocos2dxVideoView != null) {
            if (i4 == 0) {
                cocos2dxVideoView.setVideoFileName(str);
            } else if (i4 != 1) {
            } else {
                cocos2dxVideoView.setVideoURL(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _setVideoVisible(int i2, boolean z3) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i2);
        if (cocos2dxVideoView != null) {
            if (z3) {
                cocos2dxVideoView.fixSize();
                cocos2dxVideoView.setVisibility(0);
                return;
            }
            cocos2dxVideoView.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _startVideo(int i2) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i2);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _stopVideo(int i2) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i2);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.stop();
        }
    }

    public static int createVideoWidget() {
        Message message = new Message();
        message.what = 0;
        message.arg1 = videoTag;
        mVideoHandler.sendMessage(message);
        int i2 = videoTag;
        videoTag = i2 + 1;
        return i2;
    }

    public static native void nativeExecuteVideoCallback(int i2, int i4);

    /* JADX INFO: Access modifiers changed from: private */
    public void onBackKeyEvent() {
        int size = this.sVideoViews.size();
        for (int i2 = 0; i2 < size; i2++) {
            int keyAt = this.sVideoViews.keyAt(i2);
            Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(keyAt);
            if (cocos2dxVideoView != null) {
                cocos2dxVideoView.setFullScreenEnabled(false, 0, 0);
                this.mActivity.runOnGLThread(new VideoEventRunnable(keyAt, 1000));
            }
        }
    }

    public static void pauseVideo(int i2) {
        Message message = new Message();
        message.what = 5;
        message.arg1 = i2;
        mVideoHandler.sendMessage(message);
    }

    public static void removeVideoWidget(int i2) {
        Message message = new Message();
        message.what = 1;
        message.arg1 = i2;
        mVideoHandler.sendMessage(message);
    }

    public static void restartVideo(int i2) {
        Message message = new Message();
        message.what = 10;
        message.arg1 = i2;
        mVideoHandler.sendMessage(message);
    }

    public static void resumeVideo(int i2) {
        Message message = new Message();
        message.what = 6;
        message.arg1 = i2;
        mVideoHandler.sendMessage(message);
    }

    public static void seekVideoTo(int i2, int i4) {
        Message message = new Message();
        message.what = 8;
        message.arg1 = i2;
        message.arg2 = i4;
        mVideoHandler.sendMessage(message);
    }

    public static void setFullScreenEnabled(int i2, boolean z3, int i4, int i5) {
        Message message = new Message();
        message.what = 12;
        message.arg1 = i2;
        if (z3) {
            message.arg2 = 1;
        } else {
            message.arg2 = 0;
        }
        message.obj = new Rect(0, 0, i4, i5);
        mVideoHandler.sendMessage(message);
    }

    public static void setVideoKeepRatioEnabled(int i2, boolean z3) {
        Message message = new Message();
        message.what = 11;
        message.arg1 = i2;
        if (z3) {
            message.arg2 = 1;
        } else {
            message.arg2 = 0;
        }
        mVideoHandler.sendMessage(message);
    }

    public static void setVideoRect(int i2, int i4, int i5, int i6, int i7) {
        Message message = new Message();
        message.what = 3;
        message.arg1 = i2;
        message.obj = new Rect(i4, i5, i6, i7);
        mVideoHandler.sendMessage(message);
    }

    public static void setVideoUrl(int i2, int i4, String str) {
        Message message = new Message();
        message.what = 2;
        message.arg1 = i2;
        message.arg2 = i4;
        message.obj = str;
        mVideoHandler.sendMessage(message);
    }

    public static void setVideoVisible(int i2, boolean z3) {
        Message message = new Message();
        message.what = 9;
        message.arg1 = i2;
        if (z3) {
            message.arg2 = 1;
        } else {
            message.arg2 = 0;
        }
        mVideoHandler.sendMessage(message);
    }

    public static void startVideo(int i2) {
        Message message = new Message();
        message.what = 4;
        message.arg1 = i2;
        mVideoHandler.sendMessage(message);
    }

    public static void stopVideo(int i2) {
        Message message = new Message();
        message.what = 7;
        message.arg1 = i2;
        mVideoHandler.sendMessage(message);
    }
}
