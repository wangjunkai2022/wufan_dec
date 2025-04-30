.class Lcom/join/mgps/ad/k$a;
.super Ljava/lang/Object;
.source "TTAdVideo.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ad/k;->p(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/ad/k;->c(Z)Z

    return-void
.end method

.method public success()V
    .locals 0

    return-void
.end method
