.class public final synthetic Lcom/xinzhu/overmind/server/accounts/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;

.field public final synthetic b:Landroid/accounts/Account;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;Landroid/accounts/Account;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/g;->a:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;

    iput-object p2, p0, Lcom/xinzhu/overmind/server/accounts/g;->b:Landroid/accounts/Account;

    iput p3, p0, Lcom/xinzhu/overmind/server/accounts/g;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/g;->a:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;

    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/g;->b:Landroid/accounts/Account;

    iget v2, p0, Lcom/xinzhu/overmind/server/accounts/g;->c:I

    invoke-static {v0, v1, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->c(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;Landroid/accounts/Account;I)V

    return-void
.end method
