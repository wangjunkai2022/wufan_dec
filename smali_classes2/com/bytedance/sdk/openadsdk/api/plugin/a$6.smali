.class Lcom/bytedance/sdk/openadsdk/api/plugin/a$6;
.super Ljava/lang/Object;
.source "DefaultAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/a;->requestPermissionIfNecessary(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/api/plugin/a$a<",
        "Lcom/bytedance/sdk/openadsdk/TTAdManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/api/plugin/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$6;->b:Lcom/bytedance/sdk/openadsdk/api/plugin/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$6;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/TTAdManager;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$6;->a:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->requestPermissionIfNecessary(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$6;->a(Lcom/bytedance/sdk/openadsdk/TTAdManager;)V

    return-void
.end method
