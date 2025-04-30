.class public Lcom/sdk/Unicorn/base/module/manager/SDKManager$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/Unicorn/base/module/manager/SDKManager;->forceSendRequestByMobileData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/sdk/Unicorn/base/module/manager/SDKManager;


# direct methods
.method public constructor <init>(Lcom/sdk/Unicorn/base/module/manager/SDKManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/module/manager/SDKManager$1;->this$0:Lcom/sdk/Unicorn/base/module/manager/SDKManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    return-void
.end method
