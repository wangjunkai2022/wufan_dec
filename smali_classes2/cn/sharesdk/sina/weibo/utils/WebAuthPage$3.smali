.class Lcn/sharesdk/sina/weibo/utils/WebAuthPage$3;
.super Lcom/mob/tools/RxMob$Subscriber;
.source "WebAuthPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/utils/WebAuthPage;->loadWebView()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/RxMob$Subscriber<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/sina/weibo/utils/WebAuthPage;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/utils/WebAuthPage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebAuthPage$3;->this$0:Lcn/sharesdk/sina/weibo/utils/WebAuthPage;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/mob/tools/RxMob$Subscriber;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    return-void
.end method
