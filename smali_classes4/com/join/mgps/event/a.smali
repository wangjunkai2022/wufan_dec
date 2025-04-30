.class public Lcom/join/mgps/event/a;
.super Ljava/lang/Object;
.source "AdVipEvent.java"


# instance fields
.field private a:Lcom/github/snowdream/android/app/downloader/DownloadTask;


# direct methods
.method public constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/event/a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method


# virtual methods
.method public a()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object v0
.end method
