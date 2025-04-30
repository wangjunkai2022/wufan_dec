.class public Lcom/join/mgps/activity/GameSearchFavoriteActivity;
.super Landroid/app/Activity;
.source "GameSearchFavoriteActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0043
.end annotation


# static fields
.field public static final s:I = 0x1

.field public static final t:I = 0x2

.field private static final u:I = 0xa


# instance fields
.field a:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field b:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Lcom/join/mgps/adapter/r3;

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field l:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field m:Lcom/join/mgps/rpc/h;

.field n:Lcom/join/mgps/rpc/d;

.field o:Ljava/lang/String;

.field private p:Z

.field private q:I

.field r:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->k:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->p:Z

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->q:I

    const/16 v0, 0x14

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->r:I

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/GameSearchFavoriteActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->p:Z

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/activity/GameSearchFavoriteActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->q:I

    return p1
.end method

.method private f()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->m()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->e()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->l()V

    :goto_0
    return-void
.end method


# virtual methods
.method c()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->m:Lcom/join/mgps/rpc/h;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->n:Lcom/join/mgps/rpc/d;

    .line 3
    iget v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x8

    if-ne v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->f:Landroid/widget/TextView;

    const-string v4, "\u6211\u7684\u6536\u85cf"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f09013e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/GameSearchFavoriteActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity$a;-><init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->i:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/GameSearchFavoriteActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity$b;-><init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/GameSearchFavoriteActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity$c;-><init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->i:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/GameSearchFavoriteActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity$d;-><init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 13
    :goto_0
    new-instance v0, Lcom/join/mgps/adapter/r3;

    iget-object v1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/r3;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->j:Lcom/join/mgps/adapter/r3;

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->i:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->i:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/GameSearchFavoriteActivity$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity$e;-><init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->i:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 17
    iget v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->a:I

    if-ne v0, v2, :cond_1

    .line 18
    invoke-direct {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->f()V

    goto :goto_1

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method d()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method e()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->o:Ljava/lang/String;

    iget v3, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->q:I

    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->g(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 3
    iget-object v3, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->n:Lcom/join/mgps/rpc/d;

    invoke-interface {v3, v0}, Lcom/join/mgps/rpc/d;->l0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/SearchAppBean;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchAppBean;->getMessages()Lcom/join/mgps/dto/SearchAppMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchAppMessageBean;->getData()Lcom/join/mgps/dto/SearchResultData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchResultData;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 8
    iget v4, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->r:I

    if-lt v3, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->p:Z

    goto :goto_0

    .line 9
    :cond_2
    iget v3, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->q:I

    if-le v3, v2, :cond_3

    .line 10
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->p:Z

    .line 11
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->o(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    .line 12
    iget v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->q:I

    if-gt v0, v2, :cond_b

    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u91cd\u8bd5"

    .line 13
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->n(Ljava/lang/String;)V

    goto :goto_3

    .line 14
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->m:Lcom/join/mgps/rpc/h;

    iget-object v3, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->l:Lcom/join/mgps/Util/b;

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->q:I

    invoke-interface {v0, v3, v4}, Lcom/join/mgps/rpc/h;->o0(Ljava/lang/String;I)Lcom/join/mgps/dto/ResultResMainBean;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->i()Z

    move-result v3

    if-eqz v3, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_a

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_2

    .line 17
    :cond_6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_8

    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_7

    const/4 v1, 0x1

    .line 20
    :cond_7
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->p:Z

    goto :goto_1

    .line 21
    :cond_8
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->p:Z

    .line 22
    :goto_1
    iget v1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->q:I

    if-gt v1, v2, :cond_9

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->h()V

    .line 24
    :cond_9
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->o(Ljava/util/List;)V

    goto :goto_3

    .line 25
    :cond_a
    :goto_2
    iget v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->q:I

    if-gt v0, v2, :cond_b

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->l()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    nop

    .line 27
    iget v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->q:I

    if-gt v0, v2, :cond_b

    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->l()V

    :cond_b
    :goto_3
    return-void
.end method

.method g(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget v4, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->r:I

    const-string v1, "searchInfo"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getSearchAutoRequestBean(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    return-object p1
.end method

.method h()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method i()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method j()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->f()V

    return-void
.end method

.method k()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method l()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method m()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method n(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method o(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->i:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->i:Lcom/join/mgps/customview/XListView2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->q:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->i:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 8
    iget-boolean p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->p:Z

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->i:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    goto :goto_0

    .line 10
    :cond_3
    iget p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->q:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->q:I

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->i:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->j:Lcom/join/mgps/adapter/r3;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
