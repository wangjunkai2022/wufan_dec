.class Lcn/sharesdk/tencent/qzone/utils/ShareActivity$1$1;
.super Ljava/lang/Thread;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qzone/utils/ShareActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qzone/utils/ShareActivity$1;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/utils/ShareActivity$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity$1$1;->a:Lcn/sharesdk/tencent/qzone/utils/ShareActivity$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 4
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity$1$1;->a:Lcn/sharesdk/tencent/qzone/utils/ShareActivity$1;

    iget-object v0, v0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity$1;->a:Lcn/sharesdk/tencent/qzone/utils/ShareActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 5
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity$1$1;->a:Lcn/sharesdk/tencent/qzone/utils/ShareActivity$1;

    iget-object v0, v0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity$1;->a:Lcn/sharesdk/tencent/qzone/utils/ShareActivity;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->access$000(Lcn/sharesdk/tencent/qzone/utils/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :goto_0
    return-void
.end method
