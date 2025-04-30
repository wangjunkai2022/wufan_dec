.class public final Lcom/join/mgps/activity/CommentSelfListActivityv2_;
.super Lcom/join/mgps/activity/CommentSelfListActivityv2;
.source "CommentSelfListActivityv2_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/CommentSelfListActivityv2_$k;
    }
.end annotation


# instance fields
.field private final q:Li3/c;

.field private final r:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2_;->q:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2_;->r:Ljava/util/Map;

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/activity/CommentSelfListActivityv2_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->D0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/activity/CommentSelfListActivityv2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->M0()V

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/CommentSelfListActivityv2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->U0()V

    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/activity/CommentSelfListActivityv2_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->F0(I)V

    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/activity/CommentSelfListActivityv2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->S0()V

    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/activity/CommentSelfListActivityv2_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/activity/CommentSelfListActivityv2_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->I0(I)V

    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/activity/CommentSelfListActivityv2_;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->N0(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/activity/CommentSelfListActivityv2_;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->G0(ILjava/lang/String;I)V

    return-void
.end method

.method public static f1(Landroid/content/Context;)Lcom/join/mgps/activity/CommentSelfListActivityv2_$k;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentSelfListActivityv2_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2_$k;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static g1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/CommentSelfListActivityv2_$k;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentSelfListActivityv2_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2_$k;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->i:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method


# virtual methods
.method D0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentSelfListActivityv2_$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2_$c;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method F0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentSelfListActivityv2_$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2_$f;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method G0(ILjava/lang/String;I)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/activity/CommentSelfListActivityv2_$a;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/CommentSelfListActivityv2_$a;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2_;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method I0(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/CommentSelfListActivityv2_$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/CommentSelfListActivityv2_$i;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method M0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentSelfListActivityv2_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2_$d;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method N0(ILjava/lang/String;I)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/activity/CommentSelfListActivityv2_$j;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/CommentSelfListActivityv2_$j;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2_;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method S0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentSelfListActivityv2_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2_$g;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method U0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentSelfListActivityv2_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2_$e;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2_;->r:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2_;->q:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c002b

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090088

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f09013e

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->b:Landroid/widget/ImageView;

    const v0, 0x7f09052c

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->c:Landroid/widget/TextView;

    const v0, 0x7f0908a2

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->d:Landroid/widget/TextView;

    const v0, 0x7f0908e7

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->e:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f090986

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/ForumLoadingView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    const v0, 0x7f0909e2

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->g:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 9
    new-instance v0, Lcom/join/mgps/activity/CommentSelfListActivityv2_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2_$b;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2_;->r:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2_;->q:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2_;->q:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2_;->q:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentSelfListActivityv2_$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2_$h;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
