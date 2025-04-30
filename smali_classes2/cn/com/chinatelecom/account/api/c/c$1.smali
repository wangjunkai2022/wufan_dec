.class Lcn/com/chinatelecom/account/api/c/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/chinatelecom/account/api/c/c;->b(Lcn/com/chinatelecom/account/api/c/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/com/chinatelecom/account/api/c/b;

.field final synthetic b:Lcn/com/chinatelecom/account/api/c/c;


# direct methods
.method constructor <init>(Lcn/com/chinatelecom/account/api/c/c;Lcn/com/chinatelecom/account/api/c/b;)V
    .locals 0

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/c/c$1;->b:Lcn/com/chinatelecom/account/api/c/c;

    iput-object p2, p0, Lcn/com/chinatelecom/account/api/c/c$1;->a:Lcn/com/chinatelecom/account/api/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/c$1;->b:Lcn/com/chinatelecom/account/api/c/c;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/c/c;->a(Lcn/com/chinatelecom/account/api/c/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/c$1;->a:Lcn/com/chinatelecom/account/api/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/c$1;->b:Lcn/com/chinatelecom/account/api/c/c;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/c/c;->b(Lcn/com/chinatelecom/account/api/c/c;)V

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/c$1;->a:Lcn/com/chinatelecom/account/api/c/b;

    invoke-interface {v0}, Lcn/com/chinatelecom/account/api/c/b;->a()V

    :cond_0
    return-void
.end method
