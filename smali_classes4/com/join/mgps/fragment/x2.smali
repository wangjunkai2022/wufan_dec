.class public Lcom/join/mgps/fragment/x2;
.super Landroidx/fragment/app/Fragment;
.source "GameSubscribeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/x2$d;,
        Lcom/join/mgps/fragment/x2$c;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0232
.end annotation


# instance fields
.field a:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/content/Context;

.field i:Lcom/join/mgps/fragment/x2$c;

.field j:I

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Lcom/join/mgps/dto/AccountBean;

.field n:Lcom/join/mgps/rpc/b;

.field o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field p:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/x2;->j:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/join/mgps/fragment/x2;->p:I

    return-void
.end method


# virtual methods
.method M()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/x2;->h:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "uid"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/x2;->p:I

    .line 4
    :cond_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/x2;->n:Lcom/join/mgps/rpc/b;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/x2;->o:Ljava/util/List;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/x2;->m:Lcom/join/mgps/dto/AccountBean;

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/x2;->k:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    invoke-static {}, Lcom/join/mgps/Util/RequestBeanUtil;->getVersionAndVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/x2;->l:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->c:Lcom/join/mgps/customview/XListView2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/fragment/x2;->R()V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->c:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/x2$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/x2$a;-><init>(Lcom/join/mgps/fragment/x2;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->c:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/x2$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/x2$b;-><init>(Lcom/join/mgps/fragment/x2;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    return-void
.end method

.method N(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/x2;->U()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/x2;->i:Lcom/join/mgps/fragment/x2$c;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/x2;->c:Lcom/join/mgps/customview/XListView2;

    if-eqz p1, :cond_2

    .line 7
    new-instance p1, Lcom/join/mgps/fragment/x2$c;

    invoke-direct {p1, p0}, Lcom/join/mgps/fragment/x2$c;-><init>(Lcom/join/mgps/fragment/x2;)V

    iput-object p1, p0, Lcom/join/mgps/fragment/x2;->i:Lcom/join/mgps/fragment/x2$c;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    :goto_0
    return-void
.end method

.method O()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->c:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method P()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->i:Lcom/join/mgps/fragment/x2$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method Q()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->i:Lcom/join/mgps/fragment/x2$c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method R()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 2
    iget v0, p0, Lcom/join/mgps/fragment/x2;->j:I

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/x2;->showLoding()V

    .line 4
    :cond_0
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    const-string v1, "uid"

    .line 5
    iget v2, p0, Lcom/join/mgps/fragment/x2;->p:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/join/mgps/fragment/x2;->m:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "page"

    .line 6
    iget v2, p0, Lcom/join/mgps/fragment/x2;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/join/mgps/fragment/x2;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "type"

    const/4 v2, 0x2

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "device_id"

    .line 8
    iget-object v3, p0, Lcom/join/mgps/fragment/x2;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "version"

    .line 9
    iget-object v3, p0, Lcom/join/mgps/fragment/x2;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/fragment/x2;->n:Lcom/join/mgps/rpc/b;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->r(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromPopoWinBean;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean;->getError()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/fragment/x2;->V()V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/fragment/x2;->S()V

    .line 14
    iget v1, p0, Lcom/join/mgps/fragment/x2;->j:I

    if-ne v1, v2, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/fragment/x2;->Q()V

    .line 16
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/x2;->N(Ljava/util/List;)V

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/x2;->S()V

    .line 18
    iget v0, p0, Lcom/join/mgps/fragment/x2;->j:I

    if-ne v0, v2, :cond_4

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/fragment/x2;->T()V

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/x2;->U()V

    goto :goto_0

    .line 21
    :cond_5
    iget v0, p0, Lcom/join/mgps/fragment/x2;->j:I

    if-ne v0, v1, :cond_6

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/fragment/x2;->showLodingFailed()V

    goto :goto_0

    .line 23
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/x2;->U()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method S()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/join/mgps/fragment/x2;->e:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 2
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method T()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->c:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method U()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->c:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method V()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->c:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method relodingimag()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/fragment/x2;->j:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->c:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/x2;->O()V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/x2;->R()V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/x2;->c:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_2
    return-void
.end method
