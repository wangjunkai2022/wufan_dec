.class public Li1/a$a;
.super Li1/a$b;
.source "UniversalItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private e:Landroid/graphics/Paint;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Li1/a$b;-><init>()V

    const/high16 v0, -0x1000000

    .line 2
    iput v0, p0, Li1/a$a;->f:I

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Li1/a$a;->e:Landroid/graphics/Paint;

    .line 4
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;IIII)V
    .locals 8

    .line 1
    iget-object v0, p0, Li1/a$a;->e:Landroid/graphics/Paint;

    iget v1, p0, Li1/a$a;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    int-to-float v6, p5

    .line 2
    iget-object v7, p0, Li1/a$a;->e:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
