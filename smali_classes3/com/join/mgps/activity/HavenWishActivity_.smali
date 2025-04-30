.class public final Lcom/join/mgps/activity/HavenWishActivity_;
.super Lcom/join/mgps/activity/HavenWishActivity;
.source "HavenWishActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/HavenWishActivity_$f;
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/String; = "downloadTask"


# instance fields
.field private final f:Li3/c;

.field private final g:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HavenWishActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HavenWishActivity_;->f:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HavenWishActivity_;->g:Ljava/util/Map;

    return-void
.end method

.method static synthetic H0(Lcom/join/mgps/activity/HavenWishActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/HavenWishActivity;->F0()V

    return-void
.end method

.method static synthetic I0(Lcom/join/mgps/activity/HavenWishActivity_;Lcom/join/mgps/dto/HavenWishResultBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/HavenWishActivity;->G0(Lcom/join/mgps/dto/HavenWishResultBean;)V

    return-void
.end method

.method static synthetic J0(Lcom/join/mgps/activity/HavenWishActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/HavenWishActivity;->E0(Ljava/lang/String;)V

    return-void
.end method

.method public static K0(Landroid/content/Context;)Lcom/join/mgps/activity/HavenWishActivity_$f;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/HavenWishActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HavenWishActivity_$f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static L0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/HavenWishActivity_$f;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/HavenWishActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HavenWishActivity_$f;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/HavenWishActivity_;->injectExtras_()V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "downloadTask"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object v0, p0, Lcom/join/mgps/activity/HavenWishActivity;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    :cond_0
    return-void
.end method


# virtual methods
.method E0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/HavenWishActivity_$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/HavenWishActivity_$e;-><init>(Lcom/join/mgps/activity/HavenWishActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method F0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/HavenWishActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HavenWishActivity_$c;-><init>(Lcom/join/mgps/activity/HavenWishActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x12c

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method G0(Lcom/join/mgps/dto/HavenWishResultBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/HavenWishActivity_$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/HavenWishActivity_$d;-><init>(Lcom/join/mgps/activity/HavenWishActivity_;Lcom/join/mgps/dto/HavenWishResultBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/HavenWishActivity_;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HavenWishActivity_;->f:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HavenWishActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c02c4

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HavenWishActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f09012c

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/HavenWishActivity;->a:Landroid/widget/ImageView;

    const v0, 0x7f090e1a

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/HavenWishActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f090404

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/join/mgps/activity/HavenWishActivity;->c:Landroid/widget/EditText;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/HavenWishActivity;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Lcom/join/mgps/activity/HavenWishActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HavenWishActivity_$a;-><init>(Lcom/join/mgps/activity/HavenWishActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/HavenWishActivity;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 7
    new-instance v0, Lcom/join/mgps/activity/HavenWishActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HavenWishActivity_$b;-><init>(Lcom/join/mgps/activity/HavenWishActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/HavenWishActivity;->afterviews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/HavenWishActivity_;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/HavenWishActivity_;->f:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/HavenWishActivity_;->f:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/HavenWishActivity_;->f:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/HavenWishActivity_;->injectExtras_()V

    return-void
.end method
