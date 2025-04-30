.class public Lbolts/c;
.super Ljava/lang/Object;
.source "CancellationToken.java"


# instance fields
.field private final a:Lbolts/e;


# direct methods
.method constructor <init>(Lbolts/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lbolts/c;->a:Lbolts/e;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lbolts/c;->a:Lbolts/e;

    invoke-virtual {v0}, Lbolts/e;->i()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Runnable;)Lbolts/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lbolts/c;->a:Lbolts/e;

    invoke-virtual {v0, p1}, Lbolts/e;->m(Ljava/lang/Runnable;)Lbolts/d;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbolts/c;->a:Lbolts/e;

    invoke-virtual {v0}, Lbolts/e;->n()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lbolts/c;->a:Lbolts/e;

    invoke-virtual {v2}, Lbolts/e;->i()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "%s@%s[cancellationRequested=%s]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
