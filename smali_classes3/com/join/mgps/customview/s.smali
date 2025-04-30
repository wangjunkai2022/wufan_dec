.class public Lcom/join/mgps/customview/s;
.super Lcom/join/mgps/customview/u;
.source "ModStandInstallPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcom/facebook/drawee/view/SimpleDraweeView;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field private e:Ljava/lang/String;

.field f:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/u;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/s;->init()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/s;->f:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/customview/s;->f:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->s(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/utils/j;->w()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity_;

    const-string v1, "modStdDialog"

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.wufun.game.start.std.game"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "from"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity_;->H2(Landroid/content/Context;)Lcom/join/mgps/activity/ModGameIndexActivity_$b0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity_$b0;->a(Ljava/lang/String;)Lcom/join/mgps/activity/ModGameIndexActivity_$b0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/s;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity_$b0;->b(Ljava/lang/String;)Lcom/join/mgps/activity/ModGameIndexActivity_$b0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/s;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity_$b0;->c(Ljava/lang/String;)Lcom/join/mgps/activity/ModGameIndexActivity_$b0;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p2}, Lcom/join/mgps/customview/s;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p2, p0, Lcom/join/mgps/customview/s;->e:Ljava/lang/String;

    .line 2
    iput-object p3, p0, Lcom/join/mgps/customview/s;->g:Ljava/lang/String;

    const/16 p3, 0x50

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p3, v0, v0}, Lcom/join/mgps/customview/u;->showAtLocation(Landroid/view/View;III)V

    .line 4
    iput-object p2, p0, Lcom/join/mgps/customview/s;->g:Ljava/lang/String;

    .line 5
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/s;->f:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/customview/s;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/s;->b:Landroid/widget/TextView;

    const-string p2, "\u662f\u5426\u91cd\u65b0\u5b89\u88c5\u6807\u51c6\u6a21\u5f0f\u81f3\u672c\u5730\uff1f"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c053b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v0, -0x2

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090687

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/customview/s;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090acd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/s;->b:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f09076f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/s;->c:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/s;->d:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/s;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/s;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09076f

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/u;->dismiss()V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/s;->c()V

    goto :goto_0

    :cond_0
    const v0, 0x7f090210

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/u;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
