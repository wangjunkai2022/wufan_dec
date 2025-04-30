.class public Lcom/ss/android/socialbase/downloader/impls/o;
.super Ljava/lang/Object;
.source "IndependentProcessDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/m;
.implements Lcom/ss/android/socialbase/downloader/downloader/n;


# static fields
.field private static final a:Ljava/lang/String; = "o"


# instance fields
.field private volatile b:Lcom/ss/android/socialbase/downloader/downloader/i;

.field private c:Lcom/ss/android/socialbase/downloader/downloader/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/socialbase/downloader/downloader/o<",
            "Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/ss/android/socialbase/downloader/downloader/m;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/p;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/p;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    .line 3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->z()Lcom/ss/android/socialbase/downloader/downloader/o;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/o;

    .line 4
    invoke-interface {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/o;->a(Lcom/ss/android/socialbase/downloader/downloader/n;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 14
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

    .line 10
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(IIII)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(IIII)V

    goto :goto_0

    .line 58
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(IIIJ)V
    .locals 8

    .line 52
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(IIIJ)V

    goto :goto_0

    .line 54
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(IIJ)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(IIJ)V

    goto :goto_0

    .line 50
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V
    .locals 7

    .line 19
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/f;->b:Lcom/ss/android/socialbase/downloader/constants/f;

    if-ne p4, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {p3, v0}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object v4

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    move v2, p1

    move v3, p2

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(IILcom/ss/android/socialbase/downloader/depend/i;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;ZZ)V
    .locals 8

    .line 22
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/f;->b:Lcom/ss/android/socialbase/downloader/constants/f;

    if-ne p4, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {p3, v0}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object v4

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    move v2, p1

    move v3, p2

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IILcom/ss/android/socialbase/downloader/depend/i;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public a(IJ)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 30
    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/o;->a:Ljava/lang/String;

    const-string p2, "startForeground, aidlService is null"

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aidlService.startForeground, id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(ILandroid/app/Notification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(ILcom/ss/android/socialbase/downloader/depend/z;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-eqz v0, :cond_0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/z;)Lcom/ss/android/socialbase/downloader/depend/y;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(ILcom/ss/android/socialbase/downloader/depend/y;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
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

    .line 41
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Landroid/os/IBinder;)V
    .locals 0

    .line 69
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/i$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 70
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    new-instance p1, Lcom/ss/android/socialbase/downloader/impls/o$1;

    invoke-direct {p1, p0}, Lcom/ss/android/socialbase/downloader/impls/o$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/o;)V

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/o;->a(Lcom/ss/android/socialbase/downloader/depend/ak;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/depend/ak;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-eqz v0, :cond_0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/ak;)Lcom/ss/android/socialbase/downloader/depend/aj;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/depend/aj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-eqz v0, :cond_1

    .line 40
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/o;->b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/b;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    goto :goto_0

    .line 46
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
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

    .line 15
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(Ljava/util/List;)V

    goto :goto_0

    .line 17
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 34
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez p1, :cond_0

    .line 35
    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/o;->a:Ljava/lang/String;

    const-string p2, "stopForeground, aidlService is null"

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_0
    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/o;->a:Ljava/lang/String;

    const-string v0, "aidlService.stopForeground"

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :try_start_0
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    return p1

    .line 27
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/o;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

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

    .line 6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V
    .locals 7

    .line 18
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    return-void

    .line 19
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/f;->b:Lcom/ss/android/socialbase/downloader/constants/f;

    if-ne p4, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {p3, v0}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object v4

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    move v2, p1

    move v3, p2

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IILcom/ss/android/socialbase/downloader/depend/i;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
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

    .line 28
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/m;->b(ILjava/util/List;)V

    goto :goto_0

    .line 30
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b(IZ)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/m;->b(IZ)V

    goto :goto_0

    .line 16
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-eqz v0, :cond_1

    .line 27
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/o;->c(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    :cond_1
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

    .line 10
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->b(Ljava/util/List;)V

    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 22
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Ljava/lang/String;

    const-string v2, "isServiceForeground, aidlService is null"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 23
    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Ljava/lang/String;

    const-string v2, "aidlService.isServiceForeground"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->f()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public b(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
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

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->c(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c(IZ)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/i;->d(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 8
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->O()Z

    move-result v0

    return v0
.end method

.method public c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    return p1

    .line 14
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

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

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/m;->d()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->b()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

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

    .line 8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->d(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public e(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->e(I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

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

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/m;->e()Z

    move-result v0

    return v0

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->d()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public f(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->f(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public f()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/m;->f()V

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public g()Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->g(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    return-void
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
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->i(I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->i(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public j(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->j(I)V

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->j(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public k(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/o;->a(I)V

    :cond_0
    return-void
.end method

.method public l(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->k(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public m(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->b(I)I

    move-result p1

    return p1

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->m(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public n(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->n(I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->n(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public o(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->o(I)V

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->o(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public p(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/m;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->p(I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->p(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public q(I)Lcom/ss/android/socialbase/downloader/depend/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->q(I)Lcom/ss/android/socialbase/downloader/depend/y;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/y;)Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public r(I)Lcom/ss/android/socialbase/downloader/depend/af;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->r(I)Lcom/ss/android/socialbase/downloader/depend/ae;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/ae;)Lcom/ss/android/socialbase/downloader/depend/af;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public s(I)Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->s(I)Lcom/ss/android/socialbase/downloader/depend/g;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/g;)Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public startService()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/o;->startService()V

    :cond_0
    return-void
.end method
