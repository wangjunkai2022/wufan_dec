.class Lcn/sharesdk/framework/f$7;
.super Ljava/lang/Thread;
.source "PlatformImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/f;->b([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/f;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/framework/f$7;->a:Lcn/sharesdk/framework/f;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->isForb()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/a;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 3
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->isAuth()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/f$7;->a:Lcn/sharesdk/framework/f;

    invoke-static {v0}, Lcn/sharesdk/framework/f;->c(Lcn/sharesdk/framework/f;)Z

    .line 5
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v1, "The user is using the privacy version without a popup authorize 001"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_2
    iget-object v1, p0, Lcn/sharesdk/framework/f$7;->a:Lcn/sharesdk/framework/f;

    invoke-static {v1}, Lcn/sharesdk/framework/f;->c(Lcn/sharesdk/framework/f;)Z

    .line 7
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The user is using the version before going to the second pop-up box authorize 001 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 8
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authorize(final String[] permissions) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void
.end method
