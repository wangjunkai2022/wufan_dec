.class public Lorg/cocos2dx/lib/Cocos2dxMusic;
.super Ljava/lang/Object;
.source "Cocos2dxMusic.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cocos2dxMusic"


# instance fields
.field private mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPath:Ljava/lang/String;

.field private mIsLoop:Z

.field private mLeftVolume:F

.field private mManualPaused:Z

.field private mPaused:Z

.field private mRightVolume:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mIsLoop:Z

    .line 3
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mManualPaused:Z

    .line 4
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mContext:Landroid/content/Context;

    .line 5
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->initData()V

    return-void
.end method

.method private createMediaplayer(Ljava/lang/String;)Landroid/media/MediaPlayer;
    .locals 7

    .line 1
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/chukong/cocosplay/client/CocosPlayClient;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chukong/cocosplay/client/CocosPlayClient;->isDemo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/chukong/cocosplay/client/CocosPlayClient;->updateAssets(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/chukong/cocosplay/client/CocosPlayClient;->notifyFileLoaded(Ljava/lang/String;)V

    const-string v0, "/"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 11
    :goto_0
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    .line 12
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mLeftVolume:F

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mRightVolume:F

    invoke-virtual {v6, p1, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v6, 0x0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-object v6
.end method

.method private initData()V
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mLeftVolume:F

    .line 2
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mRightVolume:F

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    .line 5
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public end()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->initData()V

    return-void
.end method

.method public getBackgroundVolume()F
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mLeftVolume:F

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mRightVolume:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBackgroundMusicPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public onEnterBackground()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    :cond_0
    return-void
.end method

.method public onEnterForeground()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mManualPaused:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    :cond_0
    return-void
.end method

.method public pauseBackgroundMusic()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    .line 4
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mManualPaused:Z

    :cond_0
    return-void
.end method

.method public playBackgroundMusic(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->createMediaplayer(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 3
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 7
    :cond_1
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->createMediaplayer(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 8
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    :try_start_0
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 12
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_1

    .line 15
    :cond_5
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 16
    :goto_1
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 17
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    .line 18
    iput-boolean p2, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mIsLoop:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    return-void
.end method

.method public preloadBackgroundMusic(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->createMediaplayer(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 5
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public resumeBackgroundMusic()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    .line 4
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mManualPaused:Z

    :cond_0
    return-void
.end method

.method public rewindBackgroundMusic()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mIsLoop:Z

    invoke-virtual {p0, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->playBackgroundMusic(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setBackgroundVolume(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1
    :cond_1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mRightVolume:F

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mLeftVolume:F

    .line 2
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_2
    return-void
.end method

.method public stopBackgroundMusic()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 3
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->createMediaplayer(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    :cond_0
    return-void
.end method
