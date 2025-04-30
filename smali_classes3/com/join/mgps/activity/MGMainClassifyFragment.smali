.class public Lcom/join/mgps/activity/MGMainClassifyFragment;
.super Landroidx/fragment/app/Fragment;
.source "MGMainClassifyFragment.java"

# interfaces
.implements Lcom/join/mgps/pref/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MGMainClassifyFragment$k;,
        Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c04c7
.end annotation


# static fields
.field public static final H:Ljava/lang/String; = "MGMainClassifyFragment"


# instance fields
.field A:Landroid/widget/ToggleButton;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field B:Lcom/join/mgps/rpc/d;

.field private C:I

.field D:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private E:Lcom/join/mgps/pref/f;

.field F:[I

.field G:Ljava/lang/String;

.field private a:Landroid/content/Context;

.field private b:Lcom/join/mgps/activity/d;

.field private c:Lcom/join/mgps/activity/d;

.field private d:Lcom/join/mgps/activity/d;

.field private e:Lcom/join/mgps/customview/d0;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CategorySimpleBean;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/widget/PopupWindow;

.field private j:Landroid/widget/PopupWindow;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field final p:[Ljava/lang/String;

.field final q:[Ljava/lang/String;

.field r:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field s:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field t:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field u:Lcom/join/mgps/customview/MViewpagerV4;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field v:Lcom/join/mgps/customview/SlidingTabLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field w:Landroid/widget/ToggleButton;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field x:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field y:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field z:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->f:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->g:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->h:Ljava/util/List;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->i:Landroid/widget/PopupWindow;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Landroid/widget/PopupWindow;

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->k:Ljava/lang/String;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->l:I

    const v1, -0x8c8c8d

    .line 9
    iput v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->m:I

    const v1, -0xb8b00

    .line 10
    iput v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->n:I

    const/high16 v1, -0x62000000

    .line 11
    iput v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->o:I

    const-string v1, "\u5168\u90e8"

    .line 12
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->p:[Ljava/lang/String;

    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->q:[Ljava/lang/String;

    const/16 v0, 0xe

    .line 14
    iput v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->C:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->F:[I

    return-void
.end method

.method private M()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->D:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isReloadClassify()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->E:Lcom/join/mgps/pref/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/join/mgps/pref/f;->callbackDownloadCenterVisible(Landroid/os/Bundle;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->D:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirstClickClassify()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->E:Lcom/join/mgps/pref/f;

    invoke-interface {v0, v1}, Lcom/join/mgps/pref/f;->callbackClassifyTipsVisible(Landroid/os/Bundle;)V

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->g:Ljava/util/List;

    const-string v2, "\u6700\u70ed"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->g:Ljava/util/List;

    const-string v2, "\u98d9\u5347"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->g:Ljava/util/List;

    const-string v2, "\u65b0\u9510"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "3"

    .line 10
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->k:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/join/mgps/activity/d;->Z(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/activity/d;

    move-result-object v3

    iput-object v3, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->d:Lcom/join/mgps/activity/d;

    .line 11
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v3, "2"

    .line 12
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->k:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/join/mgps/activity/d;->Z(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/activity/d;

    move-result-object v3

    iput-object v3, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Lcom/join/mgps/activity/d;

    .line 13
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v3, "1"

    .line 14
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->k:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/join/mgps/activity/d;->Z(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/activity/d;

    move-result-object v3

    iput-object v3, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->b:Lcom/join/mgps/activity/d;

    .line 15
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_4
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->u:Lcom/join/mgps/customview/MViewpagerV4;

    if-nez v2, :cond_5

    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c04c7

    invoke-virtual {v2, v3, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0909e9

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/customview/MViewpagerV4;

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->u:Lcom/join/mgps/customview/MViewpagerV4;

    .line 19
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->u:Lcom/join/mgps/customview/MViewpagerV4;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/MViewpagerV4;->setIntercept(Z)V

    .line 20
    new-instance v1, Lcom/join/mgps/customview/d0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->f:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->g:Ljava/util/List;

    invoke-direct {v1, v2, v3, v5}, Lcom/join/mgps/customview/d0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->e:Lcom/join/mgps/customview/d0;

    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->f:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->g:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/customview/d0;->d(Ljava/util/List;Ljava/util/List;)V

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->e:Lcom/join/mgps/customview/d0;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->u:Lcom/join/mgps/customview/MViewpagerV4;

    iget-object v2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->e:Lcom/join/mgps/customview/d0;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->u:Lcom/join/mgps/customview/MViewpagerV4;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->v:Lcom/join/mgps/customview/SlidingTabLayout;

    const v2, 0x7f0c00dd

    const v3, 0x1020014

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/customview/SlidingTabLayout;->setCustomTabView(II)V

    .line 26
    iget v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->l:I

    const/16 v2, 0x21c

    if-lt v1, v2, :cond_6

    .line 27
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->v:Lcom/join/mgps/customview/SlidingTabLayout;

    div-int/lit8 v1, v1, 0x14

    invoke-virtual {v2, v1}, Lcom/join/mgps/customview/SlidingTabLayout;->setMarginWidth(I)V

    goto :goto_2

    .line 28
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->v:Lcom/join/mgps/customview/SlidingTabLayout;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/SlidingTabLayout;->setMarginWidth(I)V

    .line 29
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->v:Lcom/join/mgps/customview/SlidingTabLayout;

    new-array v2, v4, [I

    const v3, -0xd75d6

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->v:Lcom/join/mgps/customview/SlidingTabLayout;

    invoke-virtual {v0, v4}, Lcom/join/mgps/customview/SlidingTabLayout;->setDistributeEvenly(Z)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->v:Lcom/join/mgps/customview/SlidingTabLayout;

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->u:Lcom/join/mgps/customview/MViewpagerV4;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method static synthetic N(Lcom/join/mgps/activity/MGMainClassifyFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic O(Lcom/join/mgps/activity/MGMainClassifyFragment;)Lcom/join/mgps/pref/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->E:Lcom/join/mgps/pref/f;

    return-object p0
.end method

.method static synthetic P(Lcom/join/mgps/activity/MGMainClassifyFragment;)Lcom/join/mgps/activity/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->b:Lcom/join/mgps/activity/d;

    return-object p0
.end method

.method static synthetic Q(Lcom/join/mgps/activity/MGMainClassifyFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->m:I

    return p0
.end method

.method static synthetic R(Lcom/join/mgps/activity/MGMainClassifyFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->n:I

    return p0
.end method

.method static synthetic S(Lcom/join/mgps/activity/MGMainClassifyFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->i:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private T(Lcom/join/mgps/dto/CategoryBean;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CategoryBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CategorySimpleBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CategoryBean;->getMessages()Lcom/join/mgps/dto/CategoryMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/CategoryMessageBean;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CategoryBean;->getMessages()Lcom/join/mgps/dto/CategoryMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/CategoryMessageBean;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CategoryBean;->getMessages()Lcom/join/mgps/dto/CategoryMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CategoryMessageBean;->getData()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CategoryDataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CategoryDataBean;->getGame_type()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static X(I)Lcom/join/mgps/activity/MGMainClassifyFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/j1;

    invoke-direct {v0}, Lcom/join/mgps/activity/j1;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MGMainClassifyFragment"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method U()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->x:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->A:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method V()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->W()Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->B:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->W0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/CategoryBean;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->T(Lcom/join/mgps/dto/CategoryBean;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->f0(Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->h0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->h0()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->h0()V

    :goto_0
    return-void
.end method

.method public W()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getCategoryRequestBean()Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    return-object v0
.end method

.method Z()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Where;->classify:Lcom/papa/sim/statistic/Where;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->m2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/SearchHintActivity_;->S1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method a0(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->d:Lcom/join/mgps/activity/d;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/d;->l0(Ljava/lang/String;)V

    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->B:Lcom/join/mgps/rpc/d;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->a:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->E:Lcom/join/mgps/pref/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/join/mgps/pref/f;->callbackDownloadCenterVisible(Landroid/os/Bundle;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->h:Ljava/util/List;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->a:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 6
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->l:I

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "MGMainClassifyFragment"

    .line 8
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xe

    .line 9
    iput v3, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->C:I

    if-eqz v0, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 10
    :pswitch_0
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->DC:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    goto :goto_1

    .line 11
    :pswitch_1
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->ONS:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    goto :goto_1

    .line 12
    :pswitch_2
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->N64:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    goto :goto_1

    .line 13
    :pswitch_3
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->GBC:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    goto :goto_1

    .line 14
    :pswitch_4
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->NDS:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    goto :goto_1

    .line 15
    :pswitch_5
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->WSC:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    goto :goto_1

    .line 16
    :pswitch_6
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->LARGE_SINGLE:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    goto :goto_1

    .line 17
    :pswitch_7
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->PS:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    goto :goto_1

    .line 18
    :pswitch_8
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->MD:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    goto :goto_1

    .line 19
    :pswitch_9
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->FEATURED_ONLINE:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    goto :goto_1

    .line 20
    :pswitch_a
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->PSP:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    goto :goto_1

    .line 21
    :pswitch_b
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->SFC:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    goto :goto_1

    .line 22
    :pswitch_c
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->GBA:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    goto :goto_1

    .line 23
    :pswitch_d
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->FC:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    goto :goto_1

    .line 24
    :pswitch_e
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->FBA:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->k:Ljava/lang/String;

    const-string v0, "\u7b5b\u9009"

    .line 26
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->c0(Ljava/lang/String;)V

    :goto_1
    if-eqz v1, :cond_2

    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->id()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {v1}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->titleAbbr()Ljava/lang/String;

    move-result-object v1

    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->k:Ljava/lang/String;

    .line 30
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->c0(Ljava/lang/String;)V

    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->g0()V

    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->V()V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/join/mgps/activity/MGMainClassifyFragment$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGMainClassifyFragment$b;-><init>(Lcom/join/mgps/activity/MGMainClassifyFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->A:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->A:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/join/mgps/activity/MGMainClassifyFragment$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGMainClassifyFragment$c;-><init>(Lcom/join/mgps/activity/MGMainClassifyFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method b0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->d:Lcom/join/mgps/activity/d;

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->q:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/d;->m0(Ljava/lang/String;)V

    return-void
.end method

.method c0(Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->values()[Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 3
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    aget-object p1, v0, v1

    invoke-virtual {p1}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->titleAbbr()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->A:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->A:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->A:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    return-void
.end method

.method d0(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Lcom/join/mgps/activity/d;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/d;->l0(Ljava/lang/String;)V

    return-void
.end method

.method e0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Lcom/join/mgps/activity/d;

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->q:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/d;->m0(Ljava/lang/String;)V

    return-void
.end method

.method f0(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CategorySimpleBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->s:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->r:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-static {}, Ln1/f;->n()Ln1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/b;->a()I

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 8
    new-instance v0, Lcom/join/mgps/db/tables/CategoryRecordTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/CategoryRecordTable;-><init>()V

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CategorySimpleBean;

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/dto/CategorySimpleBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/join/mgps/db/tables/CategoryRecordTable;->setId(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/CategorySimpleBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/join/mgps/db/tables/CategoryRecordTable;->setTitle(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/dto/CategorySimpleBean;->getIco_remote()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/join/mgps/db/tables/CategoryRecordTable;->setIco_remote(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2}, Lcom/join/mgps/dto/CategorySimpleBean;->getShow_index()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/join/mgps/db/tables/CategoryRecordTable;->setShow_index(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2}, Lcom/join/mgps/dto/CategorySimpleBean;->getGame_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/db/tables/CategoryRecordTable;->setGame_num(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Ln1/f;->n()Ln1/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lg1/b;->k(Ljava/lang/Object;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->M()V

    return-void
.end method

.method g0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->s:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->t:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method h0()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Ln1/f;->n()Ln1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/b;->d()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/db/tables/CategoryRecordTable;

    .line 5
    new-instance v4, Lcom/join/mgps/dto/CategorySimpleBean;

    invoke-direct {v4}, Lcom/join/mgps/dto/CategorySimpleBean;-><init>()V

    .line 6
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/CategoryRecordTable;->getShow_index()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/CategorySimpleBean;->setShow_index(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/CategoryRecordTable;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/CategorySimpleBean;->setId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/CategoryRecordTable;->getGame_num()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/CategorySimpleBean;->setGame_num(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/CategoryRecordTable;->getIco_remote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/CategorySimpleBean;->setIco_remote(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/CategoryRecordTable;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/CategorySimpleBean;->setTitle(Ljava/lang/String;)V

    .line 11
    iget-object v3, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->h:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->h:Ljava/util/List;

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->M()V

    goto :goto_1

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method i0()V
    .locals 18
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v2, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 7
    new-instance v5, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v3, v6}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 8
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->a:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance v8, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v8, v3, v3}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget v8, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->o:I

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 11
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 13
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 14
    new-instance v8, Landroid/widget/Button;

    iget-object v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->a:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v9, "\u5168\u90e8"

    .line 15
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->C:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextSize(F)V

    .line 17
    iget v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->m:I

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 18
    iget v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->l:I

    const/16 v10, 0x3c0

    if-le v9, v10, :cond_0

    .line 19
    div-int/lit8 v11, v9, 0xf

    div-int/lit8 v12, v9, 0x19

    div-int/lit8 v13, v9, 0xf

    div-int/lit8 v9, v9, 0x19

    invoke-virtual {v5, v11, v12, v13, v9}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 20
    :cond_0
    div-int/lit8 v11, v9, 0x1e

    div-int/lit8 v12, v9, 0x19

    div-int/lit8 v13, v9, 0x1e

    div-int/lit8 v9, v9, 0x14

    invoke-virtual {v5, v11, v12, v13, v9}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    :goto_0
    const/16 v9, 0x11

    .line 21
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setGravity(I)V

    .line 22
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    new-instance v5, Lcom/join/mgps/activity/MGMainClassifyFragment$g;

    invoke-direct {v5, v0, v8}, Lcom/join/mgps/activity/MGMainClassifyFragment$g;-><init>(Lcom/join/mgps/activity/MGMainClassifyFragment;Landroid/widget/Button;)V

    invoke-virtual {v8, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 24
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 25
    iget-object v5, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v11, "\u5206\u7c7b"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v11, 0x0

    if-eqz v5, :cond_1

    const v5, 0x7f0802ad

    .line 26
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 27
    iget v5, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->n:I

    invoke-virtual {v8, v5}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const v5, 0x7f0802ac

    .line 28
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 29
    iget v5, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->m:I

    invoke-virtual {v8, v5}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v5, 0x0

    .line 30
    :goto_1
    new-instance v8, Lcom/join/mgps/customview/MyRadioGroup;

    iget-object v12, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->a:Landroid/content/Context;

    invoke-direct {v8, v12}, Lcom/join/mgps/customview/MyRadioGroup;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 32
    new-instance v12, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v12, v3, v6}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 33
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget v13, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->l:I

    div-int/lit8 v13, v13, 0x14

    invoke-virtual {v12, v11, v11, v11, v13}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    .line 35
    iget v12, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->l:I

    if-le v12, v10, :cond_2

    .line 36
    div-int/lit8 v13, v12, 0xf

    div-int/lit8 v12, v12, 0xf

    invoke-virtual {v8, v13, v11, v12, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_2

    .line 37
    :cond_2
    div-int/lit8 v13, v12, 0x1e

    div-int/lit8 v12, v12, 0x1e

    invoke-virtual {v8, v13, v11, v12, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 38
    :goto_2
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 39
    new-instance v12, Landroid/widget/RadioGroup$LayoutParams;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v12, v3, v6, v13}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    .line 40
    iget v14, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->l:I

    const/16 v15, 0x1c

    if-lt v14, v10, :cond_3

    .line 41
    invoke-virtual {v12, v11, v11, v15, v11}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    .line 42
    :cond_3
    new-instance v14, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v14, v3, v6, v13}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    .line 43
    iget v2, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->l:I

    if-lt v2, v10, :cond_4

    const/16 v2, 0xe

    .line 44
    invoke-virtual {v14, v2, v11, v2, v11}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    .line 45
    :cond_4
    new-instance v2, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v2, v3, v6, v13}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    .line 46
    iget v13, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->l:I

    if-lt v13, v10, :cond_5

    .line 47
    invoke-virtual {v2, v15, v11, v11, v11}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    :cond_5
    const/4 v10, 0x0

    .line 48
    :goto_3
    iget-object v13, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->h:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v15, 0x2

    add-int/2addr v13, v15

    div-int/lit8 v13, v13, 0x3

    if-ge v10, v13, :cond_f

    .line 49
    new-instance v13, Landroid/widget/LinearLayout;

    iget-object v15, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->a:Landroid/content/Context;

    invoke-direct {v13, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v15, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v15, v3, v6}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52
    new-instance v15, Landroid/widget/RadioButton;

    iget-object v6, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->a:Landroid/content/Context;

    invoke-direct {v15, v6}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    mul-int/lit8 v6, v10, 0x3

    .line 53
    iget-object v3, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_8

    .line 54
    iget-object v3, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->h:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/CategorySimpleBean;

    .line 55
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v15, v9}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v9, 0x11

    .line 56
    invoke-virtual {v15, v9}, Landroid/widget/RadioButton;->setGravity(I)V

    .line 57
    iget v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->m:I

    invoke-virtual {v15, v9}, Landroid/widget/RadioButton;->setTextColor(I)V

    const v9, 0x7f0802b1

    .line 58
    invoke-virtual {v15, v9}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    if-nez v5, :cond_7

    .line 59
    invoke-virtual {v3}, Lcom/join/mgps/dto/CategorySimpleBean;->getTitle()Ljava/lang/String;

    move-result-object v9

    iget-object v11, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Landroid/widget/ToggleButton;

    invoke-virtual {v11}, Landroid/widget/ToggleButton;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    .line 60
    invoke-virtual {v15, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 61
    iget v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->n:I

    invoke-virtual {v15, v9}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_4

    :cond_6
    const/4 v9, 0x0

    .line 62
    invoke-virtual {v15, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 63
    iget v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->m:I

    invoke-virtual {v15, v9}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 64
    :cond_7
    :goto_4
    invoke-virtual {v3}, Lcom/join/mgps/dto/CategorySimpleBean;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->C:I

    int-to-float v9, v9

    invoke-virtual {v15, v9}, Landroid/widget/RadioButton;->setTextSize(F)V

    .line 66
    new-instance v9, Lcom/join/mgps/activity/MGMainClassifyFragment$h;

    invoke-direct {v9, v0, v15, v3}, Lcom/join/mgps/activity/MGMainClassifyFragment$h;-><init>(Lcom/join/mgps/activity/MGMainClassifyFragment;Landroid/widget/RadioButton;Lcom/join/mgps/dto/CategorySimpleBean;)V

    invoke-virtual {v15, v9}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    :cond_8
    new-instance v3, Landroid/widget/RadioButton;

    iget-object v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->a:Landroid/content/Context;

    invoke-direct {v3, v9}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const/16 v9, 0x11

    .line 68
    invoke-virtual {v3, v9}, Landroid/widget/RadioButton;->setGravity(I)V

    .line 69
    iget v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->m:I

    invoke-virtual {v3, v9}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 70
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    const/4 v11, 0x0

    invoke-direct {v9, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v9}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const v9, 0x7f0802b1

    .line 71
    invoke-virtual {v3, v9}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 72
    iget v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->C:I

    int-to-float v9, v9

    invoke-virtual {v3, v9}, Landroid/widget/RadioButton;->setTextSize(F)V

    add-int/lit8 v9, v6, 0x1

    .line 73
    iget-object v11, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->h:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    move-object/from16 v16, v7

    const-string v7, ""

    move-object/from16 v17, v1

    if-ge v9, v11, :cond_b

    const/4 v11, 0x0

    .line 74
    invoke-virtual {v3, v11}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 75
    iget-object v11, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->h:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/CategorySimpleBean;

    if-nez v5, :cond_a

    .line 76
    invoke-virtual {v9}, Lcom/join/mgps/dto/CategorySimpleBean;->getTitle()Ljava/lang/String;

    move-result-object v11

    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    .line 77
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 78
    iget v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->n:I

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    .line 79
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 80
    iget v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->m:I

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 81
    :cond_a
    :goto_5
    new-instance v1, Lcom/join/mgps/activity/MGMainClassifyFragment$i;

    invoke-direct {v1, v0, v3, v9}, Lcom/join/mgps/activity/MGMainClassifyFragment$i;-><init>(Lcom/join/mgps/activity/MGMainClassifyFragment;Landroid/widget/RadioButton;Lcom/join/mgps/dto/CategorySimpleBean;)V

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 82
    invoke-virtual {v9}, Lcom/join/mgps/dto/CategorySimpleBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_b
    const/4 v1, 0x4

    .line 83
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 84
    invoke-virtual {v3, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_6
    new-instance v1, Landroid/widget/RadioButton;

    iget-object v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->a:Landroid/content/Context;

    invoke-direct {v1, v9}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const/16 v9, 0x11

    .line 86
    invoke-virtual {v1, v9}, Landroid/widget/RadioButton;->setGravity(I)V

    .line 87
    iget v11, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->m:I

    invoke-virtual {v1, v11}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 88
    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    const/4 v9, 0x0

    invoke-direct {v11, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v11}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const v11, 0x7f0802b1

    .line 89
    invoke-virtual {v1, v11}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 90
    iget v11, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->C:I

    int-to-float v11, v11

    invoke-virtual {v1, v11}, Landroid/widget/RadioButton;->setTextSize(F)V

    add-int/lit8 v6, v6, 0x2

    .line 91
    iget-object v11, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->h:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_e

    .line 92
    invoke-virtual {v1, v9}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 93
    iget-object v7, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->h:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/CategorySimpleBean;

    if-nez v5, :cond_d

    .line 94
    invoke-virtual {v6}, Lcom/join/mgps/dto/CategorySimpleBean;->getTitle()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Landroid/widget/ToggleButton;

    invoke-virtual {v9}, Landroid/widget/ToggleButton;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    .line 95
    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 96
    iget v7, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->n:I

    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_7

    :cond_c
    const/4 v7, 0x0

    .line 97
    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 98
    iget v7, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->m:I

    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 99
    :cond_d
    :goto_7
    new-instance v7, Lcom/join/mgps/activity/MGMainClassifyFragment$j;

    invoke-direct {v7, v0, v1, v6}, Lcom/join/mgps/activity/MGMainClassifyFragment$j;-><init>(Lcom/join/mgps/activity/MGMainClassifyFragment;Landroid/widget/RadioButton;Lcom/join/mgps/dto/CategorySimpleBean;)V

    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    invoke-virtual {v6}, Lcom/join/mgps/dto/CategorySimpleBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 101
    :cond_e
    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x4

    .line 102
    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 103
    :goto_8
    invoke-virtual {v13, v15, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    invoke-virtual {v13, v3, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    invoke-virtual {v13, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->l:I

    div-int/lit8 v1, v1, 0x28

    const/4 v3, 0x0

    invoke-virtual {v13, v3, v3, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 107
    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, v16

    move-object/from16 v1, v17

    const/4 v3, -0x1

    const/4 v6, -0x2

    const/16 v9, 0x11

    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_f
    move-object/from16 v17, v1

    move-object/from16 v16, v7

    .line 108
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 109
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    :cond_10
    new-instance v1, Landroid/widget/PopupWindow;

    iget v2, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->l:I

    move-object/from16 v3, v17

    const/4 v4, -0x1

    invoke-direct {v1, v3, v2, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->i:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    .line 111
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 112
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 113
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->i:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-array v1, v15, [I

    .line 114
    iget-object v2, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->A:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 115
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->i:Landroid/widget/PopupWindow;

    iget-object v2, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->A:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 117
    new-instance v1, Lcom/join/mgps/activity/MGMainClassifyFragment$a;

    invoke-direct {v1, v0}, Lcom/join/mgps/activity/MGMainClassifyFragment$a;-><init>(Lcom/join/mgps/activity/MGMainClassifyFragment;)V

    move-object/from16 v2, v16

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->i:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/join/mgps/activity/MGMainClassifyFragment$k;

    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/MGMainClassifyFragment$k;-><init>(Lcom/join/mgps/activity/MGMainClassifyFragment;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method j0()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->A:Landroid/widget/ToggleButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 2
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 4
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->x:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->y:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->E:Lcom/join/mgps/pref/f;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/join/mgps/pref/f;->callbackDownloadCenterVisible(Landroid/os/Bundle;)V

    .line 7
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->A:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->G:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->values()[Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    move-result-object v1

    const/4 v4, 0x0

    .line 9
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 10
    iget-object v5, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->G:Ljava/lang/String;

    aget-object v6, v1, v4

    invoke-virtual {v6}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->titleAbbr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11
    aget-object v4, v1, v4

    invoke-virtual {v4}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->title()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->G:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_1
    :goto_1
    new-instance v4, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 13
    new-instance v6, Landroid/widget/ScrollView;

    iget-object v7, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->a:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {v6, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-virtual {v6, v5}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 16
    new-instance v7, Landroid/widget/RadioGroup;

    iget-object v8, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->a:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    .line 17
    invoke-virtual {v7, v8}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 18
    new-instance v9, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v9, v4}, Landroid/widget/RadioGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v7, v9}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 19
    :goto_2
    array-length v10, v1

    if-ge v4, v10, :cond_4

    .line 20
    aget-object v10, v1, v4

    invoke-virtual {v10}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->id()Ljava/lang/String;

    move-result-object v10

    .line 21
    aget-object v11, v1, v4

    invoke-virtual {v11}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->title()Ljava/lang/String;

    move-result-object v11

    .line 22
    aget-object v12, v1, v4

    invoke-virtual {v12}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->resId()I

    move-result v12

    .line 23
    new-instance v13, Landroid/widget/RadioButton;

    iget-object v14, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->a:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v14, Landroid/widget/RadioGroup$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v8, 0x7f070aff

    invoke-virtual {v15, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v14, v5, v8}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 25
    new-instance v8, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v8, v14}, Landroid/widget/RadioGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v13, v8}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {v13, v10}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 28
    iget-object v8, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->G:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const v11, -0xc3c3c4

    if-eqz v8, :cond_2

    const v8, -0xb8b00

    .line 29
    invoke-virtual {v13, v8}, Landroid/widget/RadioButton;->setTextColor(I)V

    move v9, v4

    goto :goto_3

    .line 30
    :cond_2
    invoke-virtual {v13, v11}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 31
    :goto_3
    invoke-virtual {v13, v11}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 32
    iget v8, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->l:I

    const/16 v11, 0x1e0

    if-ne v8, v11, :cond_3

    const/high16 v8, 0x41600000    # 14.0f

    .line 33
    invoke-virtual {v13, v8}, Landroid/widget/RadioButton;->setTextSize(F)V

    goto :goto_4

    :cond_3
    const/high16 v8, 0x41800000    # 16.0f

    .line 34
    invoke-virtual {v13, v8}, Landroid/widget/RadioButton;->setTextSize(F)V

    .line 35
    :goto_4
    iget v8, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->l:I

    div-int/lit8 v11, v8, 0x14

    div-int/lit8 v14, v8, 0x23

    div-int/lit8 v15, v8, 0x10

    div-int/lit8 v8, v8, 0x23

    invoke-virtual {v13, v11, v14, v15, v8}, Landroid/widget/RadioButton;->setPadding(IIII)V

    .line 36
    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const v11, 0x106000d

    invoke-direct {v8, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v13, v8}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 38
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 39
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 40
    invoke-virtual {v8, v2, v2, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0802b3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 42
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 43
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    .line 44
    invoke-virtual {v11, v2, v2, v12, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 45
    invoke-virtual {v13, v8, v3, v11, v3}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/16 v8, 0xa

    .line 46
    invoke-virtual {v13, v8}, Landroid/widget/RadioButton;->setCompoundDrawablePadding(I)V

    const/16 v8, 0x13

    .line 47
    invoke-virtual {v13, v8}, Landroid/widget/RadioButton;->setGravity(I)V

    .line 48
    new-instance v8, Lcom/join/mgps/activity/MGMainClassifyFragment$d;

    invoke-direct {v8, v0, v13, v10}, Lcom/join/mgps/activity/MGMainClassifyFragment$d;-><init>(Lcom/join/mgps/activity/MGMainClassifyFragment;Landroid/widget/RadioButton;Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 49
    new-instance v8, Lcom/join/mgps/activity/MGMainClassifyFragment$e;

    invoke-direct {v8, v0}, Lcom/join/mgps/activity/MGMainClassifyFragment$e;-><init>(Lcom/join/mgps/activity/MGMainClassifyFragment;)V

    invoke-virtual {v13, v8}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {v7, v13}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 51
    new-instance v8, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v10, 0x1

    invoke-direct {v8, v5, v10}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 52
    new-instance v10, Landroid/view/View;

    iget-object v11, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->a:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v11, -0x121213

    .line 53
    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    invoke-virtual {v10, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-virtual {v7, v10}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_4
    mul-int/lit8 v9, v9, 0x2

    .line 56
    invoke-virtual {v7, v9}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 57
    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 58
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->a:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 59
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-direct {v4, v6, v1, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v4, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Landroid/widget/PopupWindow;

    .line 60
    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 61
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 62
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->A:Landroid/widget/ToggleButton;

    iget-object v3, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->F:[I

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->getLocationOnScreen([I)V

    .line 64
    invoke-virtual {v6, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 65
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Landroid/widget/PopupWindow;

    iget-object v2, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->A:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 66
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/join/mgps/activity/MGMainClassifyFragment$f;

    invoke-direct {v2, v0}, Lcom/join/mgps/activity/MGMainClassifyFragment$f;-><init>(Lcom/join/mgps/activity/MGMainClassifyFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/MGMainActivity;

    iput-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->E:Lcom/join/mgps/pref/f;

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->D:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isFirstClickClassify()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->D:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isReloadClassify()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->E:Lcom/join/mgps/pref/f;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/join/mgps/pref/f;->callbackClassifyTipsVisible(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->g0()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->V()V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method public v(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "GameType"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RomType"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Landroid/widget/ToggleButton;

    const-string v2, "\u5206\u7c7b"

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    const-string v1, "\u7b5b\u9009"

    .line 6
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->c0(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->b:Lcom/join/mgps/activity/d;

    invoke-virtual {v1, v0, p1}, Lcom/join/mgps/activity/d;->n0(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Lcom/join/mgps/activity/d;

    invoke-virtual {v1, v0, p1}, Lcom/join/mgps/activity/d;->n0(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->d:Lcom/join/mgps/activity/d;

    invoke-virtual {v1, v0, p1}, Lcom/join/mgps/activity/d;->n0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
