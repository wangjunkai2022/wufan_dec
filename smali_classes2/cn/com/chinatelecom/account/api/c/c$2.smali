.class Lcn/com/chinatelecom/account/api/c/c$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/chinatelecom/account/api/c/c;->a(Lcn/com/chinatelecom/account/api/c/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/com/chinatelecom/account/api/c/b;

.field final synthetic b:J

.field final synthetic c:Lcn/com/chinatelecom/account/api/c/c;


# direct methods
.method constructor <init>(Lcn/com/chinatelecom/account/api/c/c;Lcn/com/chinatelecom/account/api/c/b;J)V
    .locals 0

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/c/c$2;->c:Lcn/com/chinatelecom/account/api/c/c;

    iput-object p2, p0, Lcn/com/chinatelecom/account/api/c/c$2;->a:Lcn/com/chinatelecom/account/api/c/b;

    iput-wide p3, p0, Lcn/com/chinatelecom/account/api/c/c$2;->b:J

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 5

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/c$2;->c:Lcn/com/chinatelecom/account/api/c/c;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/c/c;->a(Lcn/com/chinatelecom/account/api/c/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/c$2;->a:Lcn/com/chinatelecom/account/api/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/c$2;->c:Lcn/com/chinatelecom/account/api/c/c;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/c/c;->b(Lcn/com/chinatelecom/account/api/c/c;)V

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/c$2;->a:Lcn/com/chinatelecom/account/api/c/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/com/chinatelecom/account/api/c/c$2;->b:J

    sub-long/2addr v1, v3

    invoke-interface {v0, p1, v1, v2}, Lcn/com/chinatelecom/account/api/c/b;->a(Landroid/net/Network;J)V

    :cond_0
    return-void
.end method
