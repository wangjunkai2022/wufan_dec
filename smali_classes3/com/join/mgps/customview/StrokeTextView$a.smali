.class Lcom/join/mgps/customview/StrokeTextView$a;
.super Ljava/lang/Object;
.source "StrokeTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/StrokeTextView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/StrokeTextView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/StrokeTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/StrokeTextView$a;->a:Lcom/join/mgps/customview/StrokeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/StrokeTextView$a;->a:Lcom/join/mgps/customview/StrokeTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    return-void
.end method
