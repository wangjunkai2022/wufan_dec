.class Lcn/sharesdk/sina/weibo/utils/WebSharePage$2;
.super Ljava/lang/Object;
.source "WebSharePage.java"

# interfaces
.implements Lcom/mob/tools/RxMob$OnSubscribe;


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
        "Ljava/lang/Object;",
        "Lcom/mob/tools/RxMob$OnSubscribe<",
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
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage$2;->this$0:Lcn/sharesdk/sina/weibo/utils/WebSharePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/mob/tools/RxMob$Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Subscriber<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage$2;->this$0:Lcn/sharesdk/sina/weibo/utils/WebSharePage;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->access$500(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/mob/tools/RxMob$Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method
