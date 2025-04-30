.class Lcom/join/mgps/fragment/i3$j;
.super Ljava/lang/Object;
.source "MyArchiveFragment.java"

# interfaces
.implements Lcom/join/mgps/listener/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/i3;->G0(Lcom/join/mgps/dto/CloudListDataBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/i3$j;->a:Lcom/join/mgps/fragment/i3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public B(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$j;->a:Lcom/join/mgps/fragment/i3;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/join/mgps/fragment/i3;->o0:Z

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/i3;->u0(Z)V

    return-void
.end method

.method public H(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$j;->a:Lcom/join/mgps/fragment/i3;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/join/mgps/fragment/i3;->o0:Z

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/i3;->u0(Z)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$j;->a:Lcom/join/mgps/fragment/i3;

    iget-boolean v0, p1, Lcom/join/mgps/fragment/i3;->G:Z

    if-nez v0, :cond_0

    const-string v0, "\u5907\u4efd\u5931\u8d25"

    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/i3;->showMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
