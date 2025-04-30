.class public final Lcom/join/mgps/fragment/v1;
.super Lcom/join/mgps/fragment/u1;
.source "FriendFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/v1$f0;
    }
.end annotation


# instance fields
.field private final D:Li3/c;

.field private E:Landroid/view/View;

.field private final F:Ljava/util/Map;
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

.field private final G:Landroid/content/IntentFilter;

.field private final H:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/u1;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/v1;->D:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/v1;->F:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/v1;->G:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/fragment/v1$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/v1$k;-><init>(Lcom/join/mgps/fragment/v1;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/v1;->H:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/fragment/v1;Lcom/join/mgps/dto/FriendAccountInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/u1;->a1(Lcom/join/mgps/dto/FriendAccountInfo;)V

    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/fragment/v1;Lcom/wufan/friend/chat/protocol/g;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/u1;->I0(Lcom/wufan/friend/chat/protocol/g;)V

    return-void
.end method

.method static synthetic f1(Lcom/join/mgps/fragment/v1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/u1;->Y0()V

    return-void
.end method

.method static synthetic g1(Lcom/join/mgps/fragment/v1;Lcom/wufan/friend/chat/protocol/x;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/u1;->K0(Lcom/wufan/friend/chat/protocol/x;)V

    return-void
.end method

.method static synthetic h1(Lcom/join/mgps/fragment/v1;Lcom/wufan/friend/chat/protocol/x;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/u1;->Z0(Lcom/wufan/friend/chat/protocol/x;)V

    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/fragment/v1;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/u1;->S0(I)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/v1;->G:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.action_login_success"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j1(Lcom/join/mgps/fragment/v1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/u1;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k1(Lcom/join/mgps/fragment/v1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/u1;->V0()V

    return-void
.end method

.method static synthetic l1(Lcom/join/mgps/fragment/v1;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/u1;->a0(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic m1(Lcom/join/mgps/fragment/v1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/u1;->o0()V

    return-void
.end method

.method static synthetic n1(Lcom/join/mgps/fragment/v1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/u1;->p0()V

    return-void
.end method

.method static synthetic o1(Lcom/join/mgps/fragment/v1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/u1;->q0()V

    return-void
.end method

.method static synthetic p1(Lcom/join/mgps/fragment/v1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/u1;->n0()V

    return-void
.end method

.method static synthetic q1(Lcom/join/mgps/fragment/v1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/u1;->b1()V

    return-void
.end method

.method static synthetic r1(Lcom/join/mgps/fragment/v1;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/u1;->Z(I)V

    return-void
.end method

.method static synthetic s1(Lcom/join/mgps/fragment/v1;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/u1;->R0(I)V

    return-void
.end method

.method static synthetic t1(Lcom/join/mgps/fragment/v1;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/u1;->updateUi(Ljava/util/List;)V

    return-void
.end method

.method static synthetic u1(Lcom/join/mgps/fragment/v1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/u1;->F0()V

    return-void
.end method

.method static synthetic v1(Lcom/join/mgps/fragment/v1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/u1;->X0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic w1(Lcom/join/mgps/fragment/v1;Lcom/wufan/friend/chat/protocol/v;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/u1;->J0(Lcom/wufan/friend/chat/protocol/v;)V

    return-void
.end method

.method static synthetic x1(Lcom/join/mgps/fragment/v1;Lcom/wufan/friend/chat/protocol/e;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/u1;->H0(Lcom/wufan/friend/chat/protocol/e;)V

    return-void
.end method

.method static synthetic y1(Lcom/join/mgps/fragment/v1;Lcom/wufan/friend/chat/protocol/l1;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/u1;->L0(Lcom/wufan/friend/chat/protocol/l1;)V

    return-void
.end method

.method public static z1()Lcom/join/mgps/fragment/v1$f0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v1$f0;

    invoke-direct {v0}, Lcom/join/mgps/fragment/v1$f0;-><init>()V

    return-object v0
.end method


# virtual methods
.method F0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v1$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/v1$f;-><init>(Lcom/join/mgps/fragment/v1;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method H0(Lcom/wufan/friend/chat/protocol/e;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v1$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/v1$i;-><init>(Lcom/join/mgps/fragment/v1;Lcom/wufan/friend/chat/protocol/e;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method I0(Lcom/wufan/friend/chat/protocol/g;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v1$l;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/v1$l;-><init>(Lcom/join/mgps/fragment/v1;Lcom/wufan/friend/chat/protocol/g;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method J0(Lcom/wufan/friend/chat/protocol/v;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v1$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/v1$h;-><init>(Lcom/join/mgps/fragment/v1;Lcom/wufan/friend/chat/protocol/v;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method K0(Lcom/wufan/friend/chat/protocol/x;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v1$m;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/v1$m;-><init>(Lcom/join/mgps/fragment/v1;Lcom/wufan/friend/chat/protocol/x;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method L0(Lcom/wufan/friend/chat/protocol/l1;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v1$j;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/v1$j;-><init>(Lcom/join/mgps/fragment/v1;Lcom/wufan/friend/chat/protocol/l1;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method R0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v1$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/v1$d;-><init>(Lcom/join/mgps/fragment/v1;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method S0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v1$o;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/v1$o;-><init>(Lcom/join/mgps/fragment/v1;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method V0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v1$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/v1$q;-><init>(Lcom/join/mgps/fragment/v1;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method X0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v1$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/v1$g;-><init>(Lcom/join/mgps/fragment/v1;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Y0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v1$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/v1$b;-><init>(Lcom/join/mgps/fragment/v1;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Z(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/v1$x;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/v1$x;-><init>(Lcom/join/mgps/fragment/v1;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Z0(Lcom/wufan/friend/chat/protocol/x;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v1$n;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/v1$n;-><init>(Lcom/join/mgps/fragment/v1;Lcom/wufan/friend/chat/protocol/x;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method a0(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v1$r;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/v1$r;-><init>(Lcom/join/mgps/fragment/v1;Ljava/lang/Boolean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method a1(Lcom/join/mgps/dto/FriendAccountInfo;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v1$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/v1$a;-><init>(Lcom/join/mgps/fragment/v1;Lcom/join/mgps/dto/FriendAccountInfo;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method b1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v1$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/v1$c;-><init>(Lcom/join/mgps/fragment/v1;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/v1;->F:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/v1;->E:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method n0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/v1$w;

    const-string v2, ""

    const-wide/16 v3, 0xc8

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/v1$w;-><init>(Lcom/join/mgps/fragment/v1;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method o0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/v1$s;

    const-string v2, ""

    const-wide/16 v3, 0x64

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/v1$s;-><init>(Lcom/join/mgps/fragment/v1;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v1;->D:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/v1;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/u1;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/fragment/v1;->H:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/fragment/v1;->G:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/fragment/v1;->E:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c0209

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/v1;->E:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/v1;->E:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/v1;->H:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/fragment/u1;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/v1;->E:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->b:Landroid/widget/TextView;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->c:Landroid/widget/TextView;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->d:Landroid/widget/TextView;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/widget/TextView;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->f:Landroid/view/View;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->g:Landroid/view/View;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->h:Landroid/view/View;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->i:Landroid/view/View;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->j:Landroid/view/View;

    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->k:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 4

    const v0, 0x7f090126

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090b0c

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->b:Landroid/widget/TextView;

    const v0, 0x7f091213

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->c:Landroid/widget/TextView;

    const v0, 0x7f090b77

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->d:Landroid/widget/TextView;

    const v0, 0x7f090a99

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/widget/TextView;

    const v0, 0x7f090685

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->f:Landroid/view/View;

    const v0, 0x7f090a98

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->g:Landroid/view/View;

    const v0, 0x7f090b1b

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->h:Landroid/view/View;

    const v0, 0x7f090dda

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->i:Landroid/view/View;

    const v0, 0x7f090b78

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->j:Landroid/view/View;

    const v0, 0x7f090cf3

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->k:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090c9d

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0912cd

    .line 13
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09077c

    .line 14
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 15
    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->i:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 16
    new-instance v3, Lcom/join/mgps/fragment/v1$v;

    invoke-direct {v3, p0}, Lcom/join/mgps/fragment/v1$v;-><init>(Lcom/join/mgps/fragment/v1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->j:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 18
    new-instance v3, Lcom/join/mgps/fragment/v1$y;

    invoke-direct {v3, p0}, Lcom/join/mgps/fragment/v1$y;-><init>(Lcom/join/mgps/fragment/v1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 20
    new-instance v3, Lcom/join/mgps/fragment/v1$z;

    invoke-direct {v3, p0}, Lcom/join/mgps/fragment/v1$z;-><init>(Lcom/join/mgps/fragment/v1;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->g:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 22
    new-instance v3, Lcom/join/mgps/fragment/v1$a0;

    invoke-direct {v3, p0}, Lcom/join/mgps/fragment/v1$a0;-><init>(Lcom/join/mgps/fragment/v1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v2, :cond_4

    .line 24
    new-instance v3, Lcom/join/mgps/fragment/v1$b0;

    invoke-direct {v3, p0}, Lcom/join/mgps/fragment/v1$b0;-><init>(Lcom/join/mgps/fragment/v1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz v0, :cond_5

    .line 25
    new-instance v2, Lcom/join/mgps/fragment/v1$c0;

    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/v1$c0;-><init>(Lcom/join/mgps/fragment/v1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz v1, :cond_6

    .line 26
    new-instance v0, Lcom/join/mgps/fragment/v1$d0;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/v1$d0;-><init>(Lcom/join/mgps/fragment/v1;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    if-eqz p1, :cond_7

    .line 27
    new-instance v0, Lcom/join/mgps/fragment/v1$e0;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/v1$e0;-><init>(Lcom/join/mgps/fragment/v1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/v1;->D:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method p0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/v1$t;

    const-string v2, ""

    const-wide/16 v3, 0xc8

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/v1$t;-><init>(Lcom/join/mgps/fragment/v1;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/v1;->F:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method q0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/v1$u;

    const-string v2, ""

    const-wide/16 v3, 0xc8

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/v1$u;-><init>(Lcom/join/mgps/fragment/v1;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v1$p;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/v1$p;-><init>(Lcom/join/mgps/fragment/v1;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateUi(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v1$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/v1$e;-><init>(Lcom/join/mgps/fragment/v1;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
