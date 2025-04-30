.class Lcom/mob/tools/a/i$25;
.super Lcom/mob/tools/a/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/i;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/a/i$a<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/mob/tools/a/i;


# direct methods
.method constructor <init>(Lcom/mob/tools/a/i;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/a/i$25;->c:Lcom/mob/tools/a/i;

    iput-object p3, p0, Lcom/mob/tools/a/i$25;->a:Ljava/lang/String;

    iput p4, p0, Lcom/mob/tools/a/i$25;->b:I

    invoke-direct {p0, p2}, Lcom/mob/tools/a/i$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/content/pm/ApplicationInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/i$25;->c:Lcom/mob/tools/a/i;

    invoke-static {v0}, Lcom/mob/tools/a/i;->b(Lcom/mob/tools/a/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/a/l;->a(Landroid/content/Context;)Lcom/mob/tools/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/l;->a()Lcom/mob/tools/a/k;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/a/i$25;->a:Ljava/lang/String;

    iget v2, p0, Lcom/mob/tools/a/i$25;->b:I

    invoke-interface {v0, v1, v2}, Lcom/mob/tools/a/k;->b(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

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
    invoke-virtual {p0}, Lcom/mob/tools/a/i$25;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method
