.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;
.super Ljava/lang/Object;
.source "MindAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "r"
.end annotation


# instance fields
.field public a:Landroid/accounts/Account;

.field public b:I


# direct methods
.method public constructor <init>(Landroid/accounts/Account;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "account",
            "userId"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;->a:Landroid/accounts/Account;

    .line 3
    iput p2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;

    .line 3
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;->a:Landroid/accounts/Account;

    iget-object v3, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;->a:Landroid/accounts/Account;

    invoke-virtual {v1, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;->b:I

    iget p1, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;->b:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;->a:Landroid/accounts/Account;

    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;->a:Landroid/accounts/Account;

    invoke-virtual {v1}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
