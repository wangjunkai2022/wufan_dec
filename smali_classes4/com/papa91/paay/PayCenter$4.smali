.class final Lcom/papa91/paay/PayCenter$4;
.super Ljava/lang/Thread;
.source "PayCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/paay/PayCenter;->inquiryCoinInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$gameId:Ljava/lang/String;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/paay/PayCenter$4;->val$uid:Ljava/lang/String;

    iput-object p2, p0, Lcom/papa91/paay/PayCenter$4;->val$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/papa91/paay/PayCenter$4;->val$gameId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v2, p0, Lcom/papa91/paay/PayCenter$4;->val$uid:Ljava/lang/String;

    const-string v3, "uid"

    invoke-direct {v1, v3, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v2, p0, Lcom/papa91/paay/PayCenter$4;->val$token:Ljava/lang/String;

    const-string v3, "token"

    invoke-direct {v1, v3, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v2, p0, Lcom/papa91/paay/PayCenter$4;->val$gameId:Ljava/lang/String;

    const-string v3, "game_id"

    invoke-direct {v1, v3, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/papa91/paay/PayCenter$4$1;

    invoke-direct {v1, p0}, Lcom/papa91/paay/PayCenter$4$1;-><init>(Lcom/papa91/paay/PayCenter$4;)V

    const-string v2, "http://payv1.papa91.com/pay/emulator/coin_permission_info"

    invoke-static {v2, v0, v1}, Lcom/papa91/paay/NetUtils;->postRequest(Ljava/lang/String;Ljava/util/List;Lcom/papa91/paay/NetWorkListener;)V

    return-void
.end method
