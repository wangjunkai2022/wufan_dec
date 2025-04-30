.class public Lcom/join/mgps/activity/CopyDialogActivity;
.super Landroid/app/Activity;
.source "CopyDialogActivity.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field c:Landroid/content/Context;

.field d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/join/mgps/activity/CopyDialogActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CopyDialogActivity$a;-><init>(Lcom/join/mgps/activity/CopyDialogActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/join/mgps/activity/CopyDialogActivity;->d:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CopyDialogActivity$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CopyDialogActivity$b;-><init>(Lcom/join/mgps/activity/CopyDialogActivity;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c03bc

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "gameid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/CopyDialogActivity;->a:Ljava/lang/String;

    .line 4
    iput-object p0, p0, Lcom/join/mgps/activity/CopyDialogActivity;->c:Landroid/content/Context;

    const p1, 0x7f090f56

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "\u6b63\u5728\u62f7\u8d1d\u4e2d\u8bf7\u7a0d\u540e"

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/CopyDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/CopyDialogActivity;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/CopyDialogActivity;->a()V

    return-void
.end method
