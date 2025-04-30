.class Lcn/sharesdk/framework/f$6;
.super Ljava/lang/Object;
.source "PlatformImpl.java"

# interfaces
.implements Lcn/sharesdk/framework/AgreementDialog$OnDialogDismiss;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/f;->a([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/framework/f;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/f;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/framework/f$6;->b:Lcn/sharesdk/framework/f;

    iput-object p2, p0, Lcn/sharesdk/framework/f$6;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consent()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/a/a/e;->a()Lcn/sharesdk/framework/a/a/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/a/a/e;->a(Z)V

    .line 2
    iget-object v0, p0, Lcn/sharesdk/framework/f$6;->b:Lcn/sharesdk/framework/f;

    iget-object v1, p0, Lcn/sharesdk/framework/f$6;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/f;[Ljava/lang/String;)V

    return-void
.end method

.method public refuse()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/f$6;->b:Lcn/sharesdk/framework/f;

    invoke-static {v0}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/sharesdk/framework/f$6;->b:Lcn/sharesdk/framework/f;

    invoke-static {v0}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/framework/f$6;->b:Lcn/sharesdk/framework/f;

    invoke-static {v1}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/framework/d;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method
