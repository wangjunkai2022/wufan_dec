.class public Lcom/join/mgps/activity/ForumProfileMessageActivity;
.super Lcom/BaseActivity;
.source "ForumProfileMessageActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0431
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/join/mgps/adapter/ForumProfileMessageAdapter;

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field i:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field j:Lcom/join/mgps/rpc/h;

.field private k:I

.field private l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private t:I

.field u:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;

.field v:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->k:I

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->l:I

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->m:I

    const/16 v1, 0x10

    .line 5
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->n:I

    const/16 v1, 0x20

    .line 6
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->o:I

    const/16 v1, 0x11

    .line 7
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->p:I

    const/16 v1, 0x12

    .line 8
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->q:I

    const/16 v1, 0x14

    .line 9
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->r:I

    const/16 v1, 0x18

    .line 10
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->s:I

    .line 11
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->t:I

    .line 12
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageActivity$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity$a;-><init>(Lcom/join/mgps/activity/ForumProfileMessageActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->u:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;

    .line 13
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageActivity$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity$b;-><init>(Lcom/join/mgps/activity/ForumProfileMessageActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->v:Landroid/os/Handler;

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/ForumProfileMessageActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->l:I

    return p0
.end method

.method static synthetic F0(Lcom/join/mgps/activity/ForumProfileMessageActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->l:I

    return p1
.end method

.method static synthetic G0(Lcom/join/mgps/activity/ForumProfileMessageActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->k:I

    return p0
.end method

.method static synthetic H0(Lcom/join/mgps/activity/ForumProfileMessageActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->P0()V

    return-void
.end method

.method private M0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->b:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u6d88\u606f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->e:Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->d:Lcom/join/mgps/customview/XListView2;

    sget v1, Lcom/join/mgps/Util/i0;->e:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->d:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity$c;-><init>(Lcom/join/mgps/activity/ForumProfileMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->d:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity$d;-><init>(Lcom/join/mgps/activity/ForumProfileMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 6
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->f:Lcom/join/mgps/adapter/ForumProfileMessageAdapter;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->g:Ljava/util/List;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->f:Lcom/join/mgps/adapter/ForumProfileMessageAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->u:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->j(Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->d:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->f:Lcom/join/mgps/adapter/ForumProfileMessageAdapter;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private N0()V
    .locals 1

    const/16 v0, 0x12

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->I0(I)V

    return-void
.end method

.method private P0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->I0(I)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->N0()V

    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->O0()V

    goto :goto_0

    :cond_0
    const v0, 0x7f110206

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->showToast(Ljava/lang/String;)V

    const/16 v0, 0x11

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->I0(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method I0(I)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->t:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    .line 2
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->t:I

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto/16 :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->t:I

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto/16 :goto_1

    :cond_2
    or-int/2addr p1, v0

    .line 7
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->t:I

    const/16 p1, 0x1f

    const/16 v0, 0x1a

    const/16 v1, 0x16

    const/16 v2, -0xb

    .line 8
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->J0(I)Z

    move-result v2

    const/16 v3, 0x9

    const/16 v4, 0x10

    if-eqz v2, :cond_3

    .line 9
    iput v4, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->t:I

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageActivity$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity$e;-><init>(Lcom/join/mgps/activity/ForumProfileMessageActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v3}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->J0(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    iput v4, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->t:I

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const-string v0, "\u8fd8\u6ca1\u6709\u6536\u5230\u6d88\u606f\u54e6~"

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageActivity$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity$f;-><init>(Lcom/join/mgps/activity/ForumProfileMessageActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->J0(I)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->J0(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/16 p1, 0x11

    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->J0(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 19
    iput v4, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->t:I

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageActivity$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity$h;-><init>(Lcom/join/mgps/activity/ForumProfileMessageActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v3}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_1

    .line 22
    :cond_6
    :goto_0
    iput v4, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->t:I

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const-string v0, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageActivity$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity$g;-><init>(Lcom/join/mgps/activity/ForumProfileMessageActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v4}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method J0(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->t:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method K0(I)Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->e:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getPosts()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getPosts()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method L0(I)V
    .locals 12
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->l:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->U0()V

    .line 3
    :cond_1
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->l:I

    .line 4
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x18

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le p1, v2, :cond_2

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->T0()V

    .line 6
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v4

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 8
    iget-object v6, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->j:Lcom/join/mgps/rpc/h;

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v7

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v8

    sget v10, Lcom/join/mgps/Util/i0;->d:I

    const-string v11, ""

    move v9, p1

    invoke-interface/range {v6 .. v11}, Lcom/join/mgps/rpc/h;->t(ILjava/lang/String;IILjava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ForumData$ForumProfileMessageData;

    goto :goto_0

    .line 10
    :cond_3
    iput v3, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->l:I

    move-object v4, v5

    :goto_0
    const/16 v6, 0x14

    if-eqz v4, :cond_4

    .line 11
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$ForumProfileMessageData;->getMessage_list()Ljava/util/List;

    move-result-object v5

    goto :goto_1

    :cond_4
    if-ne p1, v2, :cond_5

    .line 12
    invoke-virtual {p0, v6}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->I0(I)V

    :cond_5
    :goto_1
    if-eqz v5, :cond_6

    .line 13
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_6

    .line 14
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->k:I

    .line 15
    invoke-virtual {p0, v5, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->V0(Ljava/util/List;I)V

    const/16 p1, 0x20

    .line 16
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->I0(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->l:I

    if-eq p1, v1, :cond_b

    goto :goto_2

    .line 18
    :cond_6
    :try_start_1
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->l:I

    if-ne p1, v2, :cond_7

    .line 19
    invoke-virtual {p0, v6}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->I0(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :cond_7
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->l:I

    if-eq p1, v1, :cond_8

    .line 21
    iput v3, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->l:I

    .line 22
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->U0()V

    return-void

    .line 23
    :cond_9
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->I0(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->l:I

    if-eq p1, v1, :cond_a

    .line 25
    iput v3, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->l:I

    .line 26
    :cond_a
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->U0()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 27
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->I0(I)V

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->l:I

    if-eq p1, v1, :cond_b

    .line 30
    :goto_2
    iput v3, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->l:I

    .line 31
    :cond_b
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->U0()V

    goto :goto_4

    .line 32
    :goto_3
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->l:I

    if-eq v0, v1, :cond_c

    .line 33
    iput v3, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->l:I

    .line 34
    :cond_c
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->U0()V

    .line 35
    throw p1

    :cond_d
    const p1, 0x7f110206

    .line 36
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->showToast(Ljava/lang/String;)V

    const/16 p1, 0x11

    .line 37
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->I0(I)V

    :goto_4
    return-void
.end method

.method O0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->L0(I)V

    return-void
.end method

.method Q0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->f:Lcom/join/mgps/adapter/ForumProfileMessageAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->h(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->f:Lcom/join/mgps/adapter/ForumProfileMessageAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method declared-synchronized R0()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->e:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;

    if-nez v1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->S0(Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->Q0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method S0(Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;Z)V
    .locals 27

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getPosts()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    .line 3
    new-instance v3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;

    sget-object v4, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;->PROFILE_HEADER:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

    new-instance v15, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getFrom_avatar_src()Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getFrom_nickname()Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getAdd_time()J

    move-result-wide v9

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v5

    const/4 v6, 0x1

    const/4 v14, 0x0

    if-lez v5, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v12

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getForum_auth()I

    move-result v5

    if-ne v5, v6, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 10
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->isFrom_officialAccount()Z

    move-result v16

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getComment_id()I

    move-result v17

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getFrom_type()Ljava/lang/String;

    move-result-object v18

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getRid()I

    move-result v19

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getVip_level()I

    move-result v20

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getSvip_level()I

    move-result v21

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v23, ""

    if-eqz v5, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;->getBattleTitle()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v22, v5

    goto :goto_2

    :cond_2
    move-object/from16 v22, v23

    .line 17
    :goto_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;->getBattleColor()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v24, v5

    goto :goto_3

    :cond_3
    move-object/from16 v24, v23

    :goto_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    move-result v25

    move-object v5, v15

    move/from16 v6, p2

    move/from16 v14, v16

    move-object/from16 v26, v2

    move-object v2, v15

    move/from16 v15, v17

    move-object/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v24

    move/from16 v22, v25

    invoke-direct/range {v5 .. v22}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;-><init>(ZLjava/lang/String;Ljava/lang/String;JZIZZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v3, v4, v2}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;Ljava/lang/Object;)V

    .line 18
    iget-object v2, v1, Lcom/join/mgps/activity/ForumProfileMessageActivity;->g:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v2, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;

    sget-object v3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;->PROFILE_MESSAGE_ITEM:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

    new-instance v12, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v5

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getFrom_type()Ljava/lang/String;

    move-result-object v6

    if-eqz v26, :cond_4

    .line 22
    invoke-virtual/range {v26 .. v26}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_4
    const-string v4, "\u6211"

    :goto_4
    move-object v7, v4

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getComment_id()I

    move-result v9

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getRid()I

    move-result v10

    const/4 v11, 0x0

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-direct {v2, v3, v12}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;Ljava/lang/Object;)V

    .line 26
    iget-object v3, v1, Lcom/join/mgps/activity/ForumProfileMessageActivity;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v2, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;

    sget-object v3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;->PROFILE_FOOTER:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

    new-instance v12, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;

    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v5

    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRs_list()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRs_list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRs_list()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    move-result-object v23

    :cond_5
    move-object/from16 v6, v23

    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_5
    move-object v7, v0

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getComment_id()I

    move-result v8

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getFrom_type()Ljava/lang/String;

    move-result-object v9

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getFrom_nickname()Ljava/lang/String;

    move-result-object v10

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getRid()I

    move-result v11

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v3, v12}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;Ljava/lang/Object;)V

    .line 35
    iget-object v0, v1, Lcom/join/mgps/activity/ForumProfileMessageActivity;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return-void
.end method

.method T0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method U0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->v:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->v:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method V0(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;",
            ">;I)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->k:I

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->U0()V

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->U0()V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->R0()V

    return-void
.end method

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->j:Lcom/join/mgps/rpc/h;

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->M0()V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->P0()V

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u7528\u6237\u672a\u767b\u5f55\uff0c\u8bf7\u767b\u5f55\uff01"

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->showToast(Ljava/lang/String;)V

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->t:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->P0()V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    add-int/2addr p2, p3

    sub-int/2addr p4, p2

    .line 1
    sget p1, Lcom/join/mgps/Util/i0;->f:I

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ge p4, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget p4, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->l:I

    const/4 v0, -0x1

    if-eq p4, v0, :cond_1

    const/4 p2, 0x1

    :cond_1
    and-int/2addr p1, p2

    if-eqz p1, :cond_2

    .line 3
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->k:I

    add-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->L0(I)V

    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
