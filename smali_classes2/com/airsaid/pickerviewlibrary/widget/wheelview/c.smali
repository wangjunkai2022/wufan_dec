.class final Lcom/airsaid/pickerviewlibrary/widget/wheelview/c;
.super Landroid/os/Handler;
.source "MessageHandler.java"


# static fields
.field public static final b:I = 0x3e8

.field public static final c:I = 0x7d0

.field public static final d:I = 0xbb8


# instance fields
.field final a:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/c;->a:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbb8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/c;->a:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/c;->a:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    sget-object v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;->FLING:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;

    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->m(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/c;->a:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method
