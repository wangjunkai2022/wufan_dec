.class public final Lcom/join/mgps/activity/message/d;
.super Lcom/join/mgps/activity/message/c;
.source "MessagePriaceFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/message/d$v;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/message/c;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/message/d;->z:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/message/d;->B:Ljava/util/Map;

    return-void
.end method

.method public static A0()Lcom/join/mgps/activity/message/d$v;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$v;

    invoke-direct {v0}, Lcom/join/mgps/activity/message/d$v;-><init>()V

    return-object v0
.end method

.method static synthetic g0(Lcom/join/mgps/activity/message/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/c;->M()V

    return-void
.end method

.method static synthetic h0(Lcom/join/mgps/activity/message/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/c;->R()V

    return-void
.end method

.method static synthetic i0(Lcom/join/mgps/activity/message/d;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/message/c;->Z(I)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/message/c;->m:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method

.method static synthetic j0(Lcom/join/mgps/activity/message/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/c;->showLodingFailed()V

    return-void
.end method

.method static synthetic k0(Lcom/join/mgps/activity/message/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/message/c;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l0(Lcom/join/mgps/activity/message/d;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/message/c;->b0(Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V

    return-void
.end method

.method static synthetic m0(Lcom/join/mgps/activity/message/d;Lcom/join/mgps/dto/CommentResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/message/c;->U(Lcom/join/mgps/dto/CommentResponse;)V

    return-void
.end method

.method static synthetic n0(Lcom/join/mgps/activity/message/d;Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/message/c;->V(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    return-void
.end method

.method static synthetic o0(Lcom/join/mgps/activity/message/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/c;->Q()V

    return-void
.end method

.method static synthetic p0(Lcom/join/mgps/activity/message/d;Ljava/lang/String;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/message/c;->X(Ljava/lang/String;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V

    return-void
.end method

.method static synthetic q0(Lcom/join/mgps/activity/message/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/c;->P()V

    return-void
.end method

.method static synthetic r0(Lcom/join/mgps/activity/message/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/c;->f0()V

    return-void
.end method

.method static synthetic t0(Lcom/join/mgps/activity/message/d;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/message/c;->N(Ljava/util/List;)V

    return-void
.end method

.method static synthetic u0(Lcom/join/mgps/activity/message/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/c;->c0()V

    return-void
.end method

.method static synthetic v0(Lcom/join/mgps/activity/message/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/c;->W()V

    return-void
.end method

.method static synthetic w0(Lcom/join/mgps/activity/message/d;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/message/c;->T(Ljava/util/List;)V

    return-void
.end method

.method static synthetic x0(Lcom/join/mgps/activity/message/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/c;->d0()V

    return-void
.end method

.method static synthetic y0(Lcom/join/mgps/activity/message/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/c;->S()V

    return-void
.end method

.method static synthetic z0(Lcom/join/mgps/activity/message/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/c;->showLoding()V

    return-void
.end method


# virtual methods
.method M()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/d$o;-><init>(Lcom/join/mgps/activity/message/d;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method N(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/message/c$h;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$r;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/message/d$r;-><init>(Lcom/join/mgps/activity/message/d;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method P()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/message/d$m;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/message/d$m;-><init>(Lcom/join/mgps/activity/message/d;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Q()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/message/d$j;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/message/d$j;-><init>(Lcom/join/mgps/activity/message/d;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method R()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/d$d;-><init>(Lcom/join/mgps/activity/message/d;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method S()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/d$b;-><init>(Lcom/join/mgps/activity/message/d;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method T(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/message/c$h;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$u;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/message/d$u;-><init>(Lcom/join/mgps/activity/message/d;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method U(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/message/d$h;-><init>(Lcom/join/mgps/activity/message/d;Lcom/join/mgps/dto/CommentResponse;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method V(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$i;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/activity/message/d$i;-><init>(Lcom/join/mgps/activity/message/d;Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v0, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/d$t;-><init>(Lcom/join/mgps/activity/message/d;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method X(Ljava/lang/String;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/message/d$l;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/message/d$l;-><init>(Lcom/join/mgps/activity/message/d;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Z(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$p;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/message/d$p;-><init>(Lcom/join/mgps/activity/message/d;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method b0(Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/message/d$g;-><init>(Lcom/join/mgps/activity/message/d;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method c0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/d$s;-><init>(Lcom/join/mgps/activity/message/d;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method d0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/d$a;-><init>(Lcom/join/mgps/activity/message/d;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method f0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/d$q;-><init>(Lcom/join/mgps/activity/message/d;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/d;->B:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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
    iget-object v0, p0, Lcom/join/mgps/activity/message/d;->A:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/d;->z:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/message/d;->init_(Landroid/os/Bundle;)V

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

    iput-object p3, p0, Lcom/join/mgps/activity/message/d;->A:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c01fe

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/message/d;->A:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/message/d;->A:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/message/d;->A:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->a:Landroid/widget/LinearLayout;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->b:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->c:Lcom/join/mgps/customview/XListView2;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->e:Landroid/widget/LinearLayout;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->f:Landroid/widget/LinearLayout;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->g:Landroid/widget/LinearLayout;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->h:Landroid/widget/TextView;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->n:Landroid/widget/Button;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090ff3

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f090acb

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->b:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f0908e7

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->c:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f0909b5

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f090817

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f090cf9

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->h:Landroid/widget/TextView;

    const v0, 0x7f090e21

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/mgps/activity/message/c;->n:Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 9
    new-instance v0, Lcom/join/mgps/activity/message/d$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/d$k;-><init>(Lcom/join/mgps/activity/message/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->a:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    .line 11
    new-instance v0, Lcom/join/mgps/activity/message/d$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/d$n;-><init>(Lcom/join/mgps/activity/message/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/message/d;->z:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/d;->B:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/d$c;-><init>(Lcom/join/mgps/activity/message/d;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/d$e;-><init>(Lcom/join/mgps/activity/message/d;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/message/d$f;-><init>(Lcom/join/mgps/activity/message/d;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
