.class public Lcom/ss/android/downloadlib/addownload/d/a;
.super Ljava/lang/Object;
.source "ApkSizeInterceptor.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/d/d;


# static fields
.field private static a:Lcom/ss/android/downloadlib/addownload/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 2

    .line 14
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string v0, "pause_optimise_apk_size"

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x400

    mul-int/lit16 p1, p1, 0x400

    return p1
.end method

.method public static a()Lcom/ss/android/downloadlib/addownload/a/c;
    .locals 1

    .line 2
    sget-object v0, Lcom/ss/android/downloadlib/addownload/d/a;->a:Lcom/ss/android/downloadlib/addownload/a/c;

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/a/c;)Lcom/ss/android/downloadlib/addownload/a/c;
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/android/downloadlib/addownload/d/a;->a:Lcom/ss/android/downloadlib/addownload/a/c;

    return-object p0
.end method

.method private static a(J)Ljava/lang/String;
    .locals 5

    .line 17
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/32 v1, 0x40000000

    cmp-long v3, p0, v1

    if-ltz v3, :cond_0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "G"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v1, "M"

    const-wide/32 v2, 0x100000

    cmp-long v4, p0, v2

    if-ltz v4, :cond_1

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 20
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float p0, p0

    const/high16 p1, 0x49800000    # 1048576.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private a(Lcom/ss/android/downloadad/api/a/a;)Z
    .locals 3

    .line 15
    invoke-static {p1}, Lcom/ss/android/downloadlib/g/e;->a(Lcom/ss/android/downloadad/api/a/a;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "pause_optimise_apk_size_switch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 16
    invoke-interface {p1}, Lcom/ss/android/downloadad/api/a/a;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method public a(Lcom/ss/android/downloadad/api/a/b;ILcom/ss/android/downloadlib/addownload/d/c;)Z
    .locals 7

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->ac()Z

    move-result v0

    if-eqz v0, :cond_1

    return p2

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/d/a;->a(Lcom/ss/android/downloadad/api/a/a;)Z

    move-result v0

    if-nez v0, :cond_2

    return p2

    :cond_2
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_3

    return p2

    .line 6
    :cond_3
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/ss/android/downloadlib/addownload/i;->a(IJJ)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-lez v0, :cond_4

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    .line 8
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->s()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/addownload/d/a;->a(I)I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_4

    .line 9
    new-instance v0, Lcom/ss/android/downloadlib/addownload/d/a$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/ss/android/downloadlib/addownload/d/a$1;-><init>(Lcom/ss/android/downloadlib/addownload/d/a;Lcom/ss/android/downloadad/api/a/b;Lcom/ss/android/downloadlib/addownload/d/c;)V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/d/a;->a:Lcom/ss/android/downloadlib/addownload/a/c;

    sub-long/2addr v3, v1

    .line 10
    invoke-static {v3, v4}, Lcom/ss/android/downloadlib/addownload/d/a;->a(J)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p3, v1, p2

    const-string p2, "\u8be5\u4e0b\u8f7d\u4efb\u52a1\u4ec5\u9700%s\uff0c\u5373\u5c06\u4e0b\u8f7d\u5b8c\u6210\uff0c\u662f\u5426\u7ee7\u7eed\u4e0b\u8f7d\uff1f"

    .line 11
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "\u7ee7\u7eed"

    const-string v1, "\u6682\u505c"

    .line 12
    invoke-static {p1, p2, p3, v1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a(Lcom/ss/android/downloadad/api/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, v0}, Lcom/ss/android/downloadad/api/a/b;->n(Z)V

    return v0

    :cond_4
    return p2
.end method
