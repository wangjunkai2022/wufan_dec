.class public Lcom/join/mgps/dialog/z1;
.super Landroid/app/AlertDialog;
.source "VaExtSupportDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/ImageView;

.field i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field j:Lcom/join/mgps/db/tables/EMUApkTable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;)V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/z1;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dialog/z1;->j:Lcom/join/mgps/db/tables/EMUApkTable;

    if-eqz p1, :cond_3

    .line 4
    iget-object p2, p0, Lcom/join/mgps/dialog/z1;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/dialog/z1;->b:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/join/mgps/dialog/z1;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/dialog/z1;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScore()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/dialog/z1;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScore()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/z1;->e:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/dialog/z1;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/dialog/z1;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScore()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/dialog/z1;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/z1;->e:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/dialog/z1;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    const/16 p1, 0x20

    .line 12
    sget-object v0, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e$a;->e()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 p1, 0x40

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/dialog/z1;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110399

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/dialog/z1;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/dialog/z1;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/join/mgps/Util/UtilsMy;->B(Lcom/join/mgps/dto/TipNew;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method public b(Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/mgps/db/tables/EMUApkTable;)V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/dialog/z1;->j:Lcom/join/mgps/db/tables/EMUApkTable;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p2, p0, Lcom/join/mgps/dialog/z1;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getIco()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/join/mgps/dialog/z1;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 p2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->showScore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/join/mgps/dialog/z1;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/dialog/z1;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/z1;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/dialog/z1;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/dialog/z1;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const/16 v0, 0x20

    .line 13
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->B()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x40

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/dialog/z1;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110399

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/dialog/z1;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/join/mgps/Util/UtilsMy;->B(Lcom/join/mgps/dto/TipNew;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901dc

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/z1;->j:Lcom/join/mgps/db/tables/EMUApkTable;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->V0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    :cond_1
    const v0, 0x7f0907ee

    if-ne p1, v0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const p1, 0x7f0c01b2

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    const p1, 0x7f0900d9

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/dialog/z1;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f0900e1

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/z1;->b:Landroid/widget/TextView;

    const p1, 0x7f09100c

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/dialog/z1;->c:Landroid/widget/LinearLayout;

    const p1, 0x7f09082b

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/dialog/z1;->d:Landroid/widget/ImageView;

    const p1, 0x7f091172

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/z1;->e:Landroid/widget/TextView;

    const p1, 0x7f0910e3

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/z1;->f:Landroid/widget/TextView;

    const p1, 0x7f0901dc

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/mgps/dialog/z1;->g:Landroid/widget/Button;

    const p1, 0x7f0907ee

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/dialog/z1;->h:Landroid/widget/ImageView;

    .line 15
    iget-object p1, p0, Lcom/join/mgps/dialog/z1;->g:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/dialog/z1;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
