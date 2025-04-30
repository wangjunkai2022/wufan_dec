.class Lcom/mob/tools/a/g$9;
.super Lcom/mob/tools/a/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/g;->aL()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/a/g$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/a/g;


# direct methods
.method varargs constructor <init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/a/g$9;->a:Lcom/mob/tools/a/g;

    invoke-direct {p0, p1, p2}, Lcom/mob/tools/a/g$a;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method b(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "crtavthd"

    .line 1
    invoke-static {v0, p1}, Lcom/mob/tools/b/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mob/tools/a/g$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
