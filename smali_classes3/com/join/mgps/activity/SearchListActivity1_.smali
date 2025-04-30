.class public final Lcom/join/mgps/activity/SearchListActivity1_;
.super Lcom/join/mgps/activity/SearchListActivity1;
.source "SearchListActivity1_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/SearchListActivity1_$o;
    }
.end annotation


# static fields
.field public static final I:Ljava/lang/String; = "currentTab"

.field public static final J:Ljava/lang/String; = "game_id"

.field public static final K:Ljava/lang/String; = "keyword"

.field public static final n0:Ljava/lang/String; = "isNeedRecommend"


# instance fields
.field private final G:Li3/c;

.field private final H:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchListActivity1;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1_;->G:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1_;->H:Ljava/util/Map;

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchListActivity1_;->injectExtras_()V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "currentTab"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->m:I

    :cond_0
    const-string v1, "game_id"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->n:Ljava/lang/String;

    :cond_1
    const-string v1, "keyword"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->o:Ljava/lang/String;

    :cond_2
    const-string v1, "isNeedRecommend"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->p:Z

    :cond_3
    return-void
.end method

.method static synthetic k1(Lcom/join/mgps/activity/SearchListActivity1_;Lcom/join/mgps/dto/ClassfyTypeBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->c1(Lcom/join/mgps/dto/ClassfyTypeBean;)V

    return-void
.end method

.method static synthetic l1(Lcom/join/mgps/activity/SearchListActivity1_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->h1(I)V

    return-void
.end method

.method static synthetic m1(Lcom/join/mgps/activity/SearchListActivity1_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->P0(Z)V

    return-void
.end method

.method static synthetic n1(Lcom/join/mgps/activity/SearchListActivity1_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->F0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o1(Lcom/join/mgps/activity/SearchListActivity1_;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/SearchListActivity1;->j1(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic p1(Lcom/join/mgps/activity/SearchListActivity1_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SearchListActivity1;->W0()V

    return-void
.end method

.method static synthetic q1(Lcom/join/mgps/activity/SearchListActivity1_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SearchListActivity1;->a1()V

    return-void
.end method

.method static synthetic r1(Lcom/join/mgps/activity/SearchListActivity1_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public static s1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchListActivity1_$o;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchListActivity1_$o;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static t1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/SearchListActivity1_$o;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchListActivity1_$o;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method F0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1_$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SearchListActivity1_$a;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method N0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/SearchListActivity1_$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/SearchListActivity1_$e;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method P0(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1_$n;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SearchListActivity1_$n;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/SearchListActivity1_$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/SearchListActivity1_$c;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method a1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/SearchListActivity1_$d;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/SearchListActivity1_$d;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method c1(Lcom/join/mgps/dto/ClassfyTypeBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1_$l;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SearchListActivity1_$l;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;Lcom/join/mgps/dto/ClassfyTypeBean;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1_;->H:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method h1(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1_$m;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SearchListActivity1_$m;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
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

.method j1(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchAutoDataBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1_$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/SearchListActivity1_$b;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;Ljava/util/List;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1_;->G:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0573

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 4

    const v0, 0x7f09027b

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->a:Landroid/view/View;

    const v0, 0x7f090f1b

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->b:Landroid/view/View;

    const v0, 0x7f09085a

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhy/view/flowlayout/TagFlowLayout3;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->c:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    const v0, 0x7f090271

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhy/view/flowlayout/TagFlowLayout3;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->d:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    const v0, 0x7f090766

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->e:Landroid/widget/EditText;

    const v0, 0x7f090f0d

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->f:Lcom/google/android/material/tabs/TabLayout;

    const v0, 0x7f091280

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->g:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f090122

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->h:Landroid/widget/ListView;

    const v0, 0x7f0907f9

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->i:Landroid/widget/ImageView;

    const v0, 0x7f090929

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f09012c

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090dd4

    .line 12
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0910fc

    .line 13
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0910fd

    .line 14
    invoke-interface {p1, v3}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 15
    new-instance v3, Lcom/join/mgps/activity/SearchListActivity1_$f;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/SearchListActivity1_$f;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 16
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchListActivity1_$g;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 18
    new-instance v1, Lcom/join/mgps/activity/SearchListActivity1_$h;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchListActivity1_$h;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 20
    new-instance v1, Lcom/join/mgps/activity/SearchListActivity1_$i;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchListActivity1_$i;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v2, :cond_4

    .line 21
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchListActivity1_$j;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 22
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchListActivity1_$k;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchListActivity1;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1_;->H:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1_;->G:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1_;->G:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1_;->G:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchListActivity1_;->injectExtras_()V

    return-void
.end method
