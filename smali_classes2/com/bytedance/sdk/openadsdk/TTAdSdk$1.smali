.class final Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;
.super Ljava/lang/Object;
.source "TTAdSdk.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/CodeGroupRitObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getCodeGroupRit(JLcom/bytedance/sdk/openadsdk/TTCodeGroupRit$TTCodeGroupRitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/TTCodeGroupRit$TTCodeGroupRitListener;


# direct methods
.method constructor <init>(JLcom/bytedance/sdk/openadsdk/TTCodeGroupRit$TTCodeGroupRitListener;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;->a:J

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;->b:Lcom/bytedance/sdk/openadsdk/TTCodeGroupRit$TTCodeGroupRitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodeGroupId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;->a:J

    return-wide v0
.end method

.method public getListener()Lcom/bytedance/sdk/openadsdk/TTCodeGroupRit$TTCodeGroupRitListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;->b:Lcom/bytedance/sdk/openadsdk/TTCodeGroupRit$TTCodeGroupRitListener;

    return-object v0
.end method
