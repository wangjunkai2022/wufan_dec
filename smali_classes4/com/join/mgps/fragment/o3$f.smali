.class Lcom/join/mgps/fragment/o3$f;
.super Lcom/facebook/drawee/controller/b;
.source "NewArenaMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/o3;->k0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/fragment/o3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/o3;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/o3$f;->c:Lcom/join/mgps/fragment/o3;

    iput p2, p0, Lcom/join/mgps/fragment/o3$f;->b:I

    invoke-direct {p0}, Lcom/facebook/drawee/controller/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/facebook/drawee/controller/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$f;->c:Lcom/join/mgps/fragment/o3;

    iget p2, p0, Lcom/join/mgps/fragment/o3$f;->b:I

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, p2}, Lcom/join/mgps/fragment/o3;->P(Lcom/join/mgps/fragment/o3;I)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/drawee/controller/b;->d(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$f;->c:Lcom/join/mgps/fragment/o3;

    iget p2, p0, Lcom/join/mgps/fragment/o3$f;->b:I

    invoke-static {p1, p2}, Lcom/join/mgps/fragment/o3;->O(Lcom/join/mgps/fragment/o3;I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$f;->c:Lcom/join/mgps/fragment/o3;

    iget p2, p0, Lcom/join/mgps/fragment/o3$f;->b:I

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, p2}, Lcom/join/mgps/fragment/o3;->P(Lcom/join/mgps/fragment/o3;I)V

    return-void
.end method
