.class final Lcom/airsaid/pickerviewlibrary/widget/wheelview/d;
.super Ljava/lang/Object;
.source "OnItemSelectedRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/d;->a:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/d;->a:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    iget-object v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->d:Lf/c;

    invoke-virtual {v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    move-result v0

    invoke-interface {v1, v0}, Lf/c;->a(I)V

    return-void
.end method
