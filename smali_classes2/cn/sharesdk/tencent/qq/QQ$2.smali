.class Lcn/sharesdk/tencent/qq/QQ$2;
.super Ljava/lang/Object;
.source "QQ.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qq/QQ;->doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/Platform$ShareParams;

.field final synthetic b:Lcn/sharesdk/tencent/qq/QQ;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qq/QQ;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/QQ$2;->b:Lcn/sharesdk/tencent/qq/QQ;

    iput-object p2, p0, Lcn/sharesdk/tencent/qq/QQ$2;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ$2;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {p1}, Lcn/sharesdk/tencent/qq/QQ;->p(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ$2;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {p1}, Lcn/sharesdk/tencent/qq/QQ;->q(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object p1

    iget-object p2, p0, Lcn/sharesdk/tencent/qq/QQ$2;->b:Lcn/sharesdk/tencent/qq/QQ;

    const/16 v0, 0x9

    invoke-interface {p1, p2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 1
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
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object p2, p0, Lcn/sharesdk/tencent/qq/QQ$2;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    const-string p3, "ShareParams"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Lcn/sharesdk/tencent/qq/QQ$2;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {p2}, Lcn/sharesdk/tencent/qq/QQ;->n(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcn/sharesdk/tencent/qq/QQ$2;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {p2}, Lcn/sharesdk/tencent/qq/QQ;->o(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object p2

    iget-object p3, p0, Lcn/sharesdk/tencent/qq/QQ$2;->b:Lcn/sharesdk/tencent/qq/QQ;

    const/16 v0, 0x9

    invoke-interface {p2, p3, v0, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ$2;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {p1}, Lcn/sharesdk/tencent/qq/QQ;->l(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ$2;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {p1}, Lcn/sharesdk/tencent/qq/QQ;->m(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object p1

    iget-object p2, p0, Lcn/sharesdk/tencent/qq/QQ$2;->b:Lcn/sharesdk/tencent/qq/QQ;

    const/16 v0, 0x9

    invoke-interface {p1, p2, v0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method
