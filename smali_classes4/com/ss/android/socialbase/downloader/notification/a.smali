.class public abstract Lcom/ss/android/socialbase/downloader/notification/a;
.super Ljava/lang/Object;
.source "AbsNotificationItem.java"


# instance fields
.field protected a:Landroid/app/Notification;

.field private b:I

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:I

.field private g:J

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->f:I

    .line 3
    iput p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->b:I

    .line 4
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/notification/a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->b:I

    return v0
.end method

.method public a(ILcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ss/android/socialbase/downloader/notification/a;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;ZZ)V

    return-void
.end method

.method public a(ILcom/ss/android/socialbase/downloader/exception/BaseException;ZZ)V
    .locals 0

    if-nez p4, :cond_0

    .line 6
    iget p4, p0, Lcom/ss/android/socialbase/downloader/notification/a;->f:I

    if-ne p4, p1, :cond_0

    return-void

    .line 7
    :cond_0
    iput p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->f:I

    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->c:J

    return-void
.end method

.method public a(JJ)V
    .locals 0

    .line 9
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->c:J

    .line 10
    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/notification/a;->d:J

    const/4 p1, 0x4

    .line 11
    iput p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->f:I

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    return-void
.end method

.method public a(Landroid/app/Notification;)V
    .locals 3

    .line 13
    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->b:I

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->b:I

    iget v2, p0, Lcom/ss/android/socialbase/downloader/notification/a;->f:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->a(IILandroid/app/Notification;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->b:I

    .line 2
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->e:Ljava/lang/String;

    return-void
.end method

.method protected a(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->i:Z

    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->c:J

    return-wide v0
.end method

.method public b(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->d:J

    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->d:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->f:I

    return v0
.end method

.method public f()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->g:J

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->g:J

    return-wide v0
.end method

.method public declared-synchronized g()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->h:I

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->i:Z

    return v0
.end method
