.class Lcom/airsaid/pickerviewlibrary/widget/a$a;
.super Ljava/lang/Object;
.source "BasePickerView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airsaid/pickerviewlibrary/widget/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/airsaid/pickerviewlibrary/widget/a;


# direct methods
.method constructor <init>(Lcom/airsaid/pickerviewlibrary/widget/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/a$a;->a:Lcom/airsaid/pickerviewlibrary/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/a$a;->a:Lcom/airsaid/pickerviewlibrary/widget/a;

    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/a;->a(Lcom/airsaid/pickerviewlibrary/widget/a;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lcom/airsaid/pickerviewlibrary/widget/a$a$a;

    invoke-direct {v0, p0}, Lcom/airsaid/pickerviewlibrary/widget/a$a$a;-><init>(Lcom/airsaid/pickerviewlibrary/widget/a$a;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
