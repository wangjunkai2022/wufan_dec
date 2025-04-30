.class Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$11;
.super Ljava/lang/Object;
.source "DefaultAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;->loadInteractionAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/api/plugin/a$a<",
        "Lcom/bytedance/sdk/openadsdk/TTAdNative;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$11;->c:Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$11;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$11;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/TTAdNative;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$11;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$11;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadInteractionAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTAdNative;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$11;->a(Lcom/bytedance/sdk/openadsdk/TTAdNative;)V

    return-void
.end method
