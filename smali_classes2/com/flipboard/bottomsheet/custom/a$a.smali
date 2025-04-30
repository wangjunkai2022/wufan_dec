.class Lcom/flipboard/bottomsheet/custom/a$a;
.super Landroid/view/ViewOutlineProvider;
.source "Util.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/custom/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 2
    iput p1, p0, Lcom/flipboard/bottomsheet/custom/a$a;->a:I

    .line 3
    iput p2, p0, Lcom/flipboard/bottomsheet/custom/a$a;->b:I

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/flipboard/bottomsheet/custom/a$a;->a:I

    iget v0, p0, Lcom/flipboard/bottomsheet/custom/a$a;->b:I

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, p1, v0}, Landroid/graphics/Outline;->setRect(IIII)V

    return-void
.end method
