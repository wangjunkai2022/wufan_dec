.class public Lcom/join/mgps/activity/ForumMyActivity;
.super Lcom/BaseAppCompatActivity;
.source "ForumMyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/join/mgps/customview/ForumBaseHeaderView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumMyActivity$j;,
        Lcom/join/mgps/activity/ForumMyActivity$m;,
        Lcom/join/mgps/activity/ForumMyActivity$k;,
        Lcom/join/mgps/activity/ForumMyActivity$l;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0036
.end annotation


# instance fields
.field a:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lru/noties/scrollable/ScrollableLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/customview/ForumMyHeaderView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/customview/XExpandableListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/join/mgps/rpc/h;

.field public h:I

.field public i:I

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommenGroup;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation
.end field

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private p:Lcom/join/mgps/customview/j;

.field q:Lcom/join/mgps/activity/ForumMyActivity$k;

.field r:Landroid/os/Handler;

.field s:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->j:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->k:Ljava/util/List;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->l:I

    const/4 v1, 0x2

    .line 5
    iput v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->m:I

    const/4 v1, 0x3

    .line 6
    iput v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->n:I

    const/4 v1, 0x4

    .line 7
    iput v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->o:I

    .line 8
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->r:Landroid/os/Handler;

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->s:Z

    return-void
.end method

.method private declared-synchronized H0()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->q:Lcom/join/mgps/activity/ForumMyActivity$k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumMyActivity$k;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->q:Lcom/join/mgps/activity/ForumMyActivity$k;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumMyActivity$k;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyActivity$l;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    const/4 v1, 0x3

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumMyActivity$l;->e(I)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->q:Lcom/join/mgps/activity/ForumMyActivity$k;

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ForumMyActivity$k;->a(Lcom/join/mgps/activity/ForumMyActivity$l;)V

    .line 7
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyActivity$l;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumMyActivity$l;->e(I)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->q:Lcom/join/mgps/activity/ForumMyActivity$k;

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ForumMyActivity$k;->a(Lcom/join/mgps/activity/ForumMyActivity$l;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyActivity$l;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumMyActivity$l;->e(I)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumMyActivity$l;->c(Ljava/util/List;)V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->q:Lcom/join/mgps/activity/ForumMyActivity$k;

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ForumMyActivity$k;->a(Lcom/join/mgps/activity/ForumMyActivity$l;)V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->k:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyActivity$l;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    const/4 v1, 0x2

    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumMyActivity$l;->e(I)V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumMyActivity$l;->d(Ljava/util/List;)V

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->q:Lcom/join/mgps/activity/ForumMyActivity$k;

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ForumMyActivity$k;->a(Lcom/join/mgps/activity/ForumMyActivity$l;)V

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->q:Lcom/join/mgps/activity/ForumMyActivity$k;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 21
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->s:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 22
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumMyActivity;->q:Lcom/join/mgps/activity/ForumMyActivity$k;

    invoke-virtual {v2}, Lcom/join/mgps/activity/ForumMyActivity$k;->getGroupCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 23
    iget-object v2, p0, Lcom/join/mgps/activity/ForumMyActivity;->f:Lcom/join/mgps/customview/XExpandableListView;

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_3
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method D0(I)V
    .locals 3
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

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->b:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6ca1\u6709\u66f4\u591a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u793e\u533a\u5185\u5bb9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5e16\u54e6~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->b:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v1, Lcom/join/mgps/activity/ForumMyActivity$h;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ForumMyActivity$h;-><init>(Lcom/join/mgps/activity/ForumMyActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->b:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->b:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->b:Lcom/join/mgps/customview/ForumLoadingView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->b:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->b:Lcom/join/mgps/customview/ForumLoadingView;

    const-string v1, "\u52a0\u8f7d\u5931\u8d25~"

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->b:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v1, Lcom/join/mgps/activity/ForumMyActivity$i;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ForumMyActivity$i;-><init>(Lcom/join/mgps/activity/ForumMyActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->b:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->b:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->b:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->b:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->b:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->b:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    :goto_0
    return-void
.end method

.method E0()Z
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

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumMyActivity;->showMessage(Ljava/lang/String;)V

    const/16 v1, 0x9

    .line 3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumMyActivity;->D0(I)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyActivity;->K0()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method F0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumMyActivity;->G0(I)V

    return-void
.end method

.method G0(I)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 2
    :try_start_0
    iget v3, p0, Lcom/join/mgps/activity/ForumMyActivity;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_1

    if-eq v3, v2, :cond_0

    .line 3
    iput v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->i:I

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyActivity;->K0()V

    return-void

    .line 5
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->i:I

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v4

    .line 8
    iget-object v5, p0, Lcom/join/mgps/activity/ForumMyActivity;->g:Lcom/join/mgps/rpc/h;

    sget v6, Lcom/join/mgps/Util/i0;->d:I

    invoke-interface {v5, v3, v4, p1, v6}, Lcom/join/mgps/rpc/h;->E(Ljava/lang/String;Ljava/lang/String;II)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v4

    if-nez v4, :cond_6

    .line 10
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumMyActivity;->D0(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    iget p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->i:I

    if-eq p1, v2, :cond_2

    .line 13
    iput v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->i:I

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyActivity;->K0()V

    return-void

    .line 15
    :cond_3
    :try_start_2
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ForumData$MyForumMain;

    invoke-virtual {p0, v4, p1}, Lcom/join/mgps/activity/ForumMyActivity;->J0(Lcom/join/mgps/dto/ForumData$MyForumMain;I)V

    .line 16
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ForumData$MyForumMain;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$MyForumMain;->getTag_follow()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 17
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ForumData$MyForumMain;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$MyForumMain;->getTag_follow()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 18
    :cond_4
    iput p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->h:I

    goto :goto_1

    .line 19
    :cond_5
    :goto_0
    iput v2, p0, Lcom/join/mgps/activity/ForumMyActivity;->i:I

    goto :goto_1

    .line 20
    :cond_6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumMyActivity;->D0(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    :goto_1
    iget p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->i:I

    if-eq p1, v2, :cond_7

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 22
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumMyActivity;->D0(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    iget p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->i:I

    if-eq p1, v2, :cond_7

    .line 25
    :goto_2
    iput v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->i:I

    .line 26
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyActivity;->K0()V

    goto :goto_4

    .line 27
    :goto_3
    iget v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->i:I

    if-eq v0, v2, :cond_8

    .line 28
    iput v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->i:I

    .line 29
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyActivity;->K0()V

    .line 30
    throw p1

    :cond_9
    const p1, 0x7f110206

    .line 31
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity;->showMessage(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 32
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity;->D0(I)V

    :goto_4
    return-void
.end method

.method I0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyActivity;->F0()V

    return-void
.end method

.method J0(Lcom/join/mgps/dto/ForumData$MyForumMain;I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$MyForumMain;->getForum_follow()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$MyForumMain;->getTag_follow()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumMyActivity;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/ForumMyActivity;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/ForumMyActivity;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-ne p2, v1, :cond_3

    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->s:Z

    .line 10
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumMyActivity;->H0()V

    return-void
.end method

.method K0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->r:Landroid/os/Handler;

    new-instance v1, Lcom/join/mgps/activity/ForumMyActivity$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumMyActivity$g;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method L0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->b:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->getLoadingState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->o0(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyActivity;->F0()V
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

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->g:Lcom/join/mgps/rpc/h;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->a:Landroid/widget/TextView;

    const-string v2, "\u6211\u7684\u793e\u533a"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->d:Lcom/join/mgps/customview/ForumMyHeaderView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/ForumBaseHeaderView;->setmOnMeasureHeight(Lcom/join/mgps/customview/ForumBaseHeaderView$a;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->d:Lcom/join/mgps/customview/ForumMyHeaderView;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/ForumBaseHeaderView;->setHeaderClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->c:Lru/noties/scrollable/ScrollableLayout;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    new-instance v2, Lcom/join/mgps/activity/ForumMyActivity$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ForumMyActivity$a;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    invoke-virtual {v0, v2}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->c:Lru/noties/scrollable/ScrollableLayout;

    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->setAutoMaxScroll(Z)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->c:Lru/noties/scrollable/ScrollableLayout;

    new-instance v1, Lcom/join/mgps/activity/ForumMyActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumMyActivity$b;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->setCanScrollVerticallyDelegate(Lru/noties/scrollable/b;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->c:Lru/noties/scrollable/ScrollableLayout;

    new-instance v1, Lcom/join/mgps/activity/ForumMyActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumMyActivity$c;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->setOnFlingOverListener(Lru/noties/scrollable/j;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->f:Lcom/join/mgps/customview/XExpandableListView;

    sget v1, Lcom/join/mgps/Util/i0;->e:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XExpandableListView;->setPreLoadCount(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->f:Lcom/join/mgps/customview/XExpandableListView;

    new-instance v1, Lcom/join/mgps/activity/ForumMyActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumMyActivity$d;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XExpandableListView;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 14
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyActivity$e;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->p:Lcom/join/mgps/customview/j;

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->f:Lcom/join/mgps/customview/XExpandableListView;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XExpandableListView;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 16
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity$k;

    invoke-direct {v0, p0, p0}, Lcom/join/mgps/activity/ForumMyActivity$k;-><init>(Lcom/join/mgps/activity/ForumMyActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->q:Lcom/join/mgps/activity/ForumMyActivity$k;

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyActivity;->f:Lcom/join/mgps/customview/XExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->f:Lcom/join/mgps/customview/XExpandableListView;

    new-instance v1, Lcom/join/mgps/activity/ForumMyActivity$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumMyActivity$f;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyActivity;->F0()V

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

.method public g(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->c:Lru/noties/scrollable/ScrollableLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lru/noties/scrollable/ScrollableLayout;->setMaxScrollY(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->f:Lcom/join/mgps/customview/XExpandableListView;

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    .line 4
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->b:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->f:Lcom/join/mgps/customview/XExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity;->c:Lru/noties/scrollable/ScrollableLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lru/noties/scrollable/ScrollableLayout;->setAutoMaxScroll(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyActivity;->L0()V

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
