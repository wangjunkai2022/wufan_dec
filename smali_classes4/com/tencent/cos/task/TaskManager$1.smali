.class Lcom/tencent/cos/task/TaskManager$1;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/task/TaskManager;-><init>(Landroid/content/Context;Lcom/tencent/cos/COSConfig;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/task/TaskManager;

.field final synthetic val$config:Lcom/tencent/cos/COSConfig;


# direct methods
.method constructor <init>(Lcom/tencent/cos/task/TaskManager;Lcom/tencent/cos/COSConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/task/TaskManager$1;->this$0:Lcom/tencent/cos/task/TaskManager;

    iput-object p2, p0, Lcom/tencent/cos/task/TaskManager$1;->val$config:Lcom/tencent/cos/COSConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    .line 1
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager$1;->val$config:Lcom/tencent/cos/COSConfig;

    invoke-virtual {v0}, Lcom/tencent/cos/COSConfig;->getCosDomain()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1
.end method
