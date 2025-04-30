.class Lcom/join/mgps/activity/f2$i;
.super Ljava/lang/Object;
.source "PapaMainFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/f2;->u0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/f2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/f2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/f2$i;->a:Lcom/join/mgps/activity/f2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2$i;->a:Lcom/join/mgps/activity/f2;

    invoke-static {v0}, Lcom/join/mgps/activity/f2;->U(Lcom/join/mgps/activity/f2;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/f2$i;->a:Lcom/join/mgps/activity/f2;

    invoke-static {v2}, Lcom/join/mgps/activity/f2;->W(Lcom/join/mgps/activity/f2;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/f2;->A0(Ljava/lang/String;I)V

    return-void
.end method
