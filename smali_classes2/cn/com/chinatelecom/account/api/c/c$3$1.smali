.class Lcn/com/chinatelecom/account/api/c/c$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/chinatelecom/account/api/c/c$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcn/com/chinatelecom/account/api/c/c$3;


# direct methods
.method constructor <init>(Lcn/com/chinatelecom/account/api/c/c$3;J)V
    .locals 0

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/c/c$3$1;->b:Lcn/com/chinatelecom/account/api/c/c$3;

    iput-wide p2, p0, Lcn/com/chinatelecom/account/api/c/c$3$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/c$3$1;->b:Lcn/com/chinatelecom/account/api/c/c$3;

    iget-object v0, v0, Lcn/com/chinatelecom/account/api/c/c$3;->b:Lcn/com/chinatelecom/account/api/c/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/com/chinatelecom/account/api/c/c$3$1;->a:J

    sub-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcn/com/chinatelecom/account/api/c/b;->a(J)V

    return-void
.end method
