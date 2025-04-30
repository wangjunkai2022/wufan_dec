.class public Lcom/join/mgps/activity/BuildQRCodeActivity;
.super Lcom/join/mgps/baseactivity/BaseLoadingActivity;
.source "BuildQRCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/BuildQRCodeActivity$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0026
.end annotation


# static fields
.field private static final A:I = 0x2

.field private static final z:Ljava/lang/String; = "BuildQRCodeActivity"


# instance fields
.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f091033
    .end annotation
.end field

.field e:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0901fd
    .end annotation
.end field

.field f:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        value = 0x7f1103ab
    .end annotation
.end field

.field g:Landroid/view/ViewStub;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f090ca3
    .end annotation
.end field

.field h:Landroid/widget/ImageView;

.field i:Landroid/widget/TextView;

.field j:Landroid/content/Context;

.field k:Lcom/join/mgps/helper/ApWifiManager;

.field l:Lcom/join/mgps/Util/f;

.field m:Ljava/util/concurrent/ExecutorService;

.field n:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field o:Lcom/join/mgps/task/a;

.field private p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Z

.field s:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        value = 0x7f11015e
    .end annotation
.end field

.field t:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        value = 0x7f11015d
    .end annotation
.end field

.field u:Lcom/join/mgps/activity/BuildQRCodeActivity$b;

.field v:Z

.field w:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
        value = "ssid"
    .end annotation
.end field

.field x:Lcom/join/mgps/service/SocketServerService$a;

.field y:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->m:Ljava/util/concurrent/ExecutorService;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->n:Ljava/util/concurrent/Future;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->o:Lcom/join/mgps/task/a;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->p:Ljava/lang/String;

    const-string v1, ""

    .line 6
    iput-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->q:Ljava/lang/String;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->r:Z

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->v:Z

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->x:Lcom/join/mgps/service/SocketServerService$a;

    .line 10
    new-instance v0, Lcom/join/mgps/activity/BuildQRCodeActivity$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/BuildQRCodeActivity$a;-><init>(Lcom/join/mgps/activity/BuildQRCodeActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->y:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic J0()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/activity/BuildQRCodeActivity;->z:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method K0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->H0()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->R0()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->S0()V

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->p:Ljava/lang/String;

    const-string v0, "12345678"

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->q:Ljava/lang/String;

    .line 7
    new-instance v0, Lcom/join/mgps/event/c;

    invoke-direct {v0}, Lcom/join/mgps/event/c;-><init>()V

    const/4 v1, 0x1

    .line 8
    iput v1, v0, Lcom/join/mgps/event/c;->a:I

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->p:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/event/c;->b:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->q:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/event/c;->c:Ljava/lang/String;

    .line 11
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->k:Lcom/join/mgps/helper/ApWifiManager;

    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/helper/ApWifiManager;->createApWifi(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :goto_0
    new-instance v0, Lcom/join/mgps/task/a;

    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/task/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->o:Lcom/join/mgps/task/a;

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->m:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->n:Ljava/util/concurrent/Future;

    return-void
.end method

.method L0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->g:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090ca2

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->h:Landroid/widget/ImageView;

    const v1, 0x7f090ebc

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->i:Landroid/widget/TextView;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u5c06\u70ed\u70b9\u540d\u79f0\u8bbe\u7f6e\u4e3a\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":Pwd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->j:Landroid/content/Context;

    invoke-static {v0, v1}, Lv1/a;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->N0()V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->V0()V

    .line 12
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/p;->j0(Ljava/lang/String;)V

    return-void
.end method

.method M0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->k:Lcom/join/mgps/helper/ApWifiManager;

    invoke-virtual {v0}, Lcom/join/mgps/helper/ApWifiManager;->closeWifiAp()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->stopService()V

    return-void
.end method

.method N0()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/service/SocketServerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->y:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method O0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->o:Lcom/join/mgps/task/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/task/a;->c()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->n:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->n:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->m:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->m:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_2
    return-void
.end method

.method P0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterInject;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->setLoadingHintMsg(Ljava/lang/String;)V

    return-void
.end method

.method Q0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->init()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->initView()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->e:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public R0()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 3
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->q:Ljava/lang/String;

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/join/mgps/activity/BuildQRCodeActivity;->z:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRandomPwd: \u968f\u673a\u76846\u4f4d\u5bc6\u7801\u662f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    return-void
.end method

.method S0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/h;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->p:Ljava/lang/String;

    return-void
.end method

.method T0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f09013e
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->M0()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method U0()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/GameTransferActivity_;->U1(Landroid/content/Context;)Lcom/join/mgps/activity/GameTransferActivity_$k;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GameTransferActivity_$k;->a(I)Lcom/join/mgps/activity/GameTransferActivity_$k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method V0()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/join/mgps/activity/BuildQRCodeActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/BuildQRCodeActivity$b;-><init>(Lcom/join/mgps/activity/BuildQRCodeActivity;)V

    iput-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->u:Lcom/join/mgps/activity/BuildQRCodeActivity$b;

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public crateApWifiStatus(Lcom/join/mgps/event/c;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget p1, p1, Lcom/join/mgps/event/c;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/String;

    .line 2
    sget-object v3, Lcom/join/mgps/activity/BuildQRCodeActivity;->z:Ljava/lang/String;

    aput-object v3, p1, v0

    const-string v4, "onSuccess: \u70ed\u70b9\u521b\u5efa\u6210\u529f"

    aput-object v4, p1, v2

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    new-array p1, v1, [Ljava/lang/String;

    aput-object v3, p1, v0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crateApWifiStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->n:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ":::\u662f\u5426\u53d6\u6d88:::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->n:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->E0()V

    .line 6
    iget-boolean p1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->r:Z

    if-nez p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->L0()V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->n:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->n:Ljava/util/concurrent/Future;

    invoke-interface {p1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 10
    :cond_2
    iput-boolean v2, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->r:Z

    goto :goto_0

    :cond_3
    new-array p1, v1, [Ljava/lang/String;

    .line 11
    sget-object v1, Lcom/join/mgps/activity/BuildQRCodeActivity;->z:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "onFailed: \u70ed\u70b9\u521b\u5efa\u5931\u8d25"

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->t:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->setmLoadingHintMsgLoading(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getLoadingLayoutResID()I
    .locals 1

    const v0, 0x7f0901fc

    return v0
.end method

.method public getLoadingMarginTop()I
    .locals 4

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HM 1SLTETD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 3
    invoke-super {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->getLoadingMarginTop()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    double-to-int v0, v2

    return v0

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->getLoadingMarginTop()I

    move-result v0

    return v0
.end method

.method init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->j:Landroid/content/Context;

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->m:Ljava/util/concurrent/ExecutorService;

    .line 3
    new-instance v0, Lcom/join/mgps/helper/ApWifiManager;

    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/helper/ApWifiManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->k:Lcom/join/mgps/helper/ApWifiManager;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/f;->i(Landroid/content/Context;)Lcom/join/mgps/Util/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->l:Lcom/join/mgps/Util/f;

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->t(Ljava/lang/Object;)V

    return-void
.end method

.method initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->K0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->y(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->O0()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->u:Lcom/join/mgps/activity/BuildQRCodeActivity$b;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->M0()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onSocketStatusEvent(Lcom/join/mgps/socket/entity/f;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 1
    sget-object v2, Lcom/join/mgps/activity/BuildQRCodeActivity;->z:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v4, "onSocketStatusEvent: 0000"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget p1, p1, Lcom/join/mgps/socket/entity/f;->a:I

    if-eq p1, v5, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->stopService()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->M0()V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    new-array p1, v0, [Ljava/lang/String;

    aput-object v2, p1, v3

    const-string v0, "onSocketStatusEvent: \u521b\u5efa\u6210\u529f"

    aput-object v0, p1, v5

    .line 6
    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->U0()V

    :goto_0
    return-void
.end method

.method stopService()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->v:Z

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->x:Lcom/join/mgps/service/SocketServerService$a;

    invoke-virtual {v1, v0}, Lcom/join/mgps/service/SocketServerService$a;->setMonitor(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->y:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/service/SocketServerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method
