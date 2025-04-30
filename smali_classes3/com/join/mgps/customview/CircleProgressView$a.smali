.class Lcom/join/mgps/customview/CircleProgressView$a;
.super Ljava/lang/Object;
.source "CircleProgressView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/CircleProgressView;->setValue(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/CircleProgressView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/CircleProgressView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CircleProgressView$a;->a:Lcom/join/mgps/customview/CircleProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    mul-float v1, p1, p1

    mul-float v1, v1, p1

    sub-float/2addr v0, v1

    return v0
.end method
