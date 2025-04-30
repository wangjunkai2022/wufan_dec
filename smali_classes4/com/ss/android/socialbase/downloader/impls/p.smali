.class public Lcom/ss/android/socialbase/downloader/impls/p;
.super Ljava/lang/Object;
.source "ProcessDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/m;


# instance fields
.field private final a:Lcom/ss/android/socialbase/downloader/impls/a;

.field private final b:Lcom/ss/android/socialbase/downloader/downloader/j;

.field private final c:Lcom/ss/android/socialbase/downloader/downloader/o;

.field private final d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/p;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->C()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    .line 4
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->x()Lcom/ss/android/socialbase/downloader/downloader/j;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez p1, :cond_0

    .line 5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->y()Lcom/ss/android/socialbase/downloader/downloader/o;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/o;

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->z()Lcom/ss/android/socialbase/downloader/downloader/o;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/o;

    .line 7
    :goto_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "service_alive"

    invoke-virtual {p1, v1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/impls/p;->d:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 11
    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/a;->b()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->e(I)Z

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2

    .line 33
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 35
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/depend/ak;

    if-eqz v1, :cond_0

    .line 37
    invoke-interface {v1, p2, p1}, Lcom/ss/android/socialbase/downloader/depend/ak;->a(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(IIII)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IIII)V

    return-void
.end method

.method public a(IIIJ)V
    .locals 6

    .line 30
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IIIJ)V

    return-void
.end method

.method public a(IIJ)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IIJ)V

    return-void
.end method

.method public a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V
    .locals 6

    .line 12
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/impls/a;->b(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V

    :cond_0
    return-void
.end method

.method public a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;ZZ)V
    .locals 7

    .line 14
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 15
    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/socialbase/downloader/impls/a;->a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;ZZ)V

    :cond_0
    return-void
.end method

.method public a(IJ)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/a;->b(IJ)V

    :cond_0
    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/o;->a(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/ss/android/socialbase/downloader/depend/z;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(ILcom/ss/android/socialbase/downloader/depend/z;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(ILjava/util/List;)V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(IZ)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/depend/ak;)V
    .locals 0

    .line 32
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/depend/ak;)V

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 5

    .line 24
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/o;->b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 26
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/x;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v3, 0x3eb

    const-string v4, "downloadServiceHandler is null"

    invoke-direct {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, v1, v2, p1}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/depend/x;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/b;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 0

    .line 22
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-eqz p1, :cond_0

    .line 23
    invoke-interface {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/o;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/i/f;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v1, 0x2000000

    .line 17
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/ss/android/socialbase/downloader/impls/p;->b(IZ)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/ss/android/socialbase/downloader/impls/p;->d(IZ)V

    :cond_2
    :goto_0
    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 0

    .line 7
    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/p;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V
    .locals 6

    .line 11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/impls/a;->a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V

    :cond_0
    return-void
.end method

.method public b(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)V"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(ILjava/util/List;)V

    return-void
.end method

.method public b(IZ)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->b(IZ)V

    :cond_0
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/o;->c(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->b(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/o;->b()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->n(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->f(I)Z

    :cond_0
    return-void
.end method

.method public c(IZ)V
    .locals 1

    .line 6
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(IZ)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->O()Z

    move-result v0

    return v0
.end method

.method public c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    return p1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/j;->b()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->g(I)Z

    :cond_0
    return-void
.end method

.method public d(IZ)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->c(IZ)V

    :cond_0
    return-void
.end method

.method public e(I)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->c(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v3, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/f;->b(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0

    :cond_4
    :goto_0
    return-wide v1
.end method

.method public e(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Z
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/j;->d()Z

    move-result v0

    return v0
.end method

.method public f(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->d(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p1

    return p1
.end method

.method public f()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/j;->c()V

    return-void
.end method

.method public g()Z
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public g(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->d(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public i(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->c(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public j(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->m(I)V

    :cond_0
    return-void
.end method

.method public k(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/c/a;->a(I)V

    return-void
.end method

.method public l(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->k(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public m(I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(I)I

    move-result p1

    return p1
.end method

.method public n(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->e(I)Z

    move-result p1

    return p1
.end method

.method public o(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->d(I)V

    return-void
.end method

.method public p(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->f(I)Z

    move-result p1

    return p1
.end method

.method public q(I)Lcom/ss/android/socialbase/downloader/depend/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->i(I)Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public r(I)Lcom/ss/android/socialbase/downloader/depend/af;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->h(I)Lcom/ss/android/socialbase/downloader/depend/af;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->J()Lcom/ss/android/socialbase/downloader/depend/af;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public s(I)Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->j(I)Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public startService()V
    .locals 0

    return-void
.end method
