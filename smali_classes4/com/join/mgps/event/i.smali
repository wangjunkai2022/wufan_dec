.class public Lcom/join/mgps/event/i;
.super Ljava/lang/Object;
.source "DownloadEvent.java"


# instance fields
.field private a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/event/i;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    iput p2, p0, Lcom/join/mgps/event/i;->b:I

    return-void
.end method


# virtual methods
.method public a()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/i;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object v0
.end method

.method public b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/event/i;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/event/i;->b:I

    return-void
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/event/i;->b:I

    return v0
.end method
