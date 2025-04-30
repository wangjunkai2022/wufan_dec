.class public Lcom/join/mgps/activity/CommentSelfListActivityv2;
.super Lcom/BaseAppCompatActivity;
.source "CommentSelfListActivityv2.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c002b
.end annotation


# instance fields
.field a:Landroid/widget/RelativeLayout;
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

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/rpc/e;

.field i:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field public j:I

.field public k:I

.field private l:Lcom/join/mgps/customview/j;

.field private m:Lcom/join/mgps/adapter/CommentSelfListAdapter;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentSelfListBean;",
            ">;"
        }
    .end annotation
.end field

.field o:Landroid/os/Handler;

.field p:Lcom/join/mgps/customview/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->n:Ljava/util/List;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->o:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->p:Lcom/join/mgps/customview/t;

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/CommentSelfListActivityv2;Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->isLogined(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private H0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->p:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->p:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private J0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->c:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u70b9\u8bc4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->g:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->e:Lcom/join/mgps/customview/XListView2;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    sget v2, Lcom/join/mgps/Util/i0;->e:I

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->e:Lcom/join/mgps/customview/XListView2;

    new-instance v2, Lcom/join/mgps/activity/CommentSelfListActivityv2$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2$a;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2;)V

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 7
    new-instance v0, Lcom/join/mgps/activity/CommentSelfListActivityv2$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2$b;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2;)V

    iput-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->l:Lcom/join/mgps/customview/j;

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v2, v0}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 9
    new-instance v0, Lcom/join/mgps/adapter/CommentSelfListAdapter;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/CommentSelfListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->m:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    .line 10
    new-instance v2, Lcom/join/mgps/activity/CommentSelfListActivityv2$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2$c;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2;)V

    invoke-virtual {v0, v2}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->o(Lcom/join/mgps/adapter/CommentSelfListAdapter$j;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->e:Lcom/join/mgps/customview/XListView2;

    iget-object v2, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->m:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 13
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->F0(I)V

    return-void
.end method

.method private Q0(Lcom/join/mgps/dto/CommentSelfListBean;Z)V
    .locals 20

    move-object/from16 v0, p0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getGame_info()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getId()I

    move-result v1

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getGame_info()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v14

    .line 5
    new-instance v15, Lcom/join/mgps/adapter/CommentSelfListAdapter$k;

    sget-object v13, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->COMMENT_LIST_ITEM_HEADER:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    new-instance v11, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getGame_info()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_ico()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getGame_info()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_name()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getGame_info()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getComment_score_switch()I

    move-result v8

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getAdd_times()J

    move-result-wide v9

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getStars_score()I

    move-result v2

    int-to-double v4, v2

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getIs_old()I

    move-result v16

    move-object v2, v11

    move/from16 v3, p2

    move-wide/from16 v17, v4

    move v4, v1

    move-object v5, v14

    move-object/from16 v19, v14

    move-object v14, v11

    move-wide/from16 v11, v17

    move/from16 v17, v1

    move-object v1, v13

    move/from16 v13, v16

    invoke-direct/range {v2 .. v13}, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJDI)V

    invoke-direct {v15, v1, v14}, Lcom/join/mgps/adapter/CommentSelfListAdapter$k;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;Ljava/lang/Object;)V

    .line 12
    iget-object v1, v0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->m:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    invoke-virtual {v1, v15}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c(Lcom/join/mgps/adapter/CommentSelfListAdapter$k;)V

    .line 13
    new-instance v1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k;

    sget-object v8, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->COMMENT_LIST_ITEM_CONTENT:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    new-instance v9, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$a;

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getContent()Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getIs_old()I

    move-result v6

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getGame_info()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getComment_score_switch()I

    move-result v7

    move-object v2, v9

    move/from16 v3, v17

    move-object/from16 v4, v19

    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$a;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-direct {v1, v8, v9}, Lcom/join/mgps/adapter/CommentSelfListAdapter$k;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;Ljava/lang/Object;)V

    .line 17
    iget-object v2, v0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->m:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c(Lcom/join/mgps/adapter/CommentSelfListAdapter$k;)V

    .line 18
    new-instance v1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k;

    sget-object v12, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->COMMENT_LIST_ITEM_FOOTER:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    new-instance v13, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getPraise_count()I

    move-result v5

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getDespise_count()I

    move-result v6

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getReply_count()I

    move-result v7

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getIs_praise()I

    move-result v8

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getIs_despise()I

    move-result v9

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getIs_old()I

    move-result v10

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getGame_info()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getComment_score_switch()I

    move-result v11

    move-object v2, v13

    invoke-direct/range {v2 .. v11}, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;-><init>(ILjava/lang/String;IIIIIII)V

    invoke-direct {v1, v12, v13}, Lcom/join/mgps/adapter/CommentSelfListAdapter$k;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;Ljava/lang/Object;)V

    .line 26
    iget-object v2, v0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->m:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c(Lcom/join/mgps/adapter/CommentSelfListAdapter$k;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private R0()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CommentSelfListBean;

    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->Q0(Lcom/join/mgps/dto/CommentSelfListBean;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    return-object p1
.end method

.method private isLogined(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

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


# virtual methods
.method D0(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method F0(I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    const-string v1, "\u6ca1\u6709\u66f4\u591a\u70b9\u8bc4\u54e6~"

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v1, Lcom/join/mgps/activity/CommentSelfListActivityv2$g;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2$g;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    const v0, 0x7f0809bc

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedReloadingRes(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v1, Lcom/join/mgps/activity/CommentSelfListActivityv2$f;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2$f;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    const-string v1, "\u52a0\u8f7d\u5931\u8d25~"

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v1, Lcom/join/mgps/activity/CommentSelfListActivityv2$h;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2$h;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/CommentSelfListActivityv2$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2$e;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    goto :goto_0

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    :goto_0
    return-void
.end method

.method G0(ILjava/lang/String;I)V
    .locals 11
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u70b9\u8e29\u5931\u8d25"

    const-string v1, "\u53d6\u6d88\u70b9\u8e29\u5931\u8d25"

    const/4 v2, 0x1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v3

    const-string v4, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    invoke-virtual {v3, v4}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v5

    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->i:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v4

    move v8, p1

    move-object v9, p2

    move v10, p3

    invoke-virtual/range {v4 .. v10}, Lcom/join/mgps/Util/RequestBeanUtil;->getCommentPraiseRequestBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lcom/join/mgps/dto/CommentPraiseRequestBean;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->h:Lcom/join/mgps/rpc/e;

    invoke-interface {v4, v3}, Lcom/join/mgps/rpc/e;->f(Lcom/join/mgps/dto/CommentPraiseRequestBean;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v4

    if-eqz v4, :cond_4

    .line 10
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->D0(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-ne p3, v2, :cond_3

    move-object v3, v0

    goto :goto_0

    :cond_3
    move-object v3, v1

    .line 11
    :goto_0
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->D0(Ljava/lang/String;)V

    .line 12
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->O0(ILjava/lang/String;I)V

    goto :goto_3

    .line 13
    :cond_4
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->D0(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-ne p3, v2, :cond_6

    const-string v3, "\u70b9\u8e29\u6210\u529f"

    goto :goto_2

    :cond_6
    const-string v3, "\u53d6\u6d88\u70b9\u8e29\u6210\u529f"

    .line 14
    :goto_2
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->D0(Ljava/lang/String;)V

    :goto_3
    const/16 v3, 0x2c2

    if-ne v4, v3, :cond_8

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->S0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    if-ne p3, v2, :cond_7

    goto :goto_4

    :cond_7
    move-object v0, v1

    .line 16
    :goto_4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->D0(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->O0(ILjava/lang/String;I)V

    .line 18
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    return-void
.end method

.method I0(I)V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 2
    :try_start_0
    iget v3, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v2, :cond_1

    if-eq v3, v2, :cond_0

    .line 3
    iput v1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->k:I

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->U0()V

    return-void

    :cond_1
    if-ne v3, p1, :cond_3

    if-eq v3, v2, :cond_2

    .line 5
    iput v1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->k:I

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->U0()V

    return-void

    .line 7
    :cond_3
    :try_start_1
    iput p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->k:I

    .line 8
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 10
    iget-object v4, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->i:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v4

    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_4
    move-object v6, v4

    .line 11
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sget v8, Lcom/join/mgps/Util/i0;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/join/mgps/Util/RequestBeanUtil;->selfComment(ILjava/lang/String;III)Lcom/join/mgps/dto/CommentSelfRequestBean;

    move-result-object v3

    .line 12
    iget-object v4, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->h:Lcom/join/mgps/rpc/e;

    invoke-interface {v4, v3}, Lcom/join/mgps/rpc/e;->j(Lcom/join/mgps/dto/CommentSelfRequestBean;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 13
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v4

    if-nez v4, :cond_a

    .line 14
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    .line 15
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->F0(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    iget p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->k:I

    if-eq p1, v2, :cond_5

    .line 17
    iput v1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->k:I

    .line 18
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->U0()V

    return-void

    .line 19
    :cond_6
    :try_start_2
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/CommentListForSelfBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentListForSelfBean;->getList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 20
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    .line 21
    :cond_7
    invoke-virtual {p0, p1, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->T0(ILjava/util/List;)V

    .line 22
    iput p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->j:I

    const/4 v3, 0x2

    .line 23
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->F0(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    iget p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->k:I

    if-eq p1, v2, :cond_e

    goto :goto_1

    .line 25
    :cond_8
    :goto_0
    :try_start_3
    iput v2, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->k:I

    const/16 v3, 0xa

    .line 26
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->F0(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    iget p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->k:I

    if-eq p1, v2, :cond_9

    .line 28
    iput v1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->k:I

    .line 29
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->U0()V

    return-void

    :cond_a
    if-eqz v3, :cond_b

    .line 30
    :try_start_4
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 31
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->D0(Ljava/lang/String;)V

    .line 32
    :cond_b
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->F0(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 33
    iget p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->k:I

    if-eq p1, v2, :cond_c

    .line 34
    iput v1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->k:I

    .line 35
    :cond_c
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->U0()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v3

    .line 36
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->U0()V

    const/4 v3, 0x1

    if-ne p1, v3, :cond_d

    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->getLoadingState()I

    move-result p1

    if-eq p1, v0, :cond_d

    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 40
    :cond_d
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->F0(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 41
    iget p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->k:I

    if-eq p1, v2, :cond_e

    .line 42
    :goto_1
    iput v1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->k:I

    .line 43
    :cond_e
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->U0()V

    goto :goto_3

    .line 44
    :goto_2
    iget v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->k:I

    if-eq v0, v2, :cond_f

    .line 45
    iput v1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->k:I

    .line 46
    :cond_f
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->U0()V

    .line 47
    throw p1

    :cond_10
    const p1, 0x7f110206

    .line 48
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->D0(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 49
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->F0(I)V

    :goto_3
    return-void
.end method

.method K0()Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const v1, 0x7f110206

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->D0(Ljava/lang/String;)V

    const/16 v1, 0x9

    .line 3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->F0(I)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->U0()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method L0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->I0(I)V

    return-void
.end method

.method M0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->m:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->k()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->m:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->R0()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->m:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method N0(ILjava/lang/String;I)V
    .locals 11
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u70b9\u8d5e\u5931\u8d25"

    const-string v1, "\u53d6\u6d88\u70b9\u8d5e\u5931\u8d25"

    const/4 v2, 0x1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v3

    const-string v4, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    invoke-virtual {v3, v4}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v5

    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->i:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v4

    move v8, p1

    move-object v9, p2

    move v10, p3

    invoke-virtual/range {v4 .. v10}, Lcom/join/mgps/Util/RequestBeanUtil;->getCommentPraiseRequestBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lcom/join/mgps/dto/CommentPraiseRequestBean;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->h:Lcom/join/mgps/rpc/e;

    invoke-interface {v4, v3}, Lcom/join/mgps/rpc/e;->i(Lcom/join/mgps/dto/CommentPraiseRequestBean;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v4

    if-eqz v4, :cond_4

    .line 10
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->D0(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-ne p3, v2, :cond_3

    move-object v3, v0

    goto :goto_0

    :cond_3
    move-object v3, v1

    .line 11
    :goto_0
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->D0(Ljava/lang/String;)V

    .line 12
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->P0(ILjava/lang/String;I)V

    goto :goto_3

    .line 13
    :cond_4
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->D0(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-ne p3, v2, :cond_6

    const-string v3, "\u70b9\u8d5e\u6210\u529f"

    goto :goto_2

    :cond_6
    const-string v3, "\u53d6\u6d88\u70b9\u8d5e\u6210\u529f"

    .line 14
    :goto_2
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->D0(Ljava/lang/String;)V

    :goto_3
    const/16 v3, 0x2c2

    if-ne v4, v3, :cond_8

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->S0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    if-ne p3, v2, :cond_7

    goto :goto_4

    :cond_7
    move-object v0, v1

    .line 16
    :goto_4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->D0(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->P0(ILjava/lang/String;I)V

    .line 18
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    return-void
.end method

.method O0(ILjava/lang/String;I)V
    .locals 4

    .line 1
    iget-object p3, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->n:Ljava/util/List;

    if-eqz p3, :cond_9

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_9

    .line 2
    iget-object p3, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->n:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CommentSelfListBean;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getIs_despise()I

    move-result p1

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getDespise_count()I

    move-result p2

    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    add-int/2addr p2, p3

    :goto_0
    const/4 v1, 0x0

    if-gez p2, :cond_3

    const/4 p2, 0x0

    .line 10
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v2

    if-ne p1, p3, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->setIs_despise(I)V

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->setDespise_count(I)V

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getIs_praise()I

    move-result p2

    if-eq p1, p3, :cond_8

    if-ne p2, p3, :cond_8

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getPraise_count()I

    move-result p1

    if-ne p2, p3, :cond_5

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_5
    add-int/2addr p1, p3

    :goto_2
    if-gez p1, :cond_6

    const/4 p1, 0x0

    .line 14
    :cond_6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v2

    if-ne p2, p3, :cond_7

    const/4 p3, 0x0

    :cond_7
    invoke-virtual {v2, p3}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->setIs_praise(I)V

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->setPraise_count(I)V

    .line 16
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->M0()V

    :cond_9
    return-void
.end method

.method P0(ILjava/lang/String;I)V
    .locals 4

    .line 1
    iget-object p3, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->n:Ljava/util/List;

    if-eqz p3, :cond_9

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_9

    .line 2
    iget-object p3, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->n:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CommentSelfListBean;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getIs_praise()I

    move-result p1

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getPraise_count()I

    move-result p2

    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    add-int/2addr p2, p3

    :goto_0
    const/4 v1, 0x0

    if-gez p2, :cond_3

    const/4 p2, 0x0

    .line 10
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v2

    if-ne p1, p3, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->setIs_praise(I)V

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->setPraise_count(I)V

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getIs_despise()I

    move-result p2

    if-eq p1, p3, :cond_8

    if-ne p2, p3, :cond_8

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getDespise_count()I

    move-result p1

    if-ne p2, p3, :cond_5

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_5
    add-int/2addr p1, p3

    :goto_2
    if-gez p1, :cond_6

    const/4 p1, 0x0

    .line 14
    :cond_6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object v2

    if-ne p2, p3, :cond_7

    const/4 p3, 0x0

    :cond_7
    invoke-virtual {v2, p3}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->setIs_despise(I)V

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->setDespise_count(I)V

    .line 16
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->M0()V

    :cond_9
    return-void
.end method

.method S0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->m(Landroid/content/Context;)V

    return-void
.end method

.method T0(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentSelfListBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->n:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->M0()V

    return-void
.end method

.method U0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->o:Landroid/os/Handler;

    new-instance v1, Lcom/join/mgps/activity/CommentSelfListActivityv2$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2$d;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method V0()Z
    .locals 1

    .line 1
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->m()Lcom/join/mgps/rpc/impl/d;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->h:Lcom/join/mgps/rpc/e;

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->J0()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->L0()V
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

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->f:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->getLoadingState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->F0(I)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
