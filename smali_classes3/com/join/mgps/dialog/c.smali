.class public Lcom/join/mgps/dialog/c;
.super Landroid/app/AlertDialog;
.source "AdVipMainDialog.java"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/join/mgps/pref/PrefDef_;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/c;->g:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/c;->g:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/dialog/c;->h:Ljava/lang/String;

    .line 6
    new-instance p2, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p2, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/join/mgps/dialog/c;->o:Lcom/join/mgps/pref/PrefDef_;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/c;)Lcom/join/mgps/pref/PrefDef_;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/c;->o:Lcom/join/mgps/pref/PrefDef_;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/c;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/dialog/c;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/c;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/dialog/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/c;->g:Landroid/content/Context;

    return-object p0
.end method

.method private g(Ljava/lang/String;)Landroid/graphics/Bitmap;
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
.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public h(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public i(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public j(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/16 v1, 0x11

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 6
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 9
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 10
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v0, 0x7f0c01b4

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setContentView(I)V

    const v0, 0x7f090d93

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/dialog/c;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0909ee

    .line 14
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/dialog/c;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0909f0

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/c;->c:Landroid/widget/TextView;

    const v0, 0x7f0909f2

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/c;->d:Landroid/widget/TextView;

    const v0, 0x7f0909ef

    .line 17
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/c;->e:Landroid/widget/TextView;

    const v0, 0x7f0909f1

    .line 18
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/c;->f:Landroid/widget/TextView;

    .line 19
    sget-object v0, Lcom/MApplication;->t0:Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/c;->n:Ljava/lang/String;

    .line 21
    sget-object v0, Lcom/MApplication;->t0:Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;->getPic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/c;->i:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/MApplication;->t0:Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/c;->j:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/MApplication;->t0:Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;->getBtn_l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/c;->k:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/MApplication;->t0:Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;->getBtn_r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/c;->l:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/MApplication;->t0:Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;->getBtn_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/c;->m:Ljava/lang/String;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/dialog/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/dialog/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 31
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/dialog/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 33
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/dialog/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 35
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "androidobb"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "46"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 37
    :cond_5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 40
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 41
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/join/mgps/dialog/c;->g:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/mgps/Util/t1;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_6

    .line 43
    iget-object p1, p0, Lcom/join/mgps/dialog/c;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 44
    :cond_6
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/join/mgps/dialog/c;->g:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/join/mgps/Util/g;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 45
    iget-object v1, p0, Lcom/join/mgps/dialog/c;->d:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 46
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/dialog/c;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/c;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/join/mgps/dialog/c$a;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/dialog/c$a;-><init>(Lcom/join/mgps/dialog/c;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method
