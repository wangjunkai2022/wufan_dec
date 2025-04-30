.class public Lcom/join/android/app/component/video/a;
.super Lcom/papa/gsyvideoplayer/c;
.source "CustomManager.java"


# static fields
.field public static final A:I = 0x7f09031d

.field public static B:Ljava/lang/String; = "GSYVideoManager"

.field private static C:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/android/app/component/video/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final z:I = 0x7f09031e


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/join/android/app/component/video/a;->C:Ljava/util/Map;

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

.method public static c0(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/papa/gsyvideoplayer/utils/b;->o(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/papa/gsyvideoplayer/utils/b;->o(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f09031d

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 4
    invoke-static {p0}, Lcom/papa/gsyvideoplayer/utils/b;->k(Landroid/content/Context;)V

    .line 5
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/join/android/app/component/video/a;->e0(Ljava/lang/String;)Lcom/join/android/app/component/video/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->r()Lc2/a;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 7
    invoke-static {p1}, Lcom/join/android/app/component/video/a;->e0(Ljava/lang/String;)Lcom/join/android/app/component/video/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->r()Lc2/a;

    move-result-object p0

    invoke-interface {p0}, Lc2/a;->onBackFullscreen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return v0
.end method

.method public static d0()V
    .locals 2

    .line 1
    sget-object v0, Lcom/join/android/app/component/video/a;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    sget-object v0, Lcom/join/android/app/component/video/a;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/join/android/app/component/video/a;->n0(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/join/android/app/component/video/a;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static declared-synchronized e0(Ljava/lang/String;)Lcom/join/android/app/component/video/a;
    .locals 9

    const-class v0, Lcom/join/android/app/component/video/a;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    sget-object v1, Lcom/join/android/app/component/video/a;->C:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/android/app/component/video/a;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/join/android/app/component/video/a;

    invoke-direct {v1}, Lcom/join/android/app/component/video/a;-><init>()V

    .line 4
    new-instance v2, Lcom/papa/gsyvideoplayer/model/c;

    const/4 v3, 0x4

    const-string v4, "enable-accurate-seek"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/papa/gsyvideoplayer/model/c;-><init>(ILjava/lang/String;I)V

    .line 5
    new-instance v3, Lcom/papa/gsyvideoplayer/model/c;

    const-string v4, "analyzeduration"

    invoke-direct {v3, v5, v4, v5}, Lcom/papa/gsyvideoplayer/model/c;-><init>(ILjava/lang/String;I)V

    .line 6
    new-instance v4, Lcom/papa/gsyvideoplayer/model/c;

    const-string v6, "analyzemaxduration"

    const/16 v7, 0x1e

    invoke-direct {v4, v5, v6, v7}, Lcom/papa/gsyvideoplayer/model/c;-><init>(ILjava/lang/String;I)V

    .line 7
    new-instance v5, Lcom/papa/gsyvideoplayer/model/c;

    const/4 v6, 0x2

    const-string v7, "skip_loop_filter"

    const/16 v8, 0x30

    invoke-direct {v5, v6, v7, v8}, Lcom/papa/gsyvideoplayer/model/c;-><init>(ILjava/lang/String;I)V

    .line 8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v1, v5}, Lcom/papa/gsyvideoplayer/c;->X(Ljava/util/List;)V

    .line 13
    sget-object v2, Lcom/join/android/app/component/video/a;->C:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_0
    monitor-exit v0

    return-object v1

    .line 15
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "key not be empty"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized f0()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/android/app/component/video/a;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/join/android/app/component/video/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/join/android/app/component/video/a;->C:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static g0(Landroid/app/Activity;)Z
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

.method public static i0()V
    .locals 3

    .line 1
    sget-object v0, Lcom/join/android/app/component/video/a;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    sget-object v0, Lcom/join/android/app/component/video/a;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/android/app/component/video/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/join/android/app/component/video/a;->h0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static l0()V
    .locals 3

    .line 1
    sget-object v0, Lcom/join/android/app/component/video/a;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    sget-object v0, Lcom/join/android/app/component/video/a;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/android/app/component/video/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/join/android/app/component/video/a;->j0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static m0(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/join/android/app/component/video/a;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    sget-object v0, Lcom/join/android/app/component/video/a;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/android/app/component/video/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, p0}, Lcom/join/android/app/component/video/a;->k0(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static n0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/component/video/a;->e0(Ljava/lang/String;)Lcom/join/android/app/component/video/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p0}, Lcom/join/android/app/component/video/a;->e0(Ljava/lang/String;)Lcom/join/android/app/component/video/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    invoke-interface {v0}, Lc2/a;->onCompletion()V

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/join/android/app/component/video/a;->e0(Ljava/lang/String;)Lcom/join/android/app/component/video/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->z()V

    return-void
.end method

.method public static o0(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/component/video/a;->C:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected M()Lcom/papa/gsyvideoplayer/player/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/papa/gsyvideoplayer/player/d;

    invoke-direct {v0}, Lcom/papa/gsyvideoplayer/player/d;-><init>()V

    return-object v0
.end method

.method public h0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/join/android/app/component/video/a;->e0(Ljava/lang/String;)Lcom/join/android/app/component/video/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/join/android/app/component/video/a;->e0(Ljava/lang/String;)Lcom/join/android/app/component/video/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object p1

    invoke-interface {p1}, Lc2/a;->onVideoPause()V

    :cond_1
    return-void
.end method

.method public j0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/join/android/app/component/video/a;->e0(Ljava/lang/String;)Lcom/join/android/app/component/video/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/join/android/app/component/video/a;->e0(Ljava/lang/String;)Lcom/join/android/app/component/video/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object p1

    invoke-interface {p1}, Lc2/a;->onVideoResume()V

    :cond_1
    return-void
.end method

.method public k0(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/join/android/app/component/video/a;->e0(Ljava/lang/String;)Lcom/join/android/app/component/video/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/join/android/app/component/video/a;->e0(Ljava/lang/String;)Lcom/join/android/app/component/video/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object p1

    invoke-interface {p1, p2}, Lc2/a;->onVideoResume(Z)V

    :cond_1
    return-void
.end method
