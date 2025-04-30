.class Lcom/join/mgps/adapter/p$g;
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
    iput-object p1, p0, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

    iput p2, p0, Lcom/join/mgps/adapter/p$g;->a:I

    iput-object p3, p0, Lcom/join/mgps/adapter/p$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    .line 1
    new-instance p1, Lcom/join/mgps/customview/t;

    iget-object v0, p0, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

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
    iget-object v1, p0, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

    iget-object v1, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadCenterBean;->getStayInstalledDownloadTasks()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

    iget-object v1, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadCenterBean;->getStayInstalledDownloadTasks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

    iget-object v1, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadCenterBean;->getStayInstalledDownloadTasks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v4, p0, Lcom/join/mgps/adapter/p$g;->a:I

    iget-object v5, p0, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

    iget-object v5, v5, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    if-le v1, v4, :cond_1

    .line 9
    iget-object v1, p0, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

    iget-object v1, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadCenterBean;->getStayInstalledDownloadTasks()Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lcom/join/mgps/adapter/p$g;->a:I

    iget-object v5, p0, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

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

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    const-string v4, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u8be5\u4efb\u52a1\u53ca\u5df2\u4e0b\u8f7d\u7684\u5b89\u88c5\u5305\uff1f"

    if-eqz v1, :cond_3

    .line 10
    sget-object v5, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 11
    iget-object v1, p0, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

    iget-object v1, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    iget-object v5, p0, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

    iget-object v5, v5, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    iget-object v6, p0, Lcom/join/mgps/adapter/p$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 13
    sget-object v5, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    iget-object v1, p0, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

    iget-object v1, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    iget-object v5, p0, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

    iget-object v5, v5, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    iget-object v6, p0, Lcom/join/mgps/adapter/p$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 16
    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    new-instance v2, Lcom/join/mgps/adapter/p$g$a;

    invoke-direct {v2, p0, p1}, Lcom/join/mgps/adapter/p$g$a;-><init>(Lcom/join/mgps/adapter/p$g;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09036b

    .line 18
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v2, "\u5220\u9664"

    .line 19
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 20
    new-instance v2, Lcom/join/mgps/adapter/p$g$b;

    invoke-direct {v2, p0, v1, p1}, Lcom/join/mgps/adapter/p$g$b;-><init>(Lcom/join/mgps/adapter/p$g;ZLandroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_5
    :goto_3
    return v3
.end method
