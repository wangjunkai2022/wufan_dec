.class public Lcom/join/mgps/fragment/w;
.super Landroidx/fragment/app/Fragment;
.source "CommentAllListFragment.java"

# interfaces
.implements Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c00fb
.end annotation


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentAllListBean;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;"
        }
    .end annotation
.end field

.field private a:Landroid/content/Context;

.field b:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/LoadMoreRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroidx/core/widget/NestedScrollView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Lcom/join/mgps/rpc/e;

.field j:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:F

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:I

.field r:I

.field s:Ljava/lang/String;

.field t:I

.field private u:I

.field private v:Z

.field private w:Lcom/join/mgps/dto/AccountBean;

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Lcom/join/mgps/dto/CommentBaseBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/w;->u:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/fragment/w;->v:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/w;->A:Ljava/util/List;

    return-void
.end method

.method public static S(Lcom/join/mgps/dto/CommentAlllistIntentData;)Lcom/join/mgps/fragment/w;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "intentData"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3
    new-instance p0, Lcom/join/mgps/fragment/x;

    invoke-direct {p0}, Lcom/join/mgps/fragment/x;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w;->W()V

    return-void
.end method

.method M(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CommentBaseBean;

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentBaseBean;->isTitle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;

    sget-object v3, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;->TITLE:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;

    new-instance v4, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;-><init>(Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/w;->C:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_0
    new-instance v2, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;

    sget-object v3, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;

    new-instance v4, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;-><init>(Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/w;->C:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public N(II)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/fragment/w;->B:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    invoke-virtual {p2, p1, v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->h(II)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/fragment/w;->B:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    invoke-virtual {p2, p1, v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->i(II)V

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/w;->e:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method O()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/w;->v:Z

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w;->Q()Lcom/join/mgps/dto/RequestCommentAllListArgs;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/fragment/w;->i:Lcom/join/mgps/rpc/e;

    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/e;->b(Lcom/join/mgps/dto/RequestCommentAllListArgs;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/w;->U(Lcom/join/mgps/dto/CommentResponse;)V

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CommentAllListBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentAllListBean;->getScoring_details()Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;

    move-result-object v2

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/CommentAllListBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentAllListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    move-result-object v3

    iput-object v3, p0, Lcom/join/mgps/fragment/w;->z:Lcom/join/mgps/dto/CommentBaseBean;

    .line 9
    iget-object v4, p0, Lcom/join/mgps/fragment/w;->B:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    invoke-virtual {v4, v3}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->l(Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/CommentAllListBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentAllListBean;->getHot_comment()Ljava/util/List;

    move-result-object v3

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CommentAllListBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentAllListBean;->getGeneral_comment()Ljava/util/List;

    move-result-object v1

    .line 12
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_1

    .line 13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 14
    new-instance v5, Lcom/join/mgps/dto/CommentBaseBean;

    invoke-direct {v5}, Lcom/join/mgps/dto/CommentBaseBean;-><init>()V

    .line 15
    invoke-virtual {v5, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_hot(I)V

    .line 16
    invoke-virtual {v5, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setTitle(Z)V

    .line 17
    iget v6, p0, Lcom/join/mgps/fragment/w;->u:I

    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/CommentBaseBean;->setPn(I)V

    .line 18
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/fragment/w;->z:Lcom/join/mgps/dto/CommentBaseBean;

    const/4 v5, 0x2

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/join/mgps/fragment/w;->u:I

    if-ne v3, v0, :cond_2

    .line 21
    new-instance v3, Lcom/join/mgps/dto/CommentBaseBean;

    invoke-direct {v3}, Lcom/join/mgps/dto/CommentBaseBean;-><init>()V

    .line 22
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_hot(I)V

    .line 23
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setTitle(Z)V

    .line 24
    iget v6, p0, Lcom/join/mgps/fragment/w;->u:I

    invoke-virtual {v3, v6}, Lcom/join/mgps/dto/CommentBaseBean;->setPn(I)V

    .line 25
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v3, p0, Lcom/join/mgps/fragment/w;->z:Lcom/join/mgps/dto/CommentBaseBean;

    iget v6, p0, Lcom/join/mgps/fragment/w;->u:I

    invoke-virtual {v3, v6}, Lcom/join/mgps/dto/CommentBaseBean;->setPn(I)V

    .line 27
    iget-object v3, p0, Lcom/join/mgps/fragment/w;->z:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v1, :cond_4

    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 29
    iget v3, p0, Lcom/join/mgps/fragment/w;->u:I

    if-ne v3, v0, :cond_3

    iget-object v3, p0, Lcom/join/mgps/fragment/w;->z:Lcom/join/mgps/dto/CommentBaseBean;

    if-nez v3, :cond_3

    .line 30
    new-instance v3, Lcom/join/mgps/dto/CommentBaseBean;

    invoke-direct {v3}, Lcom/join/mgps/dto/CommentBaseBean;-><init>()V

    .line 31
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_hot(I)V

    .line 32
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setTitle(Z)V

    .line 33
    iget v0, p0, Lcom/join/mgps/fragment/w;->u:I

    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setPn(I)V

    .line 34
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 36
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/CommentBaseBean;

    .line 37
    iget v5, p0, Lcom/join/mgps/fragment/w;->u:I

    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/CommentBaseBean;->setPn(I)V

    .line 38
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_4
    invoke-virtual {p0, v4, v2}, Lcom/join/mgps/fragment/w;->V(Ljava/util/List;Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;)V

    goto :goto_1

    .line 40
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w;->showLodingFailed()V

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 43
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w;->showLodingFailed()V

    :goto_1
    return-void
.end method

.method public P(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;
    .locals 9

    .line 1
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->j:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/fragment/w;->y:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/w;->w:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/w;->x:I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->w:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v5, v0

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/w;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/fragment/w;->y:Ljava/lang/String;

    iget v6, p0, Lcom/join/mgps/fragment/w;->x:I

    move-object v4, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/join/mgps/Util/RequestBeanUtil;->getPraiseComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    move-result-object p1

    return-object p1
.end method

.method public Q()Lcom/join/mgps/dto/RequestCommentAllListArgs;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/w;->w:Lcom/join/mgps/dto/AccountBean;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->j:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/fragment/w;->y:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->w:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/w;->x:I

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/fragment/w;->u:I

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/join/mgps/fragment/w;->n:Ljava/lang/String;

    iget v5, p0, Lcom/join/mgps/fragment/w;->x:I

    iget-object v6, p0, Lcom/join/mgps/fragment/w;->y:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestCommentAllList(IILjava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/RequestCommentAllListArgs;

    move-result-object v0

    return-object v0
.end method

.method R()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getTokenRequestBean(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommentRequest;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/fragment/w;->i:Lcom/join/mgps/rpc/e;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->c(Lcom/join/mgps/dto/CommentRequest;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CommentTokenBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentTokenBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CommentTokenBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentTokenBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CommentTokenBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentTokenBean;->getTimes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AESUtils;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/fragment/w;->j:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->j:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastCheckInTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method T(Ljava/lang/String;ZII)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-ne p4, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/w;->B:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    invoke-virtual {p1, p3, p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->i(II)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/w;->B:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    invoke-virtual {p1, p3, p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->h(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method U(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v0

    const/16 v1, 0x321

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w;->R()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u6570\u636e\u8bbf\u95ee\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method V(Ljava/util/List;Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;",
            "Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/join/mgps/fragment/w;->u:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0x8

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->e:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->h:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->e:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->h:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_1

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->p:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    new-instance v0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;

    sget-object v3, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;->HEAD:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;

    invoke-direct {v0, v3, p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;Ljava/lang/Object;)V

    .line 13
    iget-object p2, p0, Lcom/join/mgps/fragment/w;->C:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_1
    iget p2, p0, Lcom/join/mgps/fragment/w;->u:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/join/mgps/fragment/w;->u:I

    .line 15
    iget-object p2, p0, Lcom/join/mgps/fragment/w;->D:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/w;->M(Ljava/util/List;)V

    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_2

    .line 18
    iget-object p2, p0, Lcom/join/mgps/fragment/w;->e:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-virtual {p2, v2}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->c1(Z)V

    goto :goto_1

    .line 19
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/fragment/w;->e:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-virtual {p2, v1}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->c1(Z)V

    .line 20
    :goto_1
    iget-object p2, p0, Lcom/join/mgps/fragment/w;->B:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 22
    iget-object p1, p0, Lcom/join/mgps/fragment/w;->e:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-virtual {p1, v2}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->c1(Z)V

    goto :goto_2

    .line 23
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w;->X()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method W()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->B:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->f()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/join/mgps/fragment/w;->z:Lcom/join/mgps/dto/CommentBaseBean;

    if-nez v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/CommentCreatActivity_;->U0(Landroid/content/Context;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/w;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/w;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->j(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/w;->p:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/w;->z:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->c(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/w;->z:Lcom/join/mgps/dto/CommentBaseBean;

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->e(F)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/w;->s:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->h(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->g(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/fragment/w;->q:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->a(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/w;->z:Lcom/join/mgps/dto/CommentBaseBean;

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->b(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/CommentCreatActivity_;->U0(Landroid/content/Context;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/w;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/w;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->j(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/fragment/w;->q:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->a(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/w;->p:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/w;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->h(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->g(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :goto_1
    return-void

    .line 12
    :cond_4
    :goto_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goChangeNickname(Landroid/content/Context;)V

    return-void
.end method

.method X()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->e:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->setLoadingMore(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->e:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->c1(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->e:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->c1(Z)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->B:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/fragment/w;->v:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method afterView()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->m()Lcom/join/mgps/rpc/impl/d;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/w;->i:Lcom/join/mgps/rpc/e;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "intentData"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CommentAlllistIntentData;

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAlllistIntentData;->getCommentId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/w;->k:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAlllistIntentData;->getCommentContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/w;->l:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAlllistIntentData;->getCommentStars()F

    move-result v1

    iput v1, p0, Lcom/join/mgps/fragment/w;->m:F

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAlllistIntentData;->getGameId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/w;->n:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAlllistIntentData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/w;->o:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAlllistIntentData;->getCommentScoreSwitch()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/w;->p:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAlllistIntentData;->getBespeakSwitch()I

    move-result v1

    iput v1, p0, Lcom/join/mgps/fragment/w;->q:I

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAlllistIntentData;->getSgcSwitch()I

    move-result v1

    iput v1, p0, Lcom/join/mgps/fragment/w;->r:I

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAlllistIntentData;->getGameType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/w;->s:Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAlllistIntentData;->getGameIsStart()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/w;->t:I

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->c:Landroid/widget/TextView;

    const-string v1, "\u5168\u90e8\u70b9\u8bc4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->t(Ljava/lang/Object;)V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/w;->w:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/w;->x:I

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->j:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/fragment/w;->y:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w;->showLoding()V

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w;->O()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/w;->D:Ljava/util/List;

    .line 24
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/join/mgps/fragment/w;->C:Ljava/util/List;

    .line 25
    new-instance v0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    iget-object v2, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    iget v3, p0, Lcom/join/mgps/fragment/w;->x:I

    iget-object v5, p0, Lcom/join/mgps/fragment/w;->p:Ljava/lang/String;

    iget v6, p0, Lcom/join/mgps/fragment/w;->r:I

    move-object v1, v0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;ILcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/w;->B:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->e:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->e:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    iget-object v1, p0, Lcom/join/mgps/fragment/w;->B:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 28
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->e:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    .line 29
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->e:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->setAutoLoadMoreEnable(Z)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->e:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    new-instance v1, Lcom/join/mgps/fragment/w$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/w$a;-><init>(Lcom/join/mgps/fragment/w;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->setLoadMoreListener(Lcom/join/mgps/customview/LoadMoreRecyclerView$c;)V

    return-void
.end method

.method public d(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 1
    iget-object v1, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getPn()I

    move-result p1

    invoke-virtual {p0, v1, p3, p1}, Lcom/join/mgps/fragment/w;->P(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    move-result-object p1

    .line 3
    iget-object p3, p0, Lcom/join/mgps/fragment/w;->i:Lcom/join/mgps/rpc/e;

    invoke-interface {p3, p1}, Lcom/join/mgps/rpc/e;->h(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result p3

    const/16 v1, 0x321

    if-ne p3, v1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/w;->U(Lcom/join/mgps/dto/CommentResponse;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    move-result p3

    if-eq p3, v2, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v2, p2, v2}, Lcom/join/mgps/fragment/w;->T(Ljava/lang/String;ZII)V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 9
    invoke-virtual {p0, p2, v2}, Lcom/join/mgps/fragment/w;->N(II)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0, v0, v2, p2, v2}, Lcom/join/mgps/fragment/w;->T(Ljava/lang/String;ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p0, v0, v2, p2, v2}, Lcom/join/mgps/fragment/w;->T(Ljava/lang/String;ZII)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 13
    invoke-virtual {p0, p1, v2, p2, v2}, Lcom/join/mgps/fragment/w;->T(Ljava/lang/String;ZII)V

    :cond_4
    :goto_1
    return-void
.end method

.method public e(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 1
    iget-object v1, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getPn()I

    move-result p1

    invoke-virtual {p0, v1, p3, p1}, Lcom/join/mgps/fragment/w;->P(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    move-result-object p1

    .line 3
    iget-object p3, p0, Lcom/join/mgps/fragment/w;->i:Lcom/join/mgps/rpc/e;

    invoke-interface {p3, p1}, Lcom/join/mgps/rpc/e;->l(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result p3

    const/16 v1, 0x321

    if-ne p3, v1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/w;->U(Lcom/join/mgps/dto/CommentResponse;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    move-result p3

    if-eq p3, v3, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v3, p2, v2}, Lcom/join/mgps/fragment/w;->T(Ljava/lang/String;ZII)V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 9
    invoke-virtual {p0, p2, v2}, Lcom/join/mgps/fragment/w;->N(II)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0, v0, v3, p2, v2}, Lcom/join/mgps/fragment/w;->T(Ljava/lang/String;ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p0, v0, v3, p2, v2}, Lcom/join/mgps/fragment/w;->T(Ljava/lang/String;ZII)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 13
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/join/mgps/fragment/w;->T(Ljava/lang/String;ZII)V

    :cond_4
    :goto_1
    return-void
.end method

.method public f(Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity_;->k2(Landroid/content/Context;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->b(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/w;->s:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/fragment/w;->q:I

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->a(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/fragment/w;->t:I

    .line 3
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->e(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/fragment/w;->r:I

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->h(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/w;->o:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->g(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/w;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->c(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public onChangeComment(Lcom/join/mgps/event/h;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x1

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/w;->u:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w;->O()V

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

    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/fragment/w;->u:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w;->O()V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->e:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->h:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method showLodingFailed()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->A:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    const v2, 0x7f110206

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->e:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->h:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w;->X()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
