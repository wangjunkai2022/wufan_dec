.class Lcom/mob/tools/a/e$1;
.super Lcom/mob/tools/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/e;->a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/a/e$a<",
        "Landroid/content/pm/PackageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/mob/tools/a/e;


# direct methods
.method constructor <init>(Lcom/mob/tools/a/e;Landroid/content/pm/PackageInfo;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/a/e$1;->c:Lcom/mob/tools/a/e;

    iput-object p3, p0, Lcom/mob/tools/a/e$1;->a:Ljava/lang/String;

    iput p4, p0, Lcom/mob/tools/a/e$1;->b:I

    invoke-direct {p0, p2}, Lcom/mob/tools/a/e$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/content/pm/PackageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/e$1;->c:Lcom/mob/tools/a/e;

    invoke-static {v0}, Lcom/mob/tools/a/e;->a(Lcom/mob/tools/a/e;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/a/e$1;->a:Ljava/lang/String;

    iget v2, p0, Lcom/mob/tools/a/e$1;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

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
    invoke-virtual {p0}, Lcom/mob/tools/a/e$1;->a()Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method
