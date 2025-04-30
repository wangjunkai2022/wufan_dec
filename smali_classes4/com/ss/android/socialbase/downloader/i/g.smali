.class public Lcom/ss/android/socialbase/downloader/i/g;
.super Ljava/lang/Object;
.source "IPCUtils.java"


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/g;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/g;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/g;)Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$24;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$24;-><init>(Lcom/ss/android/socialbase/downloader/depend/g;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/h;)Lcom/ss/android/socialbase/downloader/depend/IDownloadInterceptor;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$22;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$22;-><init>(Lcom/ss/android/socialbase/downloader/depend/h;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/i;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 62
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$25;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$25;-><init>(Lcom/ss/android/socialbase/downloader/depend/i;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/af;)Lcom/ss/android/socialbase/downloader/depend/ae;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$26;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$26;-><init>(Lcom/ss/android/socialbase/downloader/depend/af;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/ae;)Lcom/ss/android/socialbase/downloader/depend/af;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$10;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$10;-><init>(Lcom/ss/android/socialbase/downloader/depend/ae;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/downloader/s;)Lcom/ss/android/socialbase/downloader/depend/ah;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$27;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$27;-><init>(Lcom/ss/android/socialbase/downloader/downloader/s;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/ak;)Lcom/ss/android/socialbase/downloader/depend/aj;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$17;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$17;-><init>(Lcom/ss/android/socialbase/downloader/depend/ak;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/aj;)Lcom/ss/android/socialbase/downloader/depend/ak;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$18;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$18;-><init>(Lcom/ss/android/socialbase/downloader/depend/aj;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/downloader/h;)Lcom/ss/android/socialbase/downloader/depend/e;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 14
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$5;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$5;-><init>(Lcom/ss/android/socialbase/downloader/downloader/h;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/n;)Lcom/ss/android/socialbase/downloader/depend/f;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 12
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$3;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$3;-><init>(Lcom/ss/android/socialbase/downloader/depend/n;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;)Lcom/ss/android/socialbase/downloader/depend/g;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$29;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$29;-><init>(Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/IDownloadInterceptor;)Lcom/ss/android/socialbase/downloader/depend/h;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 15
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$6;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$6;-><init>(Lcom/ss/android/socialbase/downloader/depend/IDownloadInterceptor;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)Lcom/ss/android/socialbase/downloader/depend/i;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$12;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/i/g$12;-><init>(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/x;)Lcom/ss/android/socialbase/downloader/depend/j;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 13
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$4;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$4;-><init>(Lcom/ss/android/socialbase/downloader/depend/x;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/m;)Lcom/ss/android/socialbase/downloader/depend/l;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$9;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$9;-><init>(Lcom/ss/android/socialbase/downloader/depend/m;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/l;)Lcom/ss/android/socialbase/downloader/depend/m;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$8;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$8;-><init>(Lcom/ss/android/socialbase/downloader/depend/l;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/f;)Lcom/ss/android/socialbase/downloader/depend/n;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$13;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$13;-><init>(Lcom/ss/android/socialbase/downloader/depend/f;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/q;)Lcom/ss/android/socialbase/downloader/depend/o;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$20;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$20;-><init>(Lcom/ss/android/socialbase/downloader/depend/q;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/r;)Lcom/ss/android/socialbase/downloader/depend/p;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 10
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$31;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$31;-><init>(Lcom/ss/android/socialbase/downloader/depend/r;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/o;)Lcom/ss/android/socialbase/downloader/depend/q;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$2;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$2;-><init>(Lcom/ss/android/socialbase/downloader/depend/o;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/p;)Lcom/ss/android/socialbase/downloader/depend/r;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$19;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$19;-><init>(Lcom/ss/android/socialbase/downloader/depend/p;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/v;)Lcom/ss/android/socialbase/downloader/depend/t;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$16;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$16;-><init>(Lcom/ss/android/socialbase/downloader/depend/v;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/w;)Lcom/ss/android/socialbase/downloader/depend/u;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$28;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$28;-><init>(Lcom/ss/android/socialbase/downloader/depend/w;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/t;)Lcom/ss/android/socialbase/downloader/depend/v;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 9
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$30;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$30;-><init>(Lcom/ss/android/socialbase/downloader/depend/t;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/u;)Lcom/ss/android/socialbase/downloader/depend/w;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$15;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$15;-><init>(Lcom/ss/android/socialbase/downloader/depend/u;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/j;)Lcom/ss/android/socialbase/downloader/depend/x;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$14;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$14;-><init>(Lcom/ss/android/socialbase/downloader/depend/j;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/z;)Lcom/ss/android/socialbase/downloader/depend/y;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$23;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$23;-><init>(Lcom/ss/android/socialbase/downloader/depend/z;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/y;)Lcom/ss/android/socialbase/downloader/depend/z;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$7;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$7;-><init>(Lcom/ss/android/socialbase/downloader/depend/y;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/e;)Lcom/ss/android/socialbase/downloader/downloader/h;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$11;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$11;-><init>(Lcom/ss/android/socialbase/downloader/depend/e;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/ah;)Lcom/ss/android/socialbase/downloader/downloader/s;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$21;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$21;-><init>(Lcom/ss/android/socialbase/downloader/depend/ah;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/a;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 16
    :cond_0
    :try_start_0
    new-instance v1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->a()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 17
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->b()Lcom/ss/android/socialbase/downloader/depend/e;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/e;)Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->chunkStategy(Lcom/ss/android/socialbase/downloader/downloader/h;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 18
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->c()Lcom/ss/android/socialbase/downloader/depend/y;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/y;)Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->notificationEventListener(Lcom/ss/android/socialbase/downloader/depend/z;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 19
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->e()Lcom/ss/android/socialbase/downloader/depend/h;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/h;)Lcom/ss/android/socialbase/downloader/depend/IDownloadInterceptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->interceptor(Lcom/ss/android/socialbase/downloader/depend/IDownloadInterceptor;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 20
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->f()Lcom/ss/android/socialbase/downloader/depend/f;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/f;)Lcom/ss/android/socialbase/downloader/depend/n;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->depend(Lcom/ss/android/socialbase/downloader/depend/n;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 21
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->j()Lcom/ss/android/socialbase/downloader/depend/j;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/j;)Lcom/ss/android/socialbase/downloader/depend/x;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->monitorDepend(Lcom/ss/android/socialbase/downloader/depend/x;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 22
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->g()Lcom/ss/android/socialbase/downloader/depend/u;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/u;)Lcom/ss/android/socialbase/downloader/depend/w;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->forbiddenHandler(Lcom/ss/android/socialbase/downloader/depend/w;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 23
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->i()Lcom/ss/android/socialbase/downloader/depend/p;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/p;)Lcom/ss/android/socialbase/downloader/depend/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->diskSpaceHandler(Lcom/ss/android/socialbase/downloader/depend/r;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 24
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->k()Lcom/ss/android/socialbase/downloader/depend/g;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/g;)Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->fileUriProvider(Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 25
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->d()Lcom/ss/android/socialbase/downloader/depend/ae;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/ae;)Lcom/ss/android/socialbase/downloader/depend/af;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->notificationClickCallback(Lcom/ss/android/socialbase/downloader/depend/af;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 26
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->h()Lcom/ss/android/socialbase/downloader/depend/ah;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/ah;)Lcom/ss/android/socialbase/downloader/downloader/s;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->retryDelayTimeCalculator(Lcom/ss/android/socialbase/downloader/downloader/s;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 27
    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/f;->a:Lcom/ss/android/socialbase/downloader/constants/f;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-interface {p0, v3}, Lcom/ss/android/socialbase/downloader/model/a;->b(I)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 28
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/i;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->mainThreadListenerWithHashCode(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 29
    :cond_1
    sget-object v3, Lcom/ss/android/socialbase/downloader/constants/f;->b:Lcom/ss/android/socialbase/downloader/constants/f;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-interface {p0, v4}, Lcom/ss/android/socialbase/downloader/model/a;->b(I)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 30
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/i;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->subThreadListenerWithHashCode(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 31
    :cond_2
    sget-object v4, Lcom/ss/android/socialbase/downloader/constants/f;->c:Lcom/ss/android/socialbase/downloader/constants/f;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-interface {p0, v5}, Lcom/ss/android/socialbase/downloader/model/a;->b(I)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 32
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/i;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->notificationListenerWithHashCode(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 33
    :cond_3
    invoke-static {v1, p0, v2}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/model/a;Lcom/ss/android/socialbase/downloader/constants/f;)V

    .line 34
    invoke-static {v1, p0, v3}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/model/a;Lcom/ss/android/socialbase/downloader/constants/f;)V

    .line 35
    invoke-static {v1, p0, v4}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/model/a;Lcom/ss/android/socialbase/downloader/constants/f;)V

    .line 36
    invoke-static {v1, p0}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/model/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)Lcom/ss/android/socialbase/downloader/model/a;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g$1;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    return-object v0
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/model/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    :goto_0
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/model/a;->l()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 44
    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/model/a;->c(I)Lcom/ss/android/socialbase/downloader/depend/l;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/l;)Lcom/ss/android/socialbase/downloader/depend/m;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->addDownloadCompleteHandler(Lcom/ss/android/socialbase/downloader/depend/m;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/model/a;Lcom/ss/android/socialbase/downloader/constants/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 39
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/ss/android/socialbase/downloader/model/a;->a(I)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 40
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-interface {p1, v2, v1}, Lcom/ss/android/socialbase/downloader/model/a;->a(II)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 41
    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/depend/i;->a()I

    move-result v3

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/i;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->setDownloadListeners(Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/constants/f;)V

    return-void
.end method
