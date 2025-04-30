.class public Lcom/papa/gsyvideoplayer/d;
.super Lcom/papa/gsyvideoplayer/c;
.source "GSYVideoManager.java"


# static fields
.field public static final A:I

.field public static B:Ljava/lang/String;

.field private static C:Lcom/papa/gsyvideoplayer/d;
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
    sget v0, Lcom/papa/gsyvideoplayer/R$id;->small_id:I

    sput v0, Lcom/papa/gsyvideoplayer/d;->z:I

    .line 2
    sget v0, Lcom/papa/gsyvideoplayer/R$id;->full_id:I

    sput v0, Lcom/papa/gsyvideoplayer/d;->A:I

    const-string v0, "GSYVideoManager"

    .line 3
    sput-object v0, Lcom/papa/gsyvideoplayer/d;->B:Ljava/lang/String;

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
    sget v1, Lcom/papa/gsyvideoplayer/d;->A:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-static {p0}, Lcom/papa/gsyvideoplayer/utils/b;->k(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->e0()Lcom/papa/gsyvideoplayer/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->r()Lc2/a;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->e0()Lcom/papa/gsyvideoplayer/d;

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

.method public static declared-synchronized d0(Lcom/papa/gsyvideoplayer/d;)V
    .locals 1

    const-class v0, Lcom/papa/gsyvideoplayer/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sput-object p0, Lcom/papa/gsyvideoplayer/d;->C:Lcom/papa/gsyvideoplayer/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized e0()Lcom/papa/gsyvideoplayer/d;
    .locals 2

    const-class v0, Lcom/papa/gsyvideoplayer/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/papa/gsyvideoplayer/d;->C:Lcom/papa/gsyvideoplayer/d;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/papa/gsyvideoplayer/d;

    invoke-direct {v1}, Lcom/papa/gsyvideoplayer/d;-><init>()V

    sput-object v1, Lcom/papa/gsyvideoplayer/d;->C:Lcom/papa/gsyvideoplayer/d;

    .line 3
    :cond_0
    sget-object v1, Lcom/papa/gsyvideoplayer/d;->C:Lcom/papa/gsyvideoplayer/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static f0(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/papa/gsyvideoplayer/utils/b;->o(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 2
    sget v0, Lcom/papa/gsyvideoplayer/d;->A:I

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

.method public static g0()V
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

    invoke-interface {v0}, Lc2/a;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public static h0()V
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

    invoke-interface {v0}, Lc2/a;->onVideoResume()V

    :cond_0
    return-void
.end method

.method public static i0(Z)V
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

.method public static j0()V
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

    invoke-interface {v0}, Lc2/a;->onCompletion()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->e0()Lcom/papa/gsyvideoplayer/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->z()V

    return-void
.end method

.method public static declared-synchronized k0(Lc2/a;)Lcom/papa/gsyvideoplayer/d;
    .locals 4

    const-class v0, Lcom/papa/gsyvideoplayer/d;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Lcom/papa/gsyvideoplayer/d;

    invoke-direct {v1}, Lcom/papa/gsyvideoplayer/d;-><init>()V

    .line 2
    sget-object v2, Lcom/papa/gsyvideoplayer/d;->C:Lcom/papa/gsyvideoplayer/d;

    iget v3, v2, Lcom/papa/gsyvideoplayer/c;->o:I

    iput v3, v1, Lcom/papa/gsyvideoplayer/c;->o:I

    .line 3
    iget-object v3, v2, Lcom/papa/gsyvideoplayer/c;->g:Ljava/util/List;

    iput-object v3, v1, Lcom/papa/gsyvideoplayer/c;->g:Ljava/util/List;

    .line 4
    iget-object v3, v2, Lcom/papa/gsyvideoplayer/c;->h:Ljava/lang/String;

    iput-object v3, v1, Lcom/papa/gsyvideoplayer/c;->h:Ljava/lang/String;

    .line 5
    iget v3, v2, Lcom/papa/gsyvideoplayer/c;->k:I

    iput v3, v1, Lcom/papa/gsyvideoplayer/c;->k:I

    .line 6
    iget v3, v2, Lcom/papa/gsyvideoplayer/c;->l:I

    iput v3, v1, Lcom/papa/gsyvideoplayer/c;->l:I

    .line 7
    iget-object v3, v2, Lcom/papa/gsyvideoplayer/c;->a:Landroid/content/Context;

    iput-object v3, v1, Lcom/papa/gsyvideoplayer/c;->a:Landroid/content/Context;

    .line 8
    iget v3, v2, Lcom/papa/gsyvideoplayer/c;->m:I

    iput v3, v1, Lcom/papa/gsyvideoplayer/c;->m:I

    .line 9
    iget v3, v2, Lcom/papa/gsyvideoplayer/c;->n:I

    iput v3, v1, Lcom/papa/gsyvideoplayer/c;->n:I

    .line 10
    iget v3, v2, Lcom/papa/gsyvideoplayer/c;->p:I

    iput v3, v1, Lcom/papa/gsyvideoplayer/c;->p:I

    .line 11
    iget-boolean v3, v2, Lcom/papa/gsyvideoplayer/c;->q:Z

    iput-boolean v3, v1, Lcom/papa/gsyvideoplayer/c;->q:Z

    .line 12
    iget-boolean v2, v2, Lcom/papa/gsyvideoplayer/c;->r:Z

    iput-boolean v2, v1, Lcom/papa/gsyvideoplayer/c;->r:Z

    .line 13
    invoke-virtual {v1, p0}, Lcom/papa/gsyvideoplayer/c;->p(Lc2/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
