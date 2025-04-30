package com.bytedance.sdk.openadsdk;
/* loaded from: classes2.dex */
public interface TTFeedAd extends TTNativeAd {

    /* loaded from: classes2.dex */
    public interface CustomizeVideo {
        String getVideoUrl();

        void reportVideoAutoStart();

        void reportVideoBreak(long j4);

        void reportVideoContinue(long j4);

        void reportVideoError(long j4, int i2, int i4);

        void reportVideoFinish();

        void reportVideoPause(long j4);

        void reportVideoStart();

        void reportVideoStartError(int i2, int i4);
    }

    /* loaded from: classes2.dex */
    public interface VideoAdListener {
        void onProgressUpdate(long j4, long j5);

        void onVideoAdComplete(TTFeedAd tTFeedAd);

        void onVideoAdContinuePlay(TTFeedAd tTFeedAd);

        void onVideoAdPaused(TTFeedAd tTFeedAd);

        void onVideoAdStartPlay(TTFeedAd tTFeedAd);

        void onVideoError(int i2, int i4);

        void onVideoLoad(TTFeedAd tTFeedAd);
    }

    int getAdViewHeight();

    int getAdViewWidth();

    CustomizeVideo getCustomVideo();

    double getVideoDuration();

    void setVideoAdListener(VideoAdListener videoAdListener);
}
