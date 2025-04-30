.class Lcom/join/mgps/activity/w1$a;
.super Ljava/lang/Object;
.source "MyGamePapaFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/w1;->J0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/w1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/w1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/w1$a;->a:Lcom/join/mgps/activity/w1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/w1$a;->b(I)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/w1$a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStartTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStartTime()J

    move-result-wide p1

    cmp-long v0, v3, p1

    if-lez v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 3
    :cond_1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/w1$a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/w1$a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/w1$a;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/w1$a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/w1$a;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide p1

    cmp-long v0, v3, p1

    if-lez v0, :cond_3

    return v2

    :cond_3
    return v1

    .line 6
    :cond_4
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/w1$a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/w1$a;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 7
    :cond_5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/w1$a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/w1$a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOpenTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOpenTime()J

    move-result-wide p1

    cmp-long v0, v3, p1

    if-ltz v0, :cond_6

    return v2

    :cond_6
    return v1

    .line 9
    :cond_7
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/w1$a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_8

    return v2

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method b(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x24

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method c(I)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/w1$a;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    check-cast p2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/w1$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    move-result p1

    return p1
.end method

.method d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen()Z

    move-result p1

    return p1
.end method

.method e(I)Z
    .locals 1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
