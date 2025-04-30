.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$i;
.super Ljava/lang/Object;
.source "MindAccountManagerService.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/user/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$i;->a:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$i;->a:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    invoke-static {v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$000(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;I)V

    return-void
.end method

.method public b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    return-void
.end method

.method public c(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    return-void
.end method
