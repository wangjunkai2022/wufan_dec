.class Lcom/mob/commons/f$2;
.super Lcom/mob/tools/utils/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/f;->a(ILjava/lang/Throwable;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Message;

.field final synthetic b:Lcom/mob/commons/f;


# direct methods
.method constructor <init>(Lcom/mob/commons/f;Landroid/os/Message;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/commons/f$2;->b:Lcom/mob/commons/f;

    iput-object p2, p0, Lcom/mob/commons/f$2;->a:Landroid/os/Message;

    invoke-direct {p0}, Lcom/mob/tools/utils/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/commons/f$2;->b:Lcom/mob/commons/f;

    iget-object v1, p0, Lcom/mob/commons/f$2;->a:Landroid/os/Message;

    invoke-static {v0, v1}, Lcom/mob/commons/f;->a(Lcom/mob/commons/f;Landroid/os/Message;)V

    return-void
.end method
