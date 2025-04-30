.class public Lcom/join/mgps/activity/ForumProfileCommentActivity;
.super Lcom/BaseActivity;
.source "ForumProfileCommentActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c042c
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

.field d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/join/mgps/adapter/ForumProfileCommentAdapter;

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field j:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field k:Lcom/join/mgps/rpc/h;

.field private l:I

.field private m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private u:I

.field v:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;

.field w:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->l:I

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->m:I

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->n:I

    const/16 v1, 0x10

    .line 5
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->o:I

    const/16 v1, 0x20

    .line 6
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->p:I

    const/16 v1, 0x11

    .line 7
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->q:I

    const/16 v1, 0x12

    .line 8
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->r:I

    const/16 v1, 0x14

    .line 9
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->s:I

    const/16 v1, 0x18

    .line 10
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->t:I

    .line 11
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->u:I

    .line 12
    new-instance v0, Lcom/join/mgps/activity/ForumProfileCommentActivity$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity$a;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->v:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;

    .line 13
    new-instance v0, Lcom/join/mgps/activity/ForumProfileCommentActivity$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity$b;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->w:Landroid/os/Handler;

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/ForumProfileCommentActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->m:I

    return p0
.end method

.method static synthetic F0(Lcom/join/mgps/activity/ForumProfileCommentActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->m:I

    return p1
.end method

.method static synthetic G0(Lcom/join/mgps/activity/ForumProfileCommentActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->l:I

    return p0
.end method

.method static synthetic H0(Lcom/join/mgps/activity/ForumProfileCommentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->O0()V

    return-void
.end method

.method private L0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->b:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->f:Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->e:Lcom/join/mgps/customview/XListView2;

    sget v1, Lcom/join/mgps/Util/i0;->e:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->e:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/ForumProfileCommentActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity$c;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->e:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/ForumProfileCommentActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity$d;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 6
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->g:Lcom/join/mgps/adapter/ForumProfileCommentAdapter;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->h:Ljava/util/List;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->g:Lcom/join/mgps/adapter/ForumProfileCommentAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->v:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->h(Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->e:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->g:Lcom/join/mgps/adapter/ForumProfileCommentAdapter;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private M0()V
    .locals 1

    const/16 v0, 0x12

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->I0(I)V

    return-void
.end method

.method private O0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->I0(I)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->M0()V

    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->N0()V

    goto :goto_0

    :cond_0
    const v0, 0x7f110206

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->showToast(Ljava/lang/String;)V

    const/16 v0, 0x11

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->I0(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method I0(I)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->u:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    .line 2
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->u:I

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 4
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->u:I

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto/16 :goto_1

    :cond_2
    or-int/2addr p1, v0

    .line 7
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->u:I

    const/16 p1, 0x1f

    const/16 v0, 0x1a

    const/16 v2, 0x16

    const/16 v3, -0xb

    .line 8
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->J0(I)Z

    move-result v3

    const/16 v4, 0x9

    const/16 v5, 0x10

    if-eqz v3, :cond_3

    .line 9
    iput v5, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->u:I

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumProfileCommentActivity$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity$e;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v4}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->J0(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    iput v5, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->u:I

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const-string v0, "\u8fd8\u6ca1\u6709\u53d1\u5e03\u8bc4\u8bba~"

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumProfileCommentActivity$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity$f;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const v0, 0x7f0809bc

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedReloadingRes(I)V

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->J0(I)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->J0(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/16 p1, 0x11

    .line 20
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->J0(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 21
    iput v5, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->u:I

    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumProfileCommentActivity$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity$h;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v4}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_1

    .line 24
    :cond_6
    :goto_0
    iput v5, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->u:I

    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const-string v0, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumProfileCommentActivity$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity$g;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v5}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method J0(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->u:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method K0(I)V
    .locals 11
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->m:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->T0()V

    .line 3
    :cond_1
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->m:I

    .line 4
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-le p1, v0, :cond_2

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->S0()V

    .line 6
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 8
    iget-object v5, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->k:Lcom/join/mgps/rpc/h;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v6

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v7

    sget v9, Lcom/join/mgps/Util/i0;->d:I

    const-string v10, ""

    move v8, p1

    invoke-interface/range {v5 .. v10}, Lcom/join/mgps/rpc/h;->a(ILjava/lang/String;IILjava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v3

    const/16 v4, 0x14

    if-eqz v3, :cond_6

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_3

    .line 10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_3

    .line 11
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->l:I

    .line 12
    invoke-virtual {p0, v3, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->U0(Ljava/util/List;I)V

    const/16 p1, 0x20

    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->I0(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->m:I

    if-eq p1, v1, :cond_b

    goto :goto_0

    .line 15
    :cond_3
    :try_start_1
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->m:I

    if-ne p1, v0, :cond_4

    .line 16
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->I0(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :cond_4
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->m:I

    if-eq p1, v1, :cond_5

    .line 18
    iput v2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->m:I

    .line 19
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->T0()V

    return-void

    .line 20
    :cond_6
    :try_start_2
    iput v2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->m:I

    if-ne p1, v0, :cond_7

    .line 21
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->I0(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    :cond_7
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->m:I

    if-eq p1, v1, :cond_8

    .line 23
    iput v2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->m:I

    .line 24
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->T0()V

    return-void

    .line 25
    :cond_9
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->m:I

    if-eq p1, v1, :cond_a

    .line 26
    iput v2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->m:I

    .line 27
    :cond_a
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->T0()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    const/16 v0, 0x18

    .line 28
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->I0(I)V

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->m:I

    if-eq p1, v1, :cond_b

    .line 31
    :goto_0
    iput v2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->m:I

    .line 32
    :cond_b
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->T0()V

    goto :goto_2

    .line 33
    :goto_1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->m:I

    if-eq v0, v1, :cond_c

    .line 34
    iput v2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->m:I

    .line 35
    :cond_c
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->T0()V

    .line 36
    throw p1

    :cond_d
    const p1, 0x7f110206

    .line 37
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->showToast(Ljava/lang/String;)V

    const/16 p1, 0x11

    .line 38
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->I0(I)V

    :goto_2
    return-void
.end method

.method N0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->K0(I)V

    return-void
.end method

.method P0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->g:Lcom/join/mgps/adapter/ForumProfileCommentAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->g(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->g:Lcom/join/mgps/adapter/ForumProfileCommentAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method declared-synchronized Q0()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->f:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;

    if-nez v1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->R0(Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->P0()V
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

.method R0(Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;Z)V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;->getPosts()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v0

    .line 2
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    .line 3
    new-instance v3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;

    sget-object v4, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;->PROFILE_HEADER:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;

    new-instance v15, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;->getLast_update_time()J

    move-result-wide v9

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v5

    const/16 v18, 0x1

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
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v13

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getSvip_level()I

    move-result v2

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v19, ""

    if-eqz v5, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;->getBattleTitle()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v5

    goto :goto_1

    :cond_1
    move-object/from16 v16, v19

    .line 12
    :goto_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;->getBattleColor()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v5

    goto :goto_2

    :cond_2
    move-object/from16 v17, v19

    :goto_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    move-result v20

    move-object v5, v15

    move/from16 v6, p2

    move v14, v2

    move-object v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v20

    invoke-direct/range {v5 .. v17}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;-><init>(ZLjava/lang/String;Ljava/lang/String;JZIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v3, v4, v2}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;-><init>(Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;Ljava/lang/Object;)V

    .line 13
    iget-object v2, v1, Lcom/join/mgps/activity/ForumProfileCommentActivity;->h:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;->getList()Ljava/util/List;

    move-result-object v2

    const/4 v14, 0x0

    :goto_3
    if-eqz v2, :cond_4

    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_4

    .line 16
    new-instance v3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;

    sget-object v4, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;->PROFILE_MESSAGE_ITEM:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;

    new-instance v5, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$c;

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v6

    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v14, v7, :cond_3

    const/4 v7, 0x1

    goto :goto_4

    :cond_3
    const/4 v7, 0x0

    .line 19
    :goto_4
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;

    invoke-direct {v5, v6, v7, v8}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$c;-><init>(IZLcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;)V

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;-><init>(Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;Ljava/lang/Object;)V

    .line 20
    iget-object v4, v1, Lcom/join/mgps/activity/ForumProfileCommentActivity;->h:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 21
    :cond_4
    new-instance v2, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;

    sget-object v3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;->PROFILE_FOOTER:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;

    new-instance v4, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$a;

    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v5

    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRs_list()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRs_list()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRs_list()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    move-result-object v19

    :cond_5
    move-object/from16 v6, v19

    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-direct {v4, v5, v6, v0}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;-><init>(Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;Ljava/lang/Object;)V

    .line 25
    iget-object v0, v1, Lcom/join/mgps/activity/ForumProfileCommentActivity;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return-void
.end method

.method S0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method T0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->w:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->w:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method U0(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;",
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
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->l:I

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->T0()V

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->f:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->T0()V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->Q0()V

    return-void
.end method

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->k:Lcom/join/mgps/rpc/h;

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->L0()V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->O0()V

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
