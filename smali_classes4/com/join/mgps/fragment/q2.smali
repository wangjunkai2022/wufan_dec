.class public final Lcom/join/mgps/fragment/q2;
.super Lcom/join/mgps/fragment/p2;
.source "GameOlGiftPackageFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/q2$p;
    }
.end annotation


# instance fields
.field private A:Landroid/view/View;

.field private final B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Li3/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/p2;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/q2;->z:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/q2;->B:Ljava/util/Map;

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method

.method static synthetic j0(Lcom/join/mgps/fragment/q2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/p2;->c0()V

    return-void
.end method

.method static synthetic k0(Lcom/join/mgps/fragment/q2;Lcom/join/mgps/dto/GiftPackageDataInfoBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/p2;->Z(Lcom/join/mgps/dto/GiftPackageDataInfoBean;I)V

    return-void
.end method

.method static synthetic l0(Lcom/join/mgps/fragment/q2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/p2;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic m0(Lcom/join/mgps/fragment/q2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/p2;->a0()V

    return-void
.end method

.method static synthetic n0(Lcom/join/mgps/fragment/q2;Lcom/join/mgps/dto/GiftPackageDataOperationBean;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/fragment/p2;->f0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    return-void
.end method

.method static synthetic o0(Lcom/join/mgps/fragment/q2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/p2;->showLoding()V

    return-void
.end method

.method static synthetic p0(Lcom/join/mgps/fragment/q2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/p2;->showLodingFailed()V

    return-void
.end method

.method static synthetic q0(Lcom/join/mgps/fragment/q2;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/p2;->showMain(Ljava/util/List;)V

    return-void
.end method

.method static synthetic r0(Lcom/join/mgps/fragment/q2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/p2;->i0()V

    return-void
.end method

.method static synthetic t0(Lcom/join/mgps/fragment/q2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/p2;->e0()V

    return-void
.end method

.method static synthetic u0(Lcom/join/mgps/fragment/q2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/p2;->g0()V

    return-void
.end method

.method static synthetic v0(Lcom/join/mgps/fragment/q2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/p2;->h0()V

    return-void
.end method

.method public static w0()Lcom/join/mgps/fragment/q2$p;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/q2$p;

    invoke-direct {v0}, Lcom/join/mgps/fragment/q2$p;-><init>()V

    return-object v0
.end method


# virtual methods
.method Z(Lcom/join/mgps/dto/GiftPackageDataInfoBean;I)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/fragment/q2$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/fragment/q2$e;-><init>(Lcom/join/mgps/fragment/q2;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/GiftPackageDataInfoBean;I)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method a0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/q2$f;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/q2$f;-><init>(Lcom/join/mgps/fragment/q2;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method c0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/q2$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/q2$j;-><init>(Lcom/join/mgps/fragment/q2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method e0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/q2$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/q2$b;-><init>(Lcom/join/mgps/fragment/q2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method f0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/q2$l;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/fragment/q2$l;-><init>(Lcom/join/mgps/fragment/q2;Lcom/join/mgps/dto/GiftPackageDataOperationBean;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v0, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method g0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/q2$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/q2$c;-><init>(Lcom/join/mgps/fragment/q2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q2;->B:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method h0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/q2$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/q2$d;-><init>(Lcom/join/mgps/fragment/q2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method i0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/q2$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/q2$a;-><init>(Lcom/join/mgps/fragment/q2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q2;->A:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q2;->z:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/q2;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/fragment/q2;->A:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c024d

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/q2;->A:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/q2;->A:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/q2;->A:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->a:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->b:Lcom/join/mgps/customview/XListView2;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->c:Landroid/widget/LinearLayout;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->d:Landroid/widget/LinearLayout;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->e:Landroid/widget/ImageView;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f0909e2

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->a:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f090cb6

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->b:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f0909b5

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f090d11

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->e:Landroid/widget/ImageView;

    const v0, 0x7f090a4d

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090e21

    .line 7
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 8
    iget-object v1, p0, Lcom/join/mgps/fragment/p2;->e:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 9
    new-instance v2, Lcom/join/mgps/fragment/q2$g;

    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/q2$g;-><init>(Lcom/join/mgps/fragment/q2;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 10
    new-instance v1, Lcom/join/mgps/fragment/q2$h;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/q2$h;-><init>(Lcom/join/mgps/fragment/q2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 11
    new-instance v0, Lcom/join/mgps/fragment/q2$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/q2$i;-><init>(Lcom/join/mgps/fragment/q2;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->T()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/q2;->z:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q2;->B:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/q2$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/q2$m;-><init>(Lcom/join/mgps/fragment/q2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/q2$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/q2$n;-><init>(Lcom/join/mgps/fragment/q2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showMain(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk1/a<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/q2$o;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/q2$o;-><init>(Lcom/join/mgps/fragment/q2;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/q2$k;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/q2$k;-><init>(Lcom/join/mgps/fragment/q2;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
