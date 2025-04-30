.class Lcn/sharesdk/framework/ShareSDK$1$2;
.super Ljava/lang/Object;
.source "ShareSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/ShareSDK$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcn/sharesdk/framework/ShareSDK$1;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/ShareSDK$1;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/framework/ShareSDK$1$2;->b:Lcn/sharesdk/framework/ShareSDK$1;

    iput-object p2, p0, Lcn/sharesdk/framework/ShareSDK$1$2;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->isAuth()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/sharesdk/framework/ShareSDK$1$2;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/mob/MobSDK;->isForb()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/ShareSDK$1$2;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 6
    iput v1, v0, Landroid/os/Message;->what:I

    .line 7
    iget-object v1, p0, Lcn/sharesdk/framework/ShareSDK$1$2;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->h()I

    .line 9
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->i()I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3

    .line 10
    iget-object v0, p0, Lcn/sharesdk/framework/ShareSDK$1$2;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShareSDK , Privacy Agreement is not agree, Please agree to the privacy agreement first "

    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 12
    iget-object v0, p0, Lcn/sharesdk/framework/ShareSDK$1$2;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
