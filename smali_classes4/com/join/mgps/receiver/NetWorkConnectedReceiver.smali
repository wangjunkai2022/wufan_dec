.class public Lcom/join/mgps/receiver/NetWorkConnectedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetWorkConnectedReceiver.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/receiver/NetWorkConnectedReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/receiver/NetWorkConnectedReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "wifi_state"

    .line 3
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    :cond_0
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "networkInfo"

    .line 5
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    check-cast p1, Landroid/net/NetworkInfo;

    .line 7
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    .line 8
    sget-object p2, Lcom/join/mgps/receiver/NetWorkConnectedReceiver$a;->a:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    const-string p2, "dis"

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
