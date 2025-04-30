.class public Lcom/join/mgps/broadcast/WifiapBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "WifiapBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/broadcast/WifiapBroadcast$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/broadcast/WifiapBroadcast$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/net/NetworkInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/broadcast/WifiapBroadcast;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/broadcast/WifiapBroadcast;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/broadcast/WifiapBroadcast;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/broadcast/WifiapBroadcast$a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/mgps/broadcast/WifiapBroadcast;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/broadcast/WifiapBroadcast;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/join/mgps/broadcast/WifiapBroadcast;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/broadcast/WifiapBroadcast$a;

    invoke-interface {p1}, Lcom/join/mgps/broadcast/WifiapBroadcast$a;->scanResultsAvailable()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED | "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wifi_state"

    const/4 v2, -0x1

    .line 6
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "previous_wifi_state"

    .line 7
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/broadcast/WifiapBroadcast;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/join/mgps/broadcast/WifiapBroadcast;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/broadcast/WifiapBroadcast$a;

    invoke-interface {p1}, Lcom/join/mgps/broadcast/WifiapBroadcast$a;->wifiStatusNotification()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "networkInfo"

    .line 11
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    iput-object p1, p0, Lcom/join/mgps/broadcast/WifiapBroadcast;->b:Landroid/net/NetworkInfo;

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "android.net.wifi.STATE_CHANGE | "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/join/mgps/broadcast/WifiapBroadcast;->b:Landroid/net/NetworkInfo;

    .line 13
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    iget-object p1, p0, Lcom/join/mgps/broadcast/WifiapBroadcast;->b:Landroid/net/NetworkInfo;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_2

    .line 15
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/broadcast/WifiapBroadcast;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 16
    iget-object p1, p0, Lcom/join/mgps/broadcast/WifiapBroadcast;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/broadcast/WifiapBroadcast$a;

    invoke-interface {p1}, Lcom/join/mgps/broadcast/WifiapBroadcast$a;->handleConnectChange()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
