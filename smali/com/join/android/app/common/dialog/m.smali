.class public Lcom/join/android/app/common/dialog/m;
.super Landroid/app/AlertDialog;
.source "ShowBottomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private c:Lcom/join/mgps/adapter/r;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/adapter/r;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/join/android/app/common/dialog/m;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/join/android/app/common/dialog/m;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    iput-object p3, p0, Lcom/join/android/app/common/dialog/m;->c:Lcom/join/mgps/adapter/r;

    return-void
.end method

.method static synthetic a(Lcom/join/android/app/common/dialog/m;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/m;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/join/android/app/common/dialog/m;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/m;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object p0
.end method

.method static synthetic c(Lcom/join/android/app/common/dialog/m;)Lcom/join/mgps/adapter/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/m;->c:Lcom/join/mgps/adapter/r;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipelineFactory()Lcom/facebook/imagepipeline/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/i;->l()Lcom/facebook/cache/disk/h;

    move-result-object v0

    new-instance v1, Lcom/facebook/cache/common/i;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/facebook/cache/common/i;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/cache/disk/h;->c(Lcom/facebook/cache/common/c;)La0/a;

    move-result-object p1

    check-cast p1, La0/c;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p1}, La0/c;->c()Ljava/io/File;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090e50

    if-eq p1, v0, :cond_5

    const v0, 0x7f090e53

    if-eq p1, v0, :cond_2

    const v0, 0x7f090e55

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/common/dialog/m;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/join/android/app/common/dialog/m;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/common/dialog/m;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v0, 0x7f

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/android/app/common/dialog/m;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/android/app/common/dialog/m;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivityBYDownloadTAsk(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_2

    .line 6
    :cond_2
    new-instance p1, Lcom/join/mgps/customview/t;

    iget-object v0, p0, Lcom/join/android/app/common/dialog/m;->a:Landroid/content/Context;

    const v1, 0x7f120176

    invoke-direct {p1, v0, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0c011f

    .line 7
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f09036b

    .line 8
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f09100a

    .line 9
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09036e

    .line 10
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "\u5220\u9664\u6e38\u620f"

    .line 11
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 12
    iget-object v3, p0, Lcom/join/android/app/common/dialog/m;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u5220\u9664"

    if-eqz v3, :cond_4

    .line 13
    sget-object v5, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 14
    iget-object v1, p0, Lcom/join/android/app/common/dialog/m;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    iget-object v3, p0, Lcom/join/android/app/common/dialog/m;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/join/android/app/common/dialog/m;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "\u4f60\u786e\u5b9a\u8981\u5378\u8f7d\u8be5\u6e38\u620f\uff1f"

    .line 15
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\u5378\u8f7d"

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string v1, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u8be5\u6e38\u620f\uff1f"

    .line 17
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const-string v3, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u8be5\u6e38\u620f\u53ca\u6587\u4ef6\uff1f"

    .line 19
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v2, 0x7f090365

    .line 21
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 22
    new-instance v3, Lcom/join/android/app/common/dialog/m$a;

    invoke-direct {v3, p0, p1}, Lcom/join/android/app/common/dialog/m$a;-><init>(Lcom/join/android/app/common/dialog/m;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    new-instance v2, Lcom/join/android/app/common/dialog/m$b;

    invoke-direct {v2, p0, v1, p1}, Lcom/join/android/app/common/dialog/m$b;-><init>(Lcom/join/android/app/common/dialog/m;ZLandroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 25
    :cond_5
    invoke-static {}, Lcom/join/android/app/component/album/lib/ImageLoader;->q()Lcom/join/android/app/component/album/lib/ImageLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/join/android/app/common/dialog/m;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/android/app/component/album/lib/ImageLoader;->m(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_6

    .line 26
    iget-object p1, p0, Lcom/join/android/app/common/dialog/m;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/android/app/common/dialog/m;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 27
    :cond_6
    iget-object v0, p0, Lcom/join/android/app/common/dialog/m;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/android/app/common/dialog/m;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/android/app/common/dialog/m;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/join/mgps/Util/t1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f12019d

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    const v1, 0x106000d

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/16 v1, 0x50

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const v1, 0x7f0c01a2

    .line 7
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setContentView(I)V

    .line 8
    iget-object v1, p0, Lcom/join/android/app/common/dialog/m;->a:Landroid/content/Context;

    const-string v2, "showMenuMyGame"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 10
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 11
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v0, 0x7f090e50

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/android/app/common/dialog/m;->d:Landroid/widget/TextView;

    const v0, 0x7f090e55

    .line 14
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/android/app/common/dialog/m;->e:Landroid/widget/TextView;

    const v0, 0x7f090e53

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/android/app/common/dialog/m;->f:Landroid/widget/TextView;

    .line 16
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/android/app/common/dialog/m;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    const-string v1, ".apk"

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "androidobb"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "46"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    :cond_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 21
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/join/android/app/common/dialog/m;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/g;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/join/android/app/common/dialog/m;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 23
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTips()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u7f51\u6e38"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 24
    iget-object p1, p0, Lcom/join/android/app/common/dialog/m;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 25
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/common/dialog/m;->d:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/android/app/common/dialog/m;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p1, p0, Lcom/join/android/app/common/dialog/m;->e:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object p1, p0, Lcom/join/android/app/common/dialog/m;->f:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
