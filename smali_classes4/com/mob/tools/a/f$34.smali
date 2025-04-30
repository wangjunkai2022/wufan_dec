.class Lcom/mob/tools/a/f$34;
.super Lcom/mob/tools/a/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/f;->bc()Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/a/f$a<",
        "Ljava/util/HashMap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/a/f;


# direct methods
.method varargs constructor <init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/a/f$34;->a:Lcom/mob/tools/a/f;

    invoke-direct {p0, p1, p2}, Lcom/mob/tools/a/f$a;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a([Ljava/lang/Object;)Ljava/util/HashMap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/f$34;->a:Lcom/mob/tools/a/f;

    const-string v1, "galdm"

    invoke-static {v0, v1, p1}, Lcom/mob/tools/a/f;->a(Lcom/mob/tools/a/f;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mob/tools/a/f$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-object p1
.end method

.method synthetic b([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mob/tools/a/f$34;->a([Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method
