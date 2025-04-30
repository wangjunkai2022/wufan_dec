.class Lcn/sharesdk/framework/ShareSDK$1$1;
.super Landroid/os/Handler;
.source "ShareSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/ShareSDK$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/ShareSDK$1;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/ShareSDK$1;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/framework/ShareSDK$1$1;->a:Lcn/sharesdk/framework/ShareSDK$1;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    if-eqz p1, :cond_1

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 3
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->d()Lcn/sharesdk/framework/i;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->e()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->e()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 6
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->d()Lcn/sharesdk/framework/i;

    move-result-object p1

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->e()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/framework/i;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->d()Lcn/sharesdk/framework/i;

    move-result-object p1

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->g()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/i;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
