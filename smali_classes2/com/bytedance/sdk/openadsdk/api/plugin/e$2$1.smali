.class Lcom/bytedance/sdk/openadsdk/api/plugin/e$2$1;
.super Ljava/lang/Object;
.source "TTPluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/e$2;->onPluginStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/api/plugin/e$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/api/plugin/e$2;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e$2$1;->c:Lcom/bytedance/sdk/openadsdk/api/plugin/e$2;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e$2$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e$2$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e$2$1;->c:Lcom/bytedance/sdk/openadsdk/api/plugin/e$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/api/plugin/e$2;->a:Lcom/bytedance/sdk/openadsdk/api/plugin/e;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e$2$1;->a:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e$2$1;->b:I

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a(Lcom/bytedance/sdk/openadsdk/api/plugin/e;Ljava/lang/String;I)V

    return-void
.end method
