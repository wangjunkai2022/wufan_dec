.class Lcom/join/mgps/fragment/f$a;
.super Ljava/lang/Object;
.source "CardViewPagerFragment.java"

# interfaces
.implements Lcom/join/mgps/control/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/f;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/f$a;->a:Lcom/join/mgps/fragment/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public onSelected(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f$a;->a:Lcom/join/mgps/fragment/f;

    iget-object v0, v0, Lcom/join/mgps/fragment/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/join/mgps/fragment/f$a$a;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/f$a$a;-><init>(Lcom/join/mgps/fragment/f$a;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
