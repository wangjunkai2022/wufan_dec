.class Lcom/join/mgps/adapter/p$i0;
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

.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Lcom/join/mgps/adapter/p;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/p;ILcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/p$i0;->c:Lcom/join/mgps/adapter/p;

    iput p2, p0, Lcom/join/mgps/adapter/p$i0;->a:I

    iput-object p3, p0, Lcom/join/mgps/adapter/p$i0;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    .line 1
    new-instance p1, Lcom/join/mgps/customview/t;

    iget-object v0, p0, Lcom/join/mgps/adapter/p$i0;->c:Lcom/join/mgps/adapter/p;

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

    const v1, 0x7f09100a

    .line 4
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09036e

    .line 5
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "\u5220\u9664\u4efb\u52a1"

    .line 6
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/adapter/p$i0;->c:Lcom/join/mgps/adapter/p;

    iget-object v1, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadCenterBean;->getStayInstalledDownloadTasks()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/join/mgps/adapter/p$i0;->c:Lcom/join/mgps/adapter/p;

    iget-object v1, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadCenterBean;->getStayInstalledDownloadTasks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/p$i0;->c:Lcom/join/mgps/adapter/p;

    iget-object v1, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadCenterBean;->getStayInstalledDownloadTasks()Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lcom/join/mgps/adapter/p$i0;->a:I

    iget-object v5, p0, Lcom/join/mgps/adapter/p$i0;->c:Lcom/join/mgps/adapter/p;

    iget-object v5, v5, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u8be5\u4efb\u52a1\u53ca\u5df2\u4e0b\u8f7d\u7684\u5b89\u88c5\u5305\uff1f"

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 9
    sget-object v6, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    iget-object v1, p0, Lcom/join/mgps/adapter/p$i0;->c:Lcom/join/mgps/adapter/p;

    iget-object v1, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    iget-object v6, p0, Lcom/join/mgps/adapter/p$i0;->c:Lcom/join/mgps/adapter/p;

    iget-object v6, v6, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    iget-object v7, p0, Lcom/join/mgps/adapter/p$i0;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    .line 12
    sget-object v6, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    iget-object v1, p0, Lcom/join/mgps/adapter/p$i0;->c:Lcom/join/mgps/adapter/p;

    iget-object v1, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    iget-object v5, p0, Lcom/join/mgps/adapter/p$i0;->c:Lcom/join/mgps/adapter/p;

    iget-object v5, v5, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    iget-object v6, p0, Lcom/join/mgps/adapter/p$i0;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    const/4 v5, 0x1

    .line 15
    :cond_3
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    new-instance v1, Lcom/join/mgps/adapter/p$i0$a;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/p$i0$a;-><init>(Lcom/join/mgps/adapter/p$i0;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09036b

    .line 17
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "\u5220\u9664"

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 19
    new-instance v1, Lcom/join/mgps/adapter/p$i0$b;

    invoke-direct {v1, p0, v5, p1}, Lcom/join/mgps/adapter/p$i0$b;-><init>(Lcom/join/mgps/adapter/p$i0;ZLandroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_4
    :goto_1
    return v3
.end method
