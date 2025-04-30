.class public Lcom/github/snowdream/android/app/downloader/DownloadException;
.super Ljava/lang/Exception;
.source "DownloadException.java"


# static fields
.field public static final b:J = 0x2L

.field public static final c:J = 0xbL

.field public static final d:J = 0x1L

.field public static final e:J = 0xaL

.field public static final f:J = 0x0L

.field private static final serialVersionUID:J = -0x34cd24aca0d13a53L


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadException;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadException;->a:J

    .line 3
    iput-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadException;->a:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 4
    invoke-static {p1, p2}, Lcom/github/snowdream/android/app/downloader/DownloadException;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadException;->a:J

    .line 6
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadException;->a:J

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 2

    .line 10
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadException;->a:J

    .line 12
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadException;->a:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadException;->a:J

    .line 9
    iput-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadException;->a:J

    return-void
.end method

.method private static a(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string p0, "The DownloadTask is null or not valid!"

    goto :goto_0

    :cond_0
    cmp-long v2, p0, v0

    if-nez v2, :cond_1

    const-string p0, "The Context is null or not valid!"

    goto :goto_0

    :cond_1
    cmp-long v2, p0, v0

    if-nez v2, :cond_2

    const-string p0, "The operation is not allowed!"

    goto :goto_0

    :cond_2
    cmp-long v2, p0, v0

    if-nez v2, :cond_3

    const-string p0, "The Download Task is failed!"

    goto :goto_0

    :cond_3
    cmp-long v2, p0, v0

    if-nez v2, :cond_4

    const-string p0, "Unknown Error!"

    goto :goto_0

    :cond_4
    const-string p0, ""

    :goto_0
    return-object p0
.end method


# virtual methods
.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadException;->a:J

    return-wide v0
.end method

.method public c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadException;->a:J

    return-void
.end method
