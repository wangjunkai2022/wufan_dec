.class public Lme/relex/circleindicator/BaseCircleIndicator$b;
.super Ljava/lang/Object;
.source "BaseCircleIndicator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/relex/circleindicator/BaseCircleIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lme/relex/circleindicator/BaseCircleIndicator;


# direct methods
.method protected constructor <init>(Lme/relex/circleindicator/BaseCircleIndicator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lme/relex/circleindicator/BaseCircleIndicator$b;->a:Lme/relex/circleindicator/BaseCircleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method
