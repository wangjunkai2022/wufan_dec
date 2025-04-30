.class public Lcom/join/mgps/activity/SimulatorExitPlayActivity;
.super Lcom/BaseAppCompatActivity;
.source "SimulatorExitPlayActivity.java"

# interfaces
.implements Lcom/join/mgps/adapter/v5$a;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c006d
.end annotation


# instance fields
.field a:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Lcom/join/mgps/rpc/j;

.field l:Lcom/join/mgps/rpc/i;

.field m:Lcom/join/mgps/adapter/v5;

.field n:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field o:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field p:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field q:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field r:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field s:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field t:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field u:[I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private v:Lcom/join/mgps/dto/SimulatorExitPlayResponseData;

.field w:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic D0(Lcom/join/mgps/activity/SimulatorExitPlayActivity;Lcom/join/mgps/dto/AppBeanMain;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->I0(Lcom/join/mgps/dto/AppBeanMain;Landroid/view/View;)V

    return-void
.end method

.method private synthetic I0(Lcom/join/mgps/dto/AppBeanMain;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method


# virtual methods
.method E0(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, "\u5df2\u53d1\u9001\u52a0\u597d\u53cb\u7533\u8bf7"

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->toast(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->m:Lcom/join/mgps/adapter/v5;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/adapter/v5;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getUid()I

    move-result v2

    if-eq v2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 5
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->setSendFriendRequestStatus(Z)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->m:Lcom/join/mgps/adapter/v5;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method F0()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->v:Lcom/join/mgps/dto/SimulatorExitPlayResponseData;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getGameMasteryLevel()Lcom/join/mgps/dto/GameMasteryLevel;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->v:Lcom/join/mgps/dto/SimulatorExitPlayResponseData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getGameMasteryLevel()Lcom/join/mgps/dto/GameMasteryLevel;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    .line 3
    iget v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->o:I

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getCurrent_lv_times()I

    move-result v4

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getNext_lv_times()I

    move-result v5

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_5

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    move-result-object v6

    const-string v8, "\u4f20\u8bf4"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    move-result-object v6

    const-string v8, "\u5b97\u5e08"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    move-result-object v6

    const-string v8, "\u7cbe\u82f1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    move-result-object v0

    const-string v6, "\u8d44\u6df1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v6, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->w:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v6}, Lcom/join/mgps/pref/PrefDef_;->gameTimeLvCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v6

    invoke-virtual {v6}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    :try_start_1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v8

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v9

    const-class v10, Ljava/util/ArrayList;

    new-array v11, v7, [Ljava/lang/Class;

    const-class v12, Lcom/join/mgps/dto/GameTimeLevel;

    aput-object v12, v11, v1

    invoke-virtual {v9, v10, v11}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    .line 13
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v2, v8, [I

    const/4 v8, 0x0

    .line 14
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 15
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/GameTimeLevel;

    invoke-virtual {v9}, Lcom/join/mgps/dto/GameTimeLevel;->getVal()I

    move-result v9

    aput v9, v2, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_0
    move-exception v6

    .line 16
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    add-int/2addr v4, v3

    const/4 v3, 0x0

    .line 17
    :goto_2
    array-length v6, v2

    if-ge v1, v6, :cond_8

    add-int/lit8 v0, v1, 0x1

    .line 18
    aget v5, v2, v1

    sub-int/2addr v5, v3

    .line 19
    aget v3, v2, v1

    if-le v4, v5, :cond_8

    .line 20
    array-length v6, v2

    sub-int/2addr v6, v7

    if-ne v1, v6, :cond_7

    goto :goto_3

    :cond_7
    sub-int/2addr v4, v5

    move v1, v0

    goto :goto_2

    .line 21
    :cond_8
    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 22
    iput v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->r:I

    .line 23
    iput v5, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->s:I

    .line 24
    iput v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->q:I

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->Q0()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_4
    return-void
.end method

.method G0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->O0(I)V

    .line 2
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e;->Q()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method H0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public J0(I)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "uid"

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "token"

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "likeUid"

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->l:Lcom/join/mgps/rpc/i;

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/i;->a(Ljava/util/Map;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->K0(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->toast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method K0(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, "\u70b9\u8d5e\u6210\u529f"

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->toast(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->m:Lcom/join/mgps/adapter/v5;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/adapter/v5;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getUid()I

    move-result v2

    if-eq v2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->setLikeStatus(Z)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->m:Lcom/join/mgps/adapter/v5;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method L0()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v2}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 4
    new-instance v3, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;

    invoke-direct {v3}, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;-><init>()V

    .line 5
    invoke-virtual {v2, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/RequestModel;->getArgs()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;->setUid(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/dto/RequestModel;->getArgs()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;->setToken(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/dto/RequestModel;->getArgs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;

    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;->setGameId(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->u:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->u:[I

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->u:[I

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_1

    aget v5, v3, v1

    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/RequestModel;->getArgs()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;->setBattleUidList(Ljava/util/List;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->k:Lcom/join/mgps/rpc/j;

    invoke-interface {v0, v2}, Lcom/join/mgps/rpc/j;->G(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getFlag()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->P0(Lcom/join/mgps/dto/SimulatorExitPlayResponseData;)V

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->toast(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const v0, 0x7f11029b

    .line 18
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->toast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 20
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->updateTitle()V

    :goto_1
    return-void
.end method

.method M0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->O0(I)V

    .line 2
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e;->g()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method N0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    return-void
.end method

.method O0(I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.emu.ad.result"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "adAction"

    const/16 v2, 0x64

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "exit"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 6
    invoke-static {v0}, Lcom/join/mgps/va/overmind/e;->e0(Landroid/content/Intent;)V

    return-void
.end method

.method P0(Lcom/join/mgps/dto/SimulatorExitPlayResponseData;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->v:Lcom/join/mgps/dto/SimulatorExitPlayResponseData;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->m:Lcom/join/mgps/adapter/v5;

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/adapter/v5;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->m:Lcom/join/mgps/adapter/v5;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/v5;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getBuddyList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getBuddyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->a:Landroid/widget/TextView;

    const-string v1, "\u5bf9\u5c40\u8be6\u60c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getBuddyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 8
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;

    .line 10
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getUid()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->m:Lcom/join/mgps/adapter/v5;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/v5;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getBuddyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->a:Landroid/widget/TextView;

    const-string v1, "\u4e3a\u60a8\u63a8\u8350\u4ee5\u4e0b\u6e38\u620f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getGameList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getGameList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->m:Lcom/join/mgps/adapter/v5;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/v5;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getGameList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->m:Lcom/join/mgps/adapter/v5;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 17
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->F0()V

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getAd_switch()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_2

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :cond_7
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AppBeanMain;

    .line 26
    new-instance v0, Lcom/join/mgps/activity/u2;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/u2;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity;Lcom/join/mgps/dto/AppBeanMain;)V

    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 29
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    :goto_3
    return-void
.end method

.method Q0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->p:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->q:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const v0, 0x7f08047e

    const-string v1, "\u4f20\u8bf4"

    const-string v2, "#FF760C"

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const v0, 0x7f08047d

    const-string v1, "\u5b97\u5e08"

    const-string v2, "#F9C439"

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const v0, 0x7f08047b

    const-string v1, "\u7cbe\u82f1"

    const-string v2, "#DB64EE"

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const v0, 0x7f08047c

    const-string v1, "\u8d44\u6df1"

    const-string v2, "#65C73C"

    goto :goto_0

    :cond_4
    const v0, 0x7f08047a

    const-string v1, "\u89c1\u4e60"

    const-string v2, "#21E1E5"

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->g:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->j:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 8
    iget v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->s:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->r:I

    iput v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->s:I

    .line 9
    :cond_5
    iget v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->s:I

    if-eqz v0, :cond_6

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->j:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->r:I

    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method R0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method add(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/dto/FriendReqBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/FriendReqBean;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendReqBean;->setUid(I)V

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendReqBean;->setToken(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendReqBean;->setRuid(I)V

    const-string v0, "\u563f\uff0c\u4ea4\u4e2a\u670b\u53cb\uff0c\u5c11\u5e74~(*^\u25bd^*)"

    .line 6
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendReqBean;->setRequestInfo(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->p()Lcom/join/mgps/rpc/impl/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/g;->o()Lq1/g;

    move-result-object v0

    invoke-interface {v0, v1}, Lq1/g;->b(Lcom/join/mgps/dto/FriendReqBean;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/SimulatorExitPlayActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity$a;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity;I)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method afterLogin()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.action_login_success"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->L0()V

    return-void
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->a:Landroid/widget/TextView;

    const-string v1, "\u5bf9\u5c40\u8be6\u60c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->k:Lcom/join/mgps/rpc/j;

    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->p()Lcom/join/mgps/rpc/impl/g;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->l:Lcom/join/mgps/rpc/i;

    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->p:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->R0(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->R0(I)V

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->Q0()V

    .line 11
    new-instance v0, Lcom/join/mgps/adapter/v5;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/v5;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->m:Lcom/join/mgps/adapter/v5;

    .line 12
    invoke-virtual {v0, p0}, Lcom/join/mgps/adapter/v5;->n(Lcom/join/mgps/adapter/v5$a;)V

    .line 13
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->m:Lcom/join/mgps/adapter/v5;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->ExitGame_Recommend:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->isLogined(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->isTourist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->add(I)V

    .line 4
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v0, "1"

    .line 5
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 6
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->addFriends:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void

    .line 7
    :cond_1
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->isLogined(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->isTourist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->J0(I)V

    return-void

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->p:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->R0(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->R0(I)V

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->F0()V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->m:Lcom/join/mgps/adapter/v5;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/adapter/v5;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->m:Lcom/join/mgps/adapter/v5;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/v5;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->L0()V

    :cond_2
    return-void
.end method

.method toast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method updateTitle()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->a:Landroid/widget/TextView;

    const-string v1, "\u4e3a\u60a8\u63a8\u8350\u4ee5\u4e0b\u6e38\u620f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->a:Landroid/widget/TextView;

    const-string v1, "\u7f51\u7edc\u5df2\u65ad\u5f00\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
