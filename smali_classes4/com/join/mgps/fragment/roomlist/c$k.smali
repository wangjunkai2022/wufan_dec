.class Lcom/join/mgps/fragment/roomlist/c$k;
.super Ljava/lang/Object;
.source "StandardEliteRoomFragment.java"

# interfaces
.implements Lcom/join/mgps/fragment/roomlist/c$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/roomlist/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/join/mgps/fragment/roomlist/c;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/roomlist/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----onRoomSortChanged onGameListSelected---  gameId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/roomlist/c;->y0(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----onRoomSortChanged onGameListSelected---  sort data start  Time :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/fragment/roomlist/c;->y0(Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {v2}, Lcom/join/mgps/fragment/roomlist/c;->U(Lcom/join/mgps/fragment/roomlist/c;)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {v2, p1}, Lcom/join/mgps/fragment/roomlist/c;->a0(Lcom/join/mgps/fragment/roomlist/c;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {v2}, Lcom/join/mgps/fragment/roomlist/c;->Z(Lcom/join/mgps/fragment/roomlist/c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->M(Lcom/join/mgps/fragment/roomlist/c;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->M(Lcom/join/mgps/fragment/roomlist/c;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->M(Lcom/join/mgps/fragment/roomlist/c;)Ljava/util/List;

    move-result-object p1

    iget-object v3, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {v3}, Lcom/join/mgps/fragment/roomlist/c;->Q(Lcom/join/mgps/fragment/roomlist/c;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->V(Lcom/join/mgps/fragment/roomlist/c;)Z

    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->X(Lcom/join/mgps/fragment/roomlist/c;)V

    .line 13
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 14
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    const/4 v3, 0x1

    invoke-static {v2, v3, p1}, Lcom/join/mgps/fragment/roomlist/c;->O(Lcom/join/mgps/fragment/roomlist/c;ZLjava/lang/String;)V

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->c0()V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->d0()V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->o0()V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----onRoomSortChanged onGameListSelected---sort data spend  Time :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/roomlist/c;->y0(Ljava/lang/String;)V

    return-void
.end method

.method public b(II)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----onRoomSortChanged onPrioritySortChanged---  sort data start  Time :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/fragment/roomlist/c;->y0(Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {v2}, Lcom/join/mgps/fragment/roomlist/c;->U(Lcom/join/mgps/fragment/roomlist/c;)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    iput p2, v2, Lcom/join/mgps/fragment/roomlist/c;->A:I

    .line 5
    invoke-static {v2}, Lcom/join/mgps/fragment/roomlist/c;->V(Lcom/join/mgps/fragment/roomlist/c;)Z

    .line 6
    iget-object p2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {p2, p1}, Lcom/join/mgps/fragment/roomlist/c;->W(Lcom/join/mgps/fragment/roomlist/c;I)I

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->X(Lcom/join/mgps/fragment/roomlist/c;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->Z(Lcom/join/mgps/fragment/roomlist/c;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-static {p1, v2, p2}, Lcom/join/mgps/fragment/roomlist/c;->O(Lcom/join/mgps/fragment/roomlist/c;ZLjava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->c0()V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->d0()V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->o0()V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->P(Lcom/join/mgps/fragment/roomlist/c;)Lcom/join/mgps/fragment/roomlist/c$n;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {p2}, Lcom/join/mgps/fragment/roomlist/c;->M(Lcom/join/mgps/fragment/roomlist/c;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {v2}, Lcom/join/mgps/fragment/roomlist/c;->S(Lcom/join/mgps/fragment/roomlist/c;)Z

    move-result v2

    invoke-interface {p1, p2, v2}, Lcom/join/mgps/fragment/roomlist/c$n;->a(IZ)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----onRoomSortChanged onPrioritySortChanged---sort data spend  Time :"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/fragment/roomlist/c;->y0(Ljava/lang/String;)V

    return-void
.end method

.method public c(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    iput p1, v0, Lcom/join/mgps/fragment/roomlist/c;->A:I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----onRoomSortChanged onShowPeripheralChanged---  sort data start  Time :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/join/mgps/fragment/roomlist/c;->y0(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->U(Lcom/join/mgps/fragment/roomlist/c;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->V(Lcom/join/mgps/fragment/roomlist/c;)Z

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->Z(Lcom/join/mgps/fragment/roomlist/c;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v3, v2}, Lcom/join/mgps/fragment/roomlist/c;->O(Lcom/join/mgps/fragment/roomlist/c;ZLjava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->c0()V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->d0()V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->o0()V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->P(Lcom/join/mgps/fragment/roomlist/c;)Lcom/join/mgps/fragment/roomlist/c$n;

    move-result-object p1

    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {v2}, Lcom/join/mgps/fragment/roomlist/c;->M(Lcom/join/mgps/fragment/roomlist/c;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {v3}, Lcom/join/mgps/fragment/roomlist/c;->S(Lcom/join/mgps/fragment/roomlist/c;)Z

    move-result v3

    invoke-interface {p1, v2, v3}, Lcom/join/mgps/fragment/roomlist/c$n;->a(IZ)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----onRoomSortChanged onShowPeripheralChanged ---sort data spend  Time :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/roomlist/c;->y0(Ljava/lang/String;)V

    return-void
.end method

.method public d(Lcom/join/mgps/dto/GameConfig;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/roomlist/c;->t0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 3
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/dialog/PlugInstallDialog_;->I0(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->b(I)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/roomlist/c;->f0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/roomlist/c;->T(Lcom/join/mgps/fragment/roomlist/c;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J2()Lcom/join/mgps/dto/FriendBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J2()Lcom/join/mgps/dto/FriendBean;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->S(Lcom/join/mgps/fragment/roomlist/c;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/FriendBean;->setElite(Z)V

    .line 11
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/wufan/friend/chat/c;->o(Lcom/join/mgps/dto/FriendBean;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->t3(Lcom/join/mgps/dto/FriendBean;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    iget-object v0, v0, Lcom/join/mgps/fragment/roomlist/c;->i:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-static {v1}, Lcom/join/mgps/fragment/roomlist/c;->S(Lcom/join/mgps/fragment/roomlist/c;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->x2(Ljava/lang/String;Z)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3f5

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/fragment/roomlist/c;->P0(Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method
