.class Lcom/join/mgps/activity/o2$f;
.super Ljava/lang/Object;
.source "PapaMainV3Fragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/o2;->m1(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/join/mgps/activity/o2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/o2;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/o2$f;->b:Lcom/join/mgps/activity/o2;

    iput-object p2, p0, Lcom/join/mgps/activity/o2$f;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/o2$f;->b:Lcom/join/mgps/activity/o2;

    iget-object v1, p0, Lcom/join/mgps/activity/o2$f;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/o2;->k2(Lcom/join/mgps/activity/o2;Landroid/content/Intent;)V

    return-void
.end method
