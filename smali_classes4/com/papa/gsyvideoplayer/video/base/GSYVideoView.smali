.class public abstract Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;
.super Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;
.source "GSYVideoView.java"

# interfaces
.implements Lc2/a;


# static fields
.field public static final CHANGE_DELAY_TIME:I = 0x7d0

.field public static final CURRENT_STATE_AUTO_COMPLETE:I = 0x6

.field public static final CURRENT_STATE_ERROR:I = 0x7

.field public static final CURRENT_STATE_NORMAL:I = 0x0

.field public static final CURRENT_STATE_PAUSE:I = 0x5

.field public static final CURRENT_STATE_PLAYING:I = 0x2

.field public static final CURRENT_STATE_PLAYING_BUFFERING_START:I = 0x3

.field public static final CURRENT_STATE_PREPAREING:I = 0x1


# instance fields
.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mBackUpPlayingBufferState:I

.field protected mBufferPoint:I

.field protected mCache:Z

.field protected mCachePath:Ljava/io/File;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentPosition:J

.field protected mCurrentState:I

.field protected mHadPlay:Z

.field protected mHadPrepared:Z

.field protected mIfCurrentIsFullscreen:Z

.field protected mLooping:Z

.field protected mMapHeadData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mNetChanged:Z

.field protected mNetInfoModule:Lcom/papa/gsyvideoplayer/utils/k;

.field protected mNetSate:Ljava/lang/String;

.field protected mOriginUrl:Ljava/lang/String;

.field protected mOverrideExtension:Ljava/lang/String;

.field protected mPauseBeforePrepared:Z

.field protected mPlayPosition:I

.field protected mPlayTag:Ljava/lang/String;

.field protected mReleaseWhenLossAudio:Z

.field protected mSaveChangeViewTIme:J

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field protected mSeekOnStart:J

.field protected mShowPauseCover:Z

.field protected mSoundTouch:Z

.field protected mSpeed:F

.field protected mStartAfterPrepared:Z

.field protected mTitle:Ljava/lang/String;

.field protected mUrl:Ljava/lang/String;

.field protected mVideoAllCallBack:Lc2/h;

.field protected onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/16 v1, -0x16

    .line 3
    iput v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 4
    iput v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 9
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 10
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    .line 11
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 12
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 13
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSoundTouch:Z

    .line 14
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 15
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 17
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 18
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    const-string v0, "NORMAL"

    .line 20
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 22
    new-instance v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$a;

    invoke-direct {v0, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$a;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;)V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 23
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 25
    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/16 v0, -0x16

    .line 26
    iput v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 27
    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    const-wide/16 v0, -0x1

    .line 28
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    const/high16 p2, 0x3f800000    # 1.0f

    .line 30
    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    const/4 p2, 0x0

    .line 31
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 32
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 33
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    .line 34
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 35
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 36
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSoundTouch:Z

    .line 37
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 38
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 40
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 41
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    const-string p2, ""

    .line 42
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    const-string p2, "NORMAL"

    .line 43
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    .line 44
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 45
    new-instance p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$a;

    invoke-direct {p2, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$a;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;)V

    iput-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 46
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 48
    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/16 p3, -0x16

    .line 49
    iput p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 50
    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    const-wide/16 p2, -0x1

    .line 51
    iput-wide p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    const-wide/16 p2, 0x0

    .line 52
    iput-wide p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    const/high16 p2, 0x3f800000    # 1.0f

    .line 53
    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    const/4 p2, 0x0

    .line 54
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 55
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 56
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    .line 57
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 58
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 59
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSoundTouch:Z

    .line 60
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 61
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    const/4 p3, 0x1

    .line 62
    iput-boolean p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 63
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 64
    iput-boolean p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    const-string p2, ""

    .line 65
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    const-string p2, "NORMAL"

    .line 66
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    .line 67
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 68
    new-instance p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$a;

    invoke-direct {p2, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$a;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;)V

    iput-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 69
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 2

    .line 70
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/16 v1, -0x16

    .line 72
    iput v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 73
    iput v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    const-wide/16 v0, -0x1

    .line 74
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    const-wide/16 v0, 0x0

    .line 75
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 76
    iput v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 78
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 79
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    .line 80
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 81
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 82
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSoundTouch:Z

    .line 83
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 84
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    const/4 v1, 0x1

    .line 85
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 86
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 87
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    const-string v0, ""

    .line 88
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    const-string v0, "NORMAL"

    .line 89
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 91
    new-instance v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$a;

    invoke-direct {v0, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$a;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;)V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 92
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 93
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected abstract backFromFull(Landroid/content/Context;)Z
.end method

.method public clearCurrentCache()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Play Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/papa/gsyvideoplayer/video/base/a;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    const-string v1, "127.0.0.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/papa/gsyvideoplayer/video/base/a;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected createNetWorkState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/papa/gsyvideoplayer/utils/k;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa/gsyvideoplayer/utils/k;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$d;

    invoke-direct {v2, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$d;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;)V

    invoke-direct {v0, v1, v2}, Lcom/papa/gsyvideoplayer/utils/k;-><init>(Landroid/content/Context;Lcom/papa/gsyvideoplayer/utils/k$c;)V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/papa/gsyvideoplayer/utils/k;

    .line 3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/k;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected deleteCacheFileWhenError()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->clearCurrentCache()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Link Or mCache Error, Please Try Again "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCache Link "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    return-void
.end method

.method protected getActivityContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->d(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getBuffterPoint()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBufferPoint:I

    return v0
.end method

.method public getCurrentPositionWhenPlaying()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->getCurrentPosition()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v0

    :cond_1
    if-nez v1, :cond_2

    .line 3
    iget-wide v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    long-to-int v0, v2

    return v0

    :cond_2
    return v1

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public getCurrentState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    return v0
.end method

.method public getCurrentVideoHeight()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentVideoWidth()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->getDuration()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v0

    return v1

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;
.end method

.method public abstract getLayoutId()I
.end method

.method public getMapHeadData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    return-object v0
.end method

.method public getNetSpeed()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNetSpeedText()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getNetSpeed()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/papa/gsyvideoplayer/utils/b;->j(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverrideExtension()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOverrideExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    return v0
.end method

.method public getPlayTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSeekOnStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    return-wide v0
.end method

.method public getSpeed()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->initInflate(Landroid/content/Context;)V

    .line 5
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->surface_container:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mScreenWidth:I

    .line 8
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mScreenHeight:I

    .line 9
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method protected initInflate(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getLayoutId()I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/view/InflateException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GSYImageCover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/InflateException;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "********************\n*****   \u6ce8\u610f   *************************\n*\u8be5\u7248\u672c\u9700\u8981\u6e05\u9664\u5e03\u5c40\u6587\u4ef6\u4e2d\u7684GSYImageCover\n****  Attention  ***\n*Please remove GSYImageCover from Layout in this Version\n********************\n"

    .line 4
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/InflateException;->printStackTrace()V

    .line 6
    new-instance p1, Landroid/view/InflateException;

    const-string v0, "\u8be5\u7248\u672c\u9700\u8981\u6e05\u9664\u5e03\u5c40\u6587\u4ef6\u4e2d\u7684GSYImageCover\uff0cplease remove GSYImageCover from your layout"

    invoke-direct {p1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected isCurrentMediaListener()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->y()Lc2/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->y()Lc2/a;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIfCurrentIsFullscreen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    return v0
.end method

.method public isInPlayingState()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-ltz v0, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    return v0
.end method

.method public isReleaseWhenLossAudio()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    return v0
.end method

.method public isShowPauseCover()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    return v0
.end method

.method public isStartAfterPrepared()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    return v0
.end method

.method protected listenerNetWorkState()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/papa/gsyvideoplayer/utils/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/k;->g()V

    :cond_0
    return-void
.end method

.method protected netWorkErrorLogic()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentPositionWhenPlaying()I

    move-result v0

    int-to-long v0, v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "******* Net State Changed. renew player to connect *******"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/papa/gsyvideoplayer/video/base/a;->z()V

    .line 4
    new-instance v2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$c;

    invoke-direct {v2, p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$c;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;J)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAutoCompletion()V
    .locals 5

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    .line 3
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/a;->i(Lc2/a;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 10
    :try_start_0
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->releaseNetWorkState()V

    .line 13
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "onAutoComplete"

    .line 14
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lc2/h;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public onCompletion()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    .line 3
    iput-wide v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    .line 4
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/papa/gsyvideoplayer/video/base/a;->p(Lc2/a;)V

    .line 8
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/papa/gsyvideoplayer/video/base/a;->i(Lc2/a;)V

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/papa/gsyvideoplayer/video/base/a;->u(I)V

    .line 10
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/papa/gsyvideoplayer/video/base/a;->n(I)V

    .line 11
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 12
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 13
    :try_start_0
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->releaseNetWorkState()V

    return-void
.end method

.method public onError(II)V
    .locals 4

    .line 1
    iget-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 2
    iput-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->netWorkErrorLogic()V

    .line 4
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    if-eqz p1, :cond_0

    .line 5
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object p0, v1, v0

    invoke-interface {p1, p2, v1}, Lc2/h;->u(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/16 p2, 0x26

    if-eq p1, p2, :cond_2

    const/16 p2, -0x26

    if-eq p1, p2, :cond_2

    const/4 p1, 0x7

    .line 6
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->deleteCacheFileWhenError()V

    .line 8
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    if-eqz p1, :cond_2

    .line 9
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object p0, v1, v0

    invoke-interface {p1, p2, v1}, Lc2/h;->u(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method protected onGankAudio()V
    .locals 0

    return-void
.end method

.method public onInfo(II)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/16 v2, 0x2bd

    if-ne p1, v2, :cond_0

    .line 1
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    .line 2
    iget-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    if-eqz p2, :cond_4

    if-eq p1, v1, :cond_4

    if-lez p1, :cond_4

    .line 3
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x2be

    if-ne p1, v2, :cond_3

    .line 4
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    .line 6
    :cond_1
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-eq p1, v1, :cond_2

    if-lez p1, :cond_2

    .line 7
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 8
    :cond_2
    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->t()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 10
    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mRotate:I

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Video Rotate Info "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/papa/gsyvideoplayer/render/a;

    if-eqz p1, :cond_4

    .line 13
    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mRotate:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/papa/gsyvideoplayer/render/a;->w(F)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onLossAudio()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$b;

    invoke-direct {v1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$b;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onLossTransientAudio()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onLossTransientCanDuck()V
    .locals 0

    return-void
.end method

.method public onPrepared()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onPrepared"

    .line 4
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v4

    aput-object p0, v3, v1

    invoke-interface {v0, v2, v3}, Lc2/h;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    if-nez v0, :cond_2

    const/4 v0, 0x5

    .line 7
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 8
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    return-void

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->startAfterPrepared()V

    return-void
.end method

.method public onSeekComplete()V
    .locals 1

    const-string v0, "onSeekComplete"

    .line 1
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoPause()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    .line 5
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 6
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVideoReset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    return-void
.end method

.method public onVideoResume()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    return-void
.end method

.method public onVideoResume(Z)V
    .locals 5

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoResume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_3

    .line 5
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object p1

    iget-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    invoke-interface {p1, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/a;->seekTo(J)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/papa/gsyvideoplayer/video/base/a;->start()V

    const/4 p1, 0x2

    .line 8
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 11
    :cond_2
    iput-wide v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onVideoSizeChanged()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->getCurrentVideoWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/papa/gsyvideoplayer/video/base/a;->getCurrentVideoHeight()I

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/papa/gsyvideoplayer/render/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/render/a;->o()V

    :cond_0
    return-void
.end method

.method protected prepareVideo()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->startPrepare()V

    return-void
.end method

.method public release()V
    .locals 5

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->releaseVideos()V

    :cond_0
    return-void
.end method

.method protected releaseNetWorkState()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/papa/gsyvideoplayer/utils/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/k;->f()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/papa/gsyvideoplayer/utils/k;

    :cond_0
    return-void
.end method

.method protected releasePauseCover()V
    .locals 2

    .line 1
    :try_start_0
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected releaseSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/papa/gsyvideoplayer/video/base/a;->s(Landroid/view/Surface;)V

    return-void
.end method

.method protected abstract releaseVideos()V
.end method

.method public seekTo(J)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/a;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected setDisplay(Landroid/view/Surface;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/papa/gsyvideoplayer/video/base/a;->j(Landroid/view/Surface;)V

    return-void
.end method

.method public setIfCurrentIsFullscreen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    return-void
.end method

.method public setMapHeadData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public setOverrideExtension(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOverrideExtension:Ljava/lang/String;

    return-void
.end method

.method public setPlayPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    return-void
.end method

.method public setPlayTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    return-void
.end method

.method public setReleaseWhenLossAudio(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    return-void
.end method

.method public setSeekOnStart(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    return-void
.end method

.method public setShowPauseCover(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setSpeed(FZ)V

    return-void
.end method

.method public setSpeed(FZ)V
    .locals 1

    .line 2
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    .line 3
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSoundTouch:Z

    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/a;->c(FZ)V

    :cond_0
    return-void
.end method

.method public setSpeedPlaying(FZ)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setSpeed(FZ)V

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/a;->f(FZ)V

    return-void
.end method

.method public setStartAfterPrepared(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    return-void
.end method

.method protected abstract setStateAndUi(I)V
.end method

.method public setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;Z)Z
    .locals 4

    .line 8
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 9
    iput-object p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    .line 10
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    return p3

    .line 13
    :cond_0
    iput p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 14
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    if-eqz p5, :cond_1

    .line 16
    invoke-virtual {p0, p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setUp(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    :goto_0
    if-eqz p4, :cond_1

    .line 6
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    invoke-interface {p1, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public setUp(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setVideoAllCallBack(Lc2/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    return-void
.end method

.method protected showPauseCover()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/papa/gsyvideoplayer/render/a;

    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/render/a;->h()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/papa/gsyvideoplayer/render/a;

    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/render/a;->c()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 6
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mSurface:Landroid/view/Surface;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/papa/gsyvideoplayer/render/a;

    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/render/a;->h()I

    move-result v3

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/papa/gsyvideoplayer/render/a;

    invoke-virtual {v4}, Lcom/papa/gsyvideoplayer/render/a;->c()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 8
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public startAfterPrepared()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->prepareVideo()V

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->start()V

    :cond_1
    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 6
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    iget-wide v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    invoke-interface {v0, v4, v5}, Lcom/papa/gsyvideoplayer/video/base/a;->seekTo(J)V

    .line 8
    iput-wide v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->addTextureView()V

    .line 11
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->createNetWorkState()V

    .line 12
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->listenerNetWorkState()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 14
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/papa/gsyvideoplayer/render/a;

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/render/a;->m()V

    .line 16
    :cond_3
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    :cond_4
    return-void
.end method

.method protected startButtonLogic()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    iget v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-eqz v4, :cond_0

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    :cond_0
    const-string v0, "onClickStartIcon"

    .line 2
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v2

    aput-object p0, v3, v1

    invoke-interface {v0, v4, v3}, Lc2/h;->S(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-string v0, "onClickStartError"

    .line 4
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v2

    aput-object p0, v3, v1

    invoke-interface {v0, v4, v3}, Lc2/h;->x(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->prepareVideo()V

    return-void
.end method

.method public abstract startPlayLogic()V
.end method

.method protected startPrepare()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->y()Lc2/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->y()Lc2/a;

    move-result-object v0

    invoke-interface {v0}, Lc2/a;->onCompletion()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const-string v0, "onStartPrepared"

    .line 4
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object p0, v4, v1

    invoke-interface {v0, v3, v4}, Lc2/h;->j0(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/papa/gsyvideoplayer/video/base/a;->p(Lc2/a;)V

    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/papa/gsyvideoplayer/video/base/a;->k(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    iget v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    invoke-interface {v0, v3}, Lcom/papa/gsyvideoplayer/video/base/a;->x(I)V

    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 11
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    .line 14
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v2

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_3
    move-object v4, v0

    iget-boolean v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    iget v6, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    iget-boolean v7, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    iget-object v8, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    iget-object v9, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOverrideExtension:Ljava/lang/String;

    invoke-interface/range {v2 .. v9}, Lcom/papa/gsyvideoplayer/video/base/a;->m(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    return-void
.end method

.method protected unListenerNetWorkState()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/papa/gsyvideoplayer/utils/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/k;->f()V

    :cond_0
    return-void
.end method

.method protected updatePauseCover()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->initCover()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method
