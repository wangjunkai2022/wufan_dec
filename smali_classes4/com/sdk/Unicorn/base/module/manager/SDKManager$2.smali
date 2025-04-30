.class public final Lcom/sdk/Unicorn/base/module/manager/SDKManager$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/Unicorn/base/module/manager/SDKManager;->req(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic val$connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/module/manager/SDKManager$2;->val$connectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sdk/Unicorn/base/module/manager/SDKManager$2;->val$connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    :goto_0
    iget-object p1, p0, Lcom/sdk/Unicorn/base/module/manager/SDKManager$2;->val$connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
