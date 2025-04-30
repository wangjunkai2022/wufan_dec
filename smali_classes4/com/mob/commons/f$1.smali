.class Lcom/mob/commons/f$1;
.super Lcom/mob/tools/utils/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/f;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/f;


# direct methods
.method constructor <init>(Lcom/mob/commons/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/commons/f$1;->a:Lcom/mob/commons/f;

    invoke-direct {p0}, Lcom/mob/tools/utils/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/commons/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mob/commons/f$1;->a:Lcom/mob/commons/f;

    invoke-static {v0}, Lcom/mob/commons/f;->a(Lcom/mob/commons/f;)V

    :cond_0
    return-void
.end method
