.class public final Lcom/join/mgps/activity/SearchHintActivity_;
.super Lcom/join/mgps/activity/SearchHintActivity;
.source "SearchHintActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/SearchHintActivity_$y;
    }
.end annotation


# static fields
.field public static final M0:Ljava/lang/String; = "keyword"

.field public static final N0:Ljava/lang/String; = "from"

.field public static final O0:Ljava/lang/String; = "keywords"

.field public static final P0:Ljava/lang/String; = "interval"


# instance fields
.field private final K0:Li3/c;

.field private final L0:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchHintActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity_;->K0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity_;->L0:Ljava/util/Map;

    return-void
.end method

.method static synthetic A1(Lcom/join/mgps/activity/SearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SearchHintActivity;->r1()V

    return-void
.end method

.method static synthetic B1(Lcom/join/mgps/activity/SearchHintActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->I0(I)V

    return-void
.end method

.method static synthetic C1(Lcom/join/mgps/activity/SearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SearchHintActivity;->z1()V

    return-void
.end method

.method static synthetic D1(Lcom/join/mgps/activity/SearchHintActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->m1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic E1(Lcom/join/mgps/activity/SearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SearchHintActivity;->d1()V

    return-void
.end method

.method static synthetic F1(Lcom/join/mgps/activity/SearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SearchHintActivity;->P0()V

    return-void
.end method

.method static synthetic G1(Lcom/join/mgps/activity/SearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SearchHintActivity;->K0()V

    return-void
.end method

.method static synthetic H1(Lcom/join/mgps/activity/SearchHintActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->O0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic I1(Lcom/join/mgps/activity/SearchHintActivity_;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/SearchHintActivity;->U0(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic J1(Lcom/join/mgps/activity/SearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SearchHintActivity;->R0()V

    return-void
.end method

.method static synthetic K1(Lcom/join/mgps/activity/SearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SearchHintActivity;->p1()V

    return-void
.end method

.method static synthetic L1(Lcom/join/mgps/activity/SearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SearchHintActivity;->q1()V

    return-void
.end method

.method static synthetic M1(Lcom/join/mgps/activity/SearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SearchHintActivity;->s1()V

    return-void
.end method

.method static synthetic N1(Lcom/join/mgps/activity/SearchHintActivity_;Lcom/join/mgps/activity/search/SearchIndexData;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->w1(Lcom/join/mgps/activity/search/SearchIndexData;)V

    return-void
.end method

.method static synthetic O1(Lcom/join/mgps/activity/SearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SearchHintActivity;->h1()V

    return-void
.end method

.method static synthetic P1(Lcom/join/mgps/activity/SearchHintActivity_;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/SearchHintActivity;->y1(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic Q1(Lcom/join/mgps/activity/SearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SearchHintActivity;->serverConnectionException()V

    return-void
.end method

.method static synthetic R1(Lcom/join/mgps/activity/SearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SearchHintActivity;->g1()V

    return-void
.end method

.method public static S1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$y;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity_$y;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchHintActivity_$y;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static T1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/SearchHintActivity_$y;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity_$y;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchHintActivity_$y;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->w0:Lcom/join/mgps/pref/PrefDef_;

    .line 3
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    const v0, 0x7f110207

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->K:Ljava/lang/String;

    const v0, 0x7f1100aa

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->n0:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchHintActivity_;->injectExtras_()V

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

    const-string v1, "keyword"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->a:Ljava/lang/String;

    :cond_0
    const-string v1, "from"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->b:I

    :cond_1
    const-string v1, "keywords"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->c:Ljava/util/ArrayList;

    :cond_2
    const-string v1, "interval"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->d:I

    :cond_3
    return-void
.end method


# virtual methods
.method I0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity_$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SearchHintActivity_$h;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method K0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/SearchHintActivity_$m;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/SearchHintActivity_$m;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method O0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/SearchHintActivity_$n;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/SearchHintActivity_$n;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method P0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/SearchHintActivity_$l;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/SearchHintActivity_$l;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method R0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/SearchHintActivity_$p;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/SearchHintActivity_$p;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method U0(Ljava/lang/String;I)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/SearchHintActivity_$o;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/SearchHintActivity_$o;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method d1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/SearchHintActivity_$j;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/SearchHintActivity_$j;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method g1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchHintActivity_$g;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity_;->L0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method h1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchHintActivity_$d;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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

.method m1(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/SearchHintActivity_$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/SearchHintActivity_$i;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity_;->K0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c056f

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f090986

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/ForumLoadingView;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    const v0, 0x7f090d1e

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->f:Landroid/view/View;

    const v0, 0x7f09125d

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->g:Landroid/widget/ViewFlipper;

    const v0, 0x7f090dd9

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    const v0, 0x7f09074a

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->j:Landroid/widget/ImageView;

    const v0, 0x7f090dd7

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->k:Landroid/widget/ImageView;

    const v0, 0x7f09073f

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->l:Landroid/view/View;

    const v0, 0x7f09027e

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->m:Landroid/widget/LinearLayout;

    const v0, 0x7f090ce9

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->n:Landroid/view/View;

    const v0, 0x7f0912dd

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/WrapContentGridView;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->o:Lcom/join/mgps/customview/WrapContentGridView;

    const v0, 0x7f090568

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/WrapContentGridView;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->p:Lcom/join/mgps/customview/WrapContentGridView;

    const v0, 0x7f0904e2

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/FlowLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->q:Lcom/join/mgps/customview/FlowLayout;

    const v0, 0x7f0908f8

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->r:Landroid/view/View;

    const v0, 0x7f0908fa

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->s:Landroid/view/View;

    const v0, 0x7f0908f6

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->t:Landroid/view/View;

    const v0, 0x7f09090a

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->u:Landroid/view/View;

    const v0, 0x7f09008e

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->v:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f091280

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->w:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f090f0d

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->x:Lcom/google/android/material/tabs/TabLayout;

    const v0, 0x7f090658

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/FlowLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->y:Lcom/join/mgps/customview/FlowLayout;

    const v0, 0x7f09062a

    .line 21
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/FlowLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->z:Lcom/join/mgps/customview/FlowLayout;

    const v0, 0x7f09062b

    .line 22
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->A:Landroid/view/View;

    const v0, 0x7f090122

    .line 23
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->B:Landroid/widget/ListView;

    const v0, 0x7f091173

    .line 24
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09027c

    .line 25
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->k:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 27
    new-instance v2, Lcom/join/mgps/activity/SearchHintActivity_$k;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/SearchHintActivity_$k;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->j:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 29
    new-instance v2, Lcom/join/mgps/activity/SearchHintActivity_$q;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/SearchHintActivity_$q;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 30
    new-instance v1, Lcom/join/mgps/activity/SearchHintActivity_$r;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchHintActivity_$r;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->l:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 32
    new-instance v1, Lcom/join/mgps/activity/SearchHintActivity_$s;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchHintActivity_$s;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 33
    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity_$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchHintActivity_$t;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    if-eqz p1, :cond_5

    .line 35
    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity_$u;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchHintActivity_$u;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 36
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->afterViews()V

    return-void
.end method

.method p1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity_$x;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchHintActivity_$x;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity_;->L0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method q1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchHintActivity_$a;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method r1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity_$v;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchHintActivity_$v;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x12c

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method s1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchHintActivity_$b;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method serverConnectionException()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchHintActivity_$f;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity_;->K0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity_;->K0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity_;->K0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchHintActivity_;->injectExtras_()V

    return-void
.end method

.method w1(Lcom/join/mgps/activity/search/SearchIndexData;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity_$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SearchHintActivity_$c;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;Lcom/join/mgps/activity/search/SearchIndexData;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method y1(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchAutoDataBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity_$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/SearchHintActivity_$e;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;Ljava/util/List;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method z1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity_$w;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchHintActivity_$w;-><init>(Lcom/join/mgps/activity/SearchHintActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
