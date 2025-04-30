.class Lcom/airsaid/pickerviewlibrary/widget/a$b;
.super Ljava/lang/Object;
.source "BasePickerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airsaid/pickerviewlibrary/widget/a;
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
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/a$b;->a:Lcom/airsaid/pickerviewlibrary/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/a$b;->a:Lcom/airsaid/pickerviewlibrary/widget/a;

    invoke-virtual {p1}, Lcom/airsaid/pickerviewlibrary/widget/a;->b()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
