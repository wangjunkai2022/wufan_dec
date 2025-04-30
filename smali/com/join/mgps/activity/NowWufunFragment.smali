.class public Lcom/join/mgps/activity/NowWufunFragment;
.super Landroidx/fragment/app/Fragment;
.source "NowWufunFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/NowWufunFragment$c;,
        Lcom/join/mgps/activity/NowWufunFragment$ItemType;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c04fe
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/join/mgps/rpc/d;

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/join/mgps/adapter/q3;

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/NowWufunFragment$c;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->i:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->k:Z

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->o:I

    return-void
.end method

.method static synthetic N(Lcom/join/mgps/activity/NowWufunFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/NowWufunFragment;->k:Z

    return p0
.end method

.method static synthetic O(Lcom/join/mgps/activity/NowWufunFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/NowWufunFragment;->o:I

    return p0
.end method

.method static synthetic P(Lcom/join/mgps/activity/NowWufunFragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/NowWufunFragment;->b:I

    return p1
.end method

.method private S(Ljava/lang/String;ILjava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 2
    new-instance p2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    .line 3
    invoke-virtual {p2, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2, p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    return-object p2

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/NowWufunFragment;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p3

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private U(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

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
    iget-object v2, p0, Lcom/join/mgps/activity/NowWufunFragment;->i:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/NowWufunFragment$c;

    .line 8
    iget-object v1, v1, Lcom/join/mgps/activity/NowWufunFragment$c;->b:Ljava/lang/Object;

    .line 9
    instance-of v2, v1, Lcom/join/mgps/dto/TodayWufunEverday;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 10
    move-object v2, v1

    check-cast v2, Lcom/join/mgps/dto/TodayWufunEverday;

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEverday;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 12
    iget-object v4, p0, Lcom/join/mgps/activity/NowWufunFragment;->i:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEverday;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 13
    iget-object v5, p0, Lcom/join/mgps/activity/NowWufunFragment;->i:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEverday;->getGame_id()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v4, :cond_2

    if-nez v5, :cond_2

    .line 14
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/TodayWufunEverday;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 15
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/TodayWufunEverday;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    .line 16
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/TodayWufunEverday;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEverday;->getGame_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 18
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/TodayWufunEverday;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 19
    :cond_5
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEverday;->getGame_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 20
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/TodayWufunEverday;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 21
    :cond_6
    instance-of v2, v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    if-eqz v2, :cond_b

    .line 22
    move-object v2, v1

    check-cast v2, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 23
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 24
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    .line 25
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    if-nez v4, :cond_7

    if-nez v5, :cond_7

    .line 26
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/TodayWufunBroadcast;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_7
    if-eqz v4, :cond_8

    .line 27
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/TodayWufunBroadcast;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_8
    if-eqz v5, :cond_9

    .line 28
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/TodayWufunBroadcast;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 29
    :cond_9
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 30
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/TodayWufunBroadcast;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 31
    :cond_a
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 32
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/TodayWufunBroadcast;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 33
    :cond_b
    instance-of v2, v1, Lcom/join/mgps/dto/TodayWufunTodayNew;

    if-eqz v2, :cond_1

    .line 34
    check-cast v1, Lcom/join/mgps/dto/TodayWufunTodayNew;

    .line 35
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 36
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    .line 37
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getGame_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    if-nez v2, :cond_c

    if-nez v4, :cond_c

    .line 38
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/TodayWufunTodayNew;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_c
    if-eqz v2, :cond_d

    .line 39
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/TodayWufunTodayNew;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_d
    if-eqz v4, :cond_e

    .line 40
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/TodayWufunTodayNew;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 41
    :cond_e
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/TodayWufunTodayNew;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 43
    :cond_f
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/TodayWufunTodayNew;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 45
    :cond_10
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunFragment;->j:Lcom/join/mgps/adapter/q3;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private V(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->i:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunFragment;->j:Lcom/join/mgps/adapter/q3;

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

.method private W(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->h:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->E3(Ljava/util/List;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/NowWufunFragment;->d0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunFragment;->j:Lcom/join/mgps/adapter/q3;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private X(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->i:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/NowWufunFragment;->d0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->i:Ljava/util/Map;

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

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunFragment;->j:Lcom/join/mgps/adapter/q3;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method private d0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/NowWufunFragment$c;

    .line 2
    iget-object v1, v1, Lcom/join/mgps/activity/NowWufunFragment$c;->b:Ljava/lang/Object;

    .line 3
    instance-of v2, v1, Lcom/join/mgps/dto/TodayWufunEverday;

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-eqz v2, :cond_9

    .line 4
    move-object v2, v1

    check-cast v2, Lcom/join/mgps/dto/TodayWufunEverday;

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEverday;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEverday;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v6

    .line 7
    iget-object v7, p0, Lcom/join/mgps/activity/NowWufunFragment;->i:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v7, :cond_1

    .line 8
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v8

    if-ne v8, v4, :cond_1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 10
    :goto_1
    iget-object v8, p0, Lcom/join/mgps/activity/NowWufunFragment;->i:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v6, :cond_2

    .line 11
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v8

    if-ne v8, v4, :cond_2

    .line 12
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v8

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEverday;->getGame_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 14
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/TodayWufunEverday;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_8

    :cond_3
    if-eqz v6, :cond_4

    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEverday;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEverday;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 16
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/TodayWufunEverday;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_8

    :cond_4
    if-eqz v7, :cond_5

    .line 17
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEverday;->getGame_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 18
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/TodayWufunEverday;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_8

    .line 19
    :cond_5
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEverday;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 20
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v6

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEverday;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v6

    goto :goto_3

    :cond_6
    move-object v6, v3

    :goto_3
    if-nez v6, :cond_7

    .line 21
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v6

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEverday;->getGame_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v6

    :cond_7
    if-eqz v6, :cond_9

    .line 22
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 23
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/TodayWufunEverday;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_8

    .line 24
    :cond_8
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEverday;->getGame_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 25
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/TodayWufunEverday;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 26
    :cond_9
    instance-of v2, v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    if-eqz v2, :cond_12

    .line 27
    move-object v2, v1

    check-cast v2, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 28
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 29
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v6

    .line 30
    iget-object v7, p0, Lcom/join/mgps/activity/NowWufunFragment;->i:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v7, :cond_a

    .line 31
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v8

    if-ne v8, v4, :cond_a

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    .line 33
    :goto_4
    iget-object v8, p0, Lcom/join/mgps/activity/NowWufunFragment;->i:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v6, :cond_b

    .line 34
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v8

    if-ne v8, v4, :cond_b

    .line 35
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v8

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v6

    goto :goto_5

    :cond_b
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_c

    if-eqz v7, :cond_c

    .line 36
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 37
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_8

    :cond_c
    if-eqz v6, :cond_d

    .line 38
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 39
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_8

    :cond_d
    if-eqz v7, :cond_e

    .line 40
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 41
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_8

    .line 42
    :cond_e
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 43
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v6

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v6

    goto :goto_6

    :cond_f
    move-object v6, v3

    :goto_6
    if-nez v6, :cond_10

    .line 44
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v6

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v6

    :cond_10
    if-eqz v6, :cond_12

    .line 45
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 46
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_8

    .line 47
    :cond_11
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 48
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 49
    :cond_12
    instance-of v2, v1, Lcom/join/mgps/dto/TodayWufunTodayNew;

    if-eqz v2, :cond_0

    .line 50
    check-cast v1, Lcom/join/mgps/dto/TodayWufunTodayNew;

    .line 51
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 52
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    .line 53
    iget-object v6, p0, Lcom/join/mgps/activity/NowWufunFragment;->i:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v6, :cond_13

    .line 54
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    if-ne v7, v4, :cond_13

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    goto :goto_7

    :cond_13
    const/4 v6, 0x0

    .line 56
    :goto_7
    iget-object v7, p0, Lcom/join/mgps/activity/NowWufunFragment;->i:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v2, :cond_14

    .line 57
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    if-ne v7, v4, :cond_14

    .line 58
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v4

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v5

    :cond_14
    if-eqz v5, :cond_15

    if-eqz v6, :cond_15

    .line 59
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getGame_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_8

    :cond_15
    if-eqz v5, :cond_16

    .line 61
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_8

    :cond_16
    if-eqz v6, :cond_17

    .line 63
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getGame_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_8

    .line 65
    :cond_17
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 66
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    :cond_18
    if-nez v3, :cond_19

    .line 67
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getGame_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    :cond_19
    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_8

    .line 70
    :cond_1a
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_1b
    :goto_8
    return-void
.end method

.method private e0()V
    .locals 15

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->n:I

    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/NowWufunFragment;->m:I

    if-gt v0, v1, :cond_d

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/NowWufunFragment;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/NowWufunFragment$c;

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    iget-object v1, v1, Lcom/join/mgps/activity/NowWufunFragment$c;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    instance-of v3, v1, Lcom/join/mgps/dto/TodayWufunEverday;

    if-eqz v3, :cond_2

    .line 5
    move-object v2, v1

    check-cast v2, Lcom/join/mgps/dto/TodayWufunEverday;

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEverday;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEverday;->getGame_id()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v14, v3

    move-object v3, v2

    move-object v2, v14

    goto :goto_2

    :cond_2
    const-string v3, ""

    .line 8
    :goto_2
    instance-of v4, v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    if-eqz v4, :cond_4

    .line 9
    move-object v2, v1

    check-cast v2, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 11
    :cond_3
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object v14, v3

    move-object v3, v2

    move-object v2, v14

    .line 12
    :cond_4
    instance-of v4, v1, Lcom/join/mgps/dto/TodayWufunTodayNew;

    if-eqz v4, :cond_6

    .line 13
    check-cast v1, Lcom/join/mgps/dto/TodayWufunTodayNew;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 14
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 15
    :cond_5
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getGame_id()Ljava/lang/String;

    move-result-object v3

    :cond_6
    :goto_4
    if-eqz v2, :cond_c

    .line 16
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/16 v4, 0xc

    const/4 v5, 0x2

    if-eq v1, v5, :cond_7

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    if-ne v1, v4, :cond_c

    .line 17
    :cond_7
    iget-object v1, p0, Lcom/join/mgps/activity/NowWufunFragment;->d:Lcom/join/mgps/customview/XListView2;

    iget v6, p0, Lcom/join/mgps/activity/NowWufunFragment;->n:I

    sub-int v6, v0, v6

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/join/mgps/adapter/q3$l;

    if-eqz v6, :cond_b

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/q3$l;

    .line 20
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    if-nez v3, :cond_8

    return-void

    .line 21
    :cond_8
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    mul-double v6, v6, v8

    mul-double v6, v6, v8

    double-to-long v6, v6

    .line 22
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v10, 0x0

    const-string v12, "/"

    cmp-long v13, v8, v10

    if-nez v13, :cond_9

    .line 23
    :try_start_1
    iget-object v8, v1, Lcom/join/mgps/adapter/q3$l;->d:Landroid/widget/TextView;

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

    goto :goto_5

    .line 24
    :cond_9
    iget-object v8, v1, Lcom/join/mgps/adapter/q3$l;->d:Landroid/widget/TextView;

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

    .line 25
    :goto_5
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-ne v6, v4, :cond_a

    .line 26
    iget-object v4, v1, Lcom/join/mgps/adapter/q3$l;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_6

    .line 27
    :cond_a
    iget-object v4, v1, Lcom/join/mgps/adapter/q3$l;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 28
    :goto_6
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-ne v2, v5, :cond_c

    .line 29
    iget-object v1, v1, Lcom/join/mgps/adapter/q3$l;->e:Landroid/widget/TextView;

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

    goto :goto_7

    :catch_0
    move-exception v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 31
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/join/mgps/adapter/q3$k;

    if-eqz v2, :cond_c

    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/q3$k;

    .line 33
    :try_start_2
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    .line 34
    iget-object v1, v1, Lcom/join/mgps/adapter/q3$k;->f:Lcom/join/mgps/customview/DownloadViewBig;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Lcom/join/mgps/customview/DownloadViewBig;->setProgress(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method


# virtual methods
.method M()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->g:Lcom/join/mgps/rpc/d;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->a:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "type"

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->o:I

    .line 6
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/NowWufunFragment;->i:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->d:Lcom/join/mgps/customview/XListView2;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->d:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/NowWufunFragment$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/NowWufunFragment$a;-><init>(Lcom/join/mgps/activity/NowWufunFragment;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->d:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/NowWufunFragment$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/NowWufunFragment$b;-><init>(Lcom/join/mgps/activity/NowWufunFragment;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->l:Ljava/util/List;

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/NowWufunFragment;->a0()V

    .line 16
    new-instance v0, Lcom/join/mgps/adapter/q3;

    iget-object v1, p0, Lcom/join/mgps/activity/NowWufunFragment;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/NowWufunFragment;->l:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/q3;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->j:Lcom/join/mgps/adapter/q3;

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/NowWufunFragment;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->b:I

    .line 19
    iget v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/NowWufunFragment;->R()V

    goto :goto_1

    .line 21
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/NowWufunFragment;->Q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method Q()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->k:Z

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/NowWufunFragment;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    iget v3, p0, Lcom/join/mgps/activity/NowWufunFragment;->b:I

    invoke-virtual {v2, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getNowWufun(I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/join/mgps/activity/NowWufunFragment;->g:Lcom/join/mgps/rpc/d;

    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/d;->m0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/join/mgps/activity/NowWufunFragment;->b:I

    if-ne v3, v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/NowWufunFragment;->Z()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/NowWufunFragment;->b0(Ljava/util/List;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/NowWufunFragment;->Z()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/NowWufunFragment;->Z()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/NowWufunFragment;->Z()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :goto_0
    iput-boolean v1, p0, Lcom/join/mgps/activity/NowWufunFragment;->k:Z

    goto :goto_2

    :goto_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/NowWufunFragment;->k:Z

    .line 14
    throw v0

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/NowWufunFragment;->Z()V

    :goto_2
    return-void
.end method

.method R()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->k:Z

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/NowWufunFragment;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/activity/NowWufunFragment;->b:I

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getNowWufun(I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/NowWufunFragment;->g:Lcom/join/mgps/rpc/d;

    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/d;->A0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/NowWufunFragment;->c0(Ljava/util/List;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/NowWufunFragment;->Z()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/NowWufunFragment;->Z()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 9
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/NowWufunFragment;->Z()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->k:Z

    goto :goto_2

    :goto_1
    iput-boolean v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->k:Z

    .line 12
    throw v1

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/NowWufunFragment;->Z()V

    :goto_2
    return-void
.end method

.method T(Lcom/join/mgps/dto/CollectionBeanSub;)V
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
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunFragment;->j:Lcom/join/mgps/adapter/q3;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method Z()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method a0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method b0(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TodayWufunBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->d:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 10
    :cond_3
    iget v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/TodayWufunBean;

    .line 14
    new-instance v2, Lcom/join/mgps/activity/NowWufunFragment$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/NowWufunFragment$c;-><init>(Lcom/join/mgps/activity/NowWufunFragment;)V

    .line 15
    sget-object v3, Lcom/join/mgps/activity/NowWufunFragment$ItemType;->DATETITLE:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    iput-object v3, v2, Lcom/join/mgps/activity/NowWufunFragment$c;->a:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunBean;->getTimes()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/join/mgps/activity/NowWufunFragment$c;->b:Ljava/lang/Object;

    .line 17
    iget-object v3, p0, Lcom/join/mgps/activity/NowWufunFragment;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v2, Lcom/join/mgps/activity/NowWufunFragment$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/NowWufunFragment$c;-><init>(Lcom/join/mgps/activity/NowWufunFragment;)V

    .line 19
    sget-object v3, Lcom/join/mgps/activity/NowWufunFragment$ItemType;->FIND:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    iput-object v3, v2, Lcom/join/mgps/activity/NowWufunFragment$c;->a:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunBean;->getEvery_day_discover()Lcom/join/mgps/dto/TodayWufunEverday;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 21
    invoke-virtual {v3}, Lcom/join/mgps/dto/TodayWufunEverday;->getGame_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/TodayWufunEverday;->getGame_plugin_num()I

    move-result v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/TodayWufunEverday;->getGame_down()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/join/mgps/activity/NowWufunFragment;->S(Ljava/lang/String;ILjava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/TodayWufunEverday;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 22
    iput-object v3, v2, Lcom/join/mgps/activity/NowWufunFragment$c;->b:Ljava/lang/Object;

    .line 23
    iget-object v3, p0, Lcom/join/mgps/activity/NowWufunFragment;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_6
    new-instance v2, Lcom/join/mgps/activity/NowWufunFragment$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/NowWufunFragment$c;-><init>(Lcom/join/mgps/activity/NowWufunFragment;)V

    .line 25
    sget-object v3, Lcom/join/mgps/activity/NowWufunFragment$ItemType;->EMPYT:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    iput-object v3, v2, Lcom/join/mgps/activity/NowWufunFragment$c;->a:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    .line 26
    iget-object v4, p0, Lcom/join/mgps/activity/NowWufunFragment;->l:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v2, Lcom/join/mgps/activity/NowWufunFragment$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/NowWufunFragment$c;-><init>(Lcom/join/mgps/activity/NowWufunFragment;)V

    .line 28
    sget-object v4, Lcom/join/mgps/activity/NowWufunFragment$ItemType;->BROADCAST:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    iput-object v4, v2, Lcom/join/mgps/activity/NowWufunFragment$c;->a:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunBean;->getBm_broadcast()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 30
    invoke-virtual {v4}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_plugin_num()I

    move-result v6

    invoke-virtual {v4}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_down()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/join/mgps/activity/NowWufunFragment;->S(Ljava/lang/String;ILjava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/TodayWufunBroadcast;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 31
    iput-object v4, v2, Lcom/join/mgps/activity/NowWufunFragment$c;->b:Ljava/lang/Object;

    .line 32
    iget-object v4, p0, Lcom/join/mgps/activity/NowWufunFragment;->l:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_7
    new-instance v2, Lcom/join/mgps/activity/NowWufunFragment$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/NowWufunFragment$c;-><init>(Lcom/join/mgps/activity/NowWufunFragment;)V

    .line 34
    iput-object v3, v2, Lcom/join/mgps/activity/NowWufunFragment$c;->a:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    .line 35
    iget-object v3, p0, Lcom/join/mgps/activity/NowWufunFragment;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunBean;->getToday_is_new()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 37
    new-instance v3, Lcom/join/mgps/activity/NowWufunFragment$c;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/NowWufunFragment$c;-><init>(Lcom/join/mgps/activity/NowWufunFragment;)V

    .line 38
    sget-object v4, Lcom/join/mgps/activity/NowWufunFragment$ItemType;->TODAYNEWTITLE:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    iput-object v4, v3, Lcom/join/mgps/activity/NowWufunFragment$c;->a:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    const-string v4, "\u4eca\u65e5\u4e0a\u7ebf"

    .line 39
    iput-object v4, v3, Lcom/join/mgps/activity/NowWufunFragment$c;->b:Ljava/lang/Object;

    .line 40
    iget-object v4, p0, Lcom/join/mgps/activity/NowWufunFragment;->l:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/TodayWufunTodayNew;

    .line 42
    new-instance v4, Lcom/join/mgps/activity/NowWufunFragment$c;

    invoke-direct {v4, p0}, Lcom/join/mgps/activity/NowWufunFragment$c;-><init>(Lcom/join/mgps/activity/NowWufunFragment;)V

    .line 43
    sget-object v5, Lcom/join/mgps/activity/NowWufunFragment$ItemType;->TODAYNEWITEM:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    iput-object v5, v4, Lcom/join/mgps/activity/NowWufunFragment$c;->a:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    .line 44
    invoke-virtual {v3}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getGame_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getGame_plugin_num()I

    move-result v6

    invoke-virtual {v3}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getGame_down()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/join/mgps/activity/NowWufunFragment;->S(Ljava/lang/String;ILjava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/TodayWufunTodayNew;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 45
    iput-object v3, v4, Lcom/join/mgps/activity/NowWufunFragment$c;->b:Ljava/lang/Object;

    .line 46
    iget-object v3, p0, Lcom/join/mgps/activity/NowWufunFragment;->l:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 47
    :cond_8
    new-instance v2, Lcom/join/mgps/activity/NowWufunFragment$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/NowWufunFragment$c;-><init>(Lcom/join/mgps/activity/NowWufunFragment;)V

    .line 48
    sget-object v3, Lcom/join/mgps/activity/NowWufunFragment$ItemType;->TODAYNEWBOTTOM:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    iput-object v3, v2, Lcom/join/mgps/activity/NowWufunFragment$c;->a:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    const-string v3, "\u67e5\u770b\u66f4\u591a"

    .line 49
    iput-object v3, v2, Lcom/join/mgps/activity/NowWufunFragment$c;->b:Ljava/lang/Object;

    .line 50
    iget-object v3, p0, Lcom/join/mgps/activity/NowWufunFragment;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_9
    new-instance v2, Lcom/join/mgps/activity/NowWufunFragment$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/NowWufunFragment$c;-><init>(Lcom/join/mgps/activity/NowWufunFragment;)V

    .line 52
    sget-object v3, Lcom/join/mgps/activity/NowWufunFragment$ItemType;->EMPYT:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    iput-object v3, v2, Lcom/join/mgps/activity/NowWufunFragment$c;->a:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    .line 53
    iget-object v3, p0, Lcom/join/mgps/activity/NowWufunFragment;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunBean;->getToday_is_topic()Lcom/join/mgps/dto/TodayWufunTopic;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 55
    new-instance v2, Lcom/join/mgps/activity/NowWufunFragment$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/NowWufunFragment$c;-><init>(Lcom/join/mgps/activity/NowWufunFragment;)V

    .line 56
    sget-object v3, Lcom/join/mgps/activity/NowWufunFragment$ItemType;->TOPIC:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    iput-object v3, v2, Lcom/join/mgps/activity/NowWufunFragment$c;->a:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunBean;->getToday_is_topic()Lcom/join/mgps/dto/TodayWufunTopic;

    move-result-object v0

    iput-object v0, v2, Lcom/join/mgps/activity/NowWufunFragment$c;->b:Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 59
    :cond_a
    iget p1, p0, Lcom/join/mgps/activity/NowWufunFragment;->b:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/join/mgps/activity/NowWufunFragment;->b:I

    goto :goto_2

    .line 60
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunFragment;->d:Lcom/join/mgps/customview/XListView2;

    if-eqz p1, :cond_c

    .line 61
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 62
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunFragment;->j:Lcom/join/mgps/adapter/q3;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method c0(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TodayWufunTopic;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->d:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 10
    :cond_3
    iget v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/TodayWufunTopic;

    .line 14
    new-instance v2, Lcom/join/mgps/activity/NowWufunFragment$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/NowWufunFragment$c;-><init>(Lcom/join/mgps/activity/NowWufunFragment;)V

    .line 15
    sget-object v3, Lcom/join/mgps/activity/NowWufunFragment$ItemType;->TOPIC2:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    iput-object v3, v2, Lcom/join/mgps/activity/NowWufunFragment$c;->a:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    .line 16
    iput-object v0, v2, Lcom/join/mgps/activity/NowWufunFragment$c;->b:Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_5
    iget p1, p0, Lcom/join/mgps/activity/NowWufunFragment;->b:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/join/mgps/activity/NowWufunFragment;->b:I

    goto :goto_1

    .line 19
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunFragment;->d:Lcom/join/mgps/customview/XListView2;

    if-eqz p1, :cond_7

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 21
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunFragment;->j:Lcom/join/mgps/adapter/q3;

    if-eqz p1, :cond_8

    .line 22
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_8
    return-void
.end method

.method f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/NowWufunFragment;->V(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/NowWufunFragment;->X(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/NowWufunFragment;->U(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 4
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/NowWufunFragment;->W(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 5
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunFragment;->j:Lcom/join/mgps/adapter/q3;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    nop

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

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 p1, 0x9

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/NowWufunFragment;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x8

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/NowWufunFragment;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x7

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/NowWufunFragment;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 6
    :pswitch_4
    invoke-direct {p0}, Lcom/join/mgps/activity/NowWufunFragment;->e0()V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x3

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/NowWufunFragment;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x6

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/NowWufunFragment;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x5

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/NowWufunFragment;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_8
    const/4 p1, 0x2

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/NowWufunFragment;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_9
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/NowWufunFragment;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    .line 1
    iput p3, p0, Lcom/join/mgps/activity/NowWufunFragment;->m:I

    .line 2
    iput p2, p0, Lcom/join/mgps/activity/NowWufunFragment;->n:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method relodingimag()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/NowWufunFragment;->a0()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->b:I

    .line 3
    iget v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/NowWufunFragment;->R()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/NowWufunFragment;->Q()V

    :goto_0
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method
