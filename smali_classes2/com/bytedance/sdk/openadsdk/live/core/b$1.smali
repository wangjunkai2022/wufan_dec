.class Lcom/bytedance/sdk/openadsdk/live/core/b$1;
.super Ljava/lang/Object;
.source "TTLiveHostTokenInjectAuthInner.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/live/TTLiveAuthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/live/core/b;->onTokenInvalid(Lcom/bytedance/android/livehostapi/platform/TokenInfo;Lcom/bytedance/android/livehostapi/platform/TokenRefreshCallback;Landroid/app/Activity;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/android/livehostapi/platform/TokenRefreshCallback;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/live/core/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/live/core/b;Lcom/bytedance/android/livehostapi/platform/TokenRefreshCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/live/core/b$1;->b:Lcom/bytedance/sdk/openadsdk/live/core/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/live/core/b$1;->a:Lcom/bytedance/android/livehostapi/platform/TokenRefreshCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuth(Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/core/b$1;->a:Lcom/bytedance/android/livehostapi/platform/TokenRefreshCallback;

    new-instance v7, Lcom/bytedance/android/livehostapi/platform/TokenInfo;

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;->openId:Ljava/lang/String;

    iget-object v4, p1, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;->accessToken:Ljava/lang/String;

    iget-wide v5, p1, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;->expireAt:J

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/android/livehostapi/platform/TokenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, v7}, Lcom/bytedance/android/livehostapi/platform/TokenRefreshCallback;->onSuccess(Lcom/bytedance/android/livehostapi/platform/TokenInfo;)V

    return-void
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/core/b$1;->a:Lcom/bytedance/android/livehostapi/platform/TokenRefreshCallback;

    invoke-interface {v0, p1}, Lcom/bytedance/android/livehostapi/platform/TokenRefreshCallback;->onFailed(Ljava/lang/Throwable;)V

    return-void
.end method
