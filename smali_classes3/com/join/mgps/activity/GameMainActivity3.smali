.class public Lcom/join/mgps/activity/GameMainActivity3;
.super Lcom/join/mgps/activity/FriendActivity;
.source "GameMainActivity3.java"

# interfaces
.implements Lcom/join/mgps/adapter/w1$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameMainActivity3$EmuOutResultReceiver;,
        Lcom/join/mgps/activity/GameMainActivity3$i;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c003e
.end annotation

.annotation build Lorg/androidannotations/annotations/Fullscreen;
.end annotation

.annotation build Lorg/androidannotations/annotations/WindowFeature;
    value = {
        0x1
    }
.end annotation


# instance fields
.field A0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/PlayGameTimeTable;",
            ">;"
        }
    .end annotation
.end field

.field private B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private C0:Ljava/lang/String;

.field D0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PspBattleServer;",
            ">;"
        }
    .end annotation
.end field

.field E0:Lcom/join/mgps/activity/GameMainActivity3$i;

.field F0:Lcom/join/mgps/rpc/k;

.field G0:Lcom/join/mgps/dto/GameMainV4DataBean;

.field private H0:Ljava/lang/String;

.field I0:Lcom/join/mgps/dto/AccountBean;

.field J0:Lcom/join/mgps/rpc/j;

.field private K0:Ljava/lang/String;

.field private L0:I

.field private M0:Ljava/lang/String;

.field private N0:Lcom/join/mgps/socket/fight/arena/b;

.field private O0:Lcom/join/mgps/socket/fight/arena/a;

.field private P0:Lcom/join/mgps/adapter/w1;

.field private Q0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DynamicEntranceBean;",
            ">;"
        }
    .end annotation
.end field

.field R0:Lcom/join/mgps/rpc/e;

.field S0:Lcom/join/mgps/rpc/c;

.field private T0:Lcom/join/mgps/adapter/e2;

.field private U0:Lcom/join/mgps/activity/GameMainActivity3$EmuOutResultReceiver;

.field V0:Lcom/github/snowdream/android/app/downloader/b;

.field private W0:Lcom/github/snowdream/android/app/downloader/b$b;

.field X0:Lcom/join/mgps/dialog/x;

.field Y0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;"
        }
    .end annotation
.end field

.field Z0:I

.field a1:I

.field private b1:Z

.field private c1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentAllListBean$GeneralCommentBean;",
            ">;"
        }
    .end annotation
.end field

.field d1:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field e1:Lcom/join/mgps/rpc/h;

.field f1:I

.field g1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;",
            ">;"
        }
    .end annotation
.end field

.field private h1:Landroid/os/CountDownTimer;

.field private final i1:Lcom/join/mgps/socket/fight/arena/b$b;

.field private final j1:Lapp/mgsim/arena/SocketListener$NotifyObserver;

.field public k1:Z

.field l1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RomArchived;",
            ">;"
        }
    .end annotation
.end field

.field public m1:Z

.field public n1:Z

.field o0:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field o1:Lcom/join/mgps/dto/ArchiveNumDataBean;

.field p0:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field q0:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field s0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field t0:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field u0:Landroid/view/View;

.field v0:Landroid/widget/GridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field w0:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field x0:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field y0:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private z0:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FriendActivity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->C0:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->K0:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->L0:I

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->M0:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->Q0:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->Y0:Ljava/util/Map;

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->Z0:I

    .line 9
    iput v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->a1:I

    .line 10
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->b1:Z

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->c1:Ljava/util/List;

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->g1:Ljava/util/List;

    .line 13
    new-instance v2, Lcom/join/mgps/activity/GameMainActivity3$e;

    const-wide/16 v5, 0x2710

    const-wide/16 v7, 0x3e8

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/join/mgps/activity/GameMainActivity3$e;-><init>(Lcom/join/mgps/activity/GameMainActivity3;JJ)V

    iput-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->h1:Landroid/os/CountDownTimer;

    .line 14
    new-instance v2, Lcom/join/mgps/activity/GameMainActivity3$f;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameMainActivity3$f;-><init>(Lcom/join/mgps/activity/GameMainActivity3;)V

    iput-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->i1:Lcom/join/mgps/socket/fight/arena/b$b;

    .line 15
    new-instance v2, Lcom/join/mgps/activity/GameMainActivity3$g;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameMainActivity3$g;-><init>(Lcom/join/mgps/activity/GameMainActivity3;)V

    iput-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->j1:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 16
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->k1:Z

    .line 17
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->m1:Z

    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->n1:Z

    return-void
.end method

.method static synthetic A1(Lcom/join/mgps/activity/GameMainActivity3;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object p0
.end method

.method static synthetic B1(Lcom/join/mgps/activity/GameMainActivity3;)Lcom/join/mgps/socket/fight/arena/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainActivity3;->N0:Lcom/join/mgps/socket/fight/arena/b;

    return-object p0
.end method

.method static synthetic C1(Lcom/join/mgps/activity/GameMainActivity3;)Lapp/mgsim/arena/SocketListener$NotifyObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainActivity3;->j1:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    return-object p0
.end method

.method private C2(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->c1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/activity/CommentDetailActivity_;->k2(Landroid/content/Context;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->c1:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentAllListBean$GeneralCommentBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->b(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_plugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_bespeak_switch()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->a(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_is_started()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->e(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->h(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_package()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->g(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_comment_score_switch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->c(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_1
    return-void
.end method

.method static synthetic D1(Lcom/join/mgps/activity/GameMainActivity3;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->l2()Z

    move-result p0

    return p0
.end method

.method static synthetic E1(Lcom/join/mgps/activity/GameMainActivity3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->J1()V

    return-void
.end method

.method private E2(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->g1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->g1:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getPid()I

    move-result p1

    .line 3
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 5
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "0"

    const-string v3, "-1"

    invoke-direct {v1, v2, p1, v3}, Lcom/join/mgps/dto/ExtBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/join/mgps/Util/i0;->w0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Lcom/join/mgps/dto/ExtBean;)V

    :cond_0
    return-void
.end method

.method static synthetic F1(Lcom/join/mgps/activity/GameMainActivity3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->z2()V

    return-void
.end method

.method private G2(Z)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    const/4 v3, 0x4

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_a

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->Q0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->P0:Lcom/join/mgps/adapter/w1;

    invoke-virtual {v1}, Lcom/join/mgps/adapter/w1;->b()V

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v7, 0x5

    const/4 v8, 0x2

    const/16 v9, 0x31

    if-lt v1, v8, :cond_5

    .line 6
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x7

    const/16 v12, 0x30

    if-lt v10, v11, :cond_0

    const/4 v10, 0x6

    .line 8
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 9
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_1

    const/16 v11, 0x31

    goto :goto_0

    :cond_0
    const/16 v10, 0x30

    :cond_1
    const/16 v11, 0x30

    :goto_0
    if-eq v9, v1, :cond_4

    if-ne v9, v10, :cond_2

    goto :goto_1

    :cond_2
    if-ne v12, v1, :cond_3

    if-ne v12, v10, :cond_3

    if-ne v11, v9, :cond_3

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->t0:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->s0:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->t0:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->s0:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 14
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->t0:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->s0:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v10, "NEW"

    const-string v11, "\u6392\u4f4d\u8d5b"

    const/16 v12, 0xc

    if-le v1, v12, :cond_6

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, p0, v1}, Lcom/join/mgps/activity/GameMainActivity3;->n2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 17
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_6

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->Q0:Ljava/util/List;

    new-instance v12, Lcom/join/mgps/dto/DynamicEntranceBean;

    invoke-direct {v12, v11, v10, v5}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v12, 0xe

    if-le v1, v12, :cond_7

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, p0, v1}, Lcom/join/mgps/activity/GameMainActivity3;->n2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_7

    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->Q0:Ljava/util/List;

    new-instance v13, Lcom/join/mgps/dto/DynamicEntranceBean;

    invoke-direct {v13, v11, v10, v12}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_8

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_8

    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->Q0:Ljava/util/List;

    new-instance v10, Lcom/join/mgps/dto/DynamicEntranceBean;

    const-string v11, "\u7ec3\u4e60\u6a21\u5f0f"

    invoke-direct {v10, v11, v2, v7}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v7, 0x3

    if-lt v1, v3, :cond_9

    .line 26
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_9

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->Q0:Ljava/util/List;

    new-instance v10, Lcom/join/mgps/dto/DynamicEntranceBean;

    const-string v11, "\u7ea6\u6218"

    invoke-direct {v10, v11, v2, v8}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_a

    .line 29
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v9, v0, :cond_a

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->Q0:Ljava/util/List;

    new-instance v1, Lcom/join/mgps/dto/DynamicEntranceBean;

    const-string v8, "\u672c\u5730\u5bf9\u6218"

    invoke-direct {v1, v8, v2, v7}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    if-eqz v0, :cond_15

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->u0:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 33
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/GameMainActivity3;->t2(Z)V

    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_back_ground_img()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 37
    iget-object v7, p0, Lcom/join/mgps/activity/GameMainActivity3;->w0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v7, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 38
    :cond_b
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getCommunity_area_id()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->f1:I

    if-eqz p1, :cond_e

    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->H0:Ljava/lang/String;

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->H0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameMainActivity3;->c2(Ljava/lang/String;)V

    goto :goto_3

    .line 41
    :cond_c
    iget p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->f1:I

    if-eqz p1, :cond_d

    .line 42
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->Z1()V

    goto :goto_3

    .line 43
    :cond_d
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->X1()V

    .line 44
    :cond_e
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->T0:Lcom/join/mgps/adapter/e2;

    if-eqz p1, :cond_f

    .line 45
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getMemberInfo()Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->T0:Lcom/join/mgps/adapter/e2;

    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/e2;->n(Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;)V

    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getMemberFun()Ljava/util/List;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->T0:Lcom/join/mgps/adapter/e2;

    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/e2;->m(Ljava/util/List;)V

    .line 49
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getNetBattle()Lcom/join/mgps/dto/GameMainNetBattle;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->s0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainNetBattle;->getNumber()I

    move-result v7

    if-gez v7, :cond_10

    const/4 p1, 0x0

    goto :goto_4

    :cond_10
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainNetBattle;->getNumber()I

    move-result p1

    :goto_4
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u623f"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isFightFun()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_5

    .line 52
    :cond_11
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->s0:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 53
    :cond_12
    :goto_5
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->s0:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 54
    :cond_13
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->s0:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    :goto_6
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getPlayGameInfo()Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;->getFile_save_count()I

    move-result v0

    .line 57
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;->getFile_save_switch()I

    move-result p1

    if-ne p1, v5, :cond_14

    .line 58
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->Q0:Ljava/util/List;

    new-instance v1, Lcom/join/mgps/dto/DynamicEntranceBean;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u4e91\u5b58\u6863"

    invoke-direct {v1, v2, v0, v3}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_14
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->T0:Lcom/join/mgps/adapter/e2;

    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getRecommendAdList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/e2;->o(Ljava/util/List;)V

    goto :goto_7

    .line 60
    :cond_15
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->u0:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 61
    invoke-virtual {p0, v6}, Lcom/join/mgps/activity/GameMainActivity3;->t2(Z)V

    :goto_7
    return-void
.end method

.method private J1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->h1:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public static M1(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private Q1()V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->startArchiveManagement:Lcom/papa/sim/statistic/Event;

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/p;->U0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/DocumentManageActivity_;->q1(Landroid/content/Context;)Lcom/join/mgps/activity/DocumentManageActivity_$u;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/DocumentManageActivity_$u;->a(I)Lcom/join/mgps/activity/DocumentManageActivity_$u;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/DocumentManageActivity_$u;->b(Ljava/lang/String;)Lcom/join/mgps/activity/DocumentManageActivity_$u;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method private R1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity_;->L0(Landroid/content/Context;)Lcom/join/mgps/activity/ApFightActivity_$r;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ApFightActivity_$r;->a(Ljava/lang/String;)Lcom/join/mgps/activity/ApFightActivity_$r;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->I0:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->v0(Ljava/lang/String;I)V

    return-void
.end method

.method private S1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    const-string v1, "onEnterQualifying"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->P(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d\u63d2\u4ef6..."

    .line 4
    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->i2()V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    if-nez v0, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/GamePaiWeiActivty_;->o0(Landroid/content/Context;)Lcom/join/mgps/activity/GamePaiWeiActivty_$v;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GamePaiWeiActivty_$v;->a(Ljava/lang/String;)Lcom/join/mgps/activity/GamePaiWeiActivty_$v;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMaingameinfo;->getMax_battle_count()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GamePaiWeiActivty_$v;->b(I)Lcom/join/mgps/activity/GamePaiWeiActivty_$v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty_$v;->c(I)Lcom/join/mgps/activity/GamePaiWeiActivty_$v;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private V1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v1, v0, p0, v2}, Lcom/join/mgps/Util/UtilsMy;->h(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;I)V

    .line 2
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->I0:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->Q0(Ljava/lang/String;I)V

    .line 3
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->I0:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->x0(Ljava/lang/String;I)V

    return-void
.end method

.method private W1()Lcom/join/mgps/dto/ArchiveColudArgs;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->I0:Lcom/join/mgps/dto/AccountBean;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v0, v1, v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getArchiveNum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ArchiveColudArgs;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->I0:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->I0:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getArchiveNum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ArchiveColudArgs;

    move-result-object v0

    return-object v0
.end method

.method private j2()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/github/snowdream/android/app/downloader/b;->e()Lcom/github/snowdream/android/app/downloader/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->V0:Lcom/github/snowdream/android/app/downloader/b;

    .line 3
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivity3$h;-><init>(Lcom/join/mgps/activity/GameMainActivity3;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->W0:Lcom/github/snowdream/android/app/downloader/b$b;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->V0:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/b;->m(Lcom/github/snowdream/android/app/downloader/b$b;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->V0:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/b;->i()V

    return-void
.end method

.method private l2()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private m2()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic y1(Lcom/join/mgps/activity/GameMainActivity3;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic z1(Lcom/join/mgps/activity/GameMainActivity3;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainActivity3;->C0:Ljava/lang/String;

    return-object p0
.end method

.method private z2()V
    .locals 2

    :try_start_0
    const-string v0, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u91cd\u8bd5"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method A2()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->y1(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->B2()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->launch_game_switch()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    new-instance v3, Lcom/join/mgps/activity/GameMainActivity3$d;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/GameMainActivity3$d;-><init>(Lcom/join/mgps/activity/GameMainActivity3;)V

    const-string v4, "RAW_SIMULATOR"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/join/mgps/Util/UtilsMy;->p0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->B2()V

    :goto_0
    return-void
.end method

.method B2()V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    const-class v0, Ljava/lang/String;

    const-string v2, ""

    .line 2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v7

    const-class v8, Ljava/util/HashMap;

    new-array v9, v4, [Ljava/lang/Class;

    aput-object v0, v9, v6

    aput-object v0, v9, v5

    invoke-virtual {v7, v8, v9}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v7

    iget-object v8, v1, Lcom/join/mgps/activity/GameMainActivity3;->d1:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v8}, Lcom/join/mgps/pref/PrefDef_;->lastStartSimulatorCore()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v8

    invoke-virtual {v8}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v7, :cond_0

    .line 5
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v7

    goto :goto_1

    :cond_0
    move-object v3, v7

    .line 6
    :goto_0
    :try_start_2
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 7
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_1
    :goto_2
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    const/4 v7, 0x0

    if-eqz v0, :cond_b

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getNetBattle()Lcom/join/mgps/dto/GameMainNetBattle;

    move-result-object v0

    .line 10
    iget-object v8, v1, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/GameMainV4DataBean;->getSimulator_core()Lcom/join/mgps/dto/GameMainV4DataBean$SimulatorCoreBean;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/GameMainV4DataBean;->getSimulator_core()Lcom/join/mgps/dto/GameMainV4DataBean$SimulatorCoreBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/dto/GameMainV4DataBean$SimulatorCoreBean;->getCore()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 11
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameMainV4DataBean;->getSimulator_core()Lcom/join/mgps/dto/GameMainV4DataBean$SimulatorCoreBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameMainV4DataBean$SimulatorCoreBean;->getCore()Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v15, v2

    .line 12
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v3, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity3;->d1:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->lastStartSimulatorCore()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-static {v3}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainNetBattle;->getSilence_room_switch()I

    move-result v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_4

    .line 15
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-static {v7, v0, v2, v6, v15}, Lcom/join/mgps/Util/UtilsMy;->i(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_6

    .line 16
    :cond_4
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v8, 0x7

    if-lt v3, v8, :cond_5

    const/4 v3, 0x6

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v3, v2, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    .line 19
    :goto_4
    iget-object v3, v1, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 20
    iget-object v3, v1, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameMaingameinfo;->getMax_battle_count()I

    move-result v3

    move v14, v3

    goto :goto_5

    :cond_6
    const/4 v14, 0x0

    :goto_5
    if-ne v0, v5, :cond_8

    .line 21
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity3;->K0:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v12, v1, Lcom/join/mgps/activity/GameMainActivity3;->L0:I

    if-eqz v12, :cond_7

    .line 22
    iget-object v8, v1, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v9, v1, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    const/4 v10, 0x1

    iget-object v11, v1, Lcom/join/mgps/activity/GameMainActivity3;->K0:Ljava/lang/String;

    iget-object v13, v1, Lcom/join/mgps/activity/GameMainActivity3;->M0:Ljava/lang/String;

    invoke-static/range {v8 .. v15}, Lcom/join/mgps/Util/UtilsMy;->k(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_6

    .line 23
    :cond_7
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-static {v7, v0, v2, v6, v15}, Lcom/join/mgps/Util/UtilsMy;->i(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_6

    :cond_8
    if-ne v0, v4, :cond_a

    if-eqz v2, :cond_a

    .line 24
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity3;->K0:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v12, v1, Lcom/join/mgps/activity/GameMainActivity3;->L0:I

    if-eqz v12, :cond_9

    .line 25
    iget-object v8, v1, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v9, v1, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    const/4 v10, 0x1

    iget-object v11, v1, Lcom/join/mgps/activity/GameMainActivity3;->K0:Ljava/lang/String;

    iget-object v13, v1, Lcom/join/mgps/activity/GameMainActivity3;->M0:Ljava/lang/String;

    invoke-static/range {v8 .. v15}, Lcom/join/mgps/Util/UtilsMy;->k(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_6

    .line 26
    :cond_9
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-static {v7, v0, v2, v6, v15}, Lcom/join/mgps/Util/UtilsMy;->i(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_6

    .line 27
    :cond_a
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-static {v7, v0, v2, v6, v15}, Lcom/join/mgps/Util/UtilsMy;->i(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_6

    .line 28
    :cond_b
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v3, v1, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-static {v7, v0, v3, v6, v2}, Lcom/join/mgps/Util/UtilsMy;->i(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;)V

    .line 29
    :goto_6
    invoke-static/range {p0 .. p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/join/mgps/activity/GameMainActivity3;->I0:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/papa/sim/statistic/p;->F0(Ljava/lang/String;I)V

    return-void
.end method

.method D2()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_comment_score_switch()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_comment_score_switch()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/activity/CommentAllListActivity_;->f1(Landroid/content/Context;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_package()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->i(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_plugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->h(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_bespeak_switch()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->a(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_is_started()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->g(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object v1

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->j(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_comment_score_switch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void

    .line 11
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/activity/ForumIndexActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/activity/ForumIndexActivity_$d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_3
    :goto_1
    return-void
.end method

.method F2(I)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method G1()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/p;->Q(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    const-string v3, "game_main"

    invoke-virtual {v0, v1, v2, v3}, Lcom/papa/sim/statistic/p;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->I0(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 4
    :goto_0
    new-instance v0, Lcom/join/mgps/dto/GameInfoBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/GameInfoBean;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameInfoBean;->setGame_id(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameInfoBean;->setGame_name(Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x7

    const/16 v6, 0x31

    const/16 v7, 0x30

    if-lt v4, v5, :cond_2

    const/4 v4, 0x6

    .line 12
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x5

    .line 13
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_1

    const/16 v1, 0x31

    goto :goto_1

    :cond_1
    const/16 v1, 0x30

    goto :goto_1

    :cond_2
    const/16 v1, 0x30

    const/16 v4, 0x30

    :goto_1
    if-ne v7, v3, :cond_3

    if-ne v7, v4, :cond_3

    if-ne v1, v6, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->f2()V

    return-void

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isFightFun()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->K1()V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->v4(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;->b(Z)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;->c(Lcom/join/mgps/dto/GameInfoBean;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_2

    .line 18
    :cond_4
    invoke-static {p0}, Lcom/join/mgps/activity/NewArenaMainActivty_;->F1(Landroid/content/Context;)Lcom/join/mgps/activity/NewArenaMainActivty_$h;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :goto_2
    return-void
.end method

.method H1()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getMemberInfo()Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getMemberInfo()Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getLink_type()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v1

    const-string v2, "?"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&game_id="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?game_id="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    :goto_0
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->setLink_type_val(Ljava/lang/String;)V

    .line 10
    :cond_1
    new-instance v1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getLink_type()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getJump_type()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_2
    return-void
.end method

.method H2(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/event/e;

    invoke-direct {v0}, Lcom/join/mgps/event/e;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/event/e;->f(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/event/e;->j(I)V

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method I1()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameMasteryLevel()Lcom/join/mgps/dto/GameMasteryLevel;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameMasteryLevel()Lcom/join/mgps/dto/GameMasteryLevel;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getCurrent_lv_times()I

    move-result v3

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getNext_lv_times()I

    move-result v4

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u4f20\u8bf4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u5b97\u5e08"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u7cbe\u82f1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\u8d44\u6df1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->d1:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->gameTimeLvCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x1

    .line 11
    :try_start_1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v6

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v7

    const-class v8, Ljava/util/ArrayList;

    new-array v9, v5, [Ljava/lang/Class;

    const-class v10, Lcom/join/mgps/dto/GameTimeLevel;

    aput-object v10, v9, v1

    invoke-virtual {v7, v8, v9}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v2, v6, [I

    const/4 v6, 0x0

    .line 13
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 14
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/dto/GameTimeLevel;

    invoke-virtual {v7}, Lcom/join/mgps/dto/GameTimeLevel;->getVal()I

    move-result v7

    aput v7, v2, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 15
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    add-int/2addr v3, v1

    const/4 v0, 0x0

    .line 16
    :goto_2
    array-length v6, v2

    if-ge v1, v6, :cond_8

    add-int/lit8 v4, v1, 0x1

    .line 17
    aget v6, v2, v1

    sub-int v0, v6, v0

    if-gt v3, v0, :cond_6

    goto :goto_3

    .line 18
    :cond_6
    array-length v6, v2

    sub-int/2addr v6, v5

    if-ne v1, v6, :cond_7

    :goto_3
    move v4, v0

    goto :goto_4

    :cond_7
    sub-int/2addr v3, v0

    .line 19
    aget v1, v2, v1

    move v11, v4

    move v4, v0

    move v0, v1

    move v1, v11

    goto :goto_2

    .line 20
    :cond_8
    :goto_4
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_5
    return-void
.end method

.method I2(Lcom/join/mgps/dto/GameMainV4DataBean;Z)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->G0:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->r0:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/GameMainActivity3;->G2(Z)V

    return-void
.end method

.method K1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->N0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->N0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->j1:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->A(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method L1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u767b\u5f55\u5df2\u5931\u6548\u8bf7\u60a8\u91cd\u65b0\u767b\u5f55"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->k2()V

    return-void
.end method

.method N1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->u0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->f1:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->f1:I

    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->goForumGroupActivity(Landroid/content/Context;I)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->D2()V

    :goto_1
    return-void
.end method

.method O1(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->v3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->w1(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "papa91"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2f

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 8
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 9
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 11
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 12
    :cond_0
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/join/mgps/Util/g0;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCover()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".png"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/join/mgps/activity/GameMainActivity3;->P1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 16
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 17
    invoke-virtual {p1, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    .line 18
    :cond_2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameMainActivity3;->H2(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method

.method P1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    invoke-static {p3}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 8
    :cond_1
    invoke-virtual {p3}, Ljava/io/File;->createNewFile()Z

    .line 9
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 p2, 0x1388

    .line 11
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string p2, "GET"

    .line 12
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 13
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 14
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_3

    .line 15
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 16
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 17
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x0

    .line 18
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 20
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    .line 21
    :cond_3
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    invoke-static {p3}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, p3

    goto :goto_1

    :catch_1
    move-exception p1

    .line 23
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v0, :cond_4

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 25
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method T1()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->i2()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    .line 5
    invoke-static {}, Lcom/join/mgps/rpc/impl/k;->n0()Lcom/join/mgps/rpc/impl/k;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/join/mgps/rpc/impl/k;->P(ILjava/lang/String;)Lcom/join/mgps/dto/ResultArenaBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getError()I

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapp/mgsim/arena/ArenaLobbyServer;

    invoke-virtual {v0}, Lapp/mgsim/arena/ArenaLobbyServer;->getDisabled()I

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Lapp/mgsim/arena/ArenaResponse;

    invoke-direct {v0}, Lapp/mgsim/arena/ArenaResponse;-><init>()V

    const/16 v1, 0x3e9

    .line 10
    iput v1, v0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    const-string v1, "\u9080\u8bf7\u5931\u8d25\uff1a\u8be5\u73a9\u5bb6\u5df2\u88ab\u5c01\u7981\uff01"

    .line 11
    iput-object v1, v0, Lapp/mgsim/arena/ArenaResponse;->errorInfo:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainActivity3;->handleFailure(Lapp/mgsim/arena/ArenaResponse;)V

    return-void

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->U1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method U1()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->J1()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->q0:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->h1:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->P(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d\u63d2\u4ef6..."

    .line 7
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->i2()V

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->N0:Lcom/join/mgps/socket/fight/arena/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->N0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    move-result v0

    const-string v3, "register_type_GameMainActivity"

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/wufan/friend/chat/c;->V(Lcom/join/mgps/dto/FriendBean;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-static {v3, v0, v1, v4, v2}, Lapp/mgsim/arena/ArenaRequestFactory;->createRoom(Ljava/lang/String;Ljava/lang/String;IIZ)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->N0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {v3}, Lapp/mgsim/arena/ArenaRequestFactory;->login(Ljava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v0

    .line 15
    iput-boolean v2, v0, Lapp/mgsim/arena/ArenaRequest;->isRefreshing:Z

    .line 16
    iput-boolean v1, v0, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->N0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 18
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->I0:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K0(Ljava/lang/String;I)V

    goto :goto_1

    .line 19
    :cond_3
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method X1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->a2()Lcom/join/mgps/dto/RequestCommentAllListArgs;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->R0:Lcom/join/mgps/rpc/e;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->b(Lcom/join/mgps/dto/RequestCommentAllListArgs;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CommentAllListBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAllListBean;->getGeneral_comment()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->c1:Ljava/util/List;

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->r2()V

    :cond_0
    return-void
.end method

.method Y1()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Ln1/u;->n()Ln1/u;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ln1/u;->o(Ljava/lang/String;)Lcom/join/mgps/db/tables/GameMainTable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/GameMainTable;->getGame_main_data()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/GameMainV4DataBean;

    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameMainV4DataBean;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMaingameinfo;->getCommunity_multi_posts_id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->H0:Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/GameMainActivity3;->I2(Lcom/join/mgps/dto/GameMainV4DataBean;Z)V

    :cond_1
    return-void
.end method

.method Z1()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->e1:Lcom/join/mgps/rpc/h;

    iget v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->f1:I

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/h;->n(I)Lcom/join/mgps/dto/ResultResMainBean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_4

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameMainCommunityBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainCommunityBean;->getPosts()Ljava/util/List;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->g1:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getSubject()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 11
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->g1:Ljava/util/List;

    new-instance v4, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getPid()I

    move-result v1

    invoke-direct {v4, v2, v1}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getSubject()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 16
    :cond_2
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->g1:Ljava/util/List;

    new-instance v4, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getPid()I

    move-result v0

    invoke-direct {v4, v1, v0}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->s2()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public a2()Lcom/join/mgps/dto/RequestCommentAllListArgs;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->I0:Lcom/join/mgps/dto/AccountBean;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->d1:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->I0:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    move v5, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestCommentAllList(IILjava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/RequestCommentAllListArgs;

    move-result-object v0

    return-object v0
.end method

.method afterViews()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/BaseActivity;->setSystemUiHide(Z)V

    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->J0:Lcom/join/mgps/rpc/j;

    .line 4
    invoke-static {}, Lcom/join/mgps/rpc/impl/k;->n0()Lcom/join/mgps/rpc/impl/k;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->F0:Lcom/join/mgps/rpc/k;

    .line 5
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->e1:Lcom/join/mgps/rpc/h;

    .line 6
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->m()Lcom/join/mgps/rpc/impl/d;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->R0:Lcom/join/mgps/rpc/e;

    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/b;->k()Lcom/join/mgps/rpc/impl/b;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->S0:Lcom/join/mgps/rpc/c;

    .line 8
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->I0:Lcom/join/mgps/dto/AccountBean;

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_0

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->r0:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_0
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->u0:Landroid/view/View;

    .line 13
    new-instance v1, Lcom/join/mgps/adapter/w1;

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->Q0:Ljava/util/List;

    invoke-direct {v1, p0, v2, p0}, Lcom/join/mgps/adapter/w1;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/adapter/w1$a;)V

    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->P0:Lcom/join/mgps/adapter/w1;

    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->v0:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->v0:Landroid/widget/GridView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOverScrollMode(I)V

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07142a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071315

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07115c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0711ae

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 21
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    mul-int v1, v1, v4

    .line 22
    div-int/2addr v1, v2

    .line 23
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v1, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 24
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 25
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 26
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->w0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->Y1()V

    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->getData()V

    .line 30
    new-instance v1, Lcom/join/mgps/socket/fight/arena/a;

    new-instance v2, Lcom/join/mgps/activity/GameMainActivity3$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameMainActivity3$a;-><init>(Lcom/join/mgps/activity/GameMainActivity3;)V

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/socket/fight/arena/a;-><init>(Landroid/app/Activity;Lcom/join/mgps/socket/fight/arena/a$y;)V

    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->O0:Lcom/join/mgps/socket/fight/arena/a;

    .line 31
    invoke-static {}, Lnotchtools/geek/com/notchtools/b;->o()Lnotchtools/geek/com/notchtools/b;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnotchtools/geek/com/notchtools/b;->c(Landroid/view/Window;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->x0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 33
    invoke-static {}, Lnotchtools/geek/com/notchtools/b;->o()Lnotchtools/geek/com/notchtools/b;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnotchtools/geek/com/notchtools/b;->e(Landroid/view/Window;)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070f87

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 34
    :cond_1
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->y0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 37
    new-instance v0, Lcom/join/mgps/adapter/e2;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/e2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->T0:Lcom/join/mgps/adapter/e2;

    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/e2;->setGameId(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->y0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->T0:Lcom/join/mgps/adapter/e2;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 40
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->indexGameStart:Lcom/papa/sim/statistic/Event;

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    iget-object v6, p0, Lcom/join/mgps/activity/GameMainActivity3;->p0:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/papa/sim/statistic/p;->W0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->U0:Lcom/join/mgps/activity/GameMainActivity3$EmuOutResultReceiver;

    if-nez v0, :cond_2

    .line 42
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3$EmuOutResultReceiver;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivity3$EmuOutResultReceiver;-><init>(Lcom/join/mgps/activity/GameMainActivity3;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->U0:Lcom/join/mgps/activity/GameMainActivity3$EmuOutResultReceiver;

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gameout"

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->U0:Lcom/join/mgps/activity/GameMainActivity3$EmuOutResultReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    :cond_2
    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->l:Z

    if-nez v0, :cond_3

    .line 47
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->j2()V

    .line 48
    new-instance v0, Lcom/join/mgps/dialog/x;

    const v1, 0x7f12014a

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/x;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u5b58\u6863\u4e0b\u8f7d\u4e2d"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->f(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->e(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    move-result-object v0

    const-string v1, "\u540e\u53f0\u8fd0\u884c"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->b(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/GameMainActivity3$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameMainActivity3$c;-><init>(Lcom/join/mgps/activity/GameMainActivity3;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->d(Lcom/join/mgps/dialog/x$c;)Lcom/join/mgps/dialog/x;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/GameMainActivity3$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameMainActivity3$b;-><init>(Lcom/join/mgps/activity/GameMainActivity3;)V

    .line 49
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->a(Lcom/join/mgps/dialog/x$c;)Lcom/join/mgps/dialog/x;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->X0:Lcom/join/mgps/dialog/x;

    .line 50
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->c1()Z

    move-result v0

    if-nez v0, :cond_4

    .line 51
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->d2()V

    :cond_4
    return-void
.end method

.method b2()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->e1:Lcom/join/mgps/rpc/h;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3, v0, v1}, Lcom/join/mgps/rpc/h;->O(IILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getPost_list()Ljava/util/List;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->g1:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->g1:Ljava/util/List;

    new-instance v2, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v4

    invoke-direct {v2, v5, v4}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->g1:Ljava/util/List;

    new-instance v2, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v0

    invoke-direct {v2, v4, v0}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->s2()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method back()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected c1()Z
    .locals 2

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v1, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v1}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method c2(Ljava/lang/String;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->e1:Lcom/join/mgps/rpc/h;

    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/h;->L(Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/MulPostData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/MulPostData;->getPosts_list()Ljava/util/List;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->g1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->g1:Ljava/util/List;

    new-instance v1, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v2

    invoke-direct {v1, v3, v2}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->g1:Ljava/util/List;

    new-instance v2, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result p1

    invoke-direct {v2, v3, p1}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->s2()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method d2()V
    .locals 12
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->W1()Lcom/join/mgps/dto/ArchiveColudArgs;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->S0:Lcom/join/mgps/rpc/c;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveColudArgs;->getArgs()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/c;->f(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveNumDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->o1:Lcom/join/mgps/dto/ArchiveNumDataBean;

    if-eqz v0, :cond_e

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getCode()I

    move-result v0

    const/16 v1, 0x258

    if-ne v0, v1, :cond_e

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->d1:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getArchiveCoinPref()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->o1:Lcom/join/mgps/dto/ArchiveNumDataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getArchiveCoin()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->d1:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->cloudVipLink()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->o1:Lcom/join/mgps/dto/ArchiveNumDataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getVipLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 7
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/mgps/Util/f0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->l1:Ljava/util/List;

    .line 8
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    const-string v3, "31"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->l1:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "_v2"

    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/RomArchived;

    .line 10
    invoke-virtual {v6}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->l1:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 12
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/RomArchived;

    if-eqz v5, :cond_4

    if-nez v4, :cond_4

    .line 14
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->m1:Z

    .line 15
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/j1;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 17
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/join/mgps/Util/j1;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 18
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->n1:Z

    .line 19
    invoke-virtual {v6}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 21
    :cond_5
    invoke-virtual {v6}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    .line 22
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 23
    :cond_7
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    const-string v2, "33"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 24
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->l1:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/RomArchived;

    .line 25
    invoke-virtual {v8}, Lcom/join/mgps/dto/RomArchived;->getArchivedTime()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MM\u6708dd\u65e5 HH:mm"

    invoke-static {v9, v10}, Lcom/join/mgps/activity/GameMainActivity3;->M1(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v11, v6, v4

    if-nez v11, :cond_9

    move-object v0, v8

    move-wide v6, v9

    :cond_9
    cmp-long v11, v6, v9

    if-lez v11, :cond_8

    move-object v0, v8

    move-wide v6, v9

    goto :goto_2

    :cond_a
    if-eqz v0, :cond_b

    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "vba"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GameMainActivity3;->u2(Z)V

    .line 28
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->l1:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainActivity3;->F2(I)V

    goto :goto_3

    .line 30
    :cond_c
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameMainActivity3;->F2(I)V

    goto :goto_3

    .line 31
    :cond_d
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameMainActivity3;->F2(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_3
    return-void
.end method

.method e2()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    return-void
.end method

.method public f0(Lcom/join/mgps/dto/DynamicEntranceBean;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/DynamicEntranceBean;->getTypeId()I

    move-result p1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->N1()V

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->V1()V

    goto :goto_0

    .line 4
    :pswitch_2
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->Q1()V

    goto :goto_0

    .line 5
    :pswitch_3
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->R1()V

    goto :goto_0

    .line 6
    :pswitch_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->T1()V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x1

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameMainActivity3;->S1(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameMainActivity3;->S1(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method f2()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->F0:Lcom/join/mgps/rpc/k;

    invoke-interface {v0}, Lcom/join/mgps/rpc/k;->v()Lcom/join/mgps/dto/GameWorldResponse;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getError()I

    move-result v1

    const/16 v2, 0x2bd

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->L1()V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getError()I

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->D0:Ljava/util/List;

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->y2()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method g2()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0x5dcL
    .end annotation

    return-void
.end method

.method getData()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 3
    new-instance v1, Lcom/join/mgps/dto/RequestGameIdArgs;

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->I0:Lcom/join/mgps/dto/AccountBean;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-direct {v1, v2, v4, v4, v3}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>(Ljava/lang/String;III)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestGameIdArgs;->setGameId(Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestGameIdArgs;->setToken(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->J0:Lcom/join/mgps/rpc/j;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/j;->D(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0

    .line 8
    iput-boolean v4, p0, Lcom/join/mgps/activity/GameMainActivity3;->b1:Z

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getFlag()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainActivity3;->w2(Lcom/join/mgps/dto/GameMainV4DataBean;)V

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMaingameinfo;->getCommunity_multi_posts_id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->H0:Ljava/lang/String;

    .line 14
    :cond_1
    invoke-static {}, Ln1/u;->n()Ln1/u;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ln1/u;->o(Ljava/lang/String;)Lcom/join/mgps/db/tables/GameMainTable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getAchieve()Lcom/join/mgps/dto/GameMainachieve;

    move-result-object v2

    .line 16
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v3

    invoke-virtual {v1}, Lcom/join/mgps/db/tables/GameMainTable;->getGame_main_data()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/join/mgps/dto/GameMainDataBean;

    invoke-virtual {v3, v5, v6}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/GameMainDataBean;

    if-eqz v3, :cond_2

    .line 17
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameMainDataBean;->getAchieve()Lcom/join/mgps/dto/GameMainachieve;

    move-result-object v3

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 18
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameMainachieve;->getLastShowVerTime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/join/mgps/dto/GameMainachieve;->setLastShowVerTime(J)V

    .line 19
    :cond_2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 20
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/join/mgps/db/tables/GameMainTable;->setGameid(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, v2}, Lcom/join/mgps/db/tables/GameMainTable;->setGame_main_data(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Ln1/u;->n()Ln1/u;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg1/b;->update(Ljava/lang/Object;)I

    goto :goto_1

    .line 23
    :cond_3
    new-instance v1, Lcom/join/mgps/db/tables/GameMainTable;

    invoke-direct {v1}, Lcom/join/mgps/db/tables/GameMainTable;-><init>()V

    .line 24
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 25
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/join/mgps/db/tables/GameMainTable;->setGameid(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1, v2}, Lcom/join/mgps/db/tables/GameMainTable;->setGame_main_data(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Ln1/u;->n()Ln1/u;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg1/b;->k(Ljava/lang/Object;)I

    .line 28
    :goto_1
    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/activity/GameMainActivity3;->I2(Lcom/join/mgps/dto/GameMainV4DataBean;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method h2(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 5
    invoke-virtual {v0, p4}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p5}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method handleFailure(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->i2()V

    .line 2
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    const/16 v1, 0x101

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u786e\u5b9a"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const-string v8, "dialog_error_hint"

    const/16 v9, 0x10

    if-ne v0, v9, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->O0:Lcom/join/mgps/socket/fight/arena/a;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v6

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v5

    const-string p1, "\u65e0\u6cd5\u52a0\u5165\uff0c\u4f60\u88ab\u7981\u6b62\u52a0\u5165\u8be5\u623f\u95f4"

    aput-object p1, v7, v4

    aput-object v2, v7, v3

    invoke-virtual {v0, v8, v7}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v9, 0x11

    if-ne v0, v9, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->O0:Lcom/join/mgps/socket/fight/arena/a;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v6

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    const-string p1, "\u8be5\u623f\u95f4\u4e3a\u6bd4\u8d5b\u4e13\u7528\u623f\u95f4,\u975e\u53c2\u8d5b\u9009\u624b\u65e0\u6cd5\u52a0\u5165"

    aput-object p1, v2, v4

    const-string p1, "\u6211\u77e5\u9053\u4e86"

    aput-object p1, v2, v3

    invoke-virtual {v0, v8, v2}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/16 v9, 0x9

    if-ne v0, v9, :cond_2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->O0:Lcom/join/mgps/socket/fight/arena/a;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v6

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v5

    const-string p1, "\u623f\u95f4\u4eba\u6570\u5df2\u6ee1\u4f60\u65e0\u6cd5\u52a0\u5165\u623f\u95f4!"

    aput-object p1, v7, v4

    aput-object v2, v7, v3

    invoke-virtual {v0, v8, v7}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v9, 0x7

    if-ne v0, v9, :cond_3

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->O0:Lcom/join/mgps/socket/fight/arena/a;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v9, 0x100

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v6

    iget v6, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    const-string v5, "\u5bc6\u7801\u8f93\u5165\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5!"

    aput-object v5, v1, v4

    const-string v4, "\u53d6\u6d88"

    aput-object v4, v1, v3

    aput-object v2, v1, v7

    const/4 v2, 0x5

    aput-object p1, v1, v2

    invoke-virtual {v0, v8, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    const/16 v9, 0x8

    if-ne v0, v9, :cond_4

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->O0:Lcom/join/mgps/socket/fight/arena/a;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v6

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v5

    const-string p1, "\u623f\u95f4\u5df2\u7ecf\u88ab\u89e3\u6563!"

    aput-object p1, v7, v4

    aput-object v2, v7, v3

    invoke-virtual {v0, v8, v7}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    const/16 v9, 0xb

    if-ne v0, v9, :cond_5

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->O0:Lcom/join/mgps/socket/fight/arena/a;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v6

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v5

    const-string p1, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u521b\u5efa\u623f\u95f4!"

    aput-object p1, v7, v4

    aput-object v2, v7, v3

    invoke-virtual {v0, v8, v7}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    const/16 v9, 0xd

    if-ne v0, v9, :cond_6

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->O0:Lcom/join/mgps/socket/fight/arena/a;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v6

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v5

    const-string p1, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u52a0\u5165\u623f\u95f4"

    aput-object p1, v7, v4

    aput-object v2, v7, v3

    invoke-virtual {v0, v8, v7}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_7

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->O0:Lcom/join/mgps/socket/fight/arena/a;

    new-array v1, v7, [Ljava/lang/Object;

    const/16 v7, 0x102

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    iget v6, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorInfo:Ljava/lang/String;

    aput-object p1, v1, v4

    aput-object v2, v1, v3

    invoke-virtual {v0, v8, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method i2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->q0:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method k2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method n2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    :try_start_1
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v1

    invoke-virtual {v1, p2}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p2

    .line 5
    new-instance v1, Lcom/join/android/app/common/utils/APKUtils;

    invoke-direct {v1}, Lcom/join/android/app/common/utils/APKUtils;-><init>()V

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v1, :cond_2

    .line 7
    :try_start_2
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 8
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-nez p1, :cond_1

    return v0

    .line 9
    :cond_1
    :try_start_4
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    const/16 p2, 0x14a

    if-gt p1, p2, :cond_4

    return v0

    :catch_1
    move-exception p1

    .line 10
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return v0

    :catch_2
    move-exception p1

    .line 11
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    .line 12
    :cond_2
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 13
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v1

    if-ne v1, v2, :cond_3

    new-array v1, v0, [Ljava/lang/String;

    .line 14
    invoke-static {p1, p2, v0, v1}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    return p1

    :cond_3
    return v0

    :catch_3
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :catch_4
    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method o2()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->D2()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "GAME_HOME_PAGE"

    .line 1
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->i:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->h:Ljava/lang/String;

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->O0:Lcom/join/mgps/socket/fight/arena/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->I0:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->w0(Ljava/lang/String;I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->N0:Lcom/join/mgps/socket/fight/arena/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->N0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->j1:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->A(Ljava/lang/Object;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->N0:Lcom/join/mgps/socket/fight/arena/b;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->g()V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->N0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->stopService()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->N0:Lcom/join/mgps/socket/fight/arena/b;

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->U0:Lcom/join/mgps/activity/GameMainActivity3$EmuOutResultReceiver;

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 13
    :cond_4
    invoke-super {p0}, Lcom/join/mgps/activity/FriendActivity;->onDestroy()V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->V0:Lcom/github/snowdream/android/app/downloader/b;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->W0:Lcom/github/snowdream/android/app/downloader/b$b;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/b;->j(Lcom/github/snowdream/android/app/downloader/b$b;)V

    :cond_5
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "gameId"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    const-string v0, "from"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->p0:Ljava/lang/String;

    const-string v0, "GAME_HOME_PAGE"

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->i:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->h:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->afterViews()V

    .line 7
    invoke-super {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->onNewIntent(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/FriendActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->i2()V

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->I0:Lcom/join/mgps/dto/AccountBean;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->N0:Lcom/join/mgps/socket/fight/arena/b;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/join/mgps/socket/fight/arena/b;

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->i1:Lcom/join/mgps/socket/fight/arena/b$b;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/socket/fight/arena/b;-><init>(Landroid/app/Activity;Lcom/join/mgps/socket/fight/arena/b$b;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->N0:Lcom/join/mgps/socket/fight/arena/b;

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->g2()V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->B0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_1

    .line 9
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lg1/f;->H(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->d(Ljava/lang/String;I)V

    .line 10
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lg1/f;->H(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->d(Ljava/lang/String;I)V

    .line 11
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->l:Z

    if-nez v0, :cond_2

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->j2()V

    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->N0:Lcom/join/mgps/socket/fight/arena/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->N0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->j1:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->A(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->N0:Lcom/join/mgps/socket/fight/arena/b;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->g()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->N0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->stopService()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->N0:Lcom/join/mgps/socket/fight/arena/b;

    :cond_1
    return-void
.end method

.method p2(Landroid/content/Intent;)V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.cloud.game.main.downCloud"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->m2()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->Z0:I

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->a1:I

    const-string v1, "downCloud"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->Y0:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFile()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v5

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x3

    .line 9
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 10
    new-instance v1, Lcom/github/snowdream/android/app/downloader/c;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getFileSize()J

    move-result-wide v7

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/github/snowdream/android/app/downloader/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->V0:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/b;->b(Lcom/github/snowdream/android/app/downloader/c;)Ljava/lang/String;

    .line 12
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->X0:Lcom/join/mgps/dialog/x;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->X0:Lcom/join/mgps/dialog/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getFileSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->d(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "K"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "0"

    invoke-virtual {v1, p1, v2, v0}, Lcom/join/mgps/dialog/x;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;

    return-void
.end method

.method q2(Landroid/content/Intent;)V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.cloud.downCloud.all"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->m2()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "downClouds"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->Z0:I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->X0:Lcom/join/mgps/dialog/x;

    const-string v1, "0K"

    const-string v2, "1/"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->X0:Lcom/join/mgps/dialog/x;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v3}, Lcom/join/mgps/dialog/x;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;

    .line 8
    :cond_2
    iput v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->a1:I

    .line 9
    iget v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->Z0:I

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->X0:Lcom/join/mgps/dialog/x;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    iget v4, p0, Lcom/join/mgps/activity/GameMainActivity3;->Z0:I

    div-int/2addr v3, v4

    invoke-virtual {v0, v2, v1, v3}, Lcom/join/mgps/dialog/x;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;

    .line 11
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CloudListDataBean;

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->Y0:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFile()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v5

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/Util/u;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x3

    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 17
    new-instance v1, Lcom/github/snowdream/android/app/downloader/c;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getFileSize()J

    move-result-wide v7

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/github/snowdream/android/app/downloader/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->V0:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/b;->b(Lcom/github/snowdream/android/app/downloader/c;)Ljava/lang/String;

    .line 19
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method r2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->c1:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->u0:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameMainActivity3;->t2(Z)V

    :cond_0
    return-void
.end method

.method s2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->g1:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->u0:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainActivity3;->t2(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->u0:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameMainActivity3;->t2(Z)V

    :goto_0
    return-void
.end method

.method t2(Z)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->Q0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->Q0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/DynamicEntranceBean;->getTypeId()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->Q0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->Q0:Ljava/util/List;

    new-instance v0, Lcom/join/mgps/dto/DynamicEntranceBean;

    const-string v1, "\u793e\u533a"

    const-string v3, ""

    invoke-direct {v0, v1, v3, v2}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->P0:Lcom/join/mgps/adapter/w1;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public u2(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->k1:Z

    return-void
.end method

.method v2()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.wufun.cloud.game.main.showDownDialog"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->V0:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/b;->g()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->X0:Lcom/join/mgps/dialog/x;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method w2(Lcom/join/mgps/dto/GameMainV4DataBean;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method x2(Lcom/join/mgps/dto/OnlineCouponConfigBean;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, p1, v1}, Lcom/join/mgps/Util/z;->U(Landroid/content/Context;Lcom/join/mgps/dto/OnlineCouponConfigBean;I)V

    .line 2
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->quitSingleSuccessUpRedBag:Lcom/papa/sim/statistic/Event;

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->M1(Lcom/papa/sim/statistic/Event;I)V

    return-void
.end method

.method y2()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->E0:Lcom/join/mgps/activity/GameMainActivity3$i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->E0:Lcom/join/mgps/activity/GameMainActivity3$i;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3$i;

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->z0:Landroid/content/Context;

    const v2, 0x7f12014a

    invoke-direct {v0, p0, v1, v2}, Lcom/join/mgps/activity/GameMainActivity3$i;-><init>(Lcom/join/mgps/activity/GameMainActivity3;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->E0:Lcom/join/mgps/activity/GameMainActivity3$i;

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
