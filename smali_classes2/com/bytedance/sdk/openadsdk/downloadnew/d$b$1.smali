.class Lcom/bytedance/sdk/openadsdk/downloadnew/d$b$1;
.super Ljava/lang/Object;
.source "TTDownloadVisitor.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/d$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ss/android/download/api/config/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/download/api/config/q;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/downloadnew/d$b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/d$b;Lcom/ss/android/download/api/config/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$b$1;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/d$b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$b$1;->a:Lcom/ss/android/download/api/config/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$b$1;->a:Lcom/ss/android/download/api/config/q;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/ss/android/download/api/config/q;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$b$1;->a:Lcom/ss/android/download/api/config/q;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/ss/android/download/api/config/q;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
