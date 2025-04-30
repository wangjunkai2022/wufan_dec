.class public Lcom/join/mgps/activity/q0;
.super Landroid/app/AlertDialog;
.source "InstallAppDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/q0$b;
    }
.end annotation


# static fields
.field public static final i:I = 0x0

.field public static final j:I = 0x1


# instance fields
.field a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Landroid/content/Context;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ImageView;

.field e:Lcom/join/mgps/activity/q0$b;

.field f:Lcom/join/mgps/pref/PrefDef_;

.field g:I

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f12013b

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/q0;->g:I

    .line 3
    iput-object p1, p0, Lcom/join/mgps/activity/q0;->b:Landroid/content/Context;

    .line 4
    iput p2, p0, Lcom/join/mgps/activity/q0;->g:I

    .line 5
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/q0;->f:Lcom/join/mgps/pref/PrefDef_;

    .line 6
    iput-object p3, p0, Lcom/join/mgps/activity/q0;->h:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/q0;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/q0;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/activity/q0;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/q0;->e(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method static synthetic c(Lcom/join/mgps/activity/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/q0;->g()V

    return-void
.end method

.method private e(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/q0;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/h;->I(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 2
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/q0;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/q0;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/join/android/app/common/utils/APKUtils;->y(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/q0;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/APKUtils;->A(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method private g()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/q0;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/q0;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/q0;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110396

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/q0;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/q0;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110395

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/q0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/q0;->h:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/q0;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071204

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, -0x2

    .line 8
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 9
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/activity/q0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/q0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/q0;->e:Lcom/join/mgps/activity/q0$b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/activity/q0$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/q0$b;-><init>(Lcom/join/mgps/activity/q0;)V

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/q0;->e:Lcom/join/mgps/activity/q0$b;

    .line 4
    new-instance v1, Lcom/join/mgps/activity/q0$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/q0$a;-><init>(Lcom/join/mgps/activity/q0;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/join/mgps/base/BaseQuickAdapter$g;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/q0;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/join/mgps/activity/q0;->e:Lcom/join/mgps/activity/q0$b;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/q0;->e:Lcom/join/mgps/activity/q0$b;

    iget-object v1, p0, Lcom/join/mgps/activity/q0;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/q0;->g()V

    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/q0;->b:Landroid/content/Context;

    .line 2
    instance-of v1, v0, Lcom/join/mgps/activity/MGMainActivity;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/join/mgps/activity/MGMainActivity;

    const/16 v1, 0x2713

    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/activity/MGMainActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0907ee

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/q0;->f()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c02e0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    .line 6
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 7
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const p1, 0x7f0900e0

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/join/mgps/activity/q0;->a:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f090341

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/q0;->c:Landroid/widget/TextView;

    const p1, 0x7f0907ee

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 11
    iput-object p1, p0, Lcom/join/mgps/activity/q0;->d:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 2
    iget v0, p0, Lcom/join/mgps/activity/q0;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/q0;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameStartShow:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/q0;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameInstallShow:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/q0;->d()V

    return-void
.end method
