.class public Lcom/join/mgps/dialog/PlugInstallDialog;
.super Lcom/BaseAppCompatActivity;
.source "PlugInstallDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field g:Lcom/join/mgps/db/tables/EMUApkTable;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field h:Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field i:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->j:I

    return-void
.end method


# virtual methods
.method public D0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public E0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->g:Lcom/join/mgps/db/tables/EMUApkTable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugInstallDialog;->D0()V

    :cond_1
    return-void

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugInstallDialog;->D0()V

    return-void
.end method

.method public F0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->b:Landroid/widget/ImageView;

    const v1, 0x7f0803b4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->c:Landroid/widget/TextView;

    const-string v1, "\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->c:Landroid/widget/TextView;

    const v1, 0x7f080b81

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->f:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u4eab\u53d7\u6e38\u620f\u4e4b\u65c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-static {}, Lcom/join/mgps/enums/ConstantIntEnum;->values()[Lcom/join/mgps/enums/ConstantIntEnum;

    move-result-object v0

    const/4 v1, 0x0

    .line 8
    :goto_0
    array-length v2, v0

    const-string v3, "\u5df2\u5b89\u88c5\u5b8c\u6210"

    if-ge v1, v2, :cond_1

    .line 9
    iget-object v2, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->g:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v1

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    .line 12
    iput v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->j:I

    return-void
.end method

.method public G0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->b:Landroid/widget/ImageView;

    const v1, 0x7f0803b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->c:Landroid/widget/TextView;

    const-string v1, "\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->c:Landroid/widget/TextView;

    const v1, 0x7f080b82

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->f:Landroid/widget/TextView;

    const-string v2, "\u5927\u7ea6\u9700\u8981\u51e0\u79d2\u949f"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-static {}, Lcom/join/mgps/enums/ConstantIntEnum;->values()[Lcom/join/mgps/enums/ConstantIntEnum;

    move-result-object v0

    .line 8
    :goto_0
    array-length v2, v0

    const-string v3, "\u63d2\u4ef6\u5b89\u88c5\u4e2d"

    if-ge v1, v2, :cond_1

    .line 9
    iget-object v2, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->g:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v1

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->j:I

    return-void
.end method

.method public H0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->b:Landroid/widget/ImageView;

    const v1, 0x7f0803b6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->c:Landroid/widget/TextView;

    const-string v1, "\u4e00\u952e\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->c:Landroid/widget/TextView;

    const v2, 0x7f080b81

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 5
    iget v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->i:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 6
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->d:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->f:Landroid/widget/TextView;

    const-string v3, "\u6211\u4eec\u5df2\u4e3a\u4f60\u51c6\u5907\u597d\u5b89\u88c5\u5305"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u63d2\u4ef6\u53ef\u66f4\u65b0"

    .line 9
    invoke-static {}, Lcom/join/mgps/enums/ConstantIntEnum;->values()[Lcom/join/mgps/enums/ConstantIntEnum;

    move-result-object v3

    .line 10
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 11
    iget-object v4, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->g:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v4}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v2

    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 13
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iput v1, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->j:I

    return-void
.end method

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const v1, 0x7f090e7e

    if-ne p1, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugInstallDialog;->D0()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->h:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/join/mgps/Util/UtilsMy;->d3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f090efd

    if-ne p1, v1, :cond_3

    .line 5
    iget p1, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->j:I

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugInstallDialog;->G0()V

    .line 7
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->h:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lg1/f;->V(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 9
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/join/android/app/common/servcie/a;->q(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->g:Lcom/join/mgps/db/tables/EMUApkTable;

    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->V0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugInstallDialog;->D0()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/high16 p1, 0x22000000

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/z1;->o(Landroid/app/Activity;IZ)V

    .line 3
    iput-object p0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->a:Landroid/content/Context;

    .line 4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0370

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090687

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->b:Landroid/widget/ImageView;

    const v0, 0x7f090efd

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->c:Landroid/widget/TextView;

    const v0, 0x7f090e7e

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->d:Landroid/widget/TextView;

    const v0, 0x7f09100f

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->e:Landroid/widget/TextView;

    const v0, 0x7f090ef6

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->f:Landroid/widget/TextView;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/PlugInstallDialog;->setContentView(Landroid/view/View;)V

    .line 14
    iget p1, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->i:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugInstallDialog;->G0()V

    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugInstallDialog;->H0()V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugInstallDialog;->F0()V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    const/high16 p1, 0x22000000

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/z1;->o(Landroid/app/Activity;IZ)V

    return-void
.end method
