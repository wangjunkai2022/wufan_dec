.class public Lcom/join/mgps/activity/PayNowActivity;
.super Lcom/BaseActivity;
.source "PayNowActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0062
.end annotation


# static fields
.field public static final K:Ljava/lang/String; = ""

.field public static final n0:Ljava/lang/String; = ""

.field public static final o0:Ljava/lang/String; = ""

.field public static final p0:Ljava/lang/String; = ""

.field private static final q0:I = 0x1

.field private static final r0:I = 0x2

.field private static final s0:I = 0x3


# instance fields
.field A:Landroid/app/Activity;

.field B:Lcom/join/mgps/dto/PayCenterOrderRequest;

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:I

.field F:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private G:Landroid/os/Handler;

.field private H:I

.field I:Landroid/os/Handler;

.field private J:J

.field a:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/HorizontalScrollView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
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

.field i:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field s:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field t:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field u:Lcom/join/mgps/dto/PapayOrder;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field v:Lcom/join/mgps/dto/IntentDataMain;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field w:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field x:Lcom/MApplication;

.field y:Lcom/join/mgps/rpc/n;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->z:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/PayNowActivity;->C:Z

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/PayNowActivity;->E:I

    .line 5
    new-instance v0, Lcom/join/mgps/activity/PayNowActivity$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PayNowActivity$a;-><init>(Lcom/join/mgps/activity/PayNowActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->G:Landroid/os/Handler;

    const/4 v0, 0x5

    .line 6
    iput v0, p0, Lcom/join/mgps/activity/PayNowActivity;->H:I

    .line 7
    new-instance v0, Lcom/join/mgps/activity/PayNowActivity$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PayNowActivity$b;-><init>(Lcom/join/mgps/activity/PayNowActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->I:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/join/mgps/activity/PayNowActivity;->J:J

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PaymentInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->X0(Lcom/join/mgps/dto/PaymentInfo;)V

    return-void
.end method

.method static synthetic F0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->U0(Lcom/join/mgps/dto/PapayResult;)V

    return-void
.end method

.method static synthetic G0(Lcom/join/mgps/activity/PayNowActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/PayNowActivity;->P0()V

    return-void
.end method

.method static synthetic H0(Lcom/join/mgps/activity/PayNowActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/PayNowActivity;->z:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic I0(Lcom/join/mgps/activity/PayNowActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PayNowActivity;->z:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic J0(Lcom/join/mgps/activity/PayNowActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->Z0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic K0(Lcom/join/mgps/activity/PayNowActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/PayNowActivity;->E:I

    return p1
.end method

.method static synthetic L0(Lcom/join/mgps/activity/PayNowActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/PayNowActivity;->G:Landroid/os/Handler;

    return-object p0
.end method

.method private P0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->d:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    return-void
.end method

.method public static S0(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.tencent.mm"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private U0(Lcom/join/mgps/dto/PapayResult;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v0}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getProduct_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setPayProduct(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setPayOrderId(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orderId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/PapayResult;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget v0, v0, Lcom/join/mgps/dto/PapayOrder;->ORDERTYPE:I

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/PayNowActivity;->checkToken()V

    .line 7
    :cond_1
    :goto_0
    invoke-static {}, Lcom/join/mgps/listener/b;->b()Lcom/join/mgps/listener/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/listener/b;->c()V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget v0, v0, Lcom/join/mgps/dto/PapayOrder;->ORDERTYPE:I

    const/4 v2, 0x2

    if-ne v0, v1, :cond_2

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->A:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/activity/PapayFinishActivity_;->F0(Landroid/content/Context;)Lcom/join/mgps/activity/PapayFinishActivity_$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/PapayFinishActivity_$c;->a(Lcom/join/mgps/dto/PapayResult;)Lcom/join/mgps/activity/PapayFinishActivity_$c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/PapayFinishActivity_$c;->b(Z)Lcom/join/mgps/activity/PapayFinishActivity_$c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_3

    :cond_2
    const-string v3, "\u652f\u4ed8\u7b49\u5f85"

    const-string v4, "\u652f\u4ed8\u53d6\u6d88"

    const/4 v5, 0x4

    const/4 v6, 0x3

    const-string v7, "\u652f\u4ed8\u5931\u8d25"

    if-ne v0, v2, :cond_7

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/PapayResult;->getStatus()I

    move-result v0

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_5

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    .line 11
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 15
    :cond_4
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 17
    :cond_5
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget-object v0, v0, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setGameid(Ljava/lang/String;)V

    .line 20
    invoke-static {p0}, Lcom/join/mgps/activity/PayFinishActivity_;->J0(Landroid/content/Context;)Lcom/join/mgps/activity/PayFinishActivity_$d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/PayFinishActivity_$d;->a(Lcom/join/mgps/dto/PapayResult;)Lcom/join/mgps/activity/PayFinishActivity_$d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 21
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3

    :cond_7
    if-ne v0, v6, :cond_d

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/PapayResult;->getStatus()I

    move-result v0

    if-eq v0, v1, :cond_b

    if-eq v0, v2, :cond_a

    if-eq v0, v6, :cond_9

    if-eq v0, v5, :cond_8

    .line 23
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 24
    :cond_8
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_9
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 26
    :cond_a
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 27
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.join,mgps.sim.sdkgamePayfinish"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->w:Lcom/join/mgps/dto/ExtBean;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 30
    invoke-static {}, Lcom/join/mgps/Util/k1;->c()Lcom/join/mgps/Util/k1;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/activity/PayNowActivity;->w:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->getFrom_id()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/PayNowActivity;->w:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->getPosition()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p0, v3, v4}, Lcom/join/mgps/Util/k1;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_c
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 32
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->A:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/activity/PapayFinishActivity_;->F0(Landroid/content/Context;)Lcom/join/mgps/activity/PapayFinishActivity_$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/PapayFinishActivity_$c;->a(Lcom/join/mgps/dto/PapayResult;)Lcom/join/mgps/activity/PapayFinishActivity_$c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 33
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget v0, v0, Lcom/join/mgps/dto/PapayOrder;->PAYORRECHARGE:I

    if-eq v0, v1, :cond_e

    if-ne v0, v2, :cond_f

    .line 34
    :cond_e
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method private V0(Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "respMessage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    const-string v2, "\u652f\u4ed8\u6210\u529f"

    .line 7
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/PayNowActivity;->U0(Lcom/join/mgps/dto/PapayResult;)V

    :cond_0
    const-string v1, "0"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    const-string v1, "-2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "-3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    :cond_1
    new-instance v1, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 11
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 12
    iget-object v3, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v3}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u652f\u4ed8\u5931\u8d25 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/PayNowActivity;->U0(Lcom/join/mgps/dto/PapayResult;)V

    :cond_2
    const-string p1, "-1"

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 17
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v0}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    .line 19
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->U0(Lcom/join/mgps/dto/PapayResult;)V

    :cond_3
    return-void
.end method

.method private X0(Lcom/join/mgps/dto/PaymentInfo;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/PaymentInfo;->getTokenID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaymentInfo;->getAgentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PaymentInfo;->getBillNo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",30"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/heepay/plugin/api/HPlugin;->pay(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private Z0(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PayNowActivity$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/PayNowActivity$e;-><init>(Lcom/join/mgps/activity/PayNowActivity;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a1()V
    .locals 2

    const v0, 0x7f010017

    .line 1
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private showLoding()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->d:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method M0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    const-string v1, "alipaymobilesign"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->t:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->Y0(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    return-void
.end method

.method N0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->d:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    return-void
.end method

.method O0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    const-string v1, "upmpmobilekongjian1"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->t:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->Y0(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    return-void
.end method

.method public Q0()Ljava/lang/String;
    .locals 1

    const-string v0, "sign_type=\"RSA\""

    return-object v0
.end method

.method R0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    const-string v1, "papawallet"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->t:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    const-string v1, "red_envelope"

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setWallet_type(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->Y0(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    return-void
.end method

.method T0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    const-string v1, "papawallet"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->t:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    const-string v1, "wallet"

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setWallet_type(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->Y0(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    return-void
.end method

.method public W0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {p1, v0}, Lcom/join/mgps/Util/v1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Y0(Lcom/join/mgps/dto/PayCenterOrderRequest;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget v0, v0, Lcom/join/mgps/dto/PapayOrder;->ORDERTYPE:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->b1(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lcom/join/mgps/dto/PayGameDataRequest;

    invoke-direct {v0}, Lcom/join/mgps/dto/PayGameDataRequest;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getApp_key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayGameDataRequest;->setConsole_app_key(Ljava/lang/String;)V

    const-string v1, ""

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayGameDataRequest;->setDevice_id(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PayGameDataRequest;->setPay_type(Ljava/lang/String;)V

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getOpenuid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PayGameDataRequest;->setUid(Ljava/lang/String;)V

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/j;->y()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayGameDataRequest;->setApp_ver(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/activity/PayNowActivity;->showLoding()V

    .line 10
    new-instance v1, Lcom/join/mgps/activity/PayNowActivity$c;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/PayNowActivity$c;-><init>(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    invoke-static {v0, v1}, Lcom/join/mgps/rpc/m;->g(Lcom/join/mgps/dto/PayGameDataRequest;Lcom/join/android/app/common/http/b;)V

    :goto_1
    return-void
.end method

.method afterview()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/m;->h()Lcom/join/mgps/rpc/impl/m;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->y:Lcom/join/mgps/rpc/n;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/PayNowActivity;->A:Landroid/app/Activity;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/MApplication;

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->x:Lcom/MApplication;

    .line 4
    invoke-virtual {v0, p0}, Lcom/MApplication;->k(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->F:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    const-string v1, "wx5e0a2e02d261de17"

    .line 6
    invoke-interface {v0, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5546\u54c1\uff1a<font color=\'0x3b3b3b\' >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget-object v2, v2, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 8
    new-instance v0, Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-direct {v0}, Lcom/join/mgps/dto/PayCenterOrderRequest;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->t:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "alipaymobilesign"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "\u4f7f\u7528\u652f\u4ed8\u5b9d\u652f\u4ed8<font color=\'#fa8819\' >"

    const v4, 0x7f110260

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto/16 :goto_1

    :cond_0
    const-string v1, "ziweixingh5"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "weixinmobilenew"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "swiftpasspapa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v1, "upmpmobilekongjian"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f7f\u7528\u94f6\u884c\u5361\u652f\u4ed8<font color=\'#fa8819\' >"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "upmpmobilekongjian1"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f7f\u7528\u4fe1\u7528\u5361\u652f\u4ed8<font color=\'#fa8819\' >"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "wallet"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget v0, v0, Lcom/join/mgps/dto/PapayOrder;->PAYORRECHARGE:I

    if-ne v0, v5, :cond_4

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f7f\u7528\u996d\u7968\u652f\u4ed8<font color=\'#fa8819\' >"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto/16 :goto_1

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto/16 :goto_1

    :cond_5
    const-string v1, "red_envelope"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget v0, v0, Lcom/join/mgps/dto/PapayOrder;->PAYORRECHARGE:I

    if-ne v0, v5, :cond_6

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f7f\u7528\u7ea2\u5305\u652f\u4ed8<font color=\'#fa8819\' >"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_1

    .line 30
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_1

    .line 32
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f7f\u7528\u5fae\u4fe1\u652f\u4ed8<font color=\'#fa8819\' >"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 34
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget-object v0, v0, Lcom/join/mgps/dto/PapayOrder;->MONEY_AMOUNT:Ljava/lang/String;

    .line 35
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 36
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##0.00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v2, v0

    .line 37
    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setPay_rmb(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iput-object v0, v1, Lcom/join/mgps/dto/PapayOrder;->MONEY_AMOUNT:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u91d1\u989d\uff1a<font color=\'0xfc3f5e\' > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget-object v2, v2, Lcom/join/mgps/dto/PapayOrder;->MONEY_AMOUNT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5143</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget-object v1, v1, Lcom/join/mgps/dto/PapayOrder;->NOTIFY_URI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setApp_callback_url(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget-object v1, v1, Lcom/join/mgps/dto/PapayOrder;->APP_EXT1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setApp_extra1(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget-object v1, v1, Lcom/join/mgps/dto/PapayOrder;->APP_EXT2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setApp_extra2(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget-object v1, v1, Lcom/join/mgps/dto/PapayOrder;->APPKEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setApp_key(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget-object v1, v1, Lcom/join/mgps/dto/PapayOrder;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setApp_name(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget-object v1, v1, Lcom/join/mgps/dto/PapayOrder;->APP_ORDER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setApp_order_id(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget-object v1, v1, Lcom/join/mgps/dto/PapayOrder;->APP_USER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setApp_user_name(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setImei(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget-object v1, v1, Lcom/join/mgps/dto/PapayOrder;->APP_USER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setUid(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget v1, v1, Lcom/join/mgps/dto/PapayOrder;->PA_OPEN_UID:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setOpenuid(I)V

    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setPackage_name(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget-object v1, v1, Lcom/join/mgps/dto/PapayOrder;->TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setToken(Ljava/lang/String;)V

    const v0, 0x5f5e100

    .line 53
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget v2, v1, Lcom/join/mgps/dto/PapayOrder;->APP_SERVER:I

    if-lez v2, :cond_9

    add-int/2addr v0, v2

    .line 54
    :cond_9
    iget v1, v1, Lcom/join/mgps/dto/PapayOrder;->APP_DISTRICT:I

    if-lez v1, :cond_a

    mul-int/lit16 v1, v1, 0x2710

    add-int/2addr v0, v1

    .line 55
    :cond_a
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setSid(I)V

    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget-object v1, v1, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setProduct_id(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget-object v1, v1, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setProduct_name(Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/join/mgps/activity/PayNowActivity;->a1()V

    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget v1, v0, Lcom/join/mgps/dto/PapayOrder;->PAYORRECHARGE:I

    if-ne v1, v5, :cond_f

    .line 60
    iget v0, v0, Lcom/join/mgps/dto/PapayOrder;->PAYSHOWTYPE:I

    const/16 v1, 0x8

    if-eqz v0, :cond_e

    const/4 v2, 0x0

    if-eq v0, v5, :cond_d

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    goto :goto_2

    .line 61
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 63
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 65
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 67
    :cond_e
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    const-string v1, "1228139"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setResource_id(Ljava/lang/String;)V

    goto :goto_3

    .line 70
    :cond_f
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    const-string v1, "1264139"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setResource_id(Ljava/lang/String;)V

    .line 71
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget v0, v0, Lcom/join/mgps/dto/PapayOrder;->PAYTYPE:I

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    .line 72
    :pswitch_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/PayNowActivity;->c1()V

    goto :goto_4

    .line 73
    :pswitch_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/PayNowActivity;->h1()V

    goto :goto_4

    .line 74
    :pswitch_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PayNowActivity;->R0()V

    goto :goto_4

    .line 75
    :pswitch_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/PayNowActivity;->T0()V

    goto :goto_4

    .line 76
    :pswitch_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/PayNowActivity;->O0()V

    goto :goto_4

    .line 77
    :pswitch_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/PayNowActivity;->d1()V

    goto :goto_4

    .line 78
    :pswitch_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/PayNowActivity;->g1()V

    goto :goto_4

    .line 79
    :pswitch_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/PayNowActivity;->M0()V

    :goto_4
    return-void

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u5145\u503c\u91d1\u989d\u4e0d\u5408\u6cd5"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b1(Lcom/join/mgps/dto/PayCenterOrderRequest;)V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "paytime1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/join/mgps/activity/PayNowActivity;->J:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "paytime"

    invoke-static {v4, v2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-wide v5, p0, Lcom/join/mgps/activity/PayNowActivity;->J:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x1f4

    cmp-long v2, v5, v7

    if-gez v2, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "paytime222"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/join/mgps/activity/PayNowActivity;->J:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ziweixingh5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    iput-wide v0, p0, Lcom/join/mgps/activity/PayNowActivity;->J:J

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->A:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->A:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110206

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/PayNowActivity;->showLoding()V

    .line 10
    new-instance v0, Lcom/join/mgps/activity/PayNowActivity$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/PayNowActivity$d;-><init>(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    invoke-static {p1, v0}, Lcom/join/mgps/rpc/m;->f(Lcom/join/mgps/dto/PayCenterOrderRequest;Lcom/join/android/app/common/http/b;)V

    return-void
.end method

.method c1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    const-string v1, "swiftpasspapa"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->Y0(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    return-void
.end method

.method checkToken()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    iget v1, p0, Lcom/join/mgps/activity/PayNowActivity;->H:I

    if-lez v1, :cond_2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 2
    iput v1, p0, Lcom/join/mgps/activity/PayNowActivity;->H:I

    const-wide/16 v3, 0x2710

    .line 3
    :try_start_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 5
    invoke-virtual {v5}, Lcom/join/mgps/dto/AccountBean;->getAccount_type()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 6
    new-instance v6, Lcom/join/mgps/dto/AccountUserInfoRequestBean;

    invoke-direct {v6}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;-><init>()V

    .line 7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setUid(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v5}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setToken(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v6, v0}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 10
    invoke-static {v6}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setSign(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v6}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->h(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcom/join/mgps/activity/PayNowActivity;->H:I

    .line 16
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/join/mgps/dto/AccountBean;->setVip_level(I)V

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getSvip_level()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/join/mgps/dto/AccountBean;->setSvip_level(I)V

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_exp_time()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/join/mgps/dto/AccountBean;->setVip_exp_time(J)V

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getIs_anchor()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountBean;->setIs_anchor(I)V

    .line 21
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 22
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->L(Landroid/content/Context;)V

    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->I:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->I:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->I:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method d1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    const-string v1, "upmpmobilekongjian"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->t:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->Y0(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    return-void
.end method

.method e1(Landroid/content/Intent;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.wechatofficialpapa"
        }
    .end annotation

    const-string v0, "out_trade_no"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "return_code"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "return_msg"

    .line 3
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SUCCESS"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "ziweixingh5"

    if-eqz v0, :cond_0

    .line 7
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 9
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    const-string v0, "\u652f\u4ed8\u6210\u529f"

    .line 10
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->U0(Lcom/join/mgps/dto/PapayResult;)V

    goto :goto_0

    :cond_0
    const-string v0, "CANCEL"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 13
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 14
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 15
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    const-string v0, "\u83b7\u53d6\u8ba2\u5355\u53f7\u5931\u8d25"

    .line 16
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->U0(Lcom/join/mgps/dto/PapayResult;)V

    goto :goto_0

    .line 18
    :cond_1
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 20
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->U0(Lcom/join/mgps/dto/PapayResult;)V

    :cond_2
    :goto_0
    return-void
.end method

.method f1()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    const-string v1, "weixinmobilenew"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->t:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget v0, v0, Lcom/join/mgps/dto/PapayOrder;->PAYTYPE:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    const-string v1, "wechatofficialpapa"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->t:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    const-string v1, "swiftpasspapa"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->t:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    const-string v1, "ziweixingh5"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->t:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->t:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->Y0(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    return-void
.end method

.method g1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    const-string v1, "weixinmobilenew"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->Y0(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    return-void
.end method

.method h1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    const-string v1, "ziweixingh5"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->Y0(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    return-void
.end method

.method ok()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->t:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget v1, v1, Lcom/join/mgps/dto/PapayOrder;->PAYORRECHARGE:I

    const-string v2, "red_envelope"

    const-string v3, "wallet"

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "papawallet"

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v0, v4}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setWallet_type(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v0, v4}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setWallet_type(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->t:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "alipaymobilesign"

    if-eqz v1, :cond_3

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->t:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->Y0(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const-string v0, "\u652f\u4ed8\u6210\u529f"

    const/4 v1, 0x1

    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    const/4 v3, 0x2

    const/16 v4, 0x2710

    if-ne p1, v4, :cond_2

    const/16 p1, 0x271a

    if-ne p2, p1, :cond_0

    .line 1
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 2
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {p2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->U0(Lcom/join/mgps/dto/PapayResult;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x271b

    if-ne p2, p1, :cond_1

    .line 6
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 7
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 8
    iget-object p2, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {p2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->U0(Lcom/join/mgps/dto/PapayResult;)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 12
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 13
    iget-object p2, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {p2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->U0(Lcom/join/mgps/dto/PapayResult;)V

    :goto_0
    return-void

    :cond_2
    const-string p1, "success"

    const/16 v4, 0x8

    if-eqz p3, :cond_5

    .line 16
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "resultCode"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/join/mgps/activity/PayNowActivity;->E:I

    if-ne v6, v4, :cond_4

    .line 18
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 19
    new-instance v4, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v4}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 20
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 21
    iget-object v5, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v5}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, v4}, Lcom/join/mgps/activity/PayNowActivity;->U0(Lcom/join/mgps/dto/PapayResult;)V

    goto :goto_1

    .line 24
    :cond_3
    new-instance v4, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v4}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 25
    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 26
    iget-object v5, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v5}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, v4}, Lcom/join/mgps/activity/PayNowActivity;->U0(Lcom/join/mgps/dto/PapayResult;)V

    goto :goto_1

    .line 29
    :cond_4
    iget v5, p0, Lcom/join/mgps/activity/PayNowActivity;->E:I

    if-ne v5, v4, :cond_6

    .line 30
    new-instance v4, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v4}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 31
    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 32
    iget-object v5, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v5}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, v4}, Lcom/join/mgps/activity/PayNowActivity;->U0(Lcom/join/mgps/dto/PapayResult;)V

    goto :goto_1

    .line 35
    :cond_5
    iget v5, p0, Lcom/join/mgps/activity/PayNowActivity;->E:I

    if-ne v5, v4, :cond_6

    .line 36
    new-instance v4, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v4}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 37
    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 38
    iget-object v5, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v5}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, v4}, Lcom/join/mgps/activity/PayNowActivity;->U0(Lcom/join/mgps/dto/PapayResult;)V

    :cond_6
    :goto_1
    if-nez p2, :cond_7

    .line 41
    new-instance v4, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v4}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 42
    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 43
    iget-object v5, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v5}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, v4}, Lcom/join/mgps/activity/PayNowActivity;->U0(Lcom/join/mgps/dto/PapayResult;)V

    :cond_7
    const/16 v4, 0x1020

    if-ne p2, v4, :cond_8

    .line 46
    invoke-direct {p0, p3}, Lcom/join/mgps/activity/PayNowActivity;->V0(Landroid/content/Intent;)V

    :cond_8
    if-nez p3, :cond_9

    return-void

    .line 47
    :cond_9
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "pay_result"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 48
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    return-void

    .line 49
    :cond_a
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 50
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 51
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 52
    iget-object p2, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {p2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->U0(Lcom/join/mgps/dto/PapayResult;)V

    goto :goto_2

    :cond_b
    const-string p1, "fail"

    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 56
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 57
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 58
    iget-object p2, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {p2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->U0(Lcom/join/mgps/dto/PapayResult;)V

    goto :goto_2

    :cond_c
    const-string p1, "cancel"

    .line 61
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 62
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    const/4 p2, 0x3

    .line 63
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 64
    iget-object p2, p0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {p2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    const-string p2, "\u652f\u4ed8\u53d6\u6d88"

    .line 65
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->U0(Lcom/join/mgps/dto/PapayResult;)V

    :cond_d
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    iget v0, v0, Lcom/join/mgps/dto/PapayOrder;->PAYORRECHARGE:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->v:Lcom/join/mgps/dto/IntentDataMain;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    return-void
.end method
