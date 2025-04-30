.class public Lcom/BaseFragmentActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "BaseFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/BaseFragmentActivity$p;,
        Lcom/BaseFragmentActivity$r;,
        Lcom/BaseFragmentActivity$q;,
        Lcom/BaseFragmentActivity$o;
    }
.end annotation


# instance fields
.field private broadcasExt:Lcom/BaseFragmentActivity$o;

.field contentView:Landroid/view/View;

.field dialog:Landroidx/appcompat/app/AlertDialog$Builder;

.field dialogU:Landroid/app/Dialog;

.field fialePath:Ljava/lang/String;

.field gameid:Ljava/lang/String;

.field gestureDetector:Landroid/view/GestureDetector;

.field private handlerx:Landroid/os/Handler;

.field hasdestroyed:Z

.field private final intentFilter12_:Landroid/content/IntentFilter;

.field isInBackground:Z

.field isSo:Z

.field isfirst:Z

.field lastShowPopTime:J

.field private mHandler:Landroid/os/Handler;

.field private final onReciviedReceiver_:Landroid/content/BroadcastReceiver;

.field popupWindow:Landroid/widget/PopupWindow;

.field recver:Lcom/BaseFragmentActivity$q;

.field private time:Lcom/BaseFragmentActivity$r;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/BaseFragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/BaseFragmentActivity;->hasdestroyed:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/BaseFragmentActivity;->isfirst:Z

    .line 5
    iput-boolean v0, p0, Lcom/BaseFragmentActivity;->isInBackground:Z

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Lcom/BaseFragmentActivity;->lastShowPopTime:J

    .line 7
    iput-boolean v0, p0, Lcom/BaseFragmentActivity;->isSo:Z

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 9
    new-instance v0, Lcom/BaseFragmentActivity$m;

    invoke-direct {v0, p0}, Lcom/BaseFragmentActivity$m;-><init>(Lcom/BaseFragmentActivity;)V

    iput-object v0, p0, Lcom/BaseFragmentActivity;->handlerx:Landroid/os/Handler;

    .line 10
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/BaseFragmentActivity;->intentFilter12_:Landroid/content/IntentFilter;

    .line 11
    new-instance v0, Lcom/BaseFragmentActivity$n;

    invoke-direct {v0, p0}, Lcom/BaseFragmentActivity$n;-><init>(Lcom/BaseFragmentActivity;)V

    iput-object v0, p0, Lcom/BaseFragmentActivity;->onReciviedReceiver_:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic C0(Lcom/BaseFragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/BaseFragmentActivity;->lambda$onResume$0()V

    return-void
.end method

.method static synthetic access$000(Lcom/BaseFragmentActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/BaseFragmentActivity;->showDownFinishPre(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/BaseFragmentActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/BaseFragmentActivity;->handlerx:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/BaseFragmentActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/BaseFragmentActivity;->showDownFinish(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/BaseFragmentActivity;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/BaseFragmentActivity;->onRecivied(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/BaseFragmentActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/BaseFragmentActivity;->showDownLoadVersionDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/BaseFragmentActivity;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/BaseFragmentActivity;->getUNzipPermiss(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/BaseFragmentActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/BaseFragmentActivity;->setUnzipFailedStatus(Ljava/lang/String;)V

    return-void
.end method

.method private getUNzipPermiss(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/tbruyelle/rxpermissions2/c;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/c;->r([Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcom/BaseFragmentActivity$c;

    invoke-direct {v1, p0, p2, p1}, Lcom/BaseFragmentActivity$c;-><init>(Lcom/BaseFragmentActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->B5(Lw2/g;)Lio/reactivex/disposables/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private initPopData(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    const v1, 0x7f0909eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    iput-object p1, p0, Lcom/BaseFragmentActivity;->gameid:Ljava/lang/String;

    .line 3
    new-instance v1, Lcom/BaseFragmentActivity$f;

    invoke-direct {v1, p0, p1}, Lcom/BaseFragmentActivity$f;-><init>(Lcom/BaseFragmentActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    const v1, 0x7f09100f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5
    iget-object v1, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    const v2, 0x7f090b5c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6
    iget-object v2, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    const v3, 0x7f090687

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 7
    iget-object v3, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    const v4, 0x7f09075e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 8
    iget-object v4, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    const v5, 0x7f090216

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 9
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    invoke-virtual {v5, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 10
    sget-object v5, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 11
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    .line 12
    iput-boolean v3, p0, Lcom/BaseFragmentActivity;->isSo:Z

    .line 13
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->showSoGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v6, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v6}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v5

    sget-object v6, Lcom/papa/sim/statistic/Event;->showSinGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v7, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v7}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    const/4 v5, 0x0

    .line 15
    iput-boolean v5, p0, Lcom/BaseFragmentActivity;->isSo:Z

    const-string/jumbo v5, "\u5b89\u88c5\u5b8c\u6210"

    .line 16
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :goto_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "\u5f00\u59cb\u6e38\u620f"

    .line 19
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    new-instance v0, Lcom/BaseFragmentActivity$g;

    invoke-direct {v0, p0, p1}, Lcom/BaseFragmentActivity$g;-><init>(Lcom/BaseFragmentActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    new-instance p1, Lcom/BaseFragmentActivity$h;

    invoke-direct {p1, p0}, Lcom/BaseFragmentActivity$h;-><init>(Lcom/BaseFragmentActivity;)V

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$onResume$0()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/o;->e(Landroid/content/Context;)V

    return-void
.end method

.method private onRecivied(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/BaseFragmentActivity;->isInBackground:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->Unzip_nopermission:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 3
    iget-object v0, p0, Lcom/BaseFragmentActivity;->dialogU:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f12000c

    invoke-direct {v0, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    const-string/jumbo v1, "\u89e3\u538b\u5931\u8d25"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 7
    iget-object v0, p0, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    const-string/jumbo v1, "\u672a\u83b7\u53d6\u5230\u5b58\u50a8\u6743\u9650"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 8
    iget-object v0, p0, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/BaseFragmentActivity$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/BaseFragmentActivity$a;-><init>(Lcom/BaseFragmentActivity;Landroid/content/Intent;Landroid/content/Context;)V

    const-string/jumbo v2, "\u53bb\u83b7\u53d6"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 9
    iget-object v0, p0, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/BaseFragmentActivity$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/BaseFragmentActivity$b;-><init>(Lcom/BaseFragmentActivity;Landroid/content/Intent;Landroid/content/Context;)V

    const-string/jumbo p1, "\u53d6\u6d88"

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 10
    iget-object p1, p0, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/BaseFragmentActivity;->dialogU:Landroid/app/Dialog;

    return-void
.end method

.method private setTranslucentStatus(Z)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 3
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    or-int/2addr p1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 4
    :cond_0
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x4000001

    and-int/2addr p1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private setUnzipFailedStatus(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    const/16 v0, 0xd

    .line 3
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lg1/f;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 5
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/android/app/common/servcie/a;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/l;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/c0;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static setWindowStatusBarColor(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/mgps/Util/z1;->q(Landroid/app/Activity;I)V

    return-void
.end method

.method private showDownFinish(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-boolean v2, p0, Lcom/BaseFragmentActivity;->isInBackground:Z

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/BaseFragmentActivity;->lastShowPopTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v6, v2, v4

    if-lez v6, :cond_7

    .line 5
    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {v2}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/join/mgps/activity/ModGameIndexActivity;

    if-nez v2, :cond_7

    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {v2}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/join/mgps/activity/GameMainActivity3_;

    if-nez v2, :cond_7

    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {v2}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/join/mgps/activity/NewArenaMainActivty_;

    if-nez v2, :cond_7

    if-nez v0, :cond_3

    .line 6
    iget-object v2, p0, Lcom/BaseFragmentActivity;->time:Lcom/BaseFragmentActivity$r;

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v2}, Lcom/BaseFragmentActivity$r;->onFinish()V

    goto :goto_1

    .line 8
    :cond_2
    new-instance v8, Lcom/BaseFragmentActivity$r;

    const-wide/16 v4, 0x2710

    const-wide/16 v6, 0x3e8

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/BaseFragmentActivity$r;-><init>(Lcom/BaseFragmentActivity;JJ)V

    iput-object v8, p0, Lcom/BaseFragmentActivity;->time:Lcom/BaseFragmentActivity$r;

    .line 9
    :goto_1
    iget-object v2, p0, Lcom/BaseFragmentActivity;->time:Lcom/BaseFragmentActivity$r;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_3
    if-eqz v0, :cond_4

    .line 10
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/z;->I(Ljava/lang/String;)V

    goto :goto_3

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/BaseFragmentActivity;->lastShowPopTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    const-string v0, "popwindow"

    const-string v2, "33333333333"

    .line 13
    invoke-static {v0, v2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    const/16 v3, 0x30

    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->v(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/BaseFragmentActivity;->lastShowPopTime:J

    goto :goto_2

    .line 16
    :cond_5
    invoke-direct {p0}, Lcom/BaseFragmentActivity;->showPopwindow()V

    .line 17
    :cond_6
    :goto_2
    invoke-direct {p0, p1}, Lcom/BaseFragmentActivity;->initPopData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_3
    return-void
.end method

.method private showDownFinishPre(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 3
    iput p1, v0, Landroid/os/Message;->what:I

    .line 4
    iget-object p1, p0, Lcom/BaseFragmentActivity;->handlerx:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showDownLoadVersionDialog(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/d;

    const v1, 0x7f120176

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/d;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v1, Lcom/BaseFragmentActivity$d;

    invoke-direct {v1, p0, v0, p1}, Lcom/BaseFragmentActivity$d;-><init>(Lcom/BaseFragmentActivity;Lcom/join/mgps/dialog/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/d;->e(Lcom/join/mgps/dialog/d$f;)V

    .line 3
    new-instance p1, Lcom/BaseFragmentActivity$e;

    invoke-direct {p1, p0, v0}, Lcom/BaseFragmentActivity$e;-><init>(Lcom/BaseFragmentActivity;Lcom/join/mgps/dialog/d;)V

    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/d;->g(Lcom/join/mgps/dialog/d$h;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u8be5\u6e38\u620f\u5728\u5b89\u5353"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u7248\u672c\u4e2d\u53ef\u80fd\u5b58\u5728\u95ea\u9000\u3001\u663e\u793a\u6548\u679c\u4e0d\u4f73\u3001\u8fd0\u884c\u4e0d\u6d41\u7545\u7b49\u73b0\u8c61"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/d;->h(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showPopwindow()V
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c008b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    .line 2
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 3
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 5
    iget-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 6
    iget-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    const v2, 0x7f12013a

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 7
    iget-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/BaseFragmentActivity$i;

    invoke-direct {v2, p0}, Lcom/BaseFragmentActivity$i;-><init>(Lcom/BaseFragmentActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 8
    iget-object v0, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07117e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 9
    iget-object v2, p0, Lcom/BaseFragmentActivity;->gestureDetector:Landroid/view/GestureDetector;

    if-nez v2, :cond_0

    .line 10
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/BaseFragmentActivity$j;

    invoke-direct {v4, p0, v0}, Lcom/BaseFragmentActivity$j;-><init>(Lcom/BaseFragmentActivity;I)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/BaseFragmentActivity;->gestureDetector:Landroid/view/GestureDetector;

    :cond_0
    const-string v0, "popwindow"

    const-string v2, "4444444444444 1"

    .line 11
    invoke-static {v0, v2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/BaseFragmentActivity;->lastShowPopTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 13
    iget-object v2, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    const/16 v4, 0x30

    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->v(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/BaseFragmentActivity;->lastShowPopTime:J

    const-string v1, "4444444444444 2"

    .line 15
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public checkPermiss(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public varargs checkPermiss([Ljava/lang/String;)Z
    .locals 4

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 3
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getPermison(Lcom/BaseFragmentActivity$p;)V
    .locals 3

    const-string v0, " permissxx   getpermiss2"

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/BaseFragmentActivity$p;->a:Ljava/lang/String;

    .line 9
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v1, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 11
    iget-object p1, p1, Lcom/BaseFragmentActivity$p;->b:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 12
    iput-object p1, p0, Lcom/BaseFragmentActivity;->fialePath:Ljava/lang/String;

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/BaseFragmentActivity;->handlerx:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 14
    :cond_3
    :try_start_0
    new-instance p1, Lcom/tbruyelle/rxpermissions2/c;

    invoke-direct {p1, p0}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 15
    invoke-virtual {p1, v1}, Lcom/tbruyelle/rxpermissions2/c;->r([Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcom/BaseFragmentActivity$l;

    invoke-direct {v0, p0}, Lcom/BaseFragmentActivity$l;-><init>(Lcom/BaseFragmentActivity;)V

    invoke-virtual {p1, v0}, Lio/reactivex/z;->B5(Lw2/g;)Lio/reactivex/disposables/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getPermison(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/BaseFragmentActivity$p;

    invoke-direct {v0, p0}, Lcom/BaseFragmentActivity$p;-><init>(Lcom/BaseFragmentActivity;)V

    .line 2
    iput-object p1, v0, Lcom/BaseFragmentActivity$p;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0}, Lcom/BaseFragmentActivity;->getPermison(Lcom/BaseFragmentActivity$p;)V

    return-void
.end method

.method public varargs getPermison([Ljava/lang/String;)V
    .locals 1

    .line 4
    :try_start_0
    new-instance v0, Lcom/tbruyelle/rxpermissions2/c;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/tbruyelle/rxpermissions2/c;->r([Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcom/BaseFragmentActivity$k;

    invoke-direct {v0, p0}, Lcom/BaseFragmentActivity$k;-><init>(Lcom/BaseFragmentActivity;)V

    invoke-virtual {p1, v0}, Lio/reactivex/z;->B5(Lw2/g;)Lio/reactivex/disposables/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/BaseFragmentActivity;->hasdestroyed:Z

    .line 3
    new-instance p1, Lcom/BaseFragmentActivity$o;

    invoke-direct {p1, p0}, Lcom/BaseFragmentActivity$o;-><init>(Lcom/BaseFragmentActivity;)V

    iput-object p1, p0, Lcom/BaseFragmentActivity;->broadcasExt:Lcom/BaseFragmentActivity$o;

    .line 4
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.appfinish"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/BaseFragmentActivity;->broadcasExt:Lcom/BaseFragmentActivity$o;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/BaseFragmentActivity;->intentFilter12_:Landroid/content/IntentFilter;

    const-string v0, "com.wufun.unzip.failed"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/BaseFragmentActivity;->intentFilter12_:Landroid/content/IntentFilter;

    const-string v0, "com.wufun.down.androidversion"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/BaseFragmentActivity;->onReciviedReceiver_:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/BaseFragmentActivity;->intentFilter12_:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :goto_0
    new-instance p1, Lcom/BaseFragmentActivity$q;

    invoke-direct {p1, p0}, Lcom/BaseFragmentActivity$q;-><init>(Lcom/BaseFragmentActivity;)V

    iput-object p1, p0, Lcom/BaseFragmentActivity;->recver:Lcom/BaseFragmentActivity$q;

    .line 12
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.wufun.get.permission"

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.wufun.get.downFinish"

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/BaseFragmentActivity;->recver:Lcom/BaseFragmentActivity$q;

    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 16
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/va/overmind/e;->R(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    :cond_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/BaseFragmentActivity;->hasdestroyed:Z

    .line 7
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/BaseFragmentActivity;->recver:Lcom/BaseFragmentActivity$q;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    :try_start_1
    iget-object v0, p0, Lcom/BaseFragmentActivity;->broadcasExt:Lcom/BaseFragmentActivity$o;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/BaseFragmentActivity;->onReciviedReceiver_:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/va/overmind/e;->R(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/BaseFragmentActivity;->hasdestroyed:Z

    if-nez v1, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/BaseFragmentActivity;->isInBackground:Z

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/BaseFragmentActivity;->isInBackground:Z

    .line 3
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/p0;->a(Landroid/content/Context;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/BaseFragmentActivity;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/BaseFragmentActivity;->mHandler:Landroid/os/Handler;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/BaseFragmentActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/d;

    invoke-direct {v2, p0}, Lcom/d;-><init>(Lcom/BaseFragmentActivity;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 8
    iget-boolean v2, p0, Lcom/BaseFragmentActivity;->isfirst:Z

    if-eqz v2, :cond_2

    .line 9
    iput-boolean v0, p0, Lcom/BaseFragmentActivity;->isfirst:Z

    return-void

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->lastInstallApp()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_3

    .line 14
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v4, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->lastShowTOUTIAOAd()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v4

    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 15
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 16
    sget-object v3, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {v3}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/join/mgps/activity/ModGameIndexActivity;

    if-nez v3, :cond_3

    .line 17
    invoke-static {p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_4

    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->lastInstallAppFinish()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 19
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 20
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 21
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 23
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {p0, v3}, Lcom/join/mgps/Util/g;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 24
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTips()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u7f51\u6e38"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 25
    invoke-direct {p0, v0}, Lcom/BaseFragmentActivity;->showDownFinishPre(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->lastInstallAppFinish()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 27
    :cond_4
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->a3(Landroid/content/Context;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 2
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vivo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "oppo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 3
    invoke-static {p0, p1, v1}, Lcom/join/mgps/Util/z1;->o(Landroid/app/Activity;IZ)V

    goto :goto_1

    :cond_1
    :goto_0
    const p1, -0x808081

    .line 4
    invoke-static {p0, p1, v1}, Lcom/join/mgps/Util/z1;->o(Landroid/app/Activity;IZ)V

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/z1;->d(Landroid/app/Activity;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/join/mgps/Util/z1;->c(Landroid/app/Activity;I)V

    :goto_1
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .line 6
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;)V

    .line 7
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vivo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "oppo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 8
    invoke-static {p0, p1, v1}, Lcom/join/mgps/Util/z1;->o(Landroid/app/Activity;IZ)V

    goto :goto_1

    :cond_1
    :goto_0
    const p1, -0x808081

    .line 9
    invoke-static {p0, p1, v1}, Lcom/join/mgps/Util/z1;->o(Landroid/app/Activity;IZ)V

    .line 10
    invoke-static {p0}, Lcom/join/mgps/Util/z1;->d(Landroid/app/Activity;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/join/mgps/Util/z1;->c(Landroid/app/Activity;I)V

    :goto_1
    return-void
.end method
