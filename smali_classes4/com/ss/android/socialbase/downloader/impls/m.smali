.class public Lcom/ss/android/socialbase/downloader/impls/m;
.super Lcom/ss/android/socialbase/downloader/downloader/i$a;
.source "IndependentDownloadBinder.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/ss/android/socialbase/downloader/downloader/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/android/socialbase/downloader/impls/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/i$a;-><init>()V

    .line 2
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/p;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 12
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(Ljava/lang/String;Ljava/lang/String;)I

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/m;->a()V

    return-void
.end method

.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(I)V

    return-void
.end method

.method public a(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(II)V

    return-void
.end method

.method public a(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(IIII)V

    return-void
.end method

.method public a(IIIJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 32
    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(IIIJ)V

    return-void
.end method

.method public a(IIJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(IIJ)V

    return-void
.end method

.method public a(IILcom/ss/android/socialbase/downloader/depend/i;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-static {p3}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/i;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v3

    invoke-static {p4}, Lcom/ss/android/socialbase/downloader/i/f;->e(I)Lcom/ss/android/socialbase/downloader/constants/f;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/m;->b(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V

    return-void
.end method

.method public a(IILcom/ss/android/socialbase/downloader/depend/i;IZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-static {p3}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/i;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v3

    invoke-static {p4}, Lcom/ss/android/socialbase/downloader/i/f;->e(I)Lcom/ss/android/socialbase/downloader/constants/f;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;ZZ)V

    return-void
.end method

.method public a(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(IJ)V

    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(ILandroid/app/Notification;)V

    return-void
.end method

.method public a(ILcom/ss/android/socialbase/downloader/depend/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/y;)Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(ILcom/ss/android/socialbase/downloader/depend/z;)V

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/m;->b(ILjava/util/List;)V

    return-void
.end method

.method public a(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(IZ)V

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/depend/aj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/aj;)Lcom/ss/android/socialbase/downloader/depend/ak;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(Lcom/ss/android/socialbase/downloader/depend/ak;)V

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/model/a;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 24
    invoke-interface {v0, v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(ZZ)V

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 20
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/m;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(IILcom/ss/android/socialbase/downloader/depend/i;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-static {p3}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/i;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v3

    invoke-static {p4}, Lcom/ss/android/socialbase/downloader/i/f;->e(I)Lcom/ss/android/socialbase/downloader/constants/f;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(ILjava/util/List;)V

    return-void
.end method

.method public b(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/m;->b(IZ)V

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->b(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public b(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->b(I)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 16
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->c(I)V

    return-void
.end method

.method public c(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/m;->b(IZ)V

    return-void
.end method

.method public c()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/m;->c()Z

    move-result v0

    return v0
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->d(I)V

    return-void
.end method

.method public d(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/d;->b(IZ)V

    return-void
.end method

.method public d()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/m;->e()Z

    move-result v0

    return v0
.end method

.method public e(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->e(I)J

    move-result-wide v0

    return-wide v0
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/m;->f()V

    return-void
.end method

.method public f(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->f(I)I

    move-result p1

    return p1
.end method

.method public f()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/m;->b()Z

    move-result v0

    return v0
.end method

.method public g(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->g(I)Z

    move-result p1

    return p1
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->i(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public j(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->j(I)V

    return-void
.end method

.method public k(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->l(I)Z

    move-result p1

    return p1
.end method

.method public l(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->k(I)V

    return-void
.end method

.method public m(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->b(I)I

    move-result p1

    return p1
.end method

.method public n(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->n(I)Z

    move-result p1

    return p1
.end method

.method public o(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->o(I)V

    return-void
.end method

.method public p(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->p(I)Z

    move-result p1

    return p1
.end method

.method public q(I)Lcom/ss/android/socialbase/downloader/depend/y;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->q(I)Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/z;)Lcom/ss/android/socialbase/downloader/depend/y;

    move-result-object p1

    return-object p1
.end method

.method public r(I)Lcom/ss/android/socialbase/downloader/depend/ae;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->r(I)Lcom/ss/android/socialbase/downloader/depend/af;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/af;)Lcom/ss/android/socialbase/downloader/depend/ae;

    move-result-object p1

    return-object p1
.end method

.method public s(I)Lcom/ss/android/socialbase/downloader/depend/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->s(I)Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;)Lcom/ss/android/socialbase/downloader/depend/g;

    move-result-object p1

    return-object p1
.end method
