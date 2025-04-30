.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j;
.super Ljava/lang/Object;
.source "MindAccountManagerService.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/pm/j;


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
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j;->a:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j$a;

    invoke-direct {p2, p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j$a;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j;->a:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    iget-object p1, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mHandler:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    return-void
.end method

.method public c(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    return-void
.end method
