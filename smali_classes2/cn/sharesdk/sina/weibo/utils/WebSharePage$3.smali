.class Lcn/sharesdk/sina/weibo/utils/WebSharePage$3;
.super Lcom/mob/tools/RxMob$Subscriber;
.source "WebSharePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/utils/WebSharePage;->loadWebView()Ljava/lang/String;
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
.field final synthetic this$0:Lcn/sharesdk/sina/weibo/utils/WebSharePage;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage$3;->this$0:Lcn/sharesdk/sina/weibo/utils/WebSharePage;

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
    .locals 2

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    .line 2
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage$3;->this$0:Lcn/sharesdk/sina/weibo/utils/WebSharePage;

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->access$200(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)Landroid/webkit/WebView;

    move-result-object p1

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage$3;->this$0:Lcn/sharesdk/sina/weibo/utils/WebSharePage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->access$600(Lcn/sharesdk/sina/weibo/utils/WebSharePage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/sharesdk/sina/weibo/utils/WebSharePage$3;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage$3;->this$0:Lcn/sharesdk/sina/weibo/utils/WebSharePage;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->access$200(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage$3;->this$0:Lcn/sharesdk/sina/weibo/utils/WebSharePage;

    invoke-static {v1, p1}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->access$600(Lcn/sharesdk/sina/weibo/utils/WebSharePage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/mob/tools/RxMob$Subscriber;->onStart()V

    return-void
.end method
