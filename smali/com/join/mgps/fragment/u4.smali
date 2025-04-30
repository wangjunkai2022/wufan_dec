.class public Lcom/join/mgps/fragment/u4;
.super Landroidx/fragment/app/Fragment;
.source "UserCenterFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/u4$h;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c022e
.end annotation


# instance fields
.field a:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/GridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Lcom/join/mgps/fragment/u4$h;

.field o:Landroid/view/View;

.field private p:Lcom/join/mgps/dto/AccountBean;

.field private q:Landroid/app/Activity;

.field r:Lcom/join/mgps/rpc/b;

.field private s:Lq/rorbin/badgeview/a;

.field t:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field u:Lcom/join/mgps/rpc/d;

.field v:Z

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;"
        }
    .end annotation
.end field

.field volatile x:Z

.field y:Lcom/join/mgps/rpc/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->o:Landroid/view/View;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/fragment/u4;->v:Z

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/u4;->w:Ljava/util/List;

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/fragment/u4;->x:Z

    return-void
.end method

.method static synthetic M(Lcom/join/mgps/fragment/u4;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/u4;->w:Ljava/util/List;

    return-object p0
.end method

.method static synthetic N(Lcom/join/mgps/fragment/u4;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic O(Lcom/join/mgps/fragment/u4;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    return-object p0
.end method

.method static synthetic P(Lcom/join/mgps/fragment/u4;Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    return-object p1
.end method

.method private addDivider(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->createItem()Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->createItem()Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->createItem()Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPlaceHolder(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 1
    new-instance v1, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    invoke-direct {v1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;-><init>()V

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->setPlaceHolder(Z)V

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isLogined()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLogined(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private showRedPoint(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_praise_surplus_number()I

    move-result v0

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getNotice_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getPraise_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getReplay_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    const-wide/16 v1, 0xc8

    .line 3
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->s:Lq/rorbin/badgeview/a;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lq/rorbin/badgeview/QBadgeView;

    iget-object v2, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lq/rorbin/badgeview/QBadgeView;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v1, p1}, Lq/rorbin/badgeview/QBadgeView;->c(Landroid/view/View;)Lq/rorbin/badgeview/a;

    move-result-object p1

    .line 7
    invoke-interface {p1, v0}, Lq/rorbin/badgeview/a;->q(I)Lq/rorbin/badgeview/a;

    move-result-object p1

    const/high16 v0, -0x10000

    .line 8
    invoke-interface {p1, v0}, Lq/rorbin/badgeview/a;->g(I)Lq/rorbin/badgeview/a;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07110f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lq/rorbin/badgeview/a;->v(FZ)Lq/rorbin/badgeview/a;

    move-result-object p1

    const v0, 0x800055

    .line 10
    invoke-interface {p1, v0}, Lq/rorbin/badgeview/a;->o(I)Lq/rorbin/badgeview/a;

    move-result-object p1

    const/4 v0, -0x1

    .line 11
    invoke-interface {p1, v0}, Lq/rorbin/badgeview/a;->l(I)Lq/rorbin/badgeview/a;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/u4;->s:Lq/rorbin/badgeview/a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private testAddCommentSelf(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method


# virtual methods
.method Q(Lcom/join/mgps/dto/UserCenterBean;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/UserCenterBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean;->getFirst_group()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5
    rem-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    rsub-int/lit8 v1, v1, 0x3

    .line 6
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/fragment/u4;->addPlaceHolder(Ljava/util/List;I)V

    .line 7
    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/u4;->addDivider(Ljava/util/List;)V

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean;->getSecond_group()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 11
    rem-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    rsub-int/lit8 v1, v1, 0x3

    .line 12
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/fragment/u4;->addPlaceHolder(Ljava/util/List;I)V

    .line 13
    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/u4;->addDivider(Ljava/util/List;)V

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean;->getThird_group()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean;->getThird_group()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean;->getThird_group()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 17
    rem-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    rsub-int/lit8 p1, p1, 0x3

    .line 18
    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/fragment/u4;->addPlaceHolder(Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->t(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->u:Lcom/join/mgps/rpc/d;

    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->y:Lcom/join/mgps/rpc/h;

    .line 4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->t:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->userCenterViewConfigsv2()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v2, Lcom/join/mgps/dto/UserCenterBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/UserCenterBean;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->w:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u4;->Q(Lcom/join/mgps/dto/UserCenterBean;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    :cond_0
    new-instance v0, Lcom/join/mgps/fragment/u4$h;

    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->w:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/fragment/u4$h;-><init>(Lcom/join/mgps/fragment/u4;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->n:Lcom/join/mgps/fragment/u4$h;

    .line 8
    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->m:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->m:Landroid/widget/GridView;

    new-instance v1, Lcom/join/mgps/fragment/u4$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/u4$a;-><init>(Lcom/join/mgps/fragment/u4;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->n:Lcom/join/mgps/fragment/u4$h;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->pullMyProfileInfo()V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->showNotifUi()V

    return-void
.end method

.method calculateVIPExpTime()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_exp_time()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v0, v2

    const-wide/32 v6, 0x5265c00

    .line 3
    div-long/2addr v4, v6

    .line 4
    iget-object v6, p0, Lcom/join/mgps/fragment/u4;->h:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    cmp-long v7, v0, v2

    if-lez v7, :cond_2

    .line 5
    iget-object v2, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 6
    iget-object v2, p0, Lcom/join/mgps/fragment/u4;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/fragment/u4;->d:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/fragment/u4;->h:Landroid/widget/TextView;

    const-string v6, "#FFCC9C"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Lcom/join/mgps/Util/x;->m(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u5230\u671f"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    :try_start_0
    invoke-static {v0, v1}, Lcom/join/mgps/Util/x;->q(J)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const-wide/16 v0, 0x1e

    cmp-long v6, v4, v0

    if-gtz v6, :cond_0

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n<font color=#FFFFFF>\u5269\u4f59"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\u5929</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x7f5

    if-le v3, v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->h:Landroid/widget/TextView;

    const-string v1, "\u7ec8\u751f\u4f1a\u5458"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-static {v0, v1}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->h:Landroid/widget/TextView;

    const-string v1, "#FFD4A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->h:Landroid/widget/TextView;

    const-string v1, "\u53bb\u5f00\u901a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->l:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/fragment/u4$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/u4$g;-><init>(Lcom/join/mgps/fragment/u4;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method changeMgState(Ljava/lang/String;I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->isOfficialAccount()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestMsgState(ILjava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/join/mgps/fragment/u4;->u:Lcom/join/mgps/rpc/d;

    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/d;->W(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResultValbean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultValbean;->isVal()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "UserCenter"

    if-eqz p1, :cond_2

    :try_start_1
    const-string p1, "changeMgState success"

    .line 7
    invoke-static {p2, p1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "changeMgState failure"

    .line 8
    invoke-static {p2, p1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method createItem()Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    invoke-direct {v0}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->setEmpty(Z)V

    return-object v0
.end method

.method getUserInfo()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    iget-boolean v1, p0, Lcom/join/mgps/fragment/u4;->x:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/join/mgps/fragment/u4;->x:Z

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 6
    :cond_1
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/AccountUserInfoRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;-><init>()V

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setUid(Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setToken(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 10
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setSign(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->r:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->d(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getSvip_level()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/AccountBean;->setSvip_level(I)V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/AccountBean;->setVip_level(I)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getLive_total_charm()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/AccountBean;->setLive_total_charm(I)V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getIs_anchor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/AccountBean;->setIs_anchor(I)V

    .line 19
    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getPapaMoney()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/join/mgps/dto/AccountBean;->setPapaMoney(J)V

    .line 20
    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMember_title()Lcom/join/mgps/dto/AccountBean$MemberInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/AccountBean;->setMember_title(Lcom/join/mgps/dto/AccountBean$MemberInfo;)V

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 22
    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountBean;->setNickname(Ljava/lang/String;)V

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    iget-object v3, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-virtual {v0, v1, v3}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 24
    iput-boolean v2, p0, Lcom/join/mgps/fragment/u4;->x:Z

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->refreshViews()V

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->getViewConfigs()V

    goto :goto_1

    .line 27
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v0

    const/16 v1, 0x2bd

    if-ne v0, v1, :cond_4

    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->tokenFailure()V

    goto :goto_1

    .line 29
    :cond_4
    iput-boolean v2, p0, Lcom/join/mgps/fragment/u4;->x:Z

    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->getViewConfigs()V

    goto :goto_1

    .line 31
    :cond_5
    iput-boolean v2, p0, Lcom/join/mgps/fragment/u4;->x:Z

    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->getViewConfigs()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 33
    iput-boolean v2, p0, Lcom/join/mgps/fragment/u4;->x:Z

    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->getViewConfigs()V

    .line 35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 36
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->touristLogin()V

    return-void

    .line 37
    :cond_7
    iput-boolean v2, p0, Lcom/join/mgps/fragment/u4;->x:Z

    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->loadViewConfigsFromLocal()V

    :goto_1
    return-void
.end method

.method getViewConfigs()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    if-eqz v1, :cond_4

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    if-nez v1, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-boolean v2, p0, Lcom/join/mgps/fragment/u4;->v:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lcom/join/mgps/fragment/u4;->v:Z

    .line 6
    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v5

    if-ne v5, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v3, v4, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getUserCenterViewConfigs(ILjava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/join/mgps/fragment/u4;->u:Lcom/join/mgps/rpc/d;

    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/d;->Z0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    move-result v2

    const/16 v3, 0x258

    if-ne v2, v3, :cond_3

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/join/mgps/fragment/u4;->t:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->userCenterViewConfigs()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->loadViewConfigsFromLocal()V

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->loadViewConfigsFromLocal()V

    .line 13
    :goto_1
    iput-boolean v0, p0, Lcom/join/mgps/fragment/u4;->v:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception v1

    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/fragment/u4;->v:Z

    .line 15
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->loadViewConfigsFromLocal()V

    goto :goto_3

    .line 17
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->loadViewConfigsFromLocal()V

    :goto_3
    return-void
.end method

.method goLogin()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method gotoTargetActivity(Lcom/join/mgps/dto/JumpInfoBean;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/JumpInfoBean;->getTpl_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/JumpInfoBean;->getJump_type()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/JumpInfoBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/JumpInfoBean;->getLink_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method hideRedPoint()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->s:Lq/rorbin/badgeview/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lq/rorbin/badgeview/a;->hide(Z)V

    :cond_0
    return-void
.end method

.method isActivityFinish()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isOfficialAccount()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method ll_copper()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    sget-object v1, Lcom/join/mgps/rpc/g;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/join/mgps/activity/ShareWebActivity_;->P2(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ShareWebActivity_$f0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method loadViewConfigsFromLocal()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->t:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->userCenterViewConfigs()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v2, Lcom/join/mgps/dto/UserCenterBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/UserCenterBean;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->w:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v2, p0, Lcom/join/mgps/fragment/u4;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/fragment/u4;->w:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u4;->Q(Lcom/join/mgps/dto/UserCenterBean;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->n:Lcom/join/mgps/fragment/u4$h;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->pullMyProfileInfo()V

    .line 8
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "UserCenter"

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadViewConfigsFromLocal exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->showNotifUi()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/u4;->r:Lcom/join/mgps/rpc/b;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->y(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/n;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/MGMainActivity;->getPositionNum()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->pullMyProfileInfo()V

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->refreshUserCenter()V

    .line 3
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_praise_surplus_number()I

    move-result v0

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getNotice_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getPraise_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getReplay_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/MApplication;->H:I

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->hideRedPoint()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->showNotifUi()V

    :cond_1
    :goto_0
    return-void
.end method

.method pullMyProfileInfo()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/fragment/u4;->y:Lcom/join/mgps/rpc/h;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, ""

    invoke-interface/range {v2 .. v7}, Lcom/join/mgps/rpc/h;->k(ILjava/lang/String;IILjava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;->getUser_info()Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;->getUnread_message()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u4;->updateAdapterByNewMsgCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public refreshUserCenter()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->refreshViews()V

    .line 3
    iget-boolean v0, p0, Lcom/join/mgps/fragment/u4;->x:Z

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->getUserInfo()V

    return-void
.end method

.method refreshViews()V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->c:Landroid/widget/TextView;

    const-string v1, "\u672a\u767b\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/a;

    new-instance v1, Lcom/facebook/drawee/drawable/n;

    const-string v2, "#99BDC9"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/facebook/drawee/drawable/n;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/a;->y(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f080c9f

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->f:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->g:Landroid/widget/TextView;

    const-string v2, "--"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->i:Landroid/widget/TextView;

    const-string v2, "---"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->e:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->l:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_5

    .line 15
    iget-object v4, p0, Lcom/join/mgps/fragment/u4;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v4, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->s(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v0

    const-string v4, "\u53bb\u5f00\u901a"

    const-string v5, "#FFD4A9"

    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->calculateVIPExpTime()V

    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 20
    iget-object v7, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    const/high16 v8, 0x41300000    # 11.0f

    invoke-static {v7, v8}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 21
    iget-object v7, p0, Lcom/join/mgps/fragment/u4;->h:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->h:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMember_title()Lcom/join/mgps/dto/AccountBean$MemberInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMember_title()Lcom/join/mgps/dto/AccountBean$MemberInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->getBattleTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->e:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/AccountBean;->getMember_title()Lcom/join/mgps/dto/AccountBean$MemberInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->getBattleTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAccount_type()I

    move-result v0

    const/4 v6, 0x2

    const-string v7, "#FFFFFF"

    if-ne v0, v6, :cond_3

    .line 29
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->f:Landroid/widget/TextView;

    const-string v2, "#F47500"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->f:Landroid/widget/TextView;

    const-string v2, "\u5b8c\u5584\u8d44\u6599 / \u9886\u793c\u5305 / \u62a2\u7ea2\u5305"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->f:Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->f:Landroid/widget/TextView;

    const v2, 0x7f080068

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v0, v2}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v0

    .line 34
    iget-object v2, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-static {v2, v3}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v2

    .line 35
    iget-object v3, p0, Lcom/join/mgps/fragment/u4;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v0, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 36
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 37
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->f:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 39
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->f:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getPapaMoney()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getSvip_level()I

    move-result v0

    if-nez v0, :cond_4

    .line 43
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->i:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 45
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->i:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->i:Landroid/widget/TextView;

    const v1, 0x7f080177

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 47
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SVIP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getSvip_level()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 48
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->l:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/fragment/u4$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/u4$b;-><init>(Lcom/join/mgps/fragment/u4;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->k:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/fragment/u4$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/u4$c;-><init>(Lcom/join/mgps/fragment/u4;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Lcom/join/mgps/fragment/u4$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/u4$d;-><init>(Lcom/join/mgps/fragment/u4;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/join/mgps/fragment/u4$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/u4$e;-><init>(Lcom/join/mgps/fragment/u4;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->j:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/fragment/u4$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/u4$f;-><init>(Lcom/join/mgps/fragment/u4;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showNotif()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->showNotifUi()V

    return-void
.end method

.method showNotifUi()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->n:Lcom/join/mgps/fragment/u4$h;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lcom/MApplication;->H:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/u4$h;->a(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->n:Lcom/join/mgps/fragment/u4$h;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->m:Landroid/widget/GridView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/join/mgps/fragment/u4$h$a;

    if-eqz v2, :cond_3

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/fragment/u4$h$a;

    .line 8
    iget-object v2, v0, Lcom/join/mgps/fragment/u4$h$a;->f:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v2, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    sget v2, Lcom/MApplication;->H:I

    if-lez v2, :cond_3

    .line 11
    iget-object v2, v0, Lcom/join/mgps/fragment/u4$h$a;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    sget v1, Lcom/MApplication;->H:I

    const/16 v2, 0x63

    if-le v1, v2, :cond_2

    .line 13
    iget-object v0, v0, Lcom/join/mgps/fragment/u4$h$a;->f:Landroid/widget/TextView;

    const-string v1, "+99"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, v0, Lcom/join/mgps/fragment/u4$h$a;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/MApplication;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->isActivityFinish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method tokenFailure()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const v0, 0x7f110267

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u4;->showToast(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->touristLogin()V

    return-void
.end method

.method touristLogin()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/fragment/u4;->isLogined()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/TouristLoginRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/TouristLoginRequestBean;-><init>()V

    const-string v3, "2"

    .line 4
    iget-object v4, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-static {v4}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/android/app/common/utils/j;->z()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setVersion(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setMac(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setSource(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->t:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->touriseTUID()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setTuid(J)V

    .line 10
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setSign(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->r:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TouristLoginRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->s(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 15
    iget-object v1, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-virtual {v1, v0, v3}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 16
    :cond_1
    iput-boolean v2, p0, Lcom/join/mgps/fragment/u4;->x:Z

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->refreshViews()V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->getUserInfo()V

    goto :goto_0

    .line 19
    :cond_2
    iput-boolean v2, p0, Lcom/join/mgps/fragment/u4;->x:Z

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u4;->showToast(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->loadViewConfigsFromLocal()V

    goto :goto_0

    .line 22
    :cond_3
    iput-boolean v2, p0, Lcom/join/mgps/fragment/u4;->x:Z

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->loadViewConfigsFromLocal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24
    iput-boolean v2, p0, Lcom/join/mgps/fragment/u4;->x:Z

    .line 25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->loadViewConfigsFromLocal()V

    goto :goto_0

    .line 27
    :cond_4
    iput-boolean v2, p0, Lcom/join/mgps/fragment/u4;->x:Z

    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->loadViewConfigsFromLocal()V

    :goto_0
    return-void
.end method

.method updateAdapterByNewMsgCount(I)V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u4;->w:Ljava/util/List;

    monitor-enter v0

    const/4 v1, -0x1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/fragment/u4;->w:Ljava/util/List;

    if-nez v2, :cond_1

    monitor-exit v0

    return-void

    .line 4
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    .line 5
    iget-object v5, p0, Lcom/join/mgps/fragment/u4;->w:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 6
    invoke-virtual {v5}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getSub()Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v5}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getSub()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/JumpInfoBean;

    .line 8
    invoke-virtual {v5}, Lcom/join/mgps/dto/JumpInfoBean;->getJump_type()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 9
    invoke-virtual {v5}, Lcom/join/mgps/dto/JumpInfoBean;->getLink_type()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_3

    const/16 v5, 0xf

    if-ne v6, v5, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-ltz v1, :cond_5

    .line 10
    iget-object v2, p0, Lcom/join/mgps/fragment/u4;->w:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->setUnReadCount(I)V

    .line 11
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/fragment/u4;->n:Lcom/join/mgps/fragment/u4$h;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->showNotifUi()V

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method public updateInfo(Landroid/content/Context;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/u4;->q:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/u4;->p:Lcom/join/mgps/dto/AccountBean;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->refreshUserCenter()V

    return-void
.end method
