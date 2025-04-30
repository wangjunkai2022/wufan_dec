.class public final Lcom/join/mgps/activity/ForumTopicActivity_;
.super Lcom/join/mgps/activity/ForumTopicActivity;
.source "ForumTopicActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumTopicActivity_$m;
    }
.end annotation


# static fields
.field public static final s0:Ljava/lang/String; = "extBean"


# instance fields
.field private final q0:Li3/c;

.field private final r0:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity_;->q0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity_;->r0:Ljava/util/Map;

    return-void
.end method

.method static synthetic F1(Lcom/join/mgps/activity/ForumTopicActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic G1(Lcom/join/mgps/activity/ForumTopicActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->f1(I)V

    return-void
.end method

.method static synthetic H1(Lcom/join/mgps/activity/ForumTopicActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->y1()V

    return-void
.end method

.method static synthetic I1(Lcom/join/mgps/activity/ForumTopicActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->F0(I)V

    return-void
.end method

.method static synthetic J1(Lcom/join/mgps/activity/ForumTopicActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->m1()V

    return-void
.end method

.method static synthetic K1(Lcom/join/mgps/activity/ForumTopicActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->X0()V

    return-void
.end method

.method static synthetic L1(Lcom/join/mgps/activity/ForumTopicActivity_;Landroid/widget/AbsListView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumTopicActivity;->E1(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method static synthetic M1(Lcom/join/mgps/activity/ForumTopicActivity_;Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/ForumTopicActivity;->D1(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method static synthetic N1(Lcom/join/mgps/activity/ForumTopicActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->u1()V

    return-void
.end method

.method static synthetic O1(Lcom/join/mgps/activity/ForumTopicActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic P1(Lcom/join/mgps/activity/ForumTopicActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->U0(I)V

    return-void
.end method

.method public static Q1(Landroid/content/Context;)Lcom/join/mgps/activity/ForumTopicActivity_$m;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumTopicActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumTopicActivity_$m;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static R1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ForumTopicActivity_$m;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumTopicActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumTopicActivity_$m;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity_;->injectExtras_()V

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

    const-string v1, "extBean"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->j:Lcom/join/mgps/dto/ExtBean;

    :cond_0
    return-void
.end method


# virtual methods
.method D1(Landroid/widget/AbsListView;III)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumTopicActivity_$k;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumTopicActivity_$k;-><init>(Lcom/join/mgps/activity/ForumTopicActivity_;Landroid/widget/AbsListView;III)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v6, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method E1(Landroid/widget/AbsListView;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumTopicActivity_$j;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ForumTopicActivity_$j;-><init>(Lcom/join/mgps/activity/ForumTopicActivity_;Landroid/widget/AbsListView;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method F0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumTopicActivity_$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity_$g;-><init>(Lcom/join/mgps/activity/ForumTopicActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method U0(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ForumTopicActivity_$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumTopicActivity_$b;-><init>(Lcom/join/mgps/activity/ForumTopicActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method X0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumTopicActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumTopicActivity_$i;-><init>(Lcom/join/mgps/activity/ForumTopicActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method f1(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ForumTopicActivity_$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumTopicActivity_$c;-><init>(Lcom/join/mgps/activity/ForumTopicActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity_;->r0:Ljava/util/Map;

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

.method m1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumTopicActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumTopicActivity_$h;-><init>(Lcom/join/mgps/activity/ForumTopicActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity_;->q0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0406

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090088

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->b:Landroid/widget/RelativeLayout;

    const v0, 0x7f0908a2

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f090169

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->d:Landroid/view/View;

    const v0, 0x7f090986

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/ForumLoadingView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    const v0, 0x7f0908e1

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->f:Lcom/join/mgps/customview/XListView;

    const v0, 0x7f091262

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->u:Landroid/widget/FrameLayout;

    const v0, 0x7f091264

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->v:Landroid/widget/RelativeLayout;

    const v0, 0x7f09125f

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/video/MyVideoView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    const v0, 0x7f090311

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->x:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090c1b

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->y:Landroid/widget/ImageView;

    const v0, 0x7f090983

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->z:Landroid/widget/LinearLayout;

    const v0, 0x7f09013e

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13
    new-instance v0, Lcom/join/mgps/activity/ForumTopicActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumTopicActivity_$d;-><init>(Lcom/join/mgps/activity/ForumTopicActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity_;->r0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity_;->q0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity_;->q0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity_;->q0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity_;->injectExtras_()V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumTopicActivity_$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity_$a;-><init>(Lcom/join/mgps/activity/ForumTopicActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumTopicActivity_$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity_$e;-><init>(Lcom/join/mgps/activity/ForumTopicActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method u1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumTopicActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumTopicActivity_$l;-><init>(Lcom/join/mgps/activity/ForumTopicActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method y1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumTopicActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumTopicActivity_$f;-><init>(Lcom/join/mgps/activity/ForumTopicActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
