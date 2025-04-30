.class public Lcom/join/mgps/fragment/d2;
.super Lcom/join/mgps/fragment/d;
.source "FriendMsgLikeFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/i;
.implements Lcom/join/mgps/adapter/n0$a;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0207
.end annotation


# instance fields
.field a:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/join/mgps/customview/XListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroidx/constraintlayout/widget/Group;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:I

.field e:I

.field f:Lcom/join/mgps/rpc/i;

.field g:Lcom/join/mgps/adapter/n0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/d;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/d2;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/join/mgps/fragment/d2;->e:I

    return-void
.end method

.method public static synthetic M(Lcom/join/mgps/fragment/d2;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/mgps/fragment/d2;->Q()V

    return-void
.end method

.method public static synthetic N(Lcom/join/mgps/fragment/d2;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/mgps/fragment/d2;->R()V

    return-void
.end method

.method private synthetic Q()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d2;->O()V

    return-void
.end method

.method private synthetic R()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d2;->b:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->q()V

    .line 2
    iget v0, p0, Lcom/join/mgps/fragment/d2;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/d2;->b:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->setNoMore()V

    :cond_0
    return-void
.end method


# virtual methods
.method public O()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d2;->a:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->f()V

    :cond_0
    return-void
.end method

.method public P()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d2;->a:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->q()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method S()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/f;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "uid"

    .line 6
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "token"

    .line 7
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/d2;->f:Lcom/join/mgps/rpc/i;

    invoke-interface {v0, v2}, Lcom/join/mgps/rpc/i;->h(Ljava/util/Map;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f110186

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/d;->T(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method U(I)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 2
    :try_start_0
    iget v3, p0, Lcom/join/mgps/fragment/d2;->e:I

    if-eq v3, p1, :cond_6

    if-ne v3, v2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/f;->f(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v4, p0, Lcom/join/mgps/fragment/d2;->f:Lcom/join/mgps/rpc/i;

    const/16 v5, 0xa

    invoke-interface {v4, v3, v0, v5, p1}, Lcom/join/mgps/rpc/i;->l(Ljava/lang/String;Ljava/lang/String;II)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    move-result v3

    if-nez v3, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p0, v3, p1}, Lcom/join/mgps/fragment/d2;->a0(Ljava/util/List;I)V

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    iput v2, p0, Lcom/join/mgps/fragment/d2;->e:I

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v0, 0x7f110186

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/d;->T(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const v0, 0x7f110206

    .line 11
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/d;->T(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_5
    :goto_1
    iget v0, p0, Lcom/join/mgps/fragment/d2;->e:I

    if-eq v0, v2, :cond_8

    goto :goto_3

    :cond_6
    :goto_2
    if-eq v3, v2, :cond_7

    .line 13
    iput p1, p0, Lcom/join/mgps/fragment/d2;->d:I

    .line 14
    iput v1, p0, Lcom/join/mgps/fragment/d2;->e:I

    .line 15
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d2;->X()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 16
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    iget v0, p0, Lcom/join/mgps/fragment/d2;->e:I

    if-eq v0, v2, :cond_8

    .line 18
    :goto_3
    iput p1, p0, Lcom/join/mgps/fragment/d2;->d:I

    .line 19
    iput v1, p0, Lcom/join/mgps/fragment/d2;->e:I

    .line 20
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d2;->X()V

    return-void

    .line 21
    :goto_4
    iget v3, p0, Lcom/join/mgps/fragment/d2;->e:I

    if-eq v3, v2, :cond_9

    .line 22
    iput p1, p0, Lcom/join/mgps/fragment/d2;->d:I

    .line 23
    iput v1, p0, Lcom/join/mgps/fragment/d2;->e:I

    .line 24
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d2;->X()V

    .line 25
    throw v0
.end method

.method V()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d2;->a:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/d2;->a:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    new-instance v1, Lcom/join/mgps/fragment/d2$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/d2$a;-><init>(Lcom/join/mgps/fragment/d2;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

    return-void
.end method

.method W()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d2;->b:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/d2;->e:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/join/mgps/fragment/d2;->d:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/d2;->U(I)V

    return-void
.end method

.method X()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d2;->Z()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/d;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/join/mgps/fragment/c2;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/c2;-><init>(Lcom/join/mgps/fragment/d2;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public Z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d2;->a:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->C()V

    :cond_0
    return-void
.end method

.method a0(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;I)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/fragment/d2;->g:Lcom/join/mgps/adapter/n0;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/n0;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/fragment/d2;->g:Lcom/join/mgps/adapter/n0;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/n0;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/d2;->g:Lcom/join/mgps/adapter/n0;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/d2;->g:Lcom/join/mgps/adapter/n0;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/n0;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/d2;->c:Landroidx/constraintlayout/widget/Group;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/d2;->c:Landroidx/constraintlayout/widget/Group;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->p()Lcom/join/mgps/rpc/impl/g;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/d2;->f:Lcom/join/mgps/rpc/i;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d2;->V()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/d2;->b:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 4
    new-instance v0, Lcom/join/mgps/adapter/n0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/n0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/d2;->g:Lcom/join/mgps/adapter/n0;

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/adapter/n0;->g(Lcom/join/mgps/adapter/n0$a;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/d2;->b:Lcom/join/mgps/customview/XListView;

    iget-object v1, p0, Lcom/join/mgps/fragment/d2;->g:Lcom/join/mgps/adapter/n0;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d2;->O()V

    return-void
.end method

.method public k(Lcom/join/mgps/dto/FriendBean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/activity/FriendActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/FriendActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getRuid()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/FriendActivity;->g0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/d;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/join/mgps/fragment/b2;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/b2;-><init>(Lcom/join/mgps/fragment/d2;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/d2;->g:Lcom/join/mgps/adapter/n0;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/adapter/n0;->c()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/join/mgps/fragment/d2;->g:Lcom/join/mgps/adapter/n0;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/n0;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/d2;->g:Lcom/join/mgps/adapter/n0;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/n0;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/FriendBean;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setReadFlag(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/d2;->g:Lcom/join/mgps/adapter/n0;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onLoadMore()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/d2;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/d2;->U(I)V

    return-void
.end method
