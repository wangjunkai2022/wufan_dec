.class public final Lcom/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "UserRecomendActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J,\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$2",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "Landroid/view/MotionEvent;",
        "e",
        "",
        "onDown",
        "e1",
        "e2",
        "",
        "velocityX",
        "velocityY",
        "onFling",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $FLIP_DISTANCE:I

.field final synthetic this$0:Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;

    iput p2, p0, Lcom/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$2;->$FLIP_DISTANCE:I

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    sub-float/2addr p3, p4

    iget p4, p0, Lcom/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$2;->$FLIP_DISTANCE:I

    int-to-float p4, p4

    const/4 v0, 0x1

    cmpl-float p3, p3, p4

    if-gtz p3, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    sub-float/2addr p3, p4

    iget p4, p0, Lcom/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$2;->$FLIP_DISTANCE:I

    int-to-float p4, p4

    cmpl-float p3, p3, p4

    if-gtz p3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p4

    sub-float/2addr p3, p4

    iget p4, p0, Lcom/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$2;->$FLIP_DISTANCE:I

    int-to-float p4, p4

    cmpl-float p3, p3, p4

    if-lez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    iget p1, p0, Lcom/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$2;->$FLIP_DISTANCE:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 3
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return v0
.end method
