.class public Lcom/join/mgps/adapter/c$u;
.super Lcom/join/mgps/adapter/c$h0;
.source "ChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "u"
.end annotation


# instance fields
.field public b:Lcom/facebook/drawee/view/SimpleDraweeView;

.field final synthetic c:Lcom/join/mgps/adapter/c;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/c$u;->c:Lcom/join/mgps/adapter/c;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/c$h0;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    const p1, 0x7f090311

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/adapter/c$u;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-void
.end method
