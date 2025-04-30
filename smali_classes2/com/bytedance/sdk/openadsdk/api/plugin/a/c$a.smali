.class final Lcom/bytedance/sdk/openadsdk/api/plugin/a/c$a;
.super Ljava/lang/Object;
.source "NetApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/bytedance/sdk/openadsdk/api/plugin/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/a/c;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a/c$1;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a/c$a;->a:Lcom/bytedance/sdk/openadsdk/api/plugin/a/c;

    return-void
.end method

.method static synthetic a()Lcom/bytedance/sdk/openadsdk/api/plugin/a/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a/c$a;->a:Lcom/bytedance/sdk/openadsdk/api/plugin/a/c;

    return-object v0
.end method
