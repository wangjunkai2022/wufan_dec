.class Lcom/join/mgps/Util/r$e;
.super Ljava/lang/Object;
.source "CommonUtil.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/r;->g(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OnekeyShare;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/r$e;->a:Landroid/content/Context;

    iput p2, p0, Lcom/join/mgps/Util/r$e;->b:I

    iput-object p3, p0, Lcom/join/mgps/Util/r$e;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/join/mgps/Util/r$e;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/r$e;->a:Landroid/content/Context;

    iget v2, p0, Lcom/join/mgps/Util/r$e;->b:I

    iget-object v4, p0, Lcom/join/mgps/Util/r$e;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/join/mgps/Util/r$e;->d:Ljava/lang/String;

    const/4 v3, 0x1

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/r;->a(Landroid/content/Context;Lcn/sharesdk/framework/Platform;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/r$e;->a:Landroid/content/Context;

    iget v2, p0, Lcom/join/mgps/Util/r$e;->b:I

    iget-object v4, p0, Lcom/join/mgps/Util/r$e;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/join/mgps/Util/r$e;->d:Ljava/lang/String;

    const/4 v3, 0x2

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/r;->a(Landroid/content/Context;Lcn/sharesdk/framework/Platform;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 7

    if-eqz p3, :cond_2

    .line 1
    instance-of p2, p3, Lcn/sharesdk/tencent/qq/utils/QQClientNotExistException;

    if-nez p2, :cond_1

    .line 2
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "QQClientNotExistException"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of p2, p3, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;

    if-eqz p2, :cond_2

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p2

    new-instance p3, Lcom/join/mgps/event/q;

    const-string v0, "\u76ee\u524d\u60a8\u7684\u5fae\u4fe1\u7248\u672c\u8fc7\u4f4e\u6216\u672a\u5b89\u88c5\u5fae\u4fe1\uff0c\u9700\u8981\u5b89\u88c5\u5fae\u4fe1\u624d\u80fd\u4f7f\u7528"

    invoke-direct {p3, v0}, Lcom/join/mgps/event/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p2

    new-instance p3, Lcom/join/mgps/event/q;

    const-string v0, "\u76ee\u524d\u60a8\u7684QQ\u7248\u672c\u8fc7\u4f4e\u6216\u672a\u5b89\u88c5QQ\uff0c\u9700\u8981\u5b89\u88c5QQ\u624d\u80fd\u4f7f\u7528"

    invoke-direct {p3, v0}, Lcom/join/mgps/event/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 6
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/Util/r$e;->a:Landroid/content/Context;

    iget v3, p0, Lcom/join/mgps/Util/r$e;->b:I

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/join/mgps/Util/r$e;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/join/mgps/Util/r$e;->d:Ljava/lang/String;

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/join/mgps/Util/r;->a(Landroid/content/Context;Lcn/sharesdk/framework/Platform;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
