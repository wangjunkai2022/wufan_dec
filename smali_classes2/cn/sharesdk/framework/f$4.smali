.class Lcn/sharesdk/framework/f$4;
.super Ljava/lang/Thread;
.source "PlatformImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/f;->c(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcn/sharesdk/framework/f;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/f;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    iput p2, p0, Lcn/sharesdk/framework/f$4;->a:I

    iput-object p3, p0, Lcn/sharesdk/framework/f$4;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->isForb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v0}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v1

    iget v2, p0, Lcn/sharesdk/framework/f$4;->a:I

    invoke-static {v0, v1, v2}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/d;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/16 :goto_1

    .line 3
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->isAuth()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v0}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5
    iget-object v0, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v0}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v1}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    iget v2, p0, Lcn/sharesdk/framework/f$4;->a:I

    new-instance v3, Lcom/mob/commons/dialog/PolicyThrowable;

    invoke-direct {v3}, Lcom/mob/commons/dialog/PolicyThrowable;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/framework/d;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_1

    .line 6
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v0}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v1

    iget v2, p0, Lcn/sharesdk/framework/f$4;->a:I

    invoke-static {v0, v1, v2}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/d;I)V

    goto/16 :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v0}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    iget v1, p0, Lcn/sharesdk/framework/f$4;->a:I

    iget-object v2, p0, Lcn/sharesdk/framework/f$4;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/Platform;->checkAuthorize(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    iget v1, p0, Lcn/sharesdk/framework/f$4;->a:I

    iget-object v2, p0, Lcn/sharesdk/framework/f$4;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/f;->b(ILjava/lang/Object;)V

    .line 10
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v1, "The user is using the privacy version without a popup newThreadJob 002"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 11
    :catchall_0
    :try_start_2
    invoke-static {}, Lcn/sharesdk/framework/ProvicyCanContinue;->a()Lcn/sharesdk/framework/ProvicyCanContinue;

    move-result-object v0

    new-instance v1, Lcn/sharesdk/framework/f$4$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/framework/f$4$1;-><init>(Lcn/sharesdk/framework/f$4;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/ProvicyCanContinue;->a(Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 12
    :try_start_3
    invoke-static {}, Lcn/sharesdk/framework/a;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    iget-object v1, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v1}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v2

    iget v3, p0, Lcn/sharesdk/framework/f$4;->a:I

    invoke-static {v1, v2, v3}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/d;I)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object v1, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v1}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    iget v2, p0, Lcn/sharesdk/framework/f$4;->a:I

    iget-object v3, p0, Lcn/sharesdk/framework/f$4;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/Platform;->checkAuthorize(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    iget-object v1, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    iget v2, p0, Lcn/sharesdk/framework/f$4;->a:I

    iget-object v3, p0, Lcn/sharesdk/framework/f$4;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/f;->b(ILjava/lang/Object;)V

    .line 16
    :cond_4
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The user is using the non-privacy version newThreadJob 002 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    .line 17
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new Thread(getThreadName(action)) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_5
    :goto_1
    return-void
.end method
