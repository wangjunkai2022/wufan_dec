.class Lcom/join/mgps/joystick/a$c;
.super Ljava/lang/Object;
.source "KeyMapController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/joystick/a;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/joystick/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/joystick/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/joystick/a$c;->a:Lcom/join/mgps/joystick/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/joystick/a$c;->a:Lcom/join/mgps/joystick/a;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/joystick/a;->z(II)V

    return-void
.end method
