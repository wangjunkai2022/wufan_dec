.class public Lcom/papa91/activity/EmuMedia;
.super Ljava/lang/Object;
.source "EmuMedia.java"


# static fields
.field private static RectSrc:Landroid/graphics/Rect;

.field private static holder:Landroid/view/SurfaceHolder;

.field private static region:Landroid/graphics/Rect;

.field private static track:Landroid/media/AudioTrack;

.field private static volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/papa91/activity/EmuMedia;->RectSrc:Landroid/graphics/Rect;

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/papa91/activity/EmuMedia;->region:Landroid/graphics/Rect;

    .line 3
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    sput v0, Lcom/papa91/activity/EmuMedia;->volume:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static audioCreate(III)Z
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/16 v2, 0x10

    if-ne p1, v2, :cond_0

    const/4 v7, 0x2

    goto :goto_0

    :cond_0
    const/4 v7, 0x3

    :goto_0
    if-ne p2, v1, :cond_1

    const/4 v6, 0x3

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    .line 1
    :goto_1
    sget-object p1, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    if-ne p1, p0, :cond_2

    sget-object p1, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getAudioFormat()I

    move-result p1

    if-ne p1, v7, :cond_2

    sget-object p1, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result p1

    if-ne p1, p2, :cond_2

    return v0

    .line 2
    :cond_2
    invoke-static {p0, v6, v7}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    const/16 p2, 0x5dc

    if-ge p1, p2, :cond_3

    const/16 v8, 0x5dc

    goto :goto_2

    :cond_3
    move v8, p1

    :goto_2
    const/4 p1, 0x0

    .line 3
    :try_start_0
    new-instance p2, Landroid/media/AudioTrack;

    const/4 v4, 0x3

    const/4 v9, 0x1

    move-object v3, p2

    move v5, p0

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object p2, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 4
    invoke-virtual {p2}, Landroid/media/AudioTrack;->getState()I

    move-result p0

    if-nez p0, :cond_4

    .line 5
    sput-object p1, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 6
    :catch_0
    sput-object p1, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 7
    :cond_4
    :goto_3
    sget-object p0, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    if-nez p0, :cond_5

    const/4 p0, 0x0

    return p0

    .line 8
    :cond_5
    sget p1, Lcom/papa91/activity/EmuMedia;->volume:F

    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return v0
.end method

.method static audioDestroy()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    :cond_0
    return-void
.end method

.method static audioPause()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    return-void
.end method

.method static audioPlay([BI)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p0, v1, p1}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static audioSetVolume(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    .line 2
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v1

    sub-float/2addr v1, v0

    int-to-float p0, p0

    mul-float v1, v1, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr v1, p0

    add-float/2addr v0, v1

    .line 3
    sput v0, Lcom/papa91/activity/EmuMedia;->volume:F

    .line 4
    sget-object p0, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0, v0, v0}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :cond_0
    return-void
.end method

.method static audioStart()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method static audioStop()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 3
    sget-object v0, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    :cond_0
    return-void
.end method

.method static destroy()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    :cond_0
    return-void
.end method

.method static setSrcRegion(IIII)V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuMedia;->RectSrc:Landroid/graphics/Rect;

    add-int/2addr p2, p0

    add-int/2addr p3, p1

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method static setSurface(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/papa91/activity/EmuMedia;->holder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method static setSurfaceRegion(IIII)V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuMedia;->region:Landroid/graphics/Rect;

    add-int/2addr p2, p0

    add-int/2addr p3, p1

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method static setSurfaceRegion(Landroid/graphics/Rect;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/papa91/activity/EmuMedia;->region:Landroid/graphics/Rect;

    return-void
.end method
