.class public Lcom/bytedance/sdk/openadsdk/live/core/a;
.super Ljava/lang/Object;
.source "TTLiveHostActionInner.java"

# interfaces
.implements Lcom/bytedance/android/live/base/api/ILiveHostActionParam;


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveHostAction;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveHostAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/live/core/a;->a:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveHostAction;

    return-void
.end method


# virtual methods
.method public logEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/core/a;->a:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveHostAction;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveHostAction;->logEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
