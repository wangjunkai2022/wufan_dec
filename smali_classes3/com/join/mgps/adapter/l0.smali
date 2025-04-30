.class public Lcom/join/mgps/adapter/l0;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FriendListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/l0$c;,
        Lcom/join/mgps/adapter/l0$b;,
        Lcom/join/mgps/adapter/l0$d;,
        Lcom/join/mgps/adapter/l0$e;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/join/mgps/adapter/l0$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/adapter/l0;->c:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/l0;->d:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/l0;->e:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/l0;->f:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lcom/join/mgps/adapter/l0;->a:Landroid/content/Context;

    return-void
.end method

.method private synthetic A(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/l0;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic B(Lcom/join/mgps/dto/FriendBean;Lcom/join/mgps/dto/FriendBean;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/dto/FriendBean;->getState()I

    move-result v3

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getState()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dto/FriendBean;->getState()I

    move-result v3

    if-nez v3, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getState()I

    move-result v3

    if-nez v3, :cond_2

    return v2

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/dto/FriendBean;->isRecommend()Z

    move-result v3

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->isRecommend()Z

    move-result v4

    if-eq v3, v4, :cond_4

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/dto/FriendBean;->isRecommend()Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->isRecommend()Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    if-eq p0, p1, :cond_7

    if-nez p0, :cond_6

    return v2

    :cond_6
    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/l0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/l0;->A(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/dto/FriendBean;Lcom/join/mgps/dto/FriendBean;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/join/mgps/adapter/l0;->B(Lcom/join/mgps/dto/FriendBean;Lcom/join/mgps/dto/FriendBean;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/join/mgps/adapter/l0;Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/l0;->x(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/join/mgps/adapter/l0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/l0;->y(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/join/mgps/adapter/l0;Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/l0;->w(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/join/mgps/adapter/l0;Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/l0;->s(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/join/mgps/adapter/l0;Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/l0;->u(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/join/mgps/adapter/l0;Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/l0;->t(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/join/mgps/adapter/l0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/l0;->z(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/adapter/l0;Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/l0;->v(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V

    return-void
.end method

.method private l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l0;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 2
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private m(I)I
    .locals 1

    if-nez p1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    return p1

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/l0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/l0;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    if-nez p1, :cond_2

    return p1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/l0;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    return p1

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/adapter/l0;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    :cond_4
    return p1
.end method

.method private synthetic s(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/wufan/friend/chat/c;->D()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "\u60a8\u7684\u5bf9\u6218\u529f\u80fd\u5df2\u88ab\u5c01\u7981\uff01"

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/l0;->k(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/adapter/l0;->g:Lcom/join/mgps/adapter/l0$e;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/l0$e;->m0(Lcom/join/mgps/dto/FriendBean;)V

    :cond_2
    return-void
.end method

.method private synthetic t(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->isRecommend()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "1"

    goto :goto_0

    :cond_1
    const-string v2, "0"

    :goto_0
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->LobbyInvite:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2, v3, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wufan/friend/chat/c;->D()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "\u60a8\u7684\u5bf9\u6218\u529f\u80fd\u5df2\u88ab\u5c01\u7981\uff01"

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/l0;->k(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->isBanned()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "\u9080\u8bf7\u5931\u8d25\uff1a\u597d\u53cb\u5df2\u88ab\u5c01\u7981\uff01"

    .line 10
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/l0;->k(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getState()I

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u5bf9\u65b9\u5df2\u79bb\u7ebf\uff0c\u65e0\u6cd5\u7ea6\u6218\uff01"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    :cond_5
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountBean;->getPapaMoney()J

    move-result-wide v1

    :cond_6
    const-wide/16 v3, 0xa

    cmp-long p2, v1, v3

    if-gez p2, :cond_7

    const-string p1, "\u94dc\u677f\u6570\u4e0d\u8db3\uff0c\u5bf9\u6218\u81f3\u5c11\u9700\u898110\u94dc\u677f"

    .line 14
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/l0;->k(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_7
    iget-object p2, p0, Lcom/join/mgps/adapter/l0;->g:Lcom/join/mgps/adapter/l0$e;

    if-eqz p2, :cond_8

    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/l0$e;->o(Lcom/join/mgps/dto/FriendBean;)V

    :cond_8
    return-void
.end method

.method private synthetic u(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->isRecommend()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "1"

    goto :goto_0

    :cond_1
    const-string v2, "0"

    :goto_0
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->LobbyInvite:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2, v3, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wufan/friend/chat/c;->D()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "\u60a8\u7684\u5bf9\u6218\u529f\u80fd\u5df2\u88ab\u5c01\u7981\uff01"

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/l0;->k(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->isBanned()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "\u9080\u8bf7\u5931\u8d25\uff1a\u597d\u53cb\u5df2\u88ab\u5c01\u7981\uff01"

    .line 10
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/l0;->k(Ljava/lang/String;)V

    return-void

    :cond_4
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountBean;->getPapaMoney()J

    move-result-wide v1

    :cond_5
    const-wide/16 v3, 0xa

    cmp-long p2, v1, v3

    if-gez p2, :cond_6

    const-string p1, "\u94dc\u677f\u6570\u4e0d\u8db3\uff0c\u5bf9\u6218\u81f3\u5c11\u9700\u898110\u94dc\u677f"

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/l0;->k(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_6
    iget-object p2, p0, Lcom/join/mgps/adapter/l0;->g:Lcom/join/mgps/adapter/l0$e;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/l0$e;->o(Lcom/join/mgps/dto/FriendBean;)V

    :cond_7
    return-void
.end method

.method private synthetic v(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/l0;->g:Lcom/join/mgps/adapter/l0$e;

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/l0$e;->g0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic w(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/l0;->g:Lcom/join/mgps/adapter/l0$e;

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/l0$e;->g0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic x(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/l0;->g:Lcom/join/mgps/adapter/l0$e;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/l0$e;->o(Lcom/join/mgps/dto/FriendBean;)V

    :cond_0
    return-void
.end method

.method private synthetic y(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/l0;->g:Lcom/join/mgps/adapter/l0$e;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/join/mgps/adapter/l0$e;->B()V

    :cond_0
    return-void
.end method

.method private synthetic z(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/join/mgps/adapter/l0;->c:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/l0;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/l0;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/adapter/l0;->e:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Lcom/join/mgps/adapter/l0;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/l0;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/l0;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/join/mgps/adapter/l0;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/adapter/l0;->d:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object p1, p0, Lcom/join/mgps/adapter/l0;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/adapter/l0;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 10
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/join/mgps/adapter/l0;->c:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/join/mgps/adapter/l0;->c:Z

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method


# virtual methods
.method C(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    instance-of v0, p1, Lcom/join/mgps/adapter/l0$d;

    if-eqz v0, :cond_f

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/join/mgps/adapter/l0$d;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/adapter/l0;->d:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/FriendBean;

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v1, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v1}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/adapter/l0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07123a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/generic/RoundingParams;->s(F)Lcom/facebook/drawee/generic/RoundingParams;

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Lcom/facebook/drawee/generic/RoundingParams;->v(Z)Lcom/facebook/drawee/generic/RoundingParams;

    .line 7
    check-cast p1, Lcom/join/mgps/adapter/l0$d;

    iget-object p1, p1, Lcom/join/mgps/adapter/l0$d;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f0807b1

    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->u(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 8
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->h:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->e:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->d:Landroid/widget/TextView;

    .line 13
    iget-object v4, v0, Lcom/join/mgps/adapter/l0$d;->f:Landroid/widget/TextView;

    .line 14
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getState()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "#FFFFA841"

    const-string v7, "#FF16DB16"

    if-nez v5, :cond_2

    .line 15
    :try_start_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getGameName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 16
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getGameName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v5, "\u5728\u7ebf"

    .line 19
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v5, "#FF6E6E6E"

    .line 20
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v5, "\u79bb\u7ebf"

    .line 21
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :goto_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getGameId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "\u7ea6\u6218"

    const-string v9, "0"

    const/4 v10, 0x0

    if-nez v5, :cond_6

    :try_start_2
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getGameId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 23
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getRoomId()I

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "\u52a0\u5165"

    .line 25
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getState()I

    move-result v5

    if-nez v5, :cond_3

    .line 27
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    :cond_3
    new-instance p1, Lcom/join/mgps/adapter/g0;

    invoke-direct {p1, p0, p2}, Lcom/join/mgps/adapter/g0;-><init>(Lcom/join/mgps/adapter/l0;Lcom/join/mgps/dto/FriendBean;)V

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 29
    :cond_4
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getState()I

    move-result v5

    if-nez v5, :cond_5

    .line 30
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    :cond_5
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    new-instance p1, Lcom/join/mgps/adapter/i0;

    invoke-direct {p1, p0, p2}, Lcom/join/mgps/adapter/i0;-><init>(Lcom/join/mgps/adapter/l0;Lcom/join/mgps/dto/FriendBean;)V

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 33
    :cond_6
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getState()I

    move-result p1

    if-nez p1, :cond_7

    .line 34
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    new-instance p1, Lcom/join/mgps/adapter/h0;

    invoke-direct {p1, p0, p2}, Lcom/join/mgps/adapter/h0;-><init>(Lcom/join/mgps/adapter/l0;Lcom/join/mgps/dto/FriendBean;)V

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    :cond_7
    :goto_1
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/wufan/friend/chat/c;->E(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 38
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 39
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 40
    :cond_8
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 41
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 42
    :goto_2
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->h:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/join/mgps/adapter/l0$d;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getLevel()I

    move-result v4

    invoke-virtual {p0, p1, v2, v4}, Lcom/join/mgps/adapter/l0;->H(Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    .line 43
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->j:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/join/mgps/adapter/l0$d;->i:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getLevel()I

    move-result v4

    invoke-virtual {p0, p1, v2, v4}, Lcom/join/mgps/adapter/l0;->I(Landroid/view/View;Landroid/widget/ImageView;I)V

    .line 44
    new-instance p1, Lcom/join/mgps/adapter/j0;

    invoke-direct {p1, p0, p2}, Lcom/join/mgps/adapter/j0;-><init>(Lcom/join/mgps/adapter/l0;Lcom/join/mgps/dto/FriendBean;)V

    .line 45
    iget-object v2, v0, Lcom/join/mgps/adapter/l0$d;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v2, v0, Lcom/join/mgps/adapter/l0$d;->b:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->isRecommend()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "#ffffff"

    if-eqz p1, :cond_9

    .line 48
    :try_start_3
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->k:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->b:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 53
    :cond_9
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getState()I

    move-result p1

    if-nez p1, :cond_e

    .line 54
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getGameId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getGameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 56
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getRoomType()I

    move-result p1

    const/16 v4, 0x1f

    if-eq p1, v4, :cond_b

    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getRoomType()I

    move-result p1

    const/16 v4, 0x23

    if-ne p1, v4, :cond_a

    goto :goto_3

    .line 57
    :cond_a
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getRoomType()I

    move-result p1

    if-eqz p1, :cond_d

    .line 58
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 59
    :cond_b
    :goto_3
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 60
    :cond_c
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    :cond_d
    :goto_4
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->k:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->b:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 64
    :cond_e
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->k:Landroid/view/View;

    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object p1, v0, Lcom/join/mgps/adapter/l0$d;->b:Landroid/widget/TextView;

    const-string p2, "#FFA0A0A0"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_5
    return-void
.end method

.method public D(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/l0;->c:Z

    return-void
.end method

.method public E(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/l0;->b:I

    return-void
.end method

.method public F(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l0;->d:Ljava/util/List;

    return-void
.end method

.method public G(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l0;->f:Ljava/util/List;

    return-void
.end method

.method H(Landroid/widget/ImageView;Landroid/widget/TextView;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    const/4 v0, 0x4

    if-eq p3, v0, :cond_1

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const p3, 0x7f08047e

    .line 1
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const-string p1, "\u4f20\u8bf4"

    goto :goto_0

    :cond_1
    const p3, 0x7f08047d

    .line 2
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const-string p1, "\u5b97\u5e08"

    goto :goto_0

    :cond_2
    const p3, 0x7f08047b

    .line 3
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const-string p1, "\u7cbe\u82f1"

    goto :goto_0

    :cond_3
    const p3, 0x7f08047c

    .line 4
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const-string p1, "\u8d44\u6df1"

    goto :goto_0

    :cond_4
    const p3, 0x7f08047a

    .line 5
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const-string p1, "\u89c1\u4e60"

    :goto_0
    if-eqz p2, :cond_5

    .line 6
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method I(Landroid/view/View;Landroid/widget/ImageView;I)V
    .locals 2

    const/16 v0, 0x8

    if-lez p3, :cond_0

    const/4 v1, 0x7

    if-ge p3, v1, :cond_0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    packed-switch p3, :pswitch_data_0

    .line 5
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_0
    const p3, 0x7f080803

    .line 7
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const p2, 0x7f080804

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_1
    const p3, 0x7f0807fd

    .line 9
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const p2, 0x7f0807fe

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_2
    const p3, 0x7f0807ff

    .line 11
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const p2, 0x7f080800

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_3
    const p3, 0x7f0807fb

    .line 13
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const p2, 0x7f0807fc

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_4
    const p3, 0x7f080801

    .line 15
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const p2, 0x7f080802

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_5
    const p3, 0x7f080805

    .line 17
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const p2, 0x7f08017c

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public J(Lcom/join/mgps/adapter/l0$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l0;->g:Lcom/join/mgps/adapter/l0$e;

    return-void
.end method

.method public K()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l0;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/adapter/l0;->d:Ljava/util/List;

    sget-object v1, Lcom/join/mgps/adapter/k0;->a:Lcom/join/mgps/adapter/k0;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l0;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method k(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/l0;->b:I

    return v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l0;->d:Ljava/util/List;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/l0;->getItemViewType(I)I

    move-result v0

    .line 2
    instance-of v1, p1, Lcom/join/mgps/adapter/l0$d;

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    .line 3
    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/l0;->m(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/l0;->C(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto/16 :goto_1

    :cond_0
    const/4 p2, 0x4

    if-ne v0, p2, :cond_6

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/l0;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/FriendBean;

    .line 6
    check-cast p1, Lcom/join/mgps/adapter/l0$d;

    iget-object v1, p1, Lcom/join/mgps/adapter/l0$d;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 7
    iget-object v1, p1, Lcom/join/mgps/adapter/l0$d;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v1, p1, Lcom/join/mgps/adapter/l0$d;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v1, p1, Lcom/join/mgps/adapter/l0$d;->e:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p2, p1, Lcom/join/mgps/adapter/l0$d;->g:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object p2, p1, Lcom/join/mgps/adapter/l0$d;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object p2, p1, Lcom/join/mgps/adapter/l0$d;->h:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/join/mgps/adapter/l0$d;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getLevel()I

    move-result v2

    invoke-virtual {p0, p2, v1, v2}, Lcom/join/mgps/adapter/l0;->H(Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    .line 13
    iget-object p2, p1, Lcom/join/mgps/adapter/l0$d;->j:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/join/mgps/adapter/l0$d;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getLevel()I

    move-result v2

    invoke-virtual {p0, p2, v1, v2}, Lcom/join/mgps/adapter/l0;->I(Landroid/view/View;Landroid/widget/ImageView;I)V

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getGameName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 15
    iget-object p2, p1, Lcom/join/mgps/adapter/l0$d;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object p2, p1, Lcom/join/mgps/adapter/l0$d;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p2, p1, Lcom/join/mgps/adapter/l0$d;->d:Landroid/widget/TextView;

    const-string v1, "#FFFFA841"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    :cond_1
    new-instance p2, Lcom/join/mgps/adapter/f0;

    invoke-direct {p2, p0, v0}, Lcom/join/mgps/adapter/f0;-><init>(Lcom/join/mgps/adapter/l0;Lcom/join/mgps/dto/FriendBean;)V

    .line 19
    iget-object v1, p1, Lcom/join/mgps/adapter/l0$d;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v1, p1, Lcom/join/mgps/adapter/l0$d;->b:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p1, p1, Lcom/join/mgps/adapter/l0$d;->f:Landroid/widget/TextView;

    new-instance p2, Lcom/join/mgps/adapter/e0;

    invoke-direct {p2, p0, v0}, Lcom/join/mgps/adapter/e0;-><init>(Lcom/join/mgps/adapter/l0;Lcom/join/mgps/dto/FriendBean;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 22
    :cond_2
    instance-of p2, p1, Lcom/join/mgps/adapter/l0$b;

    if-eqz p2, :cond_5

    .line 23
    iget-object p2, p0, Lcom/join/mgps/adapter/l0;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 24
    iget-boolean v0, p0, Lcom/join/mgps/adapter/l0;->c:Z

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/join/mgps/adapter/l0;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 25
    :cond_3
    check-cast p1, Lcom/join/mgps/adapter/l0$b;

    invoke-static {p1}, Lcom/join/mgps/adapter/l0$b;->a(Lcom/join/mgps/adapter/l0$b;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5728\u7ebf("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/join/mgps/adapter/l0;->b:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-static {p1}, Lcom/join/mgps/adapter/l0$b;->b(Lcom/join/mgps/adapter/l0$b;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/join/mgps/adapter/c0;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/c0;-><init>(Lcom/join/mgps/adapter/l0;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-boolean p2, p0, Lcom/join/mgps/adapter/l0;->c:Z

    if-eqz p2, :cond_4

    .line 28
    iget-object p2, p1, Lcom/join/mgps/adapter/l0$b;->a:Landroid/widget/ImageView;

    const v0, 0x7f08056d

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 29
    :cond_4
    iget-object p2, p1, Lcom/join/mgps/adapter/l0$b;->a:Landroid/widget/ImageView;

    const v0, 0x7f080611

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 30
    :goto_0
    new-instance p2, Lcom/join/mgps/adapter/d0;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/d0;-><init>(Lcom/join/mgps/adapter/l0;)V

    .line 31
    iget-object v0, p1, Lcom/join/mgps/adapter/l0$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-static {p1}, Lcom/join/mgps/adapter/l0$b;->a(Lcom/join/mgps/adapter/l0$b;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 33
    :cond_5
    instance-of p2, p1, Lcom/join/mgps/adapter/l0$c;

    if-eqz p2, :cond_6

    .line 34
    check-cast p1, Lcom/join/mgps/adapter/l0$c;

    iget-object p2, p1, Lcom/join/mgps/adapter/l0$c;->b:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object p1, p1, Lcom/join/mgps/adapter/l0$c;->a:Landroid/view/View;

    new-instance p2, Lcom/join/mgps/adapter/b0;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/b0;-><init>(Lcom/join/mgps/adapter/l0;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/l0$b;

    iget-object v1, p0, Lcom/join/mgps/adapter/l0;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c02fc

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l0$b;-><init>(Lcom/join/mgps/adapter/l0;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 2
    new-instance p2, Lcom/join/mgps/adapter/l0$c;

    iget-object v1, p0, Lcom/join/mgps/adapter/l0;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c02fd

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l0$c;-><init>(Lcom/join/mgps/adapter/l0;Landroid/view/View;)V

    return-object p2

    .line 3
    :cond_2
    new-instance p1, Lcom/join/mgps/adapter/l0$a;

    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lcom/join/mgps/adapter/l0;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p0, p2}, Lcom/join/mgps/adapter/l0$a;-><init>(Lcom/join/mgps/adapter/l0;Landroid/view/View;)V

    return-object p1

    .line 4
    :cond_3
    :goto_0
    new-instance p2, Lcom/join/mgps/adapter/l0$d;

    iget-object v1, p0, Lcom/join/mgps/adapter/l0;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c02fb

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l0$d;-><init>(Lcom/join/mgps/adapter/l0;Landroid/view/View;)V

    return-object p2
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l0;->f:Ljava/util/List;

    return-object v0
.end method

.method public q()Lcom/join/mgps/adapter/l0$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l0;->g:Lcom/join/mgps/adapter/l0$e;

    return-object v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/adapter/l0;->c:Z

    return v0
.end method
