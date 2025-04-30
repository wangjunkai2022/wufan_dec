.class public Lcom/join/mgps/fragment/y3;
.super Landroidx/fragment/app/Fragment;
.source "PaPaStandAloneV2Fragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0225
.end annotation


# static fields
.field private static final v:I = 0x14

.field private static final w:I = 0x3

.field public static final x:I = 0x1

.field public static final y:I = 0x2

.field public static final z:I = 0x3


# instance fields
.field a:I

.field private b:I

.field private c:Z

.field d:Lcom/join/mgps/rpc/d;

.field e:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/adapter/t3;

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaPaBean;",
            ">;"
        }
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private k:Landroid/app/Activity;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field private n:Lcom/join/mgps/dto/PaPaBean;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:I

.field private s:Z

.field private final t:Landroid/view/View$OnClickListener;

.field private u:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/y3;->a:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/join/mgps/fragment/y3;->b:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/fragment/y3;->c:Z

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/y3;->g:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/y3;->o:Ljava/util/List;

    .line 7
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/y3;->p:Ljava/util/Map;

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/fragment/y3;->s:Z

    .line 9
    new-instance v0, Lcom/join/mgps/fragment/y3$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/y3$d;-><init>(Lcom/join/mgps/fragment/y3;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->t:Landroid/view/View$OnClickListener;

    .line 10
    new-instance v0, Lcom/join/mgps/fragment/y3$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/y3$e;-><init>(Lcom/join/mgps/fragment/y3;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->u:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic M(Lcom/join/mgps/fragment/y3;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/fragment/y3;->c:Z

    return p0
.end method

.method static synthetic N(Lcom/join/mgps/fragment/y3;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/y3;->k:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic O(Lcom/join/mgps/fragment/y3;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/y3;->b:I

    return p1
.end method

.method private P(Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaPaBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_14

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/PaPaBean;

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    move-result v3

    sget-object v4, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_HORIZONTAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v4}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-ne v3, v4, :cond_b

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/AppBean;

    .line 7
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 8
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    .line 9
    iget-object v8, p0, Lcom/join/mgps/fragment/y3;->p:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v8, :cond_3

    .line 10
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v9

    if-ne v9, v6, :cond_3

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 12
    :goto_2
    iget-object v9, p0, Lcom/join/mgps/fragment/y3;->p:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v4, :cond_4

    .line 13
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v9

    if-ne v9, v6, :cond_4

    .line 14
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v9

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_5

    if-eqz v8, :cond_5

    .line 15
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 16
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    .line 17
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 18
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_1

    :cond_6
    if-eqz v8, :cond_7

    .line 19
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 20
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_1

    .line 21
    :cond_7
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 22
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    goto :goto_4

    :cond_8
    move-object v4, v5

    :goto_4
    if-nez v4, :cond_9

    .line 23
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    :cond_9
    if-eqz v4, :cond_2

    .line 24
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 25
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_1

    .line 26
    :cond_a
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 27
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_1

    .line 28
    :cond_b
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    move-result v3

    sget-object v4, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_VERTICAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v4}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 29
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AppBean;

    .line 30
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 31
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    .line 32
    iget-object v4, p0, Lcom/join/mgps/fragment/y3;->p:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v4, :cond_c

    .line 33
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v8

    if-ne v8, v6, :cond_c

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v9, v4}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    .line 35
    :goto_5
    iget-object v8, p0, Lcom/join/mgps/fragment/y3;->p:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v3, :cond_d

    .line 36
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v8

    if-ne v8, v6, :cond_d

    .line 37
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v6

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v7

    :cond_d
    if-eqz v7, :cond_e

    if-eqz v4, :cond_e

    .line 38
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_e
    if-eqz v7, :cond_f

    .line 40
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_f
    if-eqz v4, :cond_10

    .line 42
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 44
    :cond_10
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 45
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    :cond_11
    if-nez v5, :cond_12

    .line 46
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    :cond_12
    if-eqz v5, :cond_1

    .line 47
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 49
    :cond_13
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_14
    return-void
.end method

.method private S()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->k:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->g0()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->R()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->e0()V

    :goto_0
    return-void
.end method

.method private V(Lcom/join/mgps/dto/ResultMainBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/StandAloneListBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->isActivityFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->h0()V

    return-void

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/fragment/y3;->c:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/fragment/y3;->c:Z

    .line 9
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/y3;->Q(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/y3;->l0(Ljava/util/List;)V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->hideLoading()V

    return-void

    .line 13
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->f0()V

    return-void
.end method

.method public static X(I)Lcom/join/mgps/fragment/y3;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/z3;

    invoke-direct {v0}, Lcom/join/mgps/fragment/z3;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/join/mgps/fragment/y3;->p:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/y3;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/PaPaBean;

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    move-result v3

    sget-object v4, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_HORIZONTAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v4}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_7

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/AppBean;

    .line 11
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 12
    iget-object v4, p0, Lcom/join/mgps/fragment/y3;->p:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 13
    iget-object v6, p0, Lcom/join/mgps/fragment/y3;->p:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v4, :cond_3

    if-nez v6, :cond_3

    .line 14
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    .line 15
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_5

    .line 16
    invoke-virtual {v3, v6}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 17
    :cond_5
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 18
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 19
    :cond_6
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 20
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 21
    :cond_7
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    move-result v3

    sget-object v4, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_VERTICAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v4}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 22
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AppBean;

    .line 23
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 24
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    .line 25
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    if-nez v3, :cond_8

    if-nez v4, :cond_8

    .line 26
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_8
    if-eqz v3, :cond_9

    .line 27
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_9
    if-eqz v4, :cond_a

    .line 28
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 29
    :cond_a
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 31
    :cond_b
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    :cond_c
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->f:Lcom/join/mgps/adapter/t3;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private b0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->p:Ljava/util/Map;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->f:Lcom/join/mgps/adapter/t3;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->o:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->E3(Ljava/util/List;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->p:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->p:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/y3;->i0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->f:Lcom/join/mgps/adapter/t3;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private d0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->p:Ljava/util/Map;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->p:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/y3;->i0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->p:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->f:Lcom/join/mgps/adapter/t3;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method private i0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PaPaBean;

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    move-result v2

    sget-object v3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_HORIZONTAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-ne v2, v3, :cond_a

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AppBean;

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    .line 7
    iget-object v7, p0, Lcom/join/mgps/fragment/y3;->p:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    .line 8
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    if-ne v7, v5, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 9
    :goto_2
    iget-object v9, p0, Lcom/join/mgps/fragment/y3;->p:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    if-ne v3, v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_4

    if-eqz v7, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    :cond_4
    if-eqz v8, :cond_5

    .line 13
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    :cond_5
    if-eqz v7, :cond_6

    .line 15
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_1

    .line 17
    :cond_6
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 18
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    goto :goto_4

    :cond_7
    move-object v3, v4

    :goto_4
    if-nez v3, :cond_8

    .line 19
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    :cond_8
    if-eqz v3, :cond_1

    .line 20
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 21
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_1

    .line 22
    :cond_9
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_1

    .line 24
    :cond_a
    invoke-virtual {v1}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    move-result v2

    sget-object v3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_VERTICAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 25
    invoke-virtual {v1}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AppBean;

    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    .line 28
    iget-object v3, p0, Lcom/join/mgps/fragment/y3;->p:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v3, :cond_b

    .line 29
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    if-ne v7, v5, :cond_b

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v8, v3}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    .line 31
    :goto_5
    iget-object v7, p0, Lcom/join/mgps/fragment/y3;->p:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v2, :cond_c

    .line 32
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    if-ne v7, v5, :cond_c

    .line 33
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v5

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v6

    :cond_c
    if-eqz v6, :cond_d

    if-eqz v3, :cond_d

    .line 34
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_d
    if-eqz v6, :cond_e

    .line 36
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_e
    if-eqz v3, :cond_f

    .line 38
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 40
    :cond_f
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 41
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    :cond_10
    if-nez v4, :cond_11

    .line 42
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    :cond_11
    if-eqz v4, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_6

    .line 45
    :cond_12
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/AppBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    :goto_6
    return-void
.end method

.method private j0()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/y3;->r:I

    :goto_0
    iget v1, p0, Lcom/join/mgps/fragment/y3;->q:I

    if-gt v0, v1, :cond_b

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/y3;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PaPaBean;

    if-eqz v1, :cond_a

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    move-result v2

    sget-object v3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_VERTICAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v3

    const/16 v4, 0xc

    const/4 v5, 0x2

    if-ne v2, v3, :cond_6

    const/16 v2, 0xe

    if-lt v0, v2, :cond_0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tbl>>>i="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AppBean;

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-lt v0, v2, :cond_1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tbl>>>downloadTask:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v1, :cond_a

    .line 8
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-ne v2, v4, :cond_a

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/fragment/y3;->e:Lcom/join/mgps/customview/XListView2;

    iget v3, p0, Lcom/join/mgps/fragment/y3;->r:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/join/mgps/adapter/t3$i;

    if-eqz v3, :cond_a

    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/t3$i;

    .line 12
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    if-nez v3, :cond_3

    return-void

    .line 13
    :cond_3
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    mul-double v6, v6, v8

    mul-double v6, v6, v8

    double-to-long v6, v6

    .line 14
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v10, 0x0

    const-string v12, "/"

    cmp-long v13, v8, v10

    if-nez v13, :cond_4

    .line 15
    :try_start_1
    iget-object v8, v2, Lcom/join/mgps/adapter/t3$i;->k:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16
    :cond_4
    iget-object v8, v2, Lcom/join/mgps/adapter/t3$i;->k:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :goto_1
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-ne v6, v4, :cond_5

    .line 18
    iget-object v4, v2, Lcom/join/mgps/adapter/t3$i;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    .line 19
    :cond_5
    iget-object v4, v2, Lcom/join/mgps/adapter/t3$i;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 20
    :goto_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    if-ne v1, v5, :cond_a

    .line 21
    iget-object v1, v2, Lcom/join/mgps/adapter/t3$i;->l:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 23
    :cond_6
    invoke-virtual {v1}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    move-result v2

    sget-object v3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_HORIZONTAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    .line 25
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 26
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/AppBean;

    .line 27
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 28
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-eq v6, v5, :cond_7

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-ne v6, v4, :cond_9

    .line 29
    :cond_7
    iget-object v6, p0, Lcom/join/mgps/fragment/y3;->e:Lcom/join/mgps/customview/XListView2;

    iget v7, p0, Lcom/join/mgps/fragment/y3;->r:I

    sub-int v7, v0, v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 30
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/join/mgps/adapter/t3$k;

    if-eqz v7, :cond_9

    .line 31
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/adapter/t3$k;

    .line 32
    :try_start_2
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v7

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    if-nez v3, :cond_8

    return-void

    .line 33
    :cond_8
    iget-object v6, v6, Lcom/join/mgps/adapter/t3$k;->a:Lcom/join/mgps/customview/InterceptEventHorizontalScrollView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v6

    .line 34
    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f090a3a

    .line 35
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_9

    .line 36
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    .line 37
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method


# virtual methods
.method Q(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/StandAloneListBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaPaBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_11

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/StandAloneListBean;

    .line 4
    new-instance v4, Lcom/join/mgps/dto/PaPaBean;

    invoke-direct {v4}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    .line 5
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-static {v5}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 7
    new-instance v6, Lcom/join/mgps/dto/CollectionInfo;

    invoke-direct {v6}, Lcom/join/mgps/dto/CollectionInfo;-><init>()V

    .line 8
    invoke-virtual {v6, v5}, Lcom/join/mgps/dto/CollectionInfo;->setTitle(Ljava/lang/String;)V

    .line 9
    sget-object v5, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_TITLE:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v5}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 10
    invoke-virtual {v4, v6}, Lcom/join/mgps/dto/PaPaBean;->setTypeValue(Ljava/lang/Object;)V

    .line 11
    :cond_0
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "game_list_h"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x75

    const/16 v7, 0x6b

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getGame_list()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getGame_list()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 12
    iget v5, p0, Lcom/join/mgps/fragment/y3;->a:I

    if-ne v5, v9, :cond_1

    .line 13
    iget-object v5, p0, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/dto/PaPaBean;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-ne v5, v8, :cond_2

    .line 15
    iget v5, p0, Lcom/join/mgps/fragment/y3;->b:I

    if-ge v5, v8, :cond_2

    .line 16
    iget-object v5, p0, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/dto/PaPaBean;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getGame_list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/AppBean;

    .line 19
    invoke-virtual {v5, v7}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 20
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    goto :goto_2

    .line 21
    :cond_3
    new-instance v4, Lcom/join/mgps/dto/PaPaBean;

    invoke-direct {v4}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    .line 22
    sget-object v5, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_HORIZONTAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v5}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 23
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getGame_list()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/PaPaBean;->setTypeValue(Ljava/lang/Object;)V

    .line 24
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 25
    :cond_4
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v10, "game_list_v"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getGame_list()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getGame_list()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 26
    iget v5, p0, Lcom/join/mgps/fragment/y3;->a:I

    if-ne v5, v9, :cond_5

    .line 27
    iget-object v5, p0, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/dto/PaPaBean;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    if-ne v5, v8, :cond_6

    .line 29
    iget v5, p0, Lcom/join/mgps/fragment/y3;->b:I

    if-ge v5, v8, :cond_6

    .line 30
    iget-object v5, p0, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/dto/PaPaBean;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    const/4 v4, 0x0

    .line 32
    :goto_4
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getGame_list()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_10

    .line 33
    new-instance v5, Lcom/join/mgps/dto/PaPaBean;

    invoke-direct {v5}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    .line 34
    sget-object v8, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_VERTICAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v8}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 35
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getGame_list()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/AppBean;

    .line 36
    invoke-virtual {v8, v7}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 37
    invoke-virtual {v8, v6}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 38
    invoke-virtual {v5, v8}, Lcom/join/mgps/dto/PaPaBean;->setTypeValue(Ljava/lang/Object;)V

    .line 39
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 40
    :cond_7
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tag_type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_d

    .line 41
    iget v5, p0, Lcom/join/mgps/fragment/y3;->a:I

    if-ne v5, v9, :cond_8

    .line 42
    iget-object v5, p0, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/dto/PaPaBean;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    if-ne v5, v8, :cond_9

    .line 44
    iget v5, p0, Lcom/join/mgps/fragment/y3;->b:I

    if-ge v5, v8, :cond_9

    .line 45
    iget-object v5, p0, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/dto/PaPaBean;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_9
    :goto_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 48
    :goto_6
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_c

    .line 49
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/StandAloneListBean$ListBean;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_a

    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v9

    if-ne v5, v6, :cond_b

    .line 51
    :cond_a
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    new-instance v7, Lcom/join/mgps/dto/PaPaBean;

    invoke-direct {v7}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    .line 54
    sget-object v8, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_TAG:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v8}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 55
    invoke-virtual {v7, v6}, Lcom/join/mgps/dto/PaPaBean;->setTypeValue(Ljava/lang/Object;)V

    .line 56
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-interface {v4}, Ljava/util/List;->clear()V

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 58
    :cond_c
    new-instance v3, Lcom/join/mgps/dto/PaPaBean;

    invoke-direct {v3}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    .line 59
    sget-object v4, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_LINE_40:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v4}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 60
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 61
    :cond_d
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "company_type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_10

    .line 62
    iget v5, p0, Lcom/join/mgps/fragment/y3;->a:I

    if-ne v5, v9, :cond_e

    .line 63
    iget-object v5, p0, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/dto/PaPaBean;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    if-ne v5, v8, :cond_f

    .line 65
    iget v5, p0, Lcom/join/mgps/fragment/y3;->b:I

    if-ge v5, v8, :cond_f

    .line 66
    iget-object v5, p0, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/dto/PaPaBean;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_f
    :goto_7
    new-instance v4, Lcom/join/mgps/dto/PaPaBean;

    invoke-direct {v4}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    .line 69
    sget-object v5, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_COMPANY:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v5}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 70
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/PaPaBean;->setTypeValue(Ljava/lang/Object;)V

    .line 71
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_11
    return-object v0
.end method

.method R()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/PaPaBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/dto/PaPaBean;

    .line 2
    sget-object v1, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_LINE_20:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 3
    iget v0, p0, Lcom/join/mgps/fragment/y3;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->d:Lcom/join/mgps/rpc/d;

    iget-object v1, p0, Lcom/join/mgps/fragment/y3;->k:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/fragment/y3;->b:I

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getStandAloneTwo(I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/d;->F1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/y3;->V(Lcom/join/mgps/dto/ResultMainBean;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->d:Lcom/join/mgps/rpc/d;

    iget-object v1, p0, Lcom/join/mgps/fragment/y3;->k:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getStandAloneOne()Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/d;->T0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/y3;->U(Lcom/join/mgps/dto/ResultMainBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchData exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaPaList"

    invoke-static {v1, v0}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->f0()V

    :goto_0
    return-void
.end method

.method T(Lcom/join/mgps/dto/AppBean;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/y3;->k:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method U(Lcom/join/mgps/dto/ResultMainBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/StandAloneListBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->isActivityFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->h0()V

    return-void

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/fragment/y3;->c:Z

    .line 8
    :cond_3
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/y3;->Q(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/y3;->l0(Ljava/util/List;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->hideLoading()V

    return-void

    .line 10
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->f0()V

    return-void
.end method

.method W()V
    .locals 4

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    iget-object v2, p0, Lcom/join/mgps/fragment/y3;->p:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method Z(Lcom/join/mgps/dto/CollectionBeanSub;)V
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
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->f:Lcom/join/mgps/adapter/t3;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->d:Lcom/join/mgps/rpc/d;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->W()V

    .line 3
    new-instance v0, Lcom/join/mgps/adapter/t3;

    iget-object v1, p0, Lcom/join/mgps/fragment/y3;->k:Landroid/app/Activity;

    iget-object v2, p0, Lcom/join/mgps/fragment/y3;->g:Ljava/util/List;

    iget-object v3, p0, Lcom/join/mgps/fragment/y3;->u:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/adapter/t3;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->f:Lcom/join/mgps/adapter/t3;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/fragment/y3;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/t3;->d(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->j:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->e:Lcom/join/mgps/customview/XListView2;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->e:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/fragment/y3;->f:Lcom/join/mgps/adapter/t3;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->e:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/y3$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/y3$a;-><init>(Lcom/join/mgps/fragment/y3;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->e:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/y3$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/y3$b;-><init>(Lcom/join/mgps/fragment/y3;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->e:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/y3$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/y3$c;-><init>(Lcom/join/mgps/fragment/y3;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/fragment/y3;->S()V

    return-void
.end method

.method e0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->j:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method f0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/y3;->b:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->e0()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->e:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    :cond_1
    return-void
.end method

.method g0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->j:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->i:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method h0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/fragment/y3;->c:Z

    .line 2
    iget v0, p0, Lcom/join/mgps/fragment/y3;->b:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->j:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    return-void
.end method

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->j:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method isActivityFinish()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->k:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

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

.method k0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/y3;->b0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/y3;->d0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/y3;->a0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 4
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/y3;->c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method l0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaPaBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/y3;->b:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 3
    iget-object v2, p0, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/dto/PaPaBean;

    invoke-interface {p1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->o:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/join/mgps/fragment/y3;->P(Ljava/util/List;Ljava/util/List;)V

    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/fragment/y3;->c:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/join/mgps/fragment/y3;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/fragment/y3;->b:I

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 10
    iget-boolean p1, p0, Lcom/join/mgps/fragment/y3;->c:Z

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_3

    return-void

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->f:Lcom/join/mgps/adapter/t3;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/join/mgps/fragment/y3;->k:Landroid/app/Activity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "type"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/fragment/y3;->a:I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->k:Landroid/app/Activity;

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 3
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/4 v3, 0x6

    if-eq p1, v3, :cond_2

    const/4 v3, 0x7

    if-eq p1, v3, :cond_1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    const/16 v4, 0x30

    if-eq p1, v4, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x9

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/y3;->k0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/fragment/y3;->k0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/fragment/y3;->k0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->p:Ljava/util/Map;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/join/mgps/fragment/y3;->s:Z

    if-nez p1, :cond_6

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/fragment/y3;->j0()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/fragment/y3;->k0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/fragment/y3;->k0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 10
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/y3;->k0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/y3;->k0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/y3;->k0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :cond_6
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    .line 1
    iput p3, p0, Lcom/join/mgps/fragment/y3;->q:I

    .line 2
    iput p2, p0, Lcom/join/mgps/fragment/y3;->r:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iput-boolean p1, p0, Lcom/join/mgps/fragment/y3;->s:Z

    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/y3;->S()V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->k:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->isActivityFinish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->k:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
