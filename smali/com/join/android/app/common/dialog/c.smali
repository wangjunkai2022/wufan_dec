.class public Lcom/join/android/app/common/dialog/c;
.super Landroid/app/AlertDialog;
.source "AddShortcutDialog.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private c:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/graphics/Bitmap;

.field private j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private k:Landroid/content/Context;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f120176

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/android/app/common/dialog/c;->l:Z

    .line 3
    iput-object p1, p0, Lcom/join/android/app/common/dialog/c;->k:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/join/android/app/common/dialog/c;->f:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/android/app/common/dialog/c;->g:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/android/app/common/dialog/c;->h:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/android/app/common/dialog/c;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method

.method public static synthetic a(Lcom/join/android/app/common/dialog/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/android/app/common/dialog/c;->d()V

    return-void
.end method

.method public static synthetic b(Lcom/join/android/app/common/dialog/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/android/app/common/dialog/c;->e(Landroid/view/View;)V

    return-void
.end method

.method private synthetic d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/c;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setNotCheckAddShortcut(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/dialog/c;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/android/app/common/dialog/c;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->d3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/common/dialog/c;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setNotCheckAddShortcut(Z)V

    return-void
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2
    iget-boolean p1, p0, Lcom/join/android/app/common/dialog/c;->l:Z

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/join/android/app/common/dialog/b;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/dialog/b;-><init>(Lcom/join/android/app/common/dialog/c;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private f(Ljava/lang/String;)Landroid/graphics/Bitmap;
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
.method public c()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/c;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/dialog/c;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080690

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/dialog/c;->i:Landroid/graphics/Bitmap;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/dialog/c;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public g(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public h(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/common/dialog/c;->l:Z

    .line 2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

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
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/16 v0, 0x11

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    const p1, 0x7f0c014b

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    const p1, 0x7f090e4a

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/android/app/common/dialog/c;->a:Landroid/widget/ImageView;

    const p1, 0x7f090e4c

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/android/app/common/dialog/c;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090e4d

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/android/app/common/dialog/c;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090e4b

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/android/app/common/dialog/c;->d:Landroid/widget/TextView;

    const p1, 0x7f090e4e

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/android/app/common/dialog/c;->e:Landroid/widget/TextView;

    .line 12
    iget-object p1, p0, Lcom/join/android/app/common/dialog/c;->k:Landroid/content/Context;

    const-string v0, "showIconAddModal"

    invoke-static {p1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/join/android/app/component/album/lib/ImageLoader;->q()Lcom/join/android/app/component/album/lib/ImageLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/join/android/app/common/dialog/c;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/join/android/app/component/album/lib/ImageLoader;->m(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/common/dialog/c;->i:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/join/android/app/common/dialog/c;->h:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/join/android/app/common/dialog/c;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/common/dialog/c;->i:Landroid/graphics/Bitmap;

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/common/dialog/c;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/join/android/app/common/dialog/c;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v0, p0, Lcom/join/android/app/common/dialog/c;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/join/android/app/common/dialog/c;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v0, p0, Lcom/join/android/app/common/dialog/c;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/common/dialog/c;->a:Landroid/widget/ImageView;

    new-instance v0, Lcom/join/android/app/common/dialog/a;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/dialog/a;-><init>(Lcom/join/android/app/common/dialog/c;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
