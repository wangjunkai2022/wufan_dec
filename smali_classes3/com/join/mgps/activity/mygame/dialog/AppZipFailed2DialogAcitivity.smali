.class public Lcom/join/mgps/activity/mygame/dialog/AppZipFailed2DialogAcitivity;
.super Lcom/BaseActivity;
.source "AppZipFailed2DialogAcitivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c008c
.end annotation


# instance fields
.field cancle:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field icon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field info:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field isSo:Z

.field ok:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/AppZipFailed2DialogAcitivity;->isSo:Z

    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/AppZipFailed2DialogAcitivity;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/AppZipFailed2DialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/AppZipFailed2DialogAcitivity;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/AppZipFailed2DialogAcitivity;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/AppZipFailed2DialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/AppZipFailed2DialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.download.delay.down"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/AppZipFailed2DialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "downloadTastJson"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method cancle()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method ok()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    return-void
.end method
