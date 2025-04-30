.class Lcom/bytedance/sdk/openadsdk/api/plugin/a$1;
.super Ljava/lang/Object;
.source "DefaultAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/plugin/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/a;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/api/plugin/a$b<",
        "Lcom/bytedance/sdk/openadsdk/TTAdNative;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/TTAdNative;

.field final synthetic b:Ljava/lang/ref/WeakReference;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/api/plugin/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$1;->c:Lcom/bytedance/sdk/openadsdk/api/plugin/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$1;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/api/plugin/a$a<",
            "Lcom/bytedance/sdk/openadsdk/TTAdNative;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$1;->c:Lcom/bytedance/sdk/openadsdk/api/plugin/a;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/api/plugin/a$1$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a$1;Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->a(Lcom/bytedance/sdk/openadsdk/api/plugin/a;Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    :goto_0
    return-void
.end method
