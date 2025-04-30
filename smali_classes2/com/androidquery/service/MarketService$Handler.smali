.class Lcom/androidquery/service/MarketService$Handler;
.super Ljava/lang/Object;
.source "MarketService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidquery/service/MarketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidquery/service/MarketService;


# direct methods
.method private constructor <init>(Lcom/androidquery/service/MarketService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androidquery/service/MarketService;Lcom/androidquery/service/MarketService$Handler;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/androidquery/service/MarketService$Handler;-><init>(Lcom/androidquery/service/MarketService;)V

    return-void
.end method

.method private cb(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {v0}, Lcom/androidquery/service/MarketService;->access$5(Lcom/androidquery/service/MarketService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/androidquery/service/MarketService;->access$6(Lcom/androidquery/service/MarketService;Z)V

    .line 3
    iget-object v0, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/androidquery/service/MarketService;->access$7(Lcom/androidquery/service/MarketService;I)V

    .line 4
    iget-object v0, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/androidquery/service/MarketService;->callback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public detailCb(Ljava/lang/String;Ljava/lang/String;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p3, 0x3e8

    if-le p1, p3, :cond_0

    .line 2
    iget-object p1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {p1}, Lcom/androidquery/service/MarketService;->access$8(Lcom/androidquery/service/MarketService;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p3, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {p3}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 4
    invoke-virtual {p3, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    const-class v0, Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    const-string v0, "marketCb"

    invoke-virtual {p1, p0, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->handler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "html"

    .line 5
    invoke-virtual {p3, p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->param(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {p1}, Lcom/androidquery/service/MarketService;->access$3(Lcom/androidquery/service/MarketService;)Lcom/androidquery/AQuery;

    move-result-object p1

    iget-object p2, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {p2}, Lcom/androidquery/service/MarketService;->access$4(Lcom/androidquery/service/MarketService;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/androidquery/AbstractAQuery;->progress(I)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    check-cast p1, Lcom/androidquery/AQuery;

    invoke-virtual {p1, p3}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    :cond_0
    return-void
.end method

.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 0

    const-string p4, "li"

    .line 1
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "  "

    .line 2
    invoke-interface {p3, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    const-string/jumbo p2, "\u2022"

    .line 3
    invoke-interface {p3, p2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 4
    invoke-interface {p3, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    :cond_0
    const-string p1, "\n"

    .line 5
    invoke-interface {p3, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    :cond_1
    :goto_0
    return-void
.end method

.method public marketCb(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {v0}, Lcom/androidquery/service/MarketService;->access$0(Lcom/androidquery/service/MarketService;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_4

    const-string v0, "status"

    .line 2
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "dialog"

    .line 4
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/androidquery/service/MarketService$Handler;->cb(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {p1}, Lcom/androidquery/service/MarketService;->access$1(Lcom/androidquery/service/MarketService;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    const-string v0, "fetch"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_5

    .line 7
    iget-object p1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {p1, p3}, Lcom/androidquery/service/MarketService;->access$2(Lcom/androidquery/service/MarketService;Z)V

    const/4 p1, 0x0

    const-string p3, "marketUrl"

    .line 8
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance p2, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {p2}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 10
    invoke-virtual {p2, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    const-class p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    const-string p3, "detailCb"

    invoke-virtual {p1, p0, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->handler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {p1}, Lcom/androidquery/service/MarketService;->access$3(Lcom/androidquery/service/MarketService;)Lcom/androidquery/AQuery;

    move-result-object p1

    iget-object p3, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {p3}, Lcom/androidquery/service/MarketService;->access$4(Lcom/androidquery/service/MarketService;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/androidquery/AbstractAQuery;->progress(I)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    check-cast p1, Lcom/androidquery/AQuery;

    invoke-virtual {p1, p2}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    goto :goto_0

    :cond_2
    const-string v1, "0"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->invalidate()Lcom/androidquery/callback/AjaxStatus;

    goto :goto_0

    .line 14
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/androidquery/service/MarketService$Handler;->cb(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/androidquery/service/MarketService$Handler;->cb(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x3

    if-eq p2, p1, :cond_2

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {p1}, Lcom/androidquery/service/MarketService;->access$0(Lcom/androidquery/service/MarketService;)Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {p2}, Lcom/androidquery/service/MarketService;->access$9(Lcom/androidquery/service/MarketService;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/androidquery/service/MarketService;->access$10(Landroid/app/Activity;Ljava/lang/String;)Z

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {p1}, Lcom/androidquery/service/MarketService;->access$0(Lcom/androidquery/service/MarketService;)Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {p2}, Lcom/androidquery/service/MarketService;->access$11(Lcom/androidquery/service/MarketService;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/androidquery/service/MarketService;->access$10(Landroid/app/Activity;Ljava/lang/String;)Z

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {p1}, Lcom/androidquery/service/MarketService;->access$0(Lcom/androidquery/service/MarketService;)Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {p2}, Lcom/androidquery/service/MarketService;->access$12(Lcom/androidquery/service/MarketService;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/androidquery/service/MarketService;->access$13(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
