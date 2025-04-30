.class public Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$b;
.super Ljava/lang/Object;
.source "JCVideoPlayer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    .line 2
    aget v1, p1, v1

    const/4 v2, 0x2

    .line 3
    aget p1, p1, v2

    const/high16 p1, -0x3e900000    # -15.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    const/high16 p1, -0x3ee00000    # -10.0f

    cmpg-float p1, v0, p1

    if-ltz p1, :cond_1

    :cond_0
    const/high16 p1, 0x41700000    # 15.0f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_3

    const/high16 p1, 0x41200000    # 10.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_3

    .line 4
    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v1, p1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    cmpg-double p1, v1, v3

    if-gez p1, :cond_3

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->M0:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long p1, v1, v3

    if-lez p1, :cond_3

    .line 6
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->b()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->b()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b(F)V

    .line 8
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->M0:J

    :cond_3
    return-void
.end method
