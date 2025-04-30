.class final Lcn/sharesdk/framework/ShareSDK$1;
.super Ljava/lang/Object;
.source "ShareSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/ShareSDK;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    new-instance v0, Lcn/sharesdk/framework/ShareSDK$1$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/sharesdk/framework/ShareSDK$1$1;-><init>(Lcn/sharesdk/framework/ShareSDK$1;Landroid/os/Looper;)V

    .line 3
    new-instance v1, Lcn/sharesdk/framework/ShareSDK$1$2;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/framework/ShareSDK$1$2;-><init>(Lcn/sharesdk/framework/ShareSDK$1;Landroid/os/Handler;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
