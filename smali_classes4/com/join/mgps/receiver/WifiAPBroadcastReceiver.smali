.class public abstract Lcom/join/mgps/receiver/WifiAPBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiAPBroadcastReceiver.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/receiver/WifiAPBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/receiver/WifiAPBroadcastReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const-string v0, "wifi_state"

    .line 3
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    rem-int/lit8 p1, p1, 0xa

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wifi Ap state--->>>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p2, 0x3

    if-ne p2, p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/receiver/WifiAPBroadcastReceiver;->b()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    if-ne p2, p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/receiver/WifiAPBroadcastReceiver;->a()V

    :cond_2
    :goto_0
    return-void
.end method
