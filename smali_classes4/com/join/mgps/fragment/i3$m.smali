.class Lcom/join/mgps/fragment/i3$m;
.super Ljava/lang/Object;
.source "MyArchiveFragment.java"

# interfaces
.implements Lcom/join/mgps/dialog/x$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/i3;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/i3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/i3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/i3$m;->a:Lcom/join/mgps/fragment/i3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dialog/x;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$m;->a:Lcom/join/mgps/fragment/i3;

    iget-object v0, v0, Lcom/join/mgps/fragment/i3;->p0:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$m;->a:Lcom/join/mgps/fragment/i3;

    iget-object v0, v0, Lcom/join/mgps/fragment/i3;->p0:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$m;->a:Lcom/join/mgps/fragment/i3;

    iget-object v0, v0, Lcom/join/mgps/fragment/i3;->p0:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$m;->a:Lcom/join/mgps/fragment/i3;

    iget-object v0, v0, Lcom/join/mgps/fragment/i3;->p0:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$m;->a:Lcom/join/mgps/fragment/i3;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/join/mgps/fragment/i3;->o0:Z

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/join/mgps/fragment/i3;->G:Z

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
