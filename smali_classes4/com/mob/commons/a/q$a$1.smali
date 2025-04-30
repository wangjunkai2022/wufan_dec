.class Lcom/mob/commons/a/q$a$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/q$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/a/q$a;


# direct methods
.method constructor <init>(Lcom/mob/commons/a/q$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/commons/a/q$a$1;->a:Lcom/mob/commons/a/q$a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/commons/a/q$a;->b()Lcom/mob/commons/a/q$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mob/commons/a/q$a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
