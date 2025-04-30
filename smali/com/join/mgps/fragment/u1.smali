.class public Lcom/join/mgps/fragment/u1;
.super Lcom/join/mgps/fragment/d;
.source "FriendFragment.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0209
.end annotation


# instance fields
.field A:Landroid/widget/ImageView;

.field B:Landroid/widget/ImageView;

.field C:Landroid/widget/TextView;

.field a:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

.field m:Lcom/wufan/friend/chat/c;

.field n:Lcom/join/mgps/dto/AccountBean;

.field private o:Lcom/join/mgps/adapter/l0;

.field p:Lcom/join/mgps/rpc/i;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field t:Ljava/lang/String;

.field private u:Lcom/join/mgps/dto/FriendAccountInfo;

.field private v:I

.field w:Z

.field x:Landroid/app/Dialog;

.field y:Landroid/content/ClipboardManager;

.field z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/d;-><init>()V

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/wufan/friend/chat/c;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->r:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->s:Ljava/util/List;

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/fragment/u1;->v:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/fragment/u1;->w:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->x:Landroid/app/Dialog;

    return-void
.end method

.method private synthetic A0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->d0()V

    return-void
.end method

.method private synthetic B0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->E0()V

    return-void
.end method

.method private synthetic C0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->Q0()V

    return-void
.end method

.method private static synthetic D0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    return-void
.end method

.method public static synthetic M(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/join/mgps/fragment/u1;->D0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic N(Lcom/join/mgps/fragment/u1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/u1;->B0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic O(Lcom/join/mgps/fragment/u1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/u1;->v0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic P(Lcom/join/mgps/fragment/u1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/u1;->A0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q(Lcom/join/mgps/fragment/u1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/u1;->x0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R(Lcom/join/mgps/fragment/u1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/u1;->w0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S(Lcom/join/mgps/fragment/u1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/u1;->y0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic U(Lcom/join/mgps/fragment/u1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/u1;->C0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic V(Lcom/join/mgps/fragment/u1;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/mgps/fragment/u1;->z0()V

    return-void
.end method

.method public static synthetic W(Lcom/join/mgps/fragment/u1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/u1;->u0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic X(Lcom/join/mgps/fragment/u1;)Lcom/join/mgps/adapter/l0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    return-object p0
.end method

.method private e0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/fragment/u1;->w:Z

    return-void
.end method

.method private g0(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->y:Landroid/content/ClipboardManager;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private h0()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/c;->m(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i0(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    .line 3
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 8
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 9
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private synthetic u0(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->x:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic v0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/u1;->U0(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->x:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic w0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/u1;->U0(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->x:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic x0(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/u1;->S0(I)V

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/c;->U(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->l:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->dismiss()V

    return-void
.end method

.method private synthetic y0(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/u1;->S0(I)V

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/c;->U(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->l:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->dismiss()V

    return-void
.end method

.method private synthetic z0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method


# virtual methods
.method E0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/activity/FriendActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/FriendActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/FriendActivity;->W0(I)V

    :cond_0
    return-void
.end method

.method F0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/l0;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/FriendBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendBean;->isRecommend()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/l0;->p()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/l0;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/l0;->o()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {v1}, Lcom/join/mgps/adapter/l0;->p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/l0;->K()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public G0(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/u1;->r:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->s:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->s:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->p0()V

    return-void
.end method

.method H0(Lcom/wufan/friend/chat/protocol/e;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/e;->N()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/l0;->E(I)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/e;->C1()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/r;

    .line 4
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/u1;->j0(Lcom/wufan/friend/chat/protocol/r;)Lcom/join/mgps/dto/FriendBean;

    move-result-object v2

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setState(I)V

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {v1}, Lcom/join/mgps/adapter/l0;->p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/e;->S0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/r;

    .line 9
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/u1;->j0(Lcom/wufan/friend/chat/protocol/r;)Lcom/join/mgps/dto/FriendBean;

    move-result-object v1

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setState(I)V

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/l0;->o()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/l0;->o()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method I0(Lcom/wufan/friend/chat/protocol/g;)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/g;->N()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/l0;->E(I)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/g;->N0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/r;

    .line 5
    new-instance v2, Lcom/join/mgps/dto/FriendBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/FriendBean;-><init>()V

    .line 6
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/r;->getAccount()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/a;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setNickName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/r;->getAccount()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/a;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setAvatar(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/r;->getAccount()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/a;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setUid(I)V

    .line 9
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/r;->getAccount()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/a;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setLevel(I)V

    .line 10
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/r;->getAccount()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/a;->getVip()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setVip(Z)V

    .line 11
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/r;->getAccount()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/a;->z()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setBanned(Z)V

    .line 12
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/r;->getState()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/r;->getState()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/d1;->getGameId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/r;->getState()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/d1;->getGameName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setGameName(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/r;->getState()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/d1;->f()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/FriendBean;->setRoomId(I)V

    .line 16
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/r;->getState()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/d1;->getRoomType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setRoomType(I)V

    .line 17
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/r;->getState()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/d1;->s0()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/FriendBean;->setPlayType(I)V

    .line 18
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/l0;->o()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_3

    .line 21
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/l0;->o()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method J0(Lcom/wufan/friend/chat/protocol/v;)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/v;->g()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/v;->g()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/adapter/l0;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/FriendBean;

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    move-result v3

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/a;->d()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/v;->getState()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, ""

    if-eqz v0, :cond_2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/v;->getState()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/d1;->getGameId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/v;->getState()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/d1;->getGameName()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/v;->getState()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/d1;->f()J

    move-result-wide v4

    long-to-int v1, v4

    .line 12
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/v;->getState()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/d1;->s0()I

    move-result v4

    .line 13
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/v;->getState()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/d1;->getRoomType()I

    move-result p1

    goto :goto_0

    :cond_2
    move-object v0, v3

    const/4 p1, 0x0

    const/4 v4, 0x0

    .line 14
    :goto_0
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/FriendBean;->setGameName(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/FriendBean;->setRoomId(I)V

    .line 17
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/FriendBean;->setPlayType(I)V

    .line 18
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/FriendBean;->setRoomType(I)V

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    :goto_1
    return-void
.end method

.method K0(Lcom/wufan/friend/chat/protocol/x;)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_8

    .line 1
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x;->g()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x;->g()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/a;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x;->getState()Lcom/wufan/friend/chat/protocol/OnlineState;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/FriendAccountInfo;->setOnLineStatus(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendAccountInfo;->getOnLineStatus()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ONLINE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/u1;->S0(I)V

    :cond_1
    return-void

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    if-eqz v1, :cond_8

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/adapter/l0;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 9
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/FriendBean;

    .line 11
    invoke-virtual {v4}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    move-result v5

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/a;->d()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/a;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/FriendBean;->setNickName(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/a;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/FriendBean;->setAvatar(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/a;->d()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/FriendBean;->setUid(I)V

    .line 15
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/a;->h()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/FriendBean;->setLevel(I)V

    .line 16
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/a;->z()Z

    move-result v1

    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/FriendBean;->setBanned(Z)V

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x;->n()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x;->n()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/d1;->getGameId()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x;->n()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/d1;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/FriendBean;->setGameName(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x;->n()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/d1;->f()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/FriendBean;->setRoomId(I)V

    .line 21
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x;->n()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/d1;->getRoomType()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/FriendBean;->setRoomType(I)V

    .line 22
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x;->n()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/d1;->s0()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/FriendBean;->setPlayType(I)V

    goto :goto_0

    .line 23
    :cond_4
    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/FriendBean;->setGameName(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 25
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/FriendBean;->setRoomId(I)V

    .line 26
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/FriendBean;->setRoomType(I)V

    .line 27
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/FriendBean;->setPlayType(I)V

    .line 28
    :goto_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x;->getStateValue()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/FriendBean;->setState(I)V

    move-object v2, v4

    :cond_5
    if-nez v2, :cond_7

    .line 29
    new-instance v1, Lcom/join/mgps/dto/FriendBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/FriendBean;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x;->getStateValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setState(I)V

    .line 31
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/a;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setNickName(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/a;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setAvatar(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/a;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setUid(I)V

    .line 34
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/a;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setLevel(I)V

    .line 35
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/a;->z()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendBean;->setBanned(Z)V

    .line 36
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x;->n()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x;->n()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/d1;->getGameId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x;->n()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/d1;->getGameName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendBean;->setGameName(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x;->n()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/d1;->f()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendBean;->setRoomId(I)V

    .line 40
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x;->n()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/d1;->getRoomType()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendBean;->setRoomType(I)V

    .line 41
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x;->n()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/d1;->s0()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendBean;->setPlayType(I)V

    .line 42
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/l0;->o()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/l0;->n()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/l0;->E(I)V

    .line 44
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/l0;->K()V

    .line 45
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_8
    :goto_1
    return-void
.end method

.method L0(Lcom/wufan/friend/chat/protocol/l1;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/l1;->H1()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/j1;

    .line 3
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/u1;->l0(Lcom/wufan/friend/chat/protocol/j1;)Lcom/join/mgps/dto/FriendBean;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setState(I)V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->updateUi(Ljava/util/List;)V

    return-void
.end method

.method M0()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->l:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0536

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->a(Landroid/app/Activity;Landroid/view/View;)Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->e(Z)Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->b()Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/u1;->l:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    const v1, 0x7f090b74

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/fragment/n1;

    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/n1;-><init>(Lcom/join/mgps/fragment/u1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090b29

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/fragment/p1;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/p1;-><init>(Lcom/join/mgps/fragment/u1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->l:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    new-instance v1, Lcom/join/mgps/fragment/t1;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/t1;-><init>(Lcom/join/mgps/fragment/u1;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->l:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0711b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->l:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071107

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->j:Landroid/view/View;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->l:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isFocusable()Z

    move-result v0

    .line 13
    invoke-direct {p0}, Lcom/join/mgps/fragment/u1;->e0()V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->l:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->d:Landroid/widget/TextView;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0713a9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->C(Landroid/view/View;IIII)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->c0(Z)V

    return-void
.end method

.method N0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->M0()V

    return-void
.end method

.method O0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ShareBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    const-string v1, "\u9080\u8bf7\u4f60\u4e00\u8d77\u8054\u673a\u5bf9\u6218"

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setTitle(Ljava/lang/String;)V

    const-string v1, "\u7545\u73a9\u6d77\u91cf\u514d\u8d39\u7ecf\u5178\u6e38\u620f\uff0c\u4f53\u9a8c\u8d85\u723d\u8054\u673a\uff01"

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setText(Ljava/lang/String;)V

    const-string v1, "https://tuis.12345fun.com/?aid=7Fp12l"

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setQqUrl(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lcom/join/mgps/Util/r;->p(Landroid/content/Context;ILcom/join/mgps/dto/ShareBean;)V

    .line 6
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v1, "0"

    .line 7
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->InviteFriends:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method

.method public P0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->p0()V

    return-void
.end method

.method Q0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/activity/FriendActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/FriendActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/FriendActivity;->B()V

    :cond_0
    return-void
.end method

.method R0(I)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    const/4 p1, 0x4

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v3, 0x64

    const/4 v4, 0x0

    if-ge p1, v3, :cond_2

    .line 4
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f080888

    .line 5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 6
    invoke-virtual {v0, v1, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f0807cd

    .line 8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v3, 0x2

    .line 9
    invoke-virtual {v0, v1, v2, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 10
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method S0(I)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->d:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    const-string p1, "\u5728\u7ebf"

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->d:Landroid/widget/TextView;

    const-string v0, "#FF16DB16"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const-string v3, "#FFC4C4C4"

    if-ne p1, v1, :cond_2

    const-string p1, "\u52ff\u6270"

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->d:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :cond_2
    const-string p1, "\u79bb\u7ebf"

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->d:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method T0(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x1706

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method U0(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/c;->m(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u9080\u8bf7\u4f60\u4e00\u8d77\u8054\u673a\u5bf9\u6218"

    const-string v2, "https://tuis.12345fun.com/?aid=7Fp12l"

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 2
    new-instance p1, Lcom/join/mgps/dto/ShareBean;

    invoke-direct {p1}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    .line 3
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ShareBean;->setTitle(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ShareBean;->setText(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/ShareBean;->setQqUrl(Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v1, "0"

    .line 7
    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->pasteInviteCode:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1, v2, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 9
    new-instance p1, Lcom/join/mgps/dto/ShareBean;

    invoke-direct {p1}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    .line 10
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ShareBean;->setTitle(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ShareBean;->setText(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/ShareBean;->setWechatShareUrl(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, v2}, Lcom/join/mgps/Util/r;->q(Landroid/content/Context;ILjava/lang/String;II)V

    .line 14
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v1, "1"

    .line 15
    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->pasteInviteCode:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1, v2, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 17
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/u1;->g0(Ljava/lang/String;)V

    const-string p1, "\u5df2\u590d\u5236\u5230\u7c98\u8d34\u677f"

    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/u1;->X0(Ljava/lang/String;)V

    return-void
.end method

.method V0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.tencent.mobileqq"

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/u1;->f0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->W0(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "\u672c\u673a\u672a\u5b89\u88c5QQ\u5e94\u7528"

    .line 4
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method W0(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/fragment/u1;->h0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string v1, "com.tencent.mobileqq"

    const-string v2, "com.tencent.mobileqq.activity.JumpActivity"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "\u9009\u62e9\u5206\u4eab\u9014\u5f84"

    .line 6
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method X0(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method Y0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->isLogined(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentUtil;->isTourist(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->j:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/join/mgps/fragment/u1;->n:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->f:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->n:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v0

    if-lez v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/join/mgps/fragment/m1;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/m1;-><init>(Lcom/join/mgps/fragment/u1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->g:Landroid/view/View;

    if-eqz v0, :cond_8

    new-instance v1, Lcom/join/mgps/fragment/k1;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/k1;-><init>(Lcom/join/mgps/fragment/u1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->i:Landroid/view/View;

    if-eqz v0, :cond_12

    new-instance v1, Lcom/join/mgps/fragment/q1;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/q1;-><init>(Lcom/join/mgps/fragment/u1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 14
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->b:Landroid/widget/TextView;

    const/4 v1, 0x4

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->j:Landroid/view/View;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->f:Landroid/view/View;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    :cond_e
    sget-object v0, Lcom/join/mgps/fragment/s1;->a:Lcom/join/mgps/fragment/s1;

    .line 20
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    :cond_f
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v1, :cond_10

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    :cond_10
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->g:Landroid/view/View;

    if-eqz v1, :cond_11

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_11
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->i:Landroid/view/View;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    :goto_1
    return-void
.end method

.method Z(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/dto/FriendReqBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/FriendReqBean;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendReqBean;->setUid(I)V

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendReqBean;->setToken(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendReqBean;->setRuid(I)V

    const-string p1, "\u563f\uff0c\u4ea4\u4e2a\u670b\u53cb\uff0c\u5c11\u5e74~(*^\u25bd^*)"

    .line 6
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendReqBean;->setRequestInfo(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->p:Lcom/join/mgps/rpc/i;

    invoke-interface {p1, v1}, Lcom/join/mgps/rpc/i;->b(Lcom/join/mgps/dto/FriendReqBean;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    move-result v0

    if-nez v0, :cond_0

    .line 9
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/u1;->a0(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/u1;->X0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method Z0(Lcom/wufan/friend/chat/protocol/x;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x;->g()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/a;->d()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x;->getStateValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/u1;->S0(I)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/adapter/l0;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/FriendBean;

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x;->g()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/a;->d()I

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x;->getStateValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendBean;->setState(I)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    :goto_1
    return-void
.end method

.method a0(Ljava/lang/Boolean;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u5df2\u53d1\u9001\u7533\u8bf7"

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/u1;->X0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method a1(Lcom/join/mgps/dto/FriendAccountInfo;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/c;->S(Lcom/join/mgps/dto/FriendAccountInfo;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendAccountInfo;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendAccountInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v0, "OFFLINE"

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendAccountInfo;->getOnLineStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v0, "ONLINE"

    .line 6
    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendAccountInfo;->getOnLineStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-string v0, "INVISIBLE"

    .line 7
    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendAccountInfo;->getOnLineStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 8
    :goto_0
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wufan/friend/chat/c;->W(I)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->S0(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendAccountInfo;->getRequestFriendCount()I

    move-result v0

    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendAccountInfo;->getLikedCount()I

    move-result v2

    add-int/2addr v0, v2

    const/16 v2, 0x8

    if-lez v0, :cond_6

    .line 11
    iget-object v3, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    :cond_5
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->R0(I)V

    goto :goto_1

    .line 13
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->f:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendAccountInfo;->isVip()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->f:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->f:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->Y0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->p()Lcom/join/mgps/rpc/impl/g;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/u1;->p:Lcom/join/mgps/rpc/i;

    .line 3
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    instance-of v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-eqz v2, :cond_0

    .line 8
    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 9
    :cond_0
    new-instance v1, Lcom/join/mgps/adapter/l0;

    invoke-direct {v1, v0}, Lcom/join/mgps/adapter/l0;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    .line 10
    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    instance-of v1, v0, Lcom/join/mgps/activity/FriendActivity;

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    check-cast v0, Lcom/join/mgps/activity/FriendActivity;

    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/l0;->J(Lcom/join/mgps/adapter/l0$e;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    new-instance v1, Lcom/join/mgps/fragment/u1$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/u1$a;-><init>(Lcom/join/mgps/fragment/u1;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->b0()V

    return-void
.end method

.method b0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.action_login_success"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->n:Lcom/join/mgps/dto/AccountBean;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->Y0()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->o0()V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->p0()V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->n0()V

    return-void
.end method

.method b1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/c;->S(Lcom/join/mgps/dto/FriendAccountInfo;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendAccountInfo;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendAccountInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v0, "ONLINE"

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendAccountInfo;->getOnLineStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->S0(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendAccountInfo;->getRequestFriendCount()I

    move-result v0

    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendAccountInfo;->getLikedCount()I

    move-result v2

    add-int/2addr v0, v2

    const/16 v2, 0x8

    if-lez v0, :cond_4

    .line 7
    iget-object v3, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->R0(I)V

    goto :goto_1

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->f:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendAccountInfo;->isVip()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 12
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->Y0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method c0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->l:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->r0(Landroid/view/View;)V

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/fragment/u1;->w:Z

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->l:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->update()V

    return-void
.end method

.method c1()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ShareBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    const-string v1, "\u9080\u8bf7\u4f60\u4e00\u8d77\u8054\u673a\u5bf9\u6218"

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setTitle(Ljava/lang/String;)V

    const-string v1, "\u7545\u73a9\u6d77\u91cf\u514d\u8d39\u7ecf\u5178\u6e38\u620f\uff0c\u4f53\u9a8c\u8d85\u723d\u8054\u673a\uff01"

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setText(Ljava/lang/String;)V

    const-string v1, "https://tuis.12345fun.com/?aid=7Fp12l"

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWechatShareUrl(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/join/mgps/Util/r;->p(Landroid/content/Context;ILcom/join/mgps/dto/ShareBean;)V

    .line 6
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v1, "1"

    .line 7
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->InviteFriends:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method

.method d0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/activity/FriendActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/FriendActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/FriendActivity;->g0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f0(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const-string v1, ""

    .line 1
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v1, 0x2000

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method j0(Lcom/wufan/friend/chat/protocol/r;)Lcom/join/mgps/dto/FriendBean;
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dto/FriendBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/FriendBean;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/r;->getAccount()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/a;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setNickName(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/r;->getAccount()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/a;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setAvatar(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/r;->getAccount()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setUid(I)V

    .line 5
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/r;->getAccount()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/a;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setLevel(I)V

    .line 6
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/r;->getAccount()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/a;->getVip()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setVip(Z)V

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/r;->getAccount()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/a;->z()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setBanned(Z)V

    .line 8
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/r;->getState()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/r;->getState()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/d1;->getGameId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/r;->getState()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/d1;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setGameName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/r;->getState()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/d1;->f()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setRoomId(I)V

    .line 12
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/r;->getState()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/d1;->getRoomType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setRoomType(I)V

    .line 13
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/r;->getState()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/d1;->s0()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/FriendBean;->setPlayType(I)V

    :cond_0
    return-object v0
.end method

.method k0(Lcom/wufan/friend/chat/protocol/t;)Lcom/join/mgps/dto/FriendBean;
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dto/FriendBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/FriendBean;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/t;->g()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/a;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setNickName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/a;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setAvatar(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/a;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setUid(I)V

    .line 6
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/a;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setLevel(I)V

    .line 7
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/a;->getVip()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setVip(Z)V

    .line 8
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/a;->z()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setBanned(Z)V

    .line 9
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/t;->T0()Lcom/wufan/friend/chat/protocol/OnlineState;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/OnlineState;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setState(I)V

    .line 11
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/t;->n()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/d1;->getGameId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/d1;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setGameName(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/d1;->f()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setRoomId(I)V

    .line 15
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/d1;->getRoomType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setRoomType(I)V

    .line 16
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/d1;->s0()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/FriendBean;->setPlayType(I)V

    :cond_0
    return-object v0
.end method

.method l0(Lcom/wufan/friend/chat/protocol/j1;)Lcom/join/mgps/dto/FriendBean;
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dto/FriendBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/FriendBean;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setRecommend(Z)V

    .line 3
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/j1;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setNickName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/j1;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setAvatar(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/j1;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setUid(I)V

    .line 6
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/j1;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setLevel(I)V

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/j1;->z()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setBanned(Z)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/j1;->getGameId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/j1;->getGameName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/FriendBean;->setGameName(Ljava/lang/String;)V

    return-object v0
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method m0(Lcom/wufan/friend/chat/protocol/o1;)Lcom/join/mgps/dto/FriendBean;
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dto/FriendBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/FriendBean;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setRecommend(Z)V

    .line 3
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/o1;->g()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/a;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setNickName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/a;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setAvatar(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/a;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setUid(I)V

    .line 7
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/a;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setLevel(I)V

    .line 8
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/a;->getVip()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setVip(Z)V

    .line 9
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/a;->z()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setBanned(Z)V

    .line 10
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/o1;->getState()Lcom/wufan/friend/chat/protocol/OnlineState;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/OnlineState;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setState(I)V

    .line 12
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/o1;->n()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/d1;->getGameId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/d1;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setGameName(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/d1;->f()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setRoomId(I)V

    .line 16
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/d1;->getRoomType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setRoomType(I)V

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/d1;->s0()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/FriendBean;->setPlayType(I)V

    :cond_0
    return-object v0
.end method

.method n0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0xc8L
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->p:Lcom/join/mgps/rpc/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/join/mgps/rpc/i;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->a1(Lcom/join/mgps/dto/FriendAccountInfo;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->X0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method o0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0x64L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/wufan/friend/chat/c;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/wufan/friend/chat/c;

    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->n:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->n:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/c;->L(ILjava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/wufan/friend/chat/c;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->t()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "gameId"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->q:Ljava/lang/String;

    const-string v0, "gameSeries"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->r:Ljava/lang/String;

    const-string v0, "type"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/u1;->t:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public onFriendEvent(Lcom/join/mgps/event/m;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/m;->a()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onFriendEvent(Lcom/wufan/friend/chat/protocol/w1;)V
    .locals 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->y()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->F()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->x2()Lcom/wufan/friend/chat/protocol/v0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->x2()Lcom/wufan/friend/chat/protocol/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/v0;->C0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/u1;->S0(I)V

    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/wufan/friend/chat/c;->T(Z)V

    .line 10
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/c;->U(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/wufan/friend/chat/c;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->t()V

    .line 12
    iput v2, p0, Lcom/join/mgps/fragment/u1;->v:I

    goto :goto_0

    .line 13
    :cond_1
    iget v0, p0, Lcom/join/mgps/fragment/u1;->v:I

    if-lez v0, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->n0()V

    .line 15
    iget v0, p0, Lcom/join/mgps/fragment/u1;->v:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/join/mgps/fragment/u1;->v:I

    .line 16
    :cond_2
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/IntentUtil;->isLogined(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->p0()V

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->F()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    .line 19
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->getNotification()Lcom/wufan/friend/chat/protocol/y0;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->getNotification()Lcom/wufan/friend/chat/protocol/y0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->k2()Lcom/wufan/friend/chat/protocol/x;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 22
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->getNotification()Lcom/wufan/friend/chat/protocol/y0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->k2()Lcom/wufan/friend/chat/protocol/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->Z0(Lcom/wufan/friend/chat/protocol/x;)V

    .line 23
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->y()I

    move-result v0

    const/4 v3, 0x4

    const/16 v4, 0xc

    const/16 v5, 0xb

    if-ne v0, v3, :cond_6

    .line 24
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->F()I

    move-result v0

    if-eq v0, v5, :cond_5

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->F()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 25
    :cond_5
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->E1()Lcom/wufan/friend/chat/protocol/l1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->L0(Lcom/wufan/friend/chat/protocol/l1;)V

    .line 26
    :cond_6
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->getNotification()Lcom/wufan/friend/chat/protocol/y0;

    move-result-object v0

    if-nez v0, :cond_7

    goto/16 :goto_9

    .line 27
    :cond_7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->getNotification()Lcom/wufan/friend/chat/protocol/y0;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->A1()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_8

    .line 29
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->K0()Lcom/wufan/friend/chat/protocol/v;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/u1;->J0(Lcom/wufan/friend/chat/protocol/v;)V

    goto/16 :goto_9

    .line 30
    :cond_8
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->A1()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_9

    .line 31
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->k2()Lcom/wufan/friend/chat/protocol/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/u1;->K0(Lcom/wufan/friend/chat/protocol/x;)V

    goto/16 :goto_9

    .line 32
    :cond_9
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->A1()I

    move-result v3

    if-ne v3, v5, :cond_a

    .line 33
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->X1()Lcom/wufan/friend/chat/protocol/e;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 34
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->X1()Lcom/wufan/friend/chat/protocol/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/u1;->H0(Lcom/wufan/friend/chat/protocol/e;)V

    goto/16 :goto_9

    .line 35
    :cond_a
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->A1()I

    move-result v3

    const/4 v5, 0x7

    if-ne v3, v5, :cond_f

    .line 36
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->u1()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 37
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    if-eqz p1, :cond_1d

    .line 38
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->u1()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->getCount()I

    move-result p1

    .line 39
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->u1()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->getTypeValue()I

    move-result v3

    if-nez v3, :cond_c

    .line 40
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendAccountInfo;->getRequestFriendCount()I

    move-result v2

    add-int/2addr v2, p1

    if-gez v2, :cond_b

    goto :goto_2

    :cond_b
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendAccountInfo;->getRequestFriendCount()I

    move-result v1

    add-int/2addr v1, p1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendAccountInfo;->setRequestFriendCount(I)V

    goto :goto_4

    .line 41
    :cond_c
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->u1()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->getTypeValue()I

    move-result v0

    if-ne v0, v2, :cond_e

    .line 42
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendAccountInfo;->getLikedCount()I

    move-result v2

    add-int/2addr v2, p1

    if-gez v2, :cond_d

    goto :goto_3

    :cond_d
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendAccountInfo;->getLikedCount()I

    move-result v1

    add-int/2addr v1, p1

    :goto_3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendAccountInfo;->setLikedCount(I)V

    .line 43
    :cond_e
    :goto_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->b1()V

    goto/16 :goto_9

    .line 44
    :cond_f
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->A1()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_10

    .line 45
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->b1()Lcom/wufan/friend/chat/protocol/t;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 46
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->b1()Lcom/wufan/friend/chat/protocol/t;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/t;->T0()Lcom/wufan/friend/chat/protocol/OnlineState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/OnlineState;->getNumber()I

    move-result v0

    if-nez v0, :cond_1d

    .line 48
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/u1;->k0(Lcom/wufan/friend/chat/protocol/t;)Lcom/join/mgps/dto/FriendBean;

    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/l0;->n()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/l0;->E(I)V

    .line 50
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/l0;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/l0;->K()V

    .line 52
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_9

    .line 53
    :cond_10
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->A1()I

    move-result v1

    if-ne v1, v4, :cond_15

    .line 54
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->p1()Lcom/wufan/friend/chat/protocol/o1;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 55
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->p1()Lcom/wufan/friend/chat/protocol/o1;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/l0;->p()Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 58
    :cond_11
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/FriendBean;

    .line 60
    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/o1;->g()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/a;->d()I

    move-result v4

    if-ne v3, v4, :cond_11

    .line 61
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/o1;->n()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 62
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/o1;->n()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/d1;->getGameId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_12

    goto :goto_6

    .line 63
    :cond_12
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/o1;->n()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v3

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/d1;->getGameId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/d1;->getGameName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/FriendBean;->setGameName(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/d1;->f()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/FriendBean;->setRoomId(I)V

    .line 67
    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/d1;->getRoomType()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/FriendBean;->setRoomType(I)V

    .line 68
    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/d1;->s0()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setPlayType(I)V

    goto :goto_5

    .line 69
    :cond_13
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 70
    :cond_14
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->F0()V

    .line 71
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1d

    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->p0()V

    goto/16 :goto_9

    .line 72
    :cond_15
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->A1()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_18

    .line 73
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->e2()Lcom/wufan/friend/chat/protocol/z;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    if-eqz p1, :cond_1d

    .line 74
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->e2()Lcom/wufan/friend/chat/protocol/z;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/l0;->o()Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 77
    :cond_16
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/FriendBean;

    .line 79
    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendBean;->isRecommend()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/z;->E()I

    move-result v2

    if-ne v1, v2, :cond_16

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 81
    :cond_17
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_9

    .line 82
    :cond_18
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->A1()I

    move-result p1

    const/16 v1, 0xe

    if-ne p1, v1, :cond_1d

    .line 83
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->O0()Lcom/wufan/friend/chat/protocol/f1;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->O0()Lcom/wufan/friend/chat/protocol/f1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/f1;->P2()Lcom/wufan/friend/chat/protocol/a;

    move-result-object p1

    if-nez p1, :cond_19

    goto :goto_9

    .line 84
    :cond_19
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->O0()Lcom/wufan/friend/chat/protocol/f1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/f1;->P2()Lcom/wufan/friend/chat/protocol/a;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    if-eqz v0, :cond_1c

    .line 86
    invoke-virtual {v0}, Lcom/join/mgps/adapter/l0;->o()Ljava/util/List;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 88
    :cond_1a
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/FriendBean;

    .line 90
    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/a;->d()I

    move-result v3

    if-ne v2, v3, :cond_1a

    .line 91
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/a;->z()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setBanned(Z)V

    goto :goto_8

    .line 92
    :cond_1b
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 93
    :cond_1c
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendAccountInfo;->getAccountId()I

    move-result v0

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/a;->d()I

    move-result v1

    if-ne v0, v1, :cond_1d

    .line 94
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->u:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/a;->z()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/FriendAccountInfo;->setBanned(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->b1()V

    nop

    :cond_1d
    :goto_9
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    return-void
.end method

.method p0()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0xc8L
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "BATTLE_ROOM_LIST"

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->H2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/u1;->r:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->u()Ljava/util/List;

    move-result-object v0

    .line 5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 7
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->t:Ljava/lang/String;

    const-string v3, "BATTLE_HOME_PAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_2

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->t:Ljava/lang/String;

    const-string v1, "BATTLE_ROOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    const/4 v7, 0x2

    goto :goto_2

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->t:Ljava/lang/String;

    const-string v1, "GAME_HOME_PAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    const/4 v7, 0x3

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v7, 0x0

    :goto_2
    const-wide/16 v0, 0x0

    .line 13
    :try_start_2
    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->q:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_0
    move-exception v2

    .line 14
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_6
    :goto_3
    move-wide v3, v0

    .line 15
    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->m:Lcom/wufan/friend/chat/c;

    iget-object v5, p0, Lcom/join/mgps/fragment/u1;->r:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/wufan/friend/chat/c;->y(JLjava/lang/String;Ljava/util/List;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method

.method q0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0xc8L
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->t:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->t:Ljava/lang/String;

    const-string v2, "BATTLE_ROOM_LIST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->H2()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/u1;->r:Ljava/lang/String;

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->I2()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->I2()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->s:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->I2()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 9
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->s:Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 11
    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/GameInfoBean;

    .line 12
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_4
    new-instance v2, Lcom/join/mgps/dto/FriendRecommendRequest;

    invoke-direct {v2}, Lcom/join/mgps/dto/FriendRecommendRequest;-><init>()V

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendRecommendRequest;->setUid(I)V

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/FriendRecommendRequest;->setToken(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 17
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/FriendRecommendRequest;->setPage(I)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->q:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/FriendRecommendRequest;->setGameId(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->r:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/FriendRecommendRequest;->setGameSeries(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->t:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/FriendRecommendRequest;->setLocationPageType(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/FriendRecommendRequest;->setLocalDownloadGameIds(Ljava/util/List;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->p:Lcom/join/mgps/rpc/i;

    invoke-interface {v0, v2}, Lcom/join/mgps/rpc/i;->d(Lcom/join/mgps/dto/FriendRecommendRequest;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->updateUi(Ljava/util/List;)V

    goto :goto_1

    .line 25
    :cond_5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u1;->X0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method

.method r0(Landroid/view/View;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/u1;->T0(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method t0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/fragment/u1;->x:Landroid/app/Dialog;

    if-nez v1, :cond_4

    .line 4
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x7f1204e2

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/join/mgps/fragment/u1;->x:Landroid/app/Dialog;

    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    .line 7
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 8
    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->x:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 9
    :cond_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c037a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0907ee

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/fragment/u1;->z:Landroid/view/View;

    const v2, 0x7f090205

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/join/mgps/fragment/u1;->A:Landroid/widget/ImageView;

    const v2, 0x7f090206

    .line 12
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/join/mgps/fragment/u1;->B:Landroid/widget/ImageView;

    const v2, 0x7f0911ac

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/join/mgps/fragment/u1;->C:Landroid/widget/TextView;

    .line 14
    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->x:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0712e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071221

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 17
    iget-object v2, p0, Lcom/join/mgps/fragment/u1;->x:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/4 v4, -0x1

    if-nez v1, :cond_2

    const/4 v1, -0x1

    .line 19
    :cond_2
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    if-nez v0, :cond_3

    const/4 v0, -0x1

    .line 20
    :cond_3
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x11

    .line 21
    invoke-virtual {v2, v0}, Landroid/view/Window;->setGravity(I)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->z:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/fragment/r1;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/r1;-><init>(Lcom/join/mgps/fragment/u1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->A:Landroid/widget/ImageView;

    new-instance v1, Lcom/join/mgps/fragment/l1;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/l1;-><init>(Lcom/join/mgps/fragment/u1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->B:Landroid/widget/ImageView;

    new-instance v1, Lcom/join/mgps/fragment/o1;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o1;-><init>(Lcom/join/mgps/fragment/u1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->C:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/join/mgps/fragment/u1;->h0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->x:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->x:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_5
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

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_5

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/FriendBean;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setState(I)V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setRecommend(Z)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/l0;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/l0;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/l0;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 9
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/FriendBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendBean;->isRecommend()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/l0;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/l0;->K()V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 14
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/fragment/u1;->o:Lcom/join/mgps/adapter/l0;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/l0;->p()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u1;->F0()V

    return-void
.end method
