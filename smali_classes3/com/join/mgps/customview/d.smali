.class public Lcom/join/mgps/customview/d;
.super Ljava/lang/Object;
.source "DownFinishToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/d$d;
    }
.end annotation


# static fields
.field private static m:Lcom/join/mgps/customview/d;

.field static n:Ljava/lang/String;

.field static o:Landroid/content/Context;


# instance fields
.field private a:Z

.field private b:Landroid/os/Handler;

.field private c:Landroid/widget/Toast;

.field private d:Lcom/join/mgps/customview/d$d;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Lcom/facebook/drawee/view/SimpleDraweeView;

.field h:Landroid/widget/TextView;

.field i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field j:Z

.field k:Landroid/view/WindowManager;

.field l:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x1

    .line 2
    iput-boolean p3, p0, Lcom/join/mgps/customview/d;->a:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/customview/d;->j:Z

    .line 4
    iput-object p2, p0, Lcom/join/mgps/customview/d;->b:Landroid/os/Handler;

    .line 5
    sget-object p2, Lcom/MApplication;->q:Lcom/MApplication;

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const-string v1, "window"

    .line 6
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/join/mgps/customview/d;->k:Landroid/view/WindowManager;

    .line 7
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/customview/d;->k:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const v1, 0x7f0c008b

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p2, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f09100f

    .line 10
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/customview/d;->e:Landroid/widget/TextView;

    const v1, 0x7f090b5c

    .line 11
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/customview/d;->f:Landroid/widget/TextView;

    const v1, 0x7f090687

    .line 12
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, p0, Lcom/join/mgps/customview/d;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f09075e

    .line 13
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/customview/d;->h:Landroid/widget/TextView;

    const v1, 0x7f0909eb

    .line 14
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 15
    new-instance v2, Lcom/join/mgps/customview/d$a;

    invoke-direct {v2, p0, p1}, Lcom/join/mgps/customview/d$a;-><init>(Lcom/join/mgps/customview/d;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/customview/d;->c:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/join/mgps/customview/d;->c:Landroid/widget/Toast;

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/d;->c:Landroid/widget/Toast;

    const/16 v1, 0x37

    invoke-virtual {p1, v1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/customview/d;->c:Landroid/widget/Toast;

    invoke-virtual {p1, p3}, Landroid/widget/Toast;->setDuration(I)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/customview/d;->c:Landroid/widget/Toast;

    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/customview/d;->c:Landroid/widget/Toast;

    invoke-direct {p0, p1}, Lcom/join/mgps/customview/d;->f(Landroid/widget/Toast;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/d;->i()V

    return-void
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Lcom/join/mgps/customview/d;
    .locals 2

    .line 1
    sput-object p1, Lcom/join/mgps/customview/d;->n:Ljava/lang/String;

    .line 2
    sget-object p1, Lcom/join/mgps/customview/d;->m:Lcom/join/mgps/customview/d;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/join/mgps/customview/d;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sget-object v1, Lcom/join/mgps/customview/d;->n:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1}, Lcom/join/mgps/customview/d;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    sput-object p1, Lcom/join/mgps/customview/d;->m:Lcom/join/mgps/customview/d;

    .line 4
    :cond_0
    sput-object p0, Lcom/join/mgps/customview/d;->o:Landroid/content/Context;

    .line 5
    sget-object p0, Lcom/join/mgps/customview/d;->m:Lcom/join/mgps/customview/d;

    return-object p0
.end method

.method private f(Landroid/widget/Toast;)V
    .locals 1

    :try_start_0
    const-string v0, "mTN"

    .line 1
    invoke-static {p1, v0}, Lcom/join/mgps/customview/d;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "mParams"

    .line 2
    invoke-static {p1, v0}, Lcom/join/mgps/customview/d;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    instance-of v0, p1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    const v0, 0x7f12013a

    .line 5
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v0, 0x88

    .line 6
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v0, 0x7d5

    .line 7
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, -0x1

    .line 8
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 9
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private g()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/d;->l:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    .line 2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x1

    .line 3
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const v1, 0x7f12013a

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x88

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private i()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/d;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/d;->c:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/d;->b:Landroid/os/Handler;

    new-instance v1, Lcom/join/mgps/customview/d$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/d$c;-><init>(Lcom/join/mgps/customview/d;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private j()V
    .locals 4

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/customview/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/d;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    sget-object v0, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/d;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/d;->h:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/d;->j:Z

    .line 5
    sget-object v0, Lcom/join/mgps/customview/d;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->showSoGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/customview/d;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/join/mgps/customview/d;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->showSinGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/customview/d;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/customview/d;->j:Z

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/d;->h:Landroid/widget/TextView;

    const-string v1, "\u5b89\u88c5\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/d;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/customview/d;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/d;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/customview/d;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/d;->f:Landroid/widget/TextView;

    const-string v1, "\u5f00\u59cb\u6e38\u620f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/d;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/join/mgps/customview/d$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/d$b;-><init>(Lcom/join/mgps/customview/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/d;->c:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/customview/d;->a:Z

    return-void
.end method

.method e()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/d;->j:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/join/mgps/customview/d;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->onclickSoGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/customview/d;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/join/mgps/customview/d;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->onclickSinGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/customview/d;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    :goto_0
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/d;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    :cond_1
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/customview/d;->d()V

    goto :goto_1

    .line 6
    :cond_2
    sget-object v0, Lcom/join/mgps/customview/d;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/customview/d;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/customview/d;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->y(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/d;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_4

    .line 8
    sget-object v1, Lcom/join/mgps/customview/d;->o:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/customview/d;->d()V

    :goto_1
    return-void
.end method

.method public h(I)Lcom/join/mgps/customview/d;
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/d;->j()V

    .line 2
    new-instance v6, Lcom/join/mgps/customview/d$d;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/customview/d$d;-><init>(Lcom/join/mgps/customview/d;JJ)V

    iput-object v6, p0, Lcom/join/mgps/customview/d;->d:Lcom/join/mgps/customview/d$d;

    .line 3
    iget-boolean p1, p0, Lcom/join/mgps/customview/d;->a:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/customview/d;->a:Z

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/customview/d;->i()V

    :cond_0
    return-object p0
.end method
