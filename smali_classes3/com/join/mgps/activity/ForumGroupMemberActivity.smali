.class public Lcom/join/mgps/activity/ForumGroupMemberActivity;
.super Lcom/BaseAppCompatActivity;
.source "ForumGroupMemberActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0408
.end annotation


# instance fields
.field a:Lcom/join/mgps/customview/XListView2;
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

.field d:Lcom/join/mgps/rpc/h;

.field e:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field public f:I

.field public g:I

.field private h:Landroid/os/Handler;

.field private i:Lcom/join/mgps/customview/j;

.field private j:Lcom/join/mgps/adapter/ForumBaseAdapter;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$GroupMemberBean;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$GroupMemberBean;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/join/mgps/dto/ForumData$GroupMemberBean;

.field n:Ljava/lang/String;

.field o:Lcom/join/android/app/component/video/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->h:Landroid/os/Handler;

    const-string v0, "ForumGroupMemberActivity"

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->n:Ljava/lang/String;

    return-void
.end method

.method private I0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->a:Lcom/join/mgps/customview/XListView2;

    sget v1, Lcom/join/mgps/Util/i0;->e:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->a:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/ForumGroupMemberActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity$a;-><init>(Lcom/join/mgps/activity/ForumGroupMemberActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 3
    new-instance v0, Lcom/join/mgps/activity/ForumGroupMemberActivity$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity$b;-><init>(Lcom/join/mgps/activity/ForumGroupMemberActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->i:Lcom/join/mgps/customview/j;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->a:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 5
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->o:Lcom/join/android/app/component/video/c;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->p0(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    new-instance v1, Lcom/join/mgps/activity/ForumGroupMemberActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity$c;-><init>(Lcom/join/mgps/activity/ForumGroupMemberActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->v0(Lcom/join/mgps/adapter/ForumBaseAdapter$r0;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->a:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private J0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->I0()V

    return-void
.end method

.method private O0()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->k:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->GROUP_MEMBER_SECTION_TITLE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$d;

    const-string v4, "\u7ec4\u5458\u4eec"

    invoke-direct {v3, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$d;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 3
    iget-object v2, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    .line 4
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 5
    :goto_0
    iget-object v4, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 6
    iget-object v4, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->k:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ForumData$GroupMemberBean;

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 8
    :goto_1
    new-instance v5, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v15, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->GROUP_MEMBER_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v14, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;

    .line 9
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getAvatar_src()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getNickname()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 11
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getGrade()I

    move-result v10

    .line 12
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getJoin_time()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    iget v6, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->e:I

    .line 13
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v16, v6

    move-object v6, v14

    move-object v2, v14

    move/from16 v14, v16

    move-object/from16 v16, v1

    move-object v1, v15

    move v15, v4

    invoke-direct/range {v6 .. v15}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ZZII)V

    invoke-direct {v5, v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 14
    iget-object v1, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v1, v5}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v16

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private P0()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->l:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->GROUP_MEMBER_SECTION_TITLE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$d;

    const-string v4, "\u7ba1\u7406\u4eec"

    invoke-direct {v3, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$d;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 3
    iget-object v2, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    .line 4
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 5
    :goto_0
    iget-object v4, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 6
    iget-object v4, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->l:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ForumData$GroupMemberBean;

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 8
    :goto_1
    new-instance v5, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v15, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->GROUP_MEMBER_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v14, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;

    .line 9
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getAvatar_src()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getNickname()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    .line 11
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getGrade()I

    move-result v10

    .line 12
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getJoin_time()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    iget v6, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->e:I

    .line 13
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v16, v6

    move-object v6, v14

    move-object v2, v14

    move/from16 v14, v16

    move-object/from16 v16, v1

    move-object v1, v15

    move v15, v4

    invoke-direct/range {v6 .. v15}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ZZII)V

    invoke-direct {v5, v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 14
    iget-object v1, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v1, v5}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v16

    goto :goto_0

    :cond_2
    :goto_2
    return-void
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

.method E0(Z)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->m:Lcom/join/mgps/dto/ForumData$GroupMemberBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->setIs_joined(Z)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->M0()V

    return-void
.end method

.method F0(I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    const/16 v1, 0x10

    if-eq p1, v1, :cond_3

    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "\u6ca1\u6709\u66f4\u591a\u5185\u5bb9\u54e6~"

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumGroupMemberActivity$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumGroupMemberActivity$f;-><init>(Lcom/join/mgps/activity/ForumGroupMemberActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Lcom/join/mgps/activity/ForumGroupMemberActivity$e;

    invoke-direct {p1, p0, v0}, Lcom/join/mgps/activity/ForumGroupMemberActivity$e;-><init>(Lcom/join/mgps/activity/ForumGroupMemberActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    :cond_3
    const-string p1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 8
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumGroupMemberActivity$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumGroupMemberActivity$g;-><init>(Lcom/join/mgps/activity/ForumGroupMemberActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 13
    :cond_6
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    :goto_0
    return-void
.end method

.method G0(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->d:Lcom/join/mgps/rpc/h;

    invoke-interface {v2, p1, v0, v1}, Lcom/join/mgps/rpc/h;->i(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->E0(Z)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->D0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f1100e3

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->D0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const p1, 0x7f110206

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->D0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method H0(I)V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 2
    :try_start_0
    iget v4, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->g:I

    if-eq v4, v3, :cond_9

    if-ne v4, p1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->g:I

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v5

    .line 6
    iget-object v6, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->d:Lcom/join/mgps/rpc/h;

    iget v7, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->e:I

    invoke-interface {v6, v7, p1, v4, v5}, Lcom/join/mgps/rpc/h;->Z(IILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 7
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v5

    if-nez v5, :cond_8

    .line 8
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 9
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->F0(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->g:I

    if-eq p1, v3, :cond_1

    .line 11
    iput v2, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->g:I

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->R0()V

    return-void

    .line 13
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ForumData$GroupFans;

    .line 14
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupFans;->getList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupFans;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_7

    :cond_3
    if-ne p1, v1, :cond_4

    .line 15
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupFans;->getManagers()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupFans;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    if-le p1, v1, :cond_7

    .line 16
    :cond_5
    iput v3, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->g:I

    const/16 v4, 0xa

    .line 17
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->F0(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    iget p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->g:I

    if-eq p1, v3, :cond_6

    .line 19
    iput v2, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->g:I

    .line 20
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->R0()V

    return-void

    .line 21
    :cond_7
    :try_start_2
    invoke-virtual {p0, p1, v4}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->Q0(ILcom/join/mgps/dto/ForumData$GroupFans;)V

    .line 22
    iput p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->f:I

    const/4 v4, 0x2

    .line 23
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->F0(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    :cond_8
    iget p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->g:I

    if-eq p1, v3, :cond_c

    goto :goto_1

    :cond_9
    :goto_0
    if-eq v4, v3, :cond_a

    .line 25
    iput v2, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->g:I

    .line 26
    :cond_a
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->R0()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v4

    .line 27
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->R0()V

    if-ne p1, v1, :cond_b

    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 30
    :cond_b
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->F0(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    iget p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->g:I

    if-eq p1, v3, :cond_c

    .line 32
    :goto_1
    iput v2, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->g:I

    .line 33
    :cond_c
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->R0()V

    goto :goto_3

    .line 34
    :goto_2
    iget v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->g:I

    if-eq v0, v3, :cond_d

    .line 35
    iput v2, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->g:I

    .line 36
    :cond_d
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->R0()V

    .line 37
    throw p1

    :cond_e
    const p1, 0x7f110206

    .line 38
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->D0(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 39
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->F0(I)V

    :goto_3
    return-void
.end method

.method K0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const v1, 0x7f110206

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->D0(Ljava/lang/String;)V

    const/16 v1, 0x9

    .line 3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->F0(I)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->R0()V

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->H0(I)V

    return-void
.end method

.method declared-synchronized M0()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->r()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->P0()V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->O0()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method N0(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 2
    .param p1    # Lcom/join/mgps/dto/CollectionBeanSub;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
            value = "gameData"
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.paygamefinish",
            "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/e0;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/PurchasedListTable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/db/tables/PurchasedListTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/PurchasedListTable;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/PurchasedListTable;->setGame_id(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method Q0(ILcom/join/mgps/dto/ForumData$GroupFans;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->k:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->k:Ljava/util/List;

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->l:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->l:Ljava/util/List;

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$GroupFans;->getMe()Lcom/join/mgps/dto/ForumData$GroupMemberBean;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->m:Lcom/join/mgps/dto/ForumData$GroupMemberBean;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$GroupFans;->getManagers()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->l:Ljava/util/List;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$GroupFans;->getManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_3
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$GroupFans;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->k:Ljava/util/List;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$GroupFans;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->M0()V

    return-void
.end method

.method R0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->h:Landroid/os/Handler;

    new-instance v1, Lcom/join/mgps/activity/ForumGroupMemberActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity$d;-><init>(Lcom/join/mgps/activity/ForumGroupMemberActivity;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->d:Lcom/join/mgps/rpc/h;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->b:Landroid/widget/TextView;

    const-string v1, "\u5c0f\u7ec4\u6210\u5458"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v0, Lcom/join/android/app/component/video/c;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->n:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/join/android/app/component/video/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->o:Lcom/join/android/app/component/video/c;

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->J0()V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->F0(I)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->L0()V

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

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->o:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->z()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->o:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->A()V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->o:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->B()V

    :cond_0
    return-void
.end method
