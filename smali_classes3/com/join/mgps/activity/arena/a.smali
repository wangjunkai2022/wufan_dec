.class public Lcom/join/mgps/activity/arena/a;
.super Landroidx/fragment/app/Fragment;
.source "ArenaGameListFragmentMain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/arena/a$d;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0024
.end annotation


# static fields
.field private static final r:I = 0xa

.field public static final s:I = 0x1

.field public static final t:I = 0x2

.field public static final u:I = 0x3

.field public static final v:I = 0x4

.field public static final w:I = 0x23

.field public static final x:I = 0x1f


# instance fields
.field a:Lcom/join/mgps/rpc/k;

.field b:I

.field c:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroidx/viewpager/widget/ViewPager;

.field f:Lcom/join/mgps/customview/TabPageIndicator;

.field g:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private i:Z

.field j:Landroid/app/Activity;

.field private k:I

.field l:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field private m:Lcom/join/mgps/adapter/t1;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/GameTypeBean;",
            ">;"
        }
    .end annotation
.end field

.field private p:[Lcom/join/mgps/fragment/c;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/a;->i:Z

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/arena/a;->k:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/a;->n:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/a;->o:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/a;->q:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic M(Lcom/join/mgps/activity/arena/a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/a;->n:Ljava/util/List;

    return-object p0
.end method

.method static synthetic N(Lcom/join/mgps/activity/arena/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/arena/a;->i:Z

    return p0
.end method

.method static synthetic O(Lcom/join/mgps/activity/arena/a;I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/a;->T(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic P(Lcom/join/mgps/activity/arena/a;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/a;->o:Ljava/util/ArrayList;

    return-object p0
.end method

.method private R()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->j:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->U()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->X()V

    :goto_0
    return-void
.end method

.method private T(I)Landroidx/fragment/app/Fragment;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->p:[Lcom/join/mgps/fragment/c;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/arena/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameTypeBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameTypeBean;->getId()I

    move-result v1

    const-string v2, "game_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget v1, p0, Lcom/join/mgps/activity/arena/a;->b:I

    const-string v2, "room_type"

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/16 v1, 0x23

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    const/16 v1, 0x1f

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    const-string v1, "pn"

    if-nez p1, :cond_3

    .line 7
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/arena/a;->q:Ljava/util/ArrayList;

    const-string v2, "datas"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    :goto_1
    new-instance v1, Lcom/join/mgps/fragment/c;

    invoke-direct {v1}, Lcom/join/mgps/fragment/c;-><init>()V

    .line 11
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->p:[Lcom/join/mgps/fragment/c;

    aput-object v1, v0, p1

    return-object v1
.end method


# virtual methods
.method Q()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->j:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method S(Lcom/join/mgps/dto/ResultResMainBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/NewArenaGameListBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/NewArenaGameListBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/NewArenaGameListBean;->getGame_type()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/NewArenaGameListBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/NewArenaGameListBean;->getGame_list()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/join/mgps/fragment/c;

    iput-object p1, p0, Lcom/join/mgps/activity/arena/a;->p:[Lcom/join/mgps/fragment/c;

    .line 4
    new-instance p1, Lcom/join/mgps/activity/arena/a$d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/join/mgps/activity/arena/a$d;-><init>(Lcom/join/mgps/activity/arena/a;Landroidx/fragment/app/FragmentManager;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->e:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->e:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/mgps/customview/TabPageIndicator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/TabPageIndicator;->setNormalTextColor(I)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/mgps/customview/TabPageIndicator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/TabPageIndicator;->setSelectedTextColor(I)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/mgps/customview/TabPageIndicator;

    const v0, 0x7f080769

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/TabPageIndicator;->setSelectedBottomDrawableBounds(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/mgps/customview/TabPageIndicator;

    const v0, 0x7f080c70

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/TabPageIndicator;->setNormalBottomDrawableBound(I)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/mgps/customview/TabPageIndicator;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/TabPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method U()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/arena/a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->W()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->V()V

    :goto_0
    return-void
.end method

.method V()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget v1, p0, Lcom/join/mgps/activity/arena/a;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->a:Lcom/join/mgps/rpc/k;

    const/16 v1, 0x23

    invoke-interface {v0, v1, v3, v3}, Lcom/join/mgps/rpc/k;->w(III)Lcom/join/mgps/dto/ResultResMainBean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->a:Lcom/join/mgps/rpc/k;

    const/16 v1, 0x1f

    invoke-interface {v0, v1, v3, v3}, Lcom/join/mgps/rpc/k;->w(III)Lcom/join/mgps/dto/ResultResMainBean;

    move-result-object v0

    .line 4
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/a;->j:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/join/mgps/activity/arena/a;->j:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/NewArenaGameListBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/NewArenaGameListBean;->getGame_type()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/a;->S(Lcom/join/mgps/dto/ResultResMainBean;)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->hideLoading()V

    goto :goto_3

    .line 8
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->X()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_5
    :goto_2
    return-void

    .line 9
    :catch_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->X()V

    :goto_3
    return-void
.end method

.method W()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/a;->l:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/join/mgps/activity/arena/a;->l:Lcom/join/mgps/Util/b;

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    .line 3
    iget-object v3, p0, Lcom/join/mgps/activity/arena/a;->a:Lcom/join/mgps/rpc/k;

    iget v4, p0, Lcom/join/mgps/activity/arena/a;->k:I

    invoke-interface {v3, v2, v1, v4}, Lcom/join/mgps/rpc/k;->m(ILjava/lang/String;I)Lcom/join/mgps/dto/ResultResMainBean;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/arena/a;->j:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_6

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/join/mgps/activity/arena/a;->j:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_5

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameListBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameListBean;->getGame_list()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_2

    const/4 v2, 0x1

    .line 9
    :cond_2
    iput-boolean v2, p0, Lcom/join/mgps/activity/arena/a;->i:Z

    goto :goto_0

    .line 10
    :cond_3
    iput-boolean v2, p0, Lcom/join/mgps/activity/arena/a;->i:Z

    .line 11
    :goto_0
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/a;->a0(Ljava/util/List;)V

    .line 12
    iget v1, p0, Lcom/join/mgps/activity/arena/a;->k:I

    if-gt v1, v0, :cond_4

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->hideLoading()V

    .line 14
    :cond_4
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/a;->i:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/join/mgps/activity/arena/a;->k:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/join/mgps/activity/arena/a;->k:I

    goto :goto_3

    .line 15
    :cond_5
    :goto_1
    iget v1, p0, Lcom/join/mgps/activity/arena/a;->k:I

    if-gt v1, v0, :cond_7

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->X()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_6
    :goto_2
    return-void

    :catch_0
    move-exception v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestRecentGameList Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ArenaGameListActivity"

    invoke-static {v2, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget v1, p0, Lcom/join/mgps/activity/arena/a;->k:I

    if-gt v1, v0, :cond_7

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->X()V

    :cond_7
    :goto_3
    return-void
.end method

.method X()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method Z()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method a0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->m:Lcom/join/mgps/adapter/t1;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->n:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/t1;->e(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->y1()V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->z1()V

    .line 8
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/a;->i:Z

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->y1()V

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/a;->m:Lcom/join/mgps/adapter/t1;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method afterViews()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/arena/a;->j:Landroid/app/Activity;

    const-string v1, "mType"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/arena/a;->b:I

    .line 4
    invoke-static {}, Lcom/join/mgps/rpc/impl/k;->n0()Lcom/join/mgps/rpc/impl/k;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/a;->a:Lcom/join/mgps/rpc/k;

    .line 5
    new-instance v0, Lcom/join/mgps/adapter/t1;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/a;->j:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/t1;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/a;->m:Lcom/join/mgps/adapter/t1;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/arena/a;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v1, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPreLoadCount(I)V

    .line 8
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/arena/a;->j:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/join/android/app/common/utils/j;->j(Landroid/app/Activity;)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3ffe666666666666L    # 1.9

    cmpl-double v7, v3, v5

    if-ltz v7, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    invoke-direct {v0, v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/arena/a;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    new-instance v1, Lcom/join/mgps/activity/arena/a$a;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/arena/a$a;-><init>(Lcom/join/mgps/activity/arena/a;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 11
    iget v0, p0, Lcom/join/mgps/activity/arena/a;->b:I

    const/16 v1, 0x8

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->m:Lcom/join/mgps/adapter/t1;

    new-instance v4, Lcom/join/mgps/activity/arena/a$b;

    invoke-direct {v4, p0}, Lcom/join/mgps/activity/arena/a$b;-><init>(Lcom/join/mgps/activity/arena/a;)V

    invoke-virtual {v0, v4}, Lcom/join/mgps/adapter/t1;->f(Lcom/join/mgps/adapter/t1$e;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v3}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    new-instance v2, Lcom/join/mgps/activity/arena/a$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/arena/a$c;-><init>(Lcom/join/mgps/activity/arena/a;)V

    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->Z()V

    .line 19
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/a;->R()V

    goto :goto_1

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->j:Landroid/app/Activity;

    const v1, 0x7f091280

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/a;->e:Landroidx/viewpager/widget/ViewPager;

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->j:Landroid/app/Activity;

    const v1, 0x7f090ba2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/TabPageIndicator;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/mgps/customview/TabPageIndicator;

    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->Z()V

    .line 25
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/a;->R()V

    :goto_1
    return-void
.end method

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0xc8L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->Z()V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/a;->R()V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a;->j:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method
