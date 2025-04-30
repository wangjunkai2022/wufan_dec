.class public Lcom/join/mgps/fragment/c0;
.super Landroidx/fragment/app/Fragment;
.source "DiscoveryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/c0$g;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0200
.end annotation


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcom/join/mgps/customview/ScrollTextViewLayout;

.field private C:Landroid/widget/ImageView;

.field D:Lcom/join/android/app/component/video/c;

.field E:Lcom/join/mgps/activity/MGMainActivity;

.field F:Ljava/lang/String;

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;"
        }
    .end annotation
.end field

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;",
            ">;"
        }
    .end annotation
.end field

.field private I:I

.field private J:Landroid/util/SparseArray;

.field a:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
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

.field f:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field private k:Lcom/join/mgps/rpc/h;

.field private l:I

.field private m:Lcom/join/mgps/adapter/ForumBaseAdapter;

.field private n:Z

.field private o:Landroid/view/View;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/GridView;

.field private r:Lcom/join/mgps/customview/MyGridView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/TextView;

.field private w:Lcom/join/mgps/rpc/k;

.field private x:Lcom/join/mgps/adapter/o;

.field private y:Lcom/join/mgps/adapter/n;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/c0;->l:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/fragment/c0;->n:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/join/mgps/fragment/c0;->x:Lcom/join/mgps/adapter/o;

    .line 5
    iput-object v1, p0, Lcom/join/mgps/fragment/c0;->y:Lcom/join/mgps/adapter/n;

    const-string v2, ""

    .line 6
    iput-object v2, p0, Lcom/join/mgps/fragment/c0;->z:Ljava/lang/String;

    const-string v2, "DiscoveryFragment"

    .line 7
    iput-object v2, p0, Lcom/join/mgps/fragment/c0;->F:Ljava/lang/String;

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/fragment/c0;->G:Ljava/util/List;

    .line 9
    iput-object v1, p0, Lcom/join/mgps/fragment/c0;->H:Ljava/util/List;

    .line 10
    iput v0, p0, Lcom/join/mgps/fragment/c0;->I:I

    .line 11
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/join/mgps/fragment/c0;->J:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic N(Lcom/join/mgps/fragment/c0;)Lcom/join/mgps/adapter/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/c0;->x:Lcom/join/mgps/adapter/o;

    return-object p0
.end method

.method static synthetic O(Lcom/join/mgps/fragment/c0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/fragment/c0;->n:Z

    return p0
.end method

.method static synthetic P(Lcom/join/mgps/fragment/c0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/c0;->l:I

    return p1
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/c0;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/c0;->G:Ljava/util/List;

    return-object p0
.end method

.method static synthetic R(Lcom/join/mgps/fragment/c0;Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/c0;->isLogined(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private S(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    return-object p1
.end method

.method private V()V
    .locals 5

    const-string v0, ""

    .line 1
    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->z:Ljava/lang/String;

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lg1/f;->N(Lcom/join/mgps/enums/Dtype;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/c0;->A:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/join/mgps/fragment/c0;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isIs_fight()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 6
    iget-object v3, p0, Lcom/join/mgps/fragment/c0;->z:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/fragment/c0;->z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/fragment/c0;->z:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/fragment/c0;->z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/fragment/c0;->z:Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private W()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/join/mgps/fragment/c0;->I:I

    if-ge v0, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/join/mgps/fragment/c0;->J:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/fragment/c0$g;

    if-eqz v2, :cond_0

    .line 3
    iget v2, v2, Lcom/join/mgps/fragment/c0$g;->a:I

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->J:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/fragment/c0$g;

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Lcom/join/mgps/fragment/c0$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/c0$g;-><init>(Lcom/join/mgps/fragment/c0;)V

    .line 6
    :cond_2
    iget v0, v0, Lcom/join/mgps/fragment/c0$g;->b:I

    sub-int/2addr v1, v0

    return v1
.end method

.method private e0(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;I)V
    .locals 23

    move-object/from16 v0, p0

    if-eqz p2, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    .line 1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    const-string v15, ""

    if-nez v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2
    new-instance v14, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v13, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_SUBJECT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v12, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 4
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 5
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v8

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    move-result v9

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v17

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTags()Ljava/util/List;

    move-result-object v18

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    move-result-object v19

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSolve_flg()I

    move-result v20

    move-object v3, v12

    move/from16 v4, v16

    move-object v1, v12

    move-object/from16 v12, v17

    move-object v2, v13

    move-object/from16 v13, v18

    move-object v0, v14

    move-object/from16 v14, v19

    move-object/from16 v21, v15

    move/from16 v15, v20

    invoke-direct/range {v3 .. v15}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;-><init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V

    invoke-direct {v0, v2, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    move-object v1, v0

    move-object/from16 v0, p0

    .line 14
    iget-object v2, v0, Lcom/join/mgps/fragment/c0;->m:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    move-object/from16 v21, v15

    const/4 v1, 0x0

    :goto_4
    if-nez v1, :cond_8

    .line 15
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_SUBJECT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v15, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v5, 0x1

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    .line 17
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v3

    if-lez v3, :cond_6

    const/4 v6, 0x1

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    .line 18
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v8

    const/4 v9, 0x0

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v3

    if-lez v3, :cond_7

    const/4 v10, 0x1

    goto :goto_7

    :cond_7
    const/4 v10, 0x0

    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v14, v21

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v12

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTags()Ljava/util/List;

    move-result-object v13

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    move-result-object v18

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSolve_flg()I

    move-result v19

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v22, v14

    move-object/from16 v14, v18

    move-object v0, v15

    move/from16 v15, v19

    invoke-direct/range {v3 .. v15}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;-><init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V

    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    .line 26
    iget-object v2, v0, Lcom/join/mgps/fragment/c0;->m:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    goto/16 :goto_10

    :cond_8
    move-object/from16 v22, v21

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_8

    :cond_9
    const/4 v12, 0x0

    goto :goto_9

    :cond_a
    :goto_8
    const/4 v12, 0x1

    .line 28
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 29
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v1

    const-string v2, "#00FFFFFF"

    if-lez v1, :cond_b

    .line 31
    new-instance v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    invoke-direct {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;-><init>()V

    const-string v3, "\u7cbe"

    .line 32
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setName(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setColor(Ljava/lang/String;)V

    const-string v3, "#FF8378FF"

    .line 34
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setFont_color(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setBorder_color(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 36
    invoke-interface {v7, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 37
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v1

    if-lez v1, :cond_c

    .line 38
    new-instance v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    invoke-direct {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;-><init>()V

    const-string v3, "\u9876"

    .line 39
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setName(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setColor(Ljava/lang/String;)V

    const-string v2, "#FFFF6464"

    .line 41
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setFont_color(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setBorder_color(Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 43
    invoke-interface {v7, v14, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_a

    :cond_c
    const/4 v14, 0x0

    .line 44
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v5, 0x1

    goto :goto_b

    :cond_e
    const/4 v5, 0x0

    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v15, v22

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v4, v12

    invoke-static/range {v2 .. v7}, Lcom/join/mgps/Util/i0;->m0(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    .line 47
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;

    const/4 v3, 0x0

    if-eqz v12, :cond_f

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v2

    if-lez v2, :cond_f

    const/4 v4, 0x1

    goto :goto_c

    :cond_f
    const/4 v4, 0x0

    :goto_c
    if-eqz v12, :cond_10

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v2

    if-lez v2, :cond_10

    const/4 v5, 0x1

    goto :goto_d

    :cond_10
    const/4 v5, 0x0

    .line 50
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v7

    const/4 v8, 0x0

    if-eqz v12, :cond_11

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v2

    if-lez v2, :cond_11

    const/4 v9, 0x1

    goto :goto_e

    :cond_11
    const/4 v9, 0x0

    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v12, :cond_12

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v2

    goto :goto_f

    :cond_12
    const/4 v2, 0x0

    :goto_f
    move-object v11, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;-><init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;ZLandroid/text/SpannableStringBuilder;)V

    .line 55
    new-instance v2, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v3, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_MESSAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-direct {v2, v3, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 56
    iget-object v3, v0, Lcom/join/mgps/fragment/c0;->m:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v3, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 58
    iget-object v2, v0, Lcom/join/mgps/fragment/c0;->m:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->s()Lcom/join/android/app/component/optimizetext/b;

    move-result-object v2

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070ca2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/join/mgps/Util/b0;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/join/android/app/component/optimizetext/b;->j(I)Lcom/join/android/app/component/optimizetext/b;

    move-result-object v2

    .line 60
    invoke-virtual {v2, v1}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    goto :goto_11

    :cond_13
    :goto_10
    move-object/from16 v15, v22

    const/4 v14, 0x0

    .line 61
    :cond_14
    :goto_11
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v3, 0x1

    goto :goto_12

    :cond_15
    const/4 v3, 0x0

    :goto_12
    if-nez v3, :cond_1c

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSmall_thumb_pic_list()Ljava/util/List;

    move-result-object v1

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->isAttach_video()Z

    move-result v4

    move-object v5, v15

    move-object v6, v5

    :goto_13
    if-eqz v1, :cond_18

    .line 65
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v14, v7, :cond_18

    .line 66
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    .line 67
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "pic"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 68
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 69
    :cond_16
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "video"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 70
    invoke-static {v6}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 71
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    move-result-object v6

    :cond_17
    :goto_14
    add-int/lit8 v14, v14, 0x1

    goto :goto_13

    .line 73
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v7

    goto :goto_15

    .line 75
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v7

    goto :goto_15

    :cond_1a
    move-object v7, v15

    :goto_15
    if-eqz v4, :cond_1b

    .line 77
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_VIDEO:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v4, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$q;

    invoke-direct {v4, v5, v6, v7}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 78
    iget-object v2, v0, Lcom/join/mgps/fragment/c0;->m:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    goto :goto_16

    :cond_1b
    if-eqz v1, :cond_1c

    .line 79
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 80
    new-instance v4, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v5, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_IMGS:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v6, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$n;

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v7

    invoke-direct {v6, v1, v2, v7}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$n;-><init>(Ljava/util/List;Ljava/util/List;I)V

    invoke-direct {v4, v5, v6}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 82
    iget-object v1, v0, Lcom/join/mgps/fragment/c0;->m:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v1, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    :cond_1c
    :goto_16
    if-eqz v3, :cond_1e

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/c0;->c0(Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    .line 84
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_GAME:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getResource_url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 86
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_GAME_RES_LINK:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 87
    :cond_1d
    new-instance v2, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v5

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getResource_url()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v3, v7, v4, v5, v6}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;-><init>(ZLjava/lang/String;Lcom/join/mgps/dto/ForumBean$GameInfo;Ljava/lang/String;)V

    invoke-direct {v2, v1, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 91
    iget-object v1, v0, Lcom/join/mgps/fragment/c0;->m:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    .line 92
    :cond_1e
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v13, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAvatar_src()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getForum_name()Ljava/lang/String;

    move-result-object v5

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getNickname()Ljava/lang/String;

    move-result-object v6

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result v7

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    move-result v8

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v9

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getView()I

    move-result v10

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    move-result v12

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZI)V

    invoke-direct {v1, v2, v13}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 101
    iget-object v2, v0, Lcom/join/mgps/fragment/c0;->m:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    return-void
.end method

.method private isLogined(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/c0;->S(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

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
.method M()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    return-void
.end method

.method public T()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->D:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->F(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->D:Lcom/join/android/app/component/video/c;

    iget-object v1, p0, Lcom/join/mgps/fragment/c0;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->m(Landroid/widget/AbsListView;)V

    :cond_0
    return-void
.end method

.method public U()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/c0;->V()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c0;->loadData()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->G:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c0;->X()V

    :cond_0
    return-void
.end method

.method X()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->k:Lcom/join/mgps/rpc/h;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->k:Lcom/join/mgps/rpc/h;

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-boolean v2, p0, Lcom/join/mgps/fragment/c0;->n:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 7
    iput-boolean v2, p0, Lcom/join/mgps/fragment/c0;->n:Z

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/fragment/c0;->k:Lcom/join/mgps/rpc/h;

    iget v3, p0, Lcom/join/mgps/fragment/c0;->l:I

    invoke-interface {v2, v0, v1, v3}, Lcom/join/mgps/rpc/h;->W(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v1

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/c0;->i0(Ljava/util/List;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c0;->h0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c0;->h0()V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c0;->h0()V

    :goto_0
    return-void
.end method

.method Z()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->d:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c0;->U()V

    return-void
.end method

.method a0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    return-void
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/MGMainActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->scroll_text_layout:Lcom/join/mgps/customview/ScrollTextViewLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->B:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/MGMainActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->downloadLine:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->C:Landroid/widget/ImageView;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/android/app/common/utils/j;->v(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/fragment/c0;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    new-instance v0, Lcom/join/android/app/component/video/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/c0;->F:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/join/android/app/component/video/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->D:Lcom/join/android/app/component/video/c;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/MGMainActivity;

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->E:Lcom/join/mgps/activity/MGMainActivity;

    .line 9
    invoke-static {}, Lcom/join/mgps/rpc/impl/j;->n0()Lcom/join/mgps/rpc/impl/k;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->w:Lcom/join/mgps/rpc/k;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0529

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->o:Landroid/view/View;

    const v1, 0x7f090388

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->p:Landroid/widget/LinearLayout;

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->o:Landroid/view/View;

    const v1, 0x7f090387

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->q:Landroid/widget/GridView;

    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->o:Landroid/view/View;

    const v1, 0x7f090381

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MyGridView;

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->r:Lcom/join/mgps/customview/MyGridView;

    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->o:Landroid/view/View;

    const v1, 0x7f090383

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->s:Landroid/widget/ImageView;

    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->o:Landroid/view/View;

    const v1, 0x7f09103d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->t:Landroid/widget/RelativeLayout;

    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->o:Landroid/view/View;

    const v1, 0x7f09103b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->u:Landroid/widget/LinearLayout;

    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->o:Landroid/view/View;

    const v1, 0x7f09103c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->v:Landroid/widget/TextView;

    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->o:Landroid/view/View;

    const v1, 0x7f090ee4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/android/app/common/utils/j;->v(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->q:Landroid/widget/GridView;

    new-instance v1, Lcom/join/mgps/fragment/c0$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/c0$a;-><init>(Lcom/join/mgps/fragment/c0;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 28
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->r:Lcom/join/mgps/customview/MyGridView;

    new-instance v1, Lcom/join/mgps/fragment/c0$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/c0$b;-><init>(Lcom/join/mgps/fragment/c0;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 29
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->f:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/fragment/c0;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 30
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/c0;->D:Lcom/join/android/app/component/video/c;

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->m:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 31
    new-instance v1, Lcom/join/mgps/fragment/c0$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/c0$c;-><init>(Lcom/join/mgps/fragment/c0;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->Q0(Lcom/join/mgps/listener/f;)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->m:Lcom/join/mgps/adapter/ForumBaseAdapter;

    iget-object v1, p0, Lcom/join/mgps/fragment/c0;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->p0(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->f:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/fragment/c0;->m:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->f:Lcom/join/mgps/customview/XListView2;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 35
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->f:Lcom/join/mgps/customview/XListView2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 36
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->f:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/c0$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/c0$d;-><init>(Lcom/join/mgps/fragment/c0;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 37
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->f:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/c0$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/c0$e;-><init>(Lcom/join/mgps/fragment/c0;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 38
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 39
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c0;->U()V

    .line 40
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->m:Lcom/join/mgps/adapter/ForumBaseAdapter;

    new-instance v1, Lcom/join/mgps/fragment/c0$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/c0$f;-><init>(Lcom/join/mgps/fragment/c0;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->v0(Lcom/join/mgps/adapter/ForumBaseAdapter$r0;)V

    return-void
.end method

.method b0(I)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/i0;->e0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;

    move-result-object v0

    const-string v1, ""

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/fragment/c0;->k:Lcom/join/mgps/rpc/h;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/join/mgps/rpc/h;->o(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v2

    const/16 v3, 0x2c2

    if-ne v2, v3, :cond_2

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/c0;->d0(I)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c0;->f0()V

    return-void

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;->isResult()Z

    .line 12
    invoke-static {v0, p1}, Lcom/join/mgps/Util/i0;->m1(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method c0(Lcom/join/mgps/dto/ForumBean$GameInfo;)V
    .locals 0

    return-void
.end method

.method d0(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->G:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/fragment/c0;->G:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/join/mgps/fragment/c0;->G:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/c0;->G:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_1
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPraise(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/c0;->G:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_praise(Z)V

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/fragment/c0;->m:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->r()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 8
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/fragment/c0;->G:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/c0;->G:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {p0, p1, v0}, Lcom/join/mgps/fragment/c0;->e0(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/c0;->m:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method f0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/z;->m(Landroid/content/Context;)V

    return-void
.end method

.method g0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
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

.method h0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->f:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/fragment/c0;->n:Z

    return-void
.end method

.method i0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lcom/join/mgps/fragment/c0;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->m:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/join/mgps/fragment/c0;->G:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/fragment/c0;->G:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/join/mgps/fragment/c0;->G:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {p0, v2, v0}, Lcom/join/mgps/fragment/c0;->e0(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->m:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->f:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_5

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    iget p1, p0, Lcom/join/mgps/fragment/c0;->l:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/join/mgps/fragment/c0;->l:I

    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/c0;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/c0;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->u()V

    goto :goto_2

    .line 14
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/fragment/c0;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/fragment/c0;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->u()V

    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/join/mgps/fragment/c0;->n:Z

    .line 17
    iget-object p1, p0, Lcom/join/mgps/fragment/c0;->m:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method j0(Lcom/join/mgps/dto/DiscoveryMainDataBean;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->e:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/DiscoveryMainDataBean;->getBattle_game()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->H:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->q:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/join/mgps/fragment/c0;->H:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->q:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->x:Lcom/join/mgps/adapter/o;

    if-nez v0, :cond_2

    .line 11
    new-instance v0, Lcom/join/mgps/adapter/o;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/c0;->H:Ljava/util/List;

    iget-object v3, p0, Lcom/join/mgps/fragment/c0;->z:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/adapter/o;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->x:Lcom/join/mgps/adapter/o;

    .line 12
    iget-object v1, p0, Lcom/join/mgps/fragment/c0;->q:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/fragment/c0;->H:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/o;->c(Ljava/util/List;)V

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->x:Lcom/join/mgps/adapter/o;

    iget-object v1, p0, Lcom/join/mgps/fragment/c0;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/o;->b(Ljava/lang/String;)V

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/DiscoveryMainDataBean;->getForum_list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->y:Lcom/join/mgps/adapter/n;

    if-nez v0, :cond_4

    .line 18
    new-instance v0, Lcom/join/mgps/adapter/n;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/join/mgps/adapter/n;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->y:Lcom/join/mgps/adapter/n;

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/n;->b(Ljava/util/List;)V

    .line 20
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/fragment/c0;->r:Lcom/join/mgps/customview/MyGridView;

    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->y:Lcom/join/mgps/adapter/n;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_5
    return-void
.end method

.method k0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/c0;->S(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method loadData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    const-string v1, "uid"

    .line 3
    iget-object v2, p0, Lcom/join/mgps/fragment/c0;->j:Lcom/join/mgps/Util/b;

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "token"

    .line 4
    iget-object v2, p0, Lcom/join/mgps/fragment/c0;->j:Lcom/join/mgps/Util/b;

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "game_ids"

    .line 5
    iget-object v2, p0, Lcom/join/mgps/fragment/c0;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/fragment/c0;->w:Lcom/join/mgps/rpc/k;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/k;->j0(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getError()I

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/DiscoveryMainDataBean;

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/c0;->j0(Lcom/join/mgps/dto/DiscoveryMainDataBean;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c0;->g0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c0;->g0()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c0;->g0()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090383

    if-eq p1, v0, :cond_0

    const v0, 0x7f090385

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/NewArenaMainActivty_;->F1(Landroid/content/Context;)Lcom/join/mgps/activity/NewArenaMainActivty_$h;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enterLobby"

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->f2(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "communityEnter"

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->f2(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/ForumIndexActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/activity/ForumIndexActivity_$d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/SearchHintActivity_;->S1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f09103b
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->D:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->z()V

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c0;->U()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/c0;->D:Lcom/join/android/app/component/video/c;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/join/android/app/component/video/c;->B()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/c0;->D:Lcom/join/android/app/component/video/c;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/join/android/app/component/video/c;->A()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->E:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainActivity;->getPositionNum()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->D:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->A()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->x:Lcom/join/mgps/adapter/o;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c0;->U()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->E:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainActivity;->getPositionNum()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->D:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->B()V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->D:Lcom/join/android/app/component/video/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/join/android/app/component/video/c;->e(Landroid/widget/AbsListView;III)V

    .line 2
    iput p2, p0, Lcom/join/mgps/fragment/c0;->I:I

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p1, p3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    iget-object p4, p0, Lcom/join/mgps/fragment/c0;->J:Landroid/util/SparseArray;

    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/join/mgps/fragment/c0$g;

    if-nez p4, :cond_0

    .line 5
    new-instance p4, Lcom/join/mgps/fragment/c0$g;

    invoke-direct {p4, p0}, Lcom/join/mgps/fragment/c0$g;-><init>(Lcom/join/mgps/fragment/c0;)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p4, Lcom/join/mgps/fragment/c0$g;->a:I

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p4, Lcom/join/mgps/fragment/c0$g;->b:I

    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/c0;->J:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, p4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/fragment/c0;->W()I

    move-result p1

    const/16 p2, 0x14

    if-gt p1, p2, :cond_1

    .line 10
    iget-object p1, p0, Lcom/join/mgps/fragment/c0;->b:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/c0;->i:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/c0;->B:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0809a9

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/c0;->C:Landroid/widget/ImageView;

    const p2, 0x7f08076a

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/16 p2, 0xa

    if-le p1, p2, :cond_3

    .line 14
    iget-object p2, p0, Lcom/join/mgps/fragment/c0;->i:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object p2, p0, Lcom/join/mgps/fragment/c0;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 16
    iget-object p2, p0, Lcom/join/mgps/fragment/c0;->B:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0809af

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    iget-object p2, p0, Lcom/join/mgps/fragment/c0;->C:Landroid/widget/ImageView;

    const p3, 0x7f080765

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    iget-object p2, p0, Lcom/join/mgps/fragment/c0;->o:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    if-lt p1, p2, :cond_2

    .line 19
    iget-object p1, p0, Lcom/join/mgps/fragment/c0;->h:Landroid/widget/TextView;

    const-string p2, "\u609f\u996d\u5934\u6761"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/c0;->h:Landroid/widget/TextView;

    const-string p2, "\u53d1\u73b0"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->D:Lcom/join/android/app/component/video/c;

    invoke-virtual {v0, p1, p2}, Lcom/join/android/app/component/video/c;->i(Landroid/widget/AbsListView;I)V

    if-nez p2, :cond_0

    .line 2
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/g;->H()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/g;->N()V

    :cond_0
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
