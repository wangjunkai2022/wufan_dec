.class Lcom/xinzhu/overmind/server/accounts/i$a;
.super Ljava/lang/Object;
.source "TokenCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/accounts/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/accounts/Account;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:[B


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "tokenType",
            "packageName",
            "sigDigest"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/i$a;->a:Landroid/accounts/Account;

    .line 3
    iput-object p2, p0, Lcom/xinzhu/overmind/server/accounts/i$a;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/xinzhu/overmind/server/accounts/i$a;->b:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/xinzhu/overmind/server/accounts/i$a;->d:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    instance-of v1, p1, Lcom/xinzhu/overmind/server/accounts/i$a;

    if-eqz v1, :cond_0

    .line 2
    check-cast p1, Lcom/xinzhu/overmind/server/accounts/i$a;

    .line 3
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/i$a;->a:Landroid/accounts/Account;

    iget-object v2, p1, Lcom/xinzhu/overmind/server/accounts/i$a;->a:Landroid/accounts/Account;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/i$a;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/xinzhu/overmind/server/accounts/i$a;->b:Ljava/lang/String;

    .line 4
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/i$a;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/xinzhu/overmind/server/accounts/i$a;->c:Ljava/lang/String;

    .line 5
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/i$a;->d:[B

    iget-object p1, p1, Lcom/xinzhu/overmind/server/accounts/i$a;->d:[B

    .line 6
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/i$a;->a:Landroid/accounts/Account;

    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/i$a;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/i$a;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/i$a;->d:[B

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
