.class public Lcom/join/mgps/adapter/MGGameDetailAdapter$u1;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "u1"
.end annotation


# instance fields
.field a:Landroid/widget/LinearLayout;

.field final synthetic b:Lcom/join/mgps/adapter/MGGameDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$u1;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0908a5

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$u1;->a:Landroid/widget/LinearLayout;

    return-void
.end method
