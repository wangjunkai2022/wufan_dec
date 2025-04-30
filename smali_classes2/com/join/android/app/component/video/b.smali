.class public Lcom/join/android/app/component/video/b;
.super Lcom/papa/gsyvideoplayer/c;
.source "ListVideoManager.java"


# static fields
.field public static final A:I = 0x7f09031d

.field public static B:Ljava/lang/String; = "GSYVideoManager"

.field public static final z:I = 0x7f09031e


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/c;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->P()V

    return-void
.end method

.method public static declared-synchronized d0(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/android/app/component/video/b;
    .locals 2

    const-class v0, Lcom/join/android/app/component/video/b;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, p1, p2, v1}, Lcom/join/android/app/component/video/d;->j(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/join/android/app/component/video/b;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 3
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "key not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
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

    const v0, 0x7f09031d

    .line 2
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


# virtual methods
.method protected M()Lcom/papa/gsyvideoplayer/player/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/papa/gsyvideoplayer/player/d;

    invoke-direct {v0}, Lcom/papa/gsyvideoplayer/player/d;-><init>()V

    return-object v0
.end method

.method public c0(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->o(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->o(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f09031d

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 4
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->k(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->r()Lc2/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->r()Lc2/a;

    move-result-object p1

    invoke-interface {p1}, Lc2/a;->onBackFullscreen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public f0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    invoke-interface {v0}, Lc2/a;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public g0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    invoke-interface {v0}, Lc2/a;->onVideoResume()V

    :cond_0
    return-void
.end method

.method public h0(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lc2/a;->onVideoResume(Z)V

    :cond_0
    return-void
.end method

.method public i0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    invoke-interface {v0}, Lc2/a;->onCompletion()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->z()V

    return-void
.end method
