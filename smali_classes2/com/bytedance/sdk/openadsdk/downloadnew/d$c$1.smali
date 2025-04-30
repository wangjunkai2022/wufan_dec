.class Lcom/bytedance/sdk/openadsdk/downloadnew/d$c$1;
.super Ljava/lang/Object;
.source "TTDownloadVisitor.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/d$c;->a(Landroid/app/Activity;[Ljava/lang/String;Lcom/ss/android/download/api/config/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/download/api/config/s;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/downloadnew/d$c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/d$c;Lcom/ss/android/download/api/config/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$c$1;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/d$c;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$c$1;->a:Lcom/ss/android/download/api/config/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$c$1;->a:Lcom/ss/android/download/api/config/s;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/ss/android/download/api/config/s;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onGranted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$c$1;->a:Lcom/ss/android/download/api/config/s;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/ss/android/download/api/config/s;->a()V

    :cond_0
    return-void
.end method
