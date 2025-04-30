.class Lcn/sharesdk/framework/Platform$1;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/Platform;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/Platform;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/framework/Platform$1;->a:Lcn/sharesdk/framework/Platform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/Platform$1;->a:Lcn/sharesdk/framework/Platform;

    iget-object v0, v0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/utils/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcn/sharesdk/framework/Platform$1;->a:Lcn/sharesdk/framework/Platform;

    iget-object v0, v0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p1, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    new-instance v1, Lcn/sharesdk/framework/Platform$1$3;

    invoke-direct {v1, p0, p1, p2}, Lcn/sharesdk/framework/Platform$1$3;-><init>(Lcn/sharesdk/framework/Platform$1;Lcn/sharesdk/framework/Platform;I)V

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/Platform$1;->a:Lcn/sharesdk/framework/Platform;

    iget-object v0, v0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/utils/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcn/sharesdk/framework/Platform$1;->a:Lcn/sharesdk/framework/Platform;

    iget-object v0, v0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    new-instance v1, Lcn/sharesdk/framework/Platform$1$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/sharesdk/framework/Platform$1$2;-><init>(Lcn/sharesdk/framework/Platform$1;Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/Platform$1;->a:Lcn/sharesdk/framework/Platform;

    iget-object v0, v0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/utils/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcn/sharesdk/framework/Platform$1;->a:Lcn/sharesdk/framework/Platform;

    iget-object v0, v0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    new-instance v1, Lcn/sharesdk/framework/Platform$1$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/sharesdk/framework/Platform$1$1;-><init>(Lcn/sharesdk/framework/Platform$1;Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
