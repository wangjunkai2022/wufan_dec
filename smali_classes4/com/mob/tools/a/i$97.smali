.class Lcom/mob/tools/a/i$97;
.super Lcom/mob/tools/a/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/i;->a(IIZ)Landroid/location/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/a/i$a<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/mob/tools/a/i;


# direct methods
.method constructor <init>(Lcom/mob/tools/a/i;Landroid/location/Location;JIIZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/a/i$97;->d:Lcom/mob/tools/a/i;

    iput p5, p0, Lcom/mob/tools/a/i$97;->a:I

    iput p6, p0, Lcom/mob/tools/a/i$97;->b:I

    iput-boolean p7, p0, Lcom/mob/tools/a/i$97;->c:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/mob/tools/a/i$a;-><init>(Ljava/lang/Object;J)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/location/Location;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/i$97;->d:Lcom/mob/tools/a/i;

    invoke-static {v0}, Lcom/mob/tools/a/i;->a(Lcom/mob/tools/a/i;)Lcom/mob/tools/a/b;

    move-result-object v0

    iget v1, p0, Lcom/mob/tools/a/i$97;->a:I

    iget v2, p0, Lcom/mob/tools/a/i$97;->b:I

    iget-boolean v3, p0, Lcom/mob/tools/a/i$97;->c:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/a/b;->a(IIZ)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mob/tools/a/i$97;->a()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
