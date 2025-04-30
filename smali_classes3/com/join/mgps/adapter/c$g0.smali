.class public Lcom/join/mgps/adapter/c$g0;
.super Lcom/join/mgps/adapter/c$h0;
.source "ChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g0"
.end annotation


# instance fields
.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/view/View;

.field final synthetic d:Lcom/join/mgps/adapter/c;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/c$g0;->d:Lcom/join/mgps/adapter/c;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/c$h0;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    const p1, 0x7f09100f

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/c$g0;->b:Landroid/widget/TextView;

    const p1, 0x7f09038e

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/c$g0;->c:Landroid/view/View;

    return-void
.end method
