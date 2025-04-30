.class final Lcom/airsaid/pickerviewlibrary/widget/wheelview/b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LoopViewGestureListener.java"


# instance fields
.field final a:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/b;->a:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/b;->a:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {p1, p4}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->l(F)V

    const/4 p1, 0x1

    return p1
.end method
