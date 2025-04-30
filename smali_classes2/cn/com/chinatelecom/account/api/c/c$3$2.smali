.class Lcn/com/chinatelecom/account/api/c/c$3$2;
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
.field final synthetic a:Lcn/com/chinatelecom/account/api/c/c$3;


# direct methods
.method constructor <init>(Lcn/com/chinatelecom/account/api/c/c$3;)V
    .locals 0

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/c/c$3$2;->a:Lcn/com/chinatelecom/account/api/c/c$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/c$3$2;->a:Lcn/com/chinatelecom/account/api/c/c$3;

    iget-object v0, v0, Lcn/com/chinatelecom/account/api/c/c$3;->b:Lcn/com/chinatelecom/account/api/c/b;

    invoke-interface {v0}, Lcn/com/chinatelecom/account/api/c/b;->a()V

    return-void
.end method
