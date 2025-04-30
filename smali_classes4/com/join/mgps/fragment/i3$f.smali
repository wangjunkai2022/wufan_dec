.class Lcom/join/mgps/fragment/i3$f;
.super Ljava/lang/Object;
.source "MyArchiveFragment.java"

# interfaces
.implements Lcom/join/mgps/fragment/i3$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/i3;->q0(Ljava/util/List;ZLcom/join/mgps/fragment/i3$x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/i3$x;

.field final synthetic b:Lcom/join/mgps/fragment/i3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/i3;Lcom/join/mgps/fragment/i3$x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/i3$f;->b:Lcom/join/mgps/fragment/i3;

    iput-object p2, p0, Lcom/join/mgps/fragment/i3$f;->a:Lcom/join/mgps/fragment/i3$x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/join/mgps/dto/CloudListDataBean;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$f;->a:Lcom/join/mgps/fragment/i3$x;

    invoke-interface {v0, p1, p2}, Lcom/join/mgps/fragment/i3$x;->a(ZLcom/join/mgps/dto/CloudListDataBean;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$f;->b:Lcom/join/mgps/fragment/i3;

    iget p2, p1, Lcom/join/mgps/fragment/i3;->n0:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/join/mgps/fragment/i3;->n0:I

    :cond_1
    :goto_0
    return-void
.end method
