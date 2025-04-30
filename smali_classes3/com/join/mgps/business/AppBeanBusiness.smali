.class public Lcom/join/mgps/business/AppBeanBusiness;
.super Lcom/join/mgps/dto/AppBean;
.source "AppBeanBusiness.java"


# instance fields
.field private a:Lcom/github/snowdream/android/app/downloader/DownloadTask;


# direct methods
.method public constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/AppBean;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/business/AppBeanBusiness;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method


# virtual methods
.method public getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/business/AppBeanBusiness;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object v0
.end method

.method public setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/business/AppBeanBusiness;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method
