.class public Lcom/join/mgps/activity/DetialMoreServiceListActivity;
.super Lcom/BaseActivity;
.source "DetialMoreServiceListActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0298
.end annotation


# instance fields
.field a:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/join/mgps/customview/XListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f091030
    .end annotation
.end field

.field h:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f09102e
    .end annotation
.end field

.field i:Lcom/join/mgps/rpc/d;

.field j:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field k:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field l:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private m:I

.field private n:Landroid/content/Context;

.field private o:Z

.field p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field q:Lcom/join/mgps/adapter/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->m:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->o:Z

    return-void
.end method


# virtual methods
.method E0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->o:Z

    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v2}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->n:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 6
    new-instance v3, Lcom/join/mgps/dto/RequestGameIdArgs;

    invoke-direct {v3}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>()V

    .line 7
    iget-object v4, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/RequestGameIdArgs;->setGameId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/RequestGameIdArgs;->setPage(I)V

    .line 9
    iget-object v4, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->n:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/RequestGameIdArgs;->setUid(I)V

    .line 10
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v2

    invoke-interface {v3, v2}, Lq1/h;->Q(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object v2

    invoke-interface {v2}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v2

    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ResponseModel;

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/kotlin/ui/coupon/ServerListData;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/coupon/ServerListData;->getGame_open_server_list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->G0()V

    goto :goto_0

    .line 17
    :cond_0
    iget v3, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->m:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->m:I

    .line 18
    :goto_0
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->H0(Ljava/util/List;)V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->I0()V

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->G0()V

    goto :goto_1

    .line 21
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->I0()V

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 23
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->I0()V

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->showLodingFailed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :goto_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->o:Z

    goto :goto_3

    :goto_2
    iput-boolean v1, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->o:Z

    .line 27
    throw v0

    .line 28
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->I0()V

    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->showLodingFailed()V

    :goto_3
    return-void
.end method

.method F0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->m:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->E0()V

    return-void
.end method

.method G0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->b:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->setNoMore()V

    return-void
.end method

.method H0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ServiceState;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->b:Lcom/join/mgps/customview/XListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5
    iget v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->m:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget p1, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->m:I

    if-ne p1, v1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->a:Landroid/widget/TextView;

    const-string v0, "\u5f00\u5408\u670d\u8868"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->q:Lcom/join/mgps/adapter/m;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->q:Lcom/join/mgps/adapter/m;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method I0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->b:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->r()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->b:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->q()V

    return-void
.end method

.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->i:Lcom/join/mgps/rpc/d;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->n:Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/join/mgps/adapter/m;

    iget-object v1, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->q:Lcom/join/mgps/adapter/m;

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/adapter/m;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->p:Ljava/util/List;

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->showLoding()V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->E0()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->b:Lcom/join/mgps/customview/XListView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView;->setPreLoadCount(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->b:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->b()V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->b:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->c()V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->b:Lcom/join/mgps/customview/XListView;

    new-instance v1, Lcom/join/mgps/activity/DetialMoreServiceListActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity$a;-><init>(Lcom/join/mgps/activity/DetialMoreServiceListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->b:Lcom/join/mgps/customview/XListView;

    iget-object v1, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->q:Lcom/join/mgps/adapter/m;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

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

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->m:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->showLoding()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->E0()V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->b:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_1
    return-void
.end method
