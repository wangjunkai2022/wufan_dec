.class Lcom/mob/commons/m$c$1;
.super Lcom/mob/tools/utils/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/m$c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/m$c;


# direct methods
.method constructor <init>(Lcom/mob/commons/m$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/commons/m$c$1;->a:Lcom/mob/commons/m$c;

    invoke-direct {p0}, Lcom/mob/tools/utils/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/mob/commons/m;->a(I)Lcom/mob/tools/a;

    move-result-object v0

    new-instance v1, Lcom/mob/commons/m$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/mob/commons/m$b;-><init>(Lcom/mob/commons/m$1;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/a;->a(Lcom/mob/tools/a$a;)V

    return-void
.end method
