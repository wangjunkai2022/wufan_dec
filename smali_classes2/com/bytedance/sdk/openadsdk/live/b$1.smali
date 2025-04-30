.class Lcom/bytedance/sdk/openadsdk/live/b$1;
.super Ljava/lang/Object;
.source "TTLiveSDkBridge.java"

# interfaces
.implements Lcom/bytedance/android/live/base/api/MethodChannelService;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/live/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/live/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/live/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/live/b$1;->a:Lcom/bytedance/sdk/openadsdk/live/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public identity()Ljava/lang/String;
    .locals 1

    const-string v0, "pangle"

    return-object v0
.end method

.method public varargs invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "getBiddingToken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/live/b$1;->a:Lcom/bytedance/sdk/openadsdk/live/b;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/live/b;->a(Lcom/bytedance/sdk/openadsdk/live/b;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
