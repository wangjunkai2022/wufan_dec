.class public final Lcom/join/mgps/activity/HavenDownActivity_;
.super Lcom/join/mgps/activity/HavenDownActivity;
.source "HavenDownActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/HavenDownActivity_$i;
    }
.end annotation


# static fields
.field public static final v:Ljava/lang/String; = "downloadTask"


# instance fields
.field private final t:Li3/c;

.field private final u:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/HavenDownActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity_;->t:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity_;->u:Ljava/util/Map;

    return-void
.end method

.method static synthetic J0(Lcom/join/mgps/activity/HavenDownActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/HavenDownActivity;->showLoding()V

    return-void
.end method

.method static synthetic K0(Lcom/join/mgps/activity/HavenDownActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/HavenDownActivity;->H0()V

    return-void
.end method

.method static synthetic L0(Lcom/join/mgps/activity/HavenDownActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/HavenDownActivity;->updateUi(Ljava/util/List;)V

    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/activity/HavenDownActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/HavenDownActivity;->E0()V

    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/activity/HavenDownActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/HavenDownActivity;->I0()V

    return-void
.end method

.method public static O0(Landroid/content/Context;)Lcom/join/mgps/activity/HavenDownActivity_$i;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/HavenDownActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HavenDownActivity_$i;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static P0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/HavenDownActivity_$i;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/HavenDownActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HavenDownActivity_$i;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity;->k:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/HavenDownActivity_;->injectExtras_()V

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

    iput-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    :cond_0
    return-void
.end method


# virtual methods
.method E0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/HavenDownActivity_$g;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/HavenDownActivity_$g;-><init>(Lcom/join/mgps/activity/HavenDownActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method H0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/HavenDownActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HavenDownActivity_$e;-><init>(Lcom/join/mgps/activity/HavenDownActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method I0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/HavenDownActivity_$h;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/HavenDownActivity_$h;-><init>(Lcom/join/mgps/activity/HavenDownActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity_;->u:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity_;->t:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HavenDownActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0049

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HavenDownActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f091056

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->a:Landroid/view/View;

    const v0, 0x7f090e5a

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->b:Landroid/view/View;

    const v0, 0x7f0903a2

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->c:Landroid/view/View;

    const v0, 0x7f0904f4

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->d:Landroid/view/View;

    const v0, 0x7f0908a7

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->e:Landroid/view/View;

    const v0, 0x7f09060b

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->f:Landroid/view/View;

    const v0, 0x7f0903a8

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0900e1

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f090cf2

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->i:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f09060d

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 12
    new-instance v1, Lcom/join/mgps/activity/HavenDownActivity_$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/HavenDownActivity_$a;-><init>(Lcom/join/mgps/activity/HavenDownActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 14
    new-instance v1, Lcom/join/mgps/activity/HavenDownActivity_$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/HavenDownActivity_$b;-><init>(Lcom/join/mgps/activity/HavenDownActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 15
    new-instance v0, Lcom/join/mgps/activity/HavenDownActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HavenDownActivity_$c;-><init>(Lcom/join/mgps/activity/HavenDownActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/HavenDownActivity;->afterviews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity_;->u:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity_;->t:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity_;->t:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity_;->t:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/HavenDownActivity_;->injectExtras_()V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/HavenDownActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HavenDownActivity_$d;-><init>(Lcom/join/mgps/activity/HavenDownActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateUi(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/HavenForumListbean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/HavenDownActivity_$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/HavenDownActivity_$f;-><init>(Lcom/join/mgps/activity/HavenDownActivity_;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
