.class Lcom/join/mgps/fragment/z2$c;
.super Ljava/lang/Object;
.source "GameTopicFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/z2;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/z2;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/z2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/z2$c;->a:Lcom/join/mgps/fragment/z2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z2$c;->a:Lcom/join/mgps/fragment/z2;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/z2;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/z2$c;->a:Lcom/join/mgps/fragment/z2;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/z2;->e0()V

    :cond_0
    return-void
.end method
