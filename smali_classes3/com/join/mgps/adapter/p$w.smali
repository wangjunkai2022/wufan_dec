.class Lcom/join/mgps/adapter/p$w;
.super Ljava/lang/Object;
.source "DownloadCenterAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/p;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/adapter/p;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/p;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/p$w;->b:Lcom/join/mgps/adapter/p;

    iput p2, p0, Lcom/join/mgps/adapter/p$w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 10

    .line 1
    new-instance p1, Lcom/join/mgps/customview/t;

    iget-object v0, p0, Lcom/join/mgps/adapter/p$w;->b:Lcom/join/mgps/adapter/p;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    const v1, 0x7f120176

    invoke-direct {p1, v0, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0c011f

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f090365

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f09036b

    .line 4
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f09100a

    .line 5
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "\u5220\u9664\u4efb\u52a1"

    .line 6
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u5220\u9664"

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f09036e

    .line 8
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 9
    iget-object v3, p0, Lcom/join/mgps/adapter/p$w;->b:Lcom/join/mgps/adapter/p;

    iget-object v3, v3, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/join/mgps/adapter/p$w;->b:Lcom/join/mgps/adapter/p;

    iget-object v3, v3, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 10
    iget-object v3, p0, Lcom/join/mgps/adapter/p$w;->b:Lcom/join/mgps/adapter/p;

    iget-object v3, v3, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v6, p0, Lcom/join/mgps/adapter/p$w;->a:I

    sub-int/2addr v6, v5

    if-le v3, v6, :cond_1

    .line 11
    iget-object v3, p0, Lcom/join/mgps/adapter/p$w;->b:Lcom/join/mgps/adapter/p;

    iget-object v3, v3, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v3

    iget v6, p0, Lcom/join/mgps/adapter/p$w;->a:I

    sub-int/2addr v6, v5

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_0

    .line 12
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/adapter/p$w;->b:Lcom/join/mgps/adapter/p;

    iget-object v3, v3, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/join/mgps/adapter/p$w;->b:Lcom/join/mgps/adapter/p;

    iget-object v3, v3, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 13
    iget-object v3, p0, Lcom/join/mgps/adapter/p$w;->b:Lcom/join/mgps/adapter/p;

    iget-object v3, v3, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    return v5

    .line 14
    :cond_2
    iget-object v6, p0, Lcom/join/mgps/adapter/p$w;->b:Lcom/join/mgps/adapter/p;

    invoke-virtual {v6}, Lcom/join/mgps/adapter/p;->getCount()I

    move-result v6

    iget v7, p0, Lcom/join/mgps/adapter/p$w;->a:I

    sub-int/2addr v7, v5

    const-string v8, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u8be5\u4efb\u52a1\u53ca\u5df2\u4e0b\u8f7d\u7684\u672c\u5730\u6587\u4ef6\uff1f"

    if-le v6, v7, :cond_5

    .line 15
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 16
    sget-object v7, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 17
    iget-object v6, p0, Lcom/join/mgps/adapter/p$w;->b:Lcom/join/mgps/adapter/p;

    iget-object v6, v6, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v6}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v6

    iget-object v7, p0, Lcom/join/mgps/adapter/p$w;->b:Lcom/join/mgps/adapter/p;

    iget-object v7, v7, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 18
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    .line 19
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_5

    .line 20
    sget-object v7, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 21
    iget-object v4, p0, Lcom/join/mgps/adapter/p$w;->b:Lcom/join/mgps/adapter/p;

    iget-object v4, v4, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v4}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v4

    iget-object v6, p0, Lcom/join/mgps/adapter/p$w;->b:Lcom/join/mgps/adapter/p;

    iget-object v6, v6, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 22
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    const/4 v4, 0x1

    .line 23
    :cond_5
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    new-instance v2, Lcom/join/mgps/adapter/p$w$a;

    invoke-direct {v2, p0, p1, v3}, Lcom/join/mgps/adapter/p$w$a;-><init>(Lcom/join/mgps/adapter/p$w;Landroid/app/Dialog;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    new-instance v0, Lcom/join/mgps/adapter/p$w$b;

    invoke-direct {v0, p0, v4, v3, p1}, Lcom/join/mgps/adapter/p$w$b;-><init>(Lcom/join/mgps/adapter/p$w;ZLcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_6

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_6

    .line 27
    invoke-static {v3}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 28
    :cond_6
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v5
.end method
