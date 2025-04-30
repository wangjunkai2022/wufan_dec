.class public Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;
.super Lcom/BaseActivity;
.source "GprsNoticeDialogAlphActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c01db
.end annotation


# instance fields
.field a:Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field c:Lcom/join/mgps/db/tables/EMUApkTable;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field d:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field e:Lcom/join/mgps/dto/UpdateIntentDataBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field f:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/Button;
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
    iput-boolean v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->d:Z

    return-void
.end method


# virtual methods
.method E0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method F0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->c:Lcom/join/mgps/db/tables/EMUApkTable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p0}, Lcom/join/mgps/Util/UtilsMy;->W0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->d:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->e:Lcom/join/mgps/dto/UpdateIntentDataBean;

    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->Y0(Landroid/content/Context;Lcom/join/mgps/dto/UpdateIntentDataBean;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, p0}, Lcom/php25/PDownload/d;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method afterview()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->g:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u4f7f\u7528\u6d41\u91cf\u66f4\u65b0\u6e38\u620f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->j:Landroid/widget/Button;

    const-string v1, "\u9a6c\u4e0a\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->g:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u4f7f\u7528\u6d41\u91cf\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->j:Landroid/widget/Button;

    const-string v1, "\u9a6c\u4e0a\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->i:Landroid/widget/TextView;

    const-string v1, "\u53ef\u5728\u6211\u7684>\u7ba1\u7406>\u8bbe\u7f6e \u91cc\u4fee\u6539\u63d0\u9192"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->k:Landroid/widget/Button;

    const-string v1, "\u4e0b\u6b21\u518d\u8bf4"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
