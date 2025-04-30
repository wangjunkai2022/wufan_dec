.class Lcn/sharesdk/framework/f$4$1;
.super Ljava/lang/Object;
.source "PlatformImpl.java"

# interfaces
.implements Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/f$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/f$4;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/f$4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/framework/f$4$1;->a:Lcn/sharesdk/framework/f$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinue()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/sharesdk/framework/f$4$1;->a:Lcn/sharesdk/framework/f$4;

    iget-object v0, v0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v0}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/framework/f$4$1;->a:Lcn/sharesdk/framework/f$4;

    iget v2, v2, Lcn/sharesdk/framework/f$4;->a:I

    invoke-static {v0, v1, v2}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/d;I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/f$4$1;->a:Lcn/sharesdk/framework/f$4;

    iget-object v0, v0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v0}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/framework/f$4$1;->a:Lcn/sharesdk/framework/f$4;

    iget v2, v1, Lcn/sharesdk/framework/f$4;->a:I

    iget-object v1, v1, Lcn/sharesdk/framework/f$4;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/framework/Platform;->checkAuthorize(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/sharesdk/framework/f$4$1;->a:Lcn/sharesdk/framework/f$4;

    iget-object v1, v0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    iget v2, v0, Lcn/sharesdk/framework/f$4;->a:I

    iget-object v0, v0, Lcn/sharesdk/framework/f$4;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/framework/f;->b(ILjava/lang/Object;)V

    .line 5
    :cond_1
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v1, "The user is using the framed privacy version newThreadJob 002"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/f$4$1;->a:Lcn/sharesdk/framework/f$4;

    iget-object v0, v0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v0}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/sharesdk/framework/f$4$1;->a:Lcn/sharesdk/framework/f$4;

    iget-object v0, v0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v0}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/framework/f$4$1;->a:Lcn/sharesdk/framework/f$4;

    iget-object v1, v1, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v1}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/framework/f$4$1;->a:Lcn/sharesdk/framework/f$4;

    iget v2, v2, Lcn/sharesdk/framework/f$4;->a:I

    invoke-virtual {v0, v1, v2, p1}, Lcn/sharesdk/framework/d;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/f$4$1;->a:Lcn/sharesdk/framework/f$4;

    iget-object v0, v0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v0}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/sharesdk/framework/f$4$1;->a:Lcn/sharesdk/framework/f$4;

    iget-object v0, v0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v0}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/framework/f$4$1;->a:Lcn/sharesdk/framework/f$4;

    iget-object v1, v1, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v1}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/framework/f$4$1;->a:Lcn/sharesdk/framework/f$4;

    iget v2, v2, Lcn/sharesdk/framework/f$4;->a:I

    new-instance v3, Lcom/mob/commons/dialog/PolicyThrowable;

    invoke-direct {v3}, Lcom/mob/commons/dialog/PolicyThrowable;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/framework/d;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method
