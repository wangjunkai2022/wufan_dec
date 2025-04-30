.class public Lcom/papa/gsyvideoplayer/b;
.super Lcom/papa/gsyvideoplayer/c;
.source "GSYVideoADManager.java"


# static fields
.field public static final A:I

.field public static B:Ljava/lang/String;

.field private static C:Lcom/papa/gsyvideoplayer/b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/papa/gsyvideoplayer/R$id;->ad_small_id:I

    sput v0, Lcom/papa/gsyvideoplayer/b;->z:I

    .line 2
    sget v0, Lcom/papa/gsyvideoplayer/R$id;->ad_full_id:I

    sput v0, Lcom/papa/gsyvideoplayer/b;->A:I

    const-string v0, "GSYVideoADManager"

    .line 3
    sput-object v0, Lcom/papa/gsyvideoplayer/b;->B:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/c;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->P()V

    return-void
.end method

.method public static c0(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa/gsyvideoplayer/utils/b;->o(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    sget v1, Lcom/papa/gsyvideoplayer/b;->A:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-static {p0}, Lcom/papa/gsyvideoplayer/utils/b;->k(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->d0()Lcom/papa/gsyvideoplayer/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->r()Lc2/a;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->d0()Lcom/papa/gsyvideoplayer/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->r()Lc2/a;

    move-result-object p0

    invoke-interface {p0}, Lc2/a;->onBackFullscreen()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static declared-synchronized d0()Lcom/papa/gsyvideoplayer/b;
    .locals 2

    const-class v0, Lcom/papa/gsyvideoplayer/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/papa/gsyvideoplayer/b;->C:Lcom/papa/gsyvideoplayer/b;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/papa/gsyvideoplayer/b;

    invoke-direct {v1}, Lcom/papa/gsyvideoplayer/b;-><init>()V

    sput-object v1, Lcom/papa/gsyvideoplayer/b;->C:Lcom/papa/gsyvideoplayer/b;

    .line 3
    :cond_0
    sget-object v1, Lcom/papa/gsyvideoplayer/b;->C:Lcom/papa/gsyvideoplayer/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static e0(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/papa/gsyvideoplayer/utils/b;->o(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 2
    sget v0, Lcom/papa/gsyvideoplayer/b;->A:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    check-cast p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static f0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->d0()Lcom/papa/gsyvideoplayer/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->d0()Lcom/papa/gsyvideoplayer/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    invoke-interface {v0}, Lc2/a;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public static g0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->d0()Lcom/papa/gsyvideoplayer/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->d0()Lcom/papa/gsyvideoplayer/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    invoke-interface {v0}, Lc2/a;->onVideoResume()V

    :cond_0
    return-void
.end method

.method public static h0(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->e0()Lcom/papa/gsyvideoplayer/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->e0()Lcom/papa/gsyvideoplayer/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lc2/a;->onVideoResume(Z)V

    :cond_0
    return-void
.end method

.method public static i0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->d0()Lcom/papa/gsyvideoplayer/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->d0()Lcom/papa/gsyvideoplayer/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    invoke-interface {v0}, Lc2/a;->onCompletion()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->d0()Lcom/papa/gsyvideoplayer/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->z()V

    return-void
.end method
